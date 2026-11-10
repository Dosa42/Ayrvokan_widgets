#define _GNU_SOURCE
#include <jni.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <signal.h>
#include <termios.h>
#include <sys/ioctl.h>
#include <sys/wait.h>
#include <dirent.h>

static char **strings(JNIEnv *env, jobjectArray values) {
    jsize length = (*env)->GetArrayLength(env, values);
    char **result = calloc((size_t) length + 1, sizeof(char *));
    for (jsize i = 0; i < length; ++i) {
        jstring item = (*env)->GetObjectArrayElement(env, values, i);
        const char *value = (*env)->GetStringUTFChars(env, item, NULL);
        result[i] = strdup(value);
        (*env)->ReleaseStringUTFChars(env, item, value);
        (*env)->DeleteLocalRef(env, item);
    }
    return result;
}

static void release(char **values) {
    if (!values) return;
    for (int i = 0; values[i]; ++i) free(values[i]);
    free(values);
}

static void fail(JNIEnv *env, const char *message) {
    jclass type = (*env)->FindClass(env, "java/io/IOException");
    (*env)->ThrowNew(env, type, message);
}

JNIEXPORT jintArray JNICALL Java_com_ayrvokan_widgets_Pty_spawn(JNIEnv *env, jclass type, jstring executable, jstring cwd, jobjectArray arguments, jobjectArray environment, jint rows, jint columns, jboolean raw) {
    (void) type;
    char **args = strings(env, arguments);
    char **vars = strings(env, environment);
    const char *program = (*env)->GetStringUTFChars(env, executable, NULL);
    const char *directory = (*env)->GetStringUTFChars(env, cwd, NULL);
    int master = posix_openpt(O_RDWR | O_NOCTTY | O_CLOEXEC);
    char slave[128];
    if (master < 0 || grantpt(master) || unlockpt(master) || ptsname_r(master, slave, sizeof(slave))) {
        if (master >= 0) close(master);
        release(args); release(vars);
        (*env)->ReleaseStringUTFChars(env, executable, program);
        (*env)->ReleaseStringUTFChars(env, cwd, directory);
        fail(env, "Could not open the terminal PTY");
        return NULL;
    }
    struct winsize size = { .ws_row = (unsigned short) rows, .ws_col = (unsigned short) columns };
    ioctl(master, TIOCSWINSZ, &size);
    pid_t pid = fork();
    if (pid == 0) {
        sigset_t signals;
        sigfillset(&signals);
        sigprocmask(SIG_UNBLOCK, &signals, NULL);
        setsid();
        int terminal = open(slave, O_RDWR);
        if (terminal < 0) _exit(126);
        ioctl(terminal, TIOCSCTTY, 0);
        struct termios settings;
        if (tcgetattr(terminal, &settings) == 0) {
            if (raw) cfmakeraw(&settings);
            settings.c_iflag |= IUTF8;
            settings.c_iflag &= ~(IXON | IXOFF);
            if (tcsetattr(terminal, TCSANOW, &settings) != 0 && raw) {
                dprintf(terminal, "Console terminal mode: %s\r\n", strerror(errno));
                _exit(126);
            }
        }
        else if (raw) {
            dprintf(terminal, "Console terminal attributes: %s\r\n", strerror(errno));
            _exit(126);
        }
        dup2(terminal, STDIN_FILENO);
        dup2(terminal, STDOUT_FILENO);
        dup2(terminal, STDERR_FILENO);
        if (terminal > 2) close(terminal);
        close(master);
        DIR *descriptors = opendir("/proc/self/fd");
        if (descriptors) {
            int listing = dirfd(descriptors);
            struct dirent *entry;
            while ((entry = readdir(descriptors)) != NULL) {
                int inherited = atoi(entry->d_name);
                if (inherited > STDERR_FILENO && inherited != listing) close(inherited);
            }
            closedir(descriptors);
        }
        if (chdir(directory) != 0) _exit(126);
        execve(program, args, vars);
        dprintf(STDERR_FILENO, "Could not start Linux: %s\r\n", strerror(errno));
        _exit(127);
    }
    release(args); release(vars);
    (*env)->ReleaseStringUTFChars(env, executable, program);
    (*env)->ReleaseStringUTFChars(env, cwd, directory);
    if (pid < 0) {
        close(master);
        fail(env, "Could not start the terminal process");
        return NULL;
    }
    jint values[2] = { master, pid };
    jintArray result = (*env)->NewIntArray(env, 2);
    (*env)->SetIntArrayRegion(env, result, 0, 2, values);
    return result;
}

JNIEXPORT jbyteArray JNICALL Java_com_ayrvokan_widgets_Pty_read(JNIEnv *env, jclass type, jint descriptor) {
    (void) type;
    unsigned char bytes[16384];
    ssize_t count;
    do { count = read(descriptor, bytes, sizeof(bytes)); } while (count < 0 && errno == EINTR);
    if (count <= 0) return NULL;
    jbyteArray result = (*env)->NewByteArray(env, (jsize) count);
    (*env)->SetByteArrayRegion(env, result, 0, (jsize) count, (jbyte *) bytes);
    return result;
}

JNIEXPORT void JNICALL Java_com_ayrvokan_widgets_Pty_write(JNIEnv *env, jclass type, jint descriptor, jbyteArray input) {
    (void) type;
    jsize size = (*env)->GetArrayLength(env, input);
    jbyte *bytes = (*env)->GetByteArrayElements(env, input, NULL);
    ssize_t offset = 0;
    while (offset < size) {
        ssize_t count = write(descriptor, bytes + offset, (size_t) (size - offset));
        if (count < 0 && errno == EINTR) continue;
        if (count <= 0) break;
        offset += count;
    }
    (*env)->ReleaseByteArrayElements(env, input, bytes, JNI_ABORT);
}

JNIEXPORT void JNICALL Java_com_ayrvokan_widgets_Pty_resize(JNIEnv *env, jclass type, jint descriptor, jint rows, jint columns) {
    (void) env; (void) type;
    struct winsize size = { .ws_row = (unsigned short) rows, .ws_col = (unsigned short) columns };
    ioctl(descriptor, TIOCSWINSZ, &size);
}

JNIEXPORT jint JNICALL Java_com_ayrvokan_widgets_Pty_waitFor(JNIEnv *env, jclass type, jint pid) {
    (void) env; (void) type;
    int status = 0;
    while (waitpid(pid, &status, 0) < 0) { if (errno != EINTR) return -1; }
    return WIFEXITED(status) ? WEXITSTATUS(status) : -WTERMSIG(status);
}

JNIEXPORT void JNICALL Java_com_ayrvokan_widgets_Pty_terminate(JNIEnv *env, jclass type, jint pid) {
    (void) env; (void) type;
    if (pid > 0) { kill(-pid, SIGHUP); kill(pid, SIGHUP); }
}

JNIEXPORT void JNICALL Java_com_ayrvokan_widgets_Pty_close(JNIEnv *env, jclass type, jint descriptor) {
    (void) env; (void) type;
    if (descriptor >= 0) close(descriptor);
}
