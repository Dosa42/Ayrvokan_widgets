#define _GNU_SOURCE
#include <jni.h>
#include <errno.h>
#include <fcntl.h>
#include <poll.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/prctl.h>
#include <sys/wait.h>
#include <termios.h>
#include <unistd.h>

static void failure(JNIEnv *env, const char *operation) {
    char message[320];
    snprintf(message, sizeof(message), "%s: %s", operation, strerror(errno));
    (*env)->ThrowNew(env, (*env)->FindClass(env, "java/io/IOException"), message);
}

static void free_vector(char **values) {
    if (!values) return;
    for (size_t i = 0; values[i]; i++) free(values[i]);
    free(values);
}

static char **vector(JNIEnv *env, jobjectArray source) {
    jsize count = (*env)->GetArrayLength(env, source);
    char **values = calloc((size_t) count + 1, sizeof(char *));
    if (!values) { failure(env, "calloc"); return NULL; }
    for (jsize i = 0; i < count; i++) {
        jstring item = (*env)->GetObjectArrayElement(env, source, i);
        if (!item) { errno = EINVAL; failure(env, "argument"); free_vector(values); return NULL; }
        const char *text = (*env)->GetStringUTFChars(env, item, NULL);
        if (!text) { free_vector(values); return NULL; }
        values[i] = strdup(text);
        (*env)->ReleaseStringUTFChars(env, item, text);
        (*env)->DeleteLocalRef(env, item);
        if (!values[i]) { failure(env, "strdup"); free_vector(values); return NULL; }
    }
    return values;
}

JNIEXPORT jintArray JNICALL Java_com_nomone_vr_1desktop_runtime_PtyNative_spawn(JNIEnv *env, jclass type, jobjectArray command, jobjectArray environment, jstring directory, jint rows, jint columns) {
    (void) type;
    if (rows < 1 || columns < 1 || rows > 65535 || columns > 65535 || !command || !environment || !directory || (*env)->GetArrayLength(env, command) == 0) {
        errno = EINVAL; failure(env, "PTY arguments"); return NULL;
    }
    char **argv = vector(env, command);
    if (!argv) return NULL;
    char **envp = vector(env, environment);
    if (!envp) { free_vector(argv); return NULL; }
    const char *text = (*env)->GetStringUTFChars(env, directory, NULL);
    char *cwd = text ? strdup(text) : NULL;
    if (text) (*env)->ReleaseStringUTFChars(env, directory, text);
    if (!cwd) { free_vector(argv); free_vector(envp); return NULL; }
    int master = posix_openpt(O_RDWR | O_NOCTTY | O_CLOEXEC | O_NONBLOCK);
    int errors[2] = {-1, -1};
    char slave_name[256];
    if (master < 0 || grantpt(master) || unlockpt(master) || ptsname_r(master, slave_name, sizeof(slave_name)) || pipe2(errors, O_CLOEXEC)) goto failed;
    pid_t parent = getpid();
    pid_t pid = fork();
    if (pid < 0) goto failed;
    if (pid == 0) {
        close(errors[0]);
        close(master);
        prctl(PR_SET_PDEATHSIG, SIGHUP);
        if (getppid() != parent) _exit(125);
        if (setsid() < 0) goto child_failed;
        int slave = open(slave_name, O_RDWR);
        if (slave < 0 || ioctl(slave, TIOCSCTTY, 0) < 0) goto child_failed;
        struct winsize size = {.ws_row = (unsigned short) rows, .ws_col = (unsigned short) columns};
        if (ioctl(slave, TIOCSWINSZ, &size) < 0) goto child_failed;
        for (int i = 0; i < 3; i++) if (dup2(slave, i) < 0) goto child_failed;
        if (slave > 2) close(slave);
        for (int i = 1; i < NSIG; i++) signal(i, SIG_DFL);
        sigset_t mask;
        sigemptyset(&mask);
        sigprocmask(SIG_SETMASK, &mask, NULL);
        if (chdir(cwd) < 0) goto child_failed;
        execve(argv[0], argv, envp);
child_failed:;
        int problem = errno;
        ssize_t ignored = write(errors[1], &problem, sizeof(problem));
        (void) ignored;
        _exit(127);
    }
    close(errors[1]);
    errors[1] = -1;
    int problem = 0;
    ssize_t count;
    do { count = read(errors[0], &problem, sizeof(problem)); } while (count < 0 && errno == EINTR);
    close(errors[0]);
    errors[0] = -1;
    if (count != 0) {
        kill(pid, SIGKILL);
        waitpid(pid, NULL, 0);
        errno = problem ? problem : EIO;
        goto failed;
    }
    free(cwd); free_vector(argv); free_vector(envp);
    jint values[2] = {master, pid};
    jintArray result = (*env)->NewIntArray(env, 2);
    if (result) (*env)->SetIntArrayRegion(env, result, 0, 2, values);
    else { kill(-pid, SIGKILL); close(master); waitpid(pid, NULL, 0); }
    return result;
failed:;
    int saved_error = errno;
    if (master >= 0) close(master);
    if (errors[0] >= 0) close(errors[0]);
    if (errors[1] >= 0) close(errors[1]);
    free(cwd); free_vector(argv); free_vector(envp);
    errno = saved_error;
    failure(env, "PTY spawn");
    return NULL;
}

JNIEXPORT jbyteArray JNICALL Java_com_nomone_vr_1desktop_runtime_PtyNative_read(JNIEnv *env, jclass type, jint fd) {
    (void) type;
    unsigned char bytes[8192];
    ssize_t count;
    while (1) {
        struct pollfd ready = {.fd = fd, .events = POLLIN};
        int available;
        do { available = poll(&ready, 1, -1); } while (available < 0 && errno == EINTR);
        if (available < 0) { failure(env, "PTY read readiness"); return NULL; }
        count = read(fd, bytes, sizeof(bytes));
        if (count < 0 && (errno == EINTR || errno == EAGAIN)) continue;
        break;
    }
    if (count == 0 || (count < 0 && errno == EIO)) return NULL;
    if (count < 0) { failure(env, "PTY read"); return NULL; }
    jbyteArray result = (*env)->NewByteArray(env, count);
    if (result) (*env)->SetByteArrayRegion(env, result, 0, count, (jbyte *) bytes);
    return result;
}

JNIEXPORT void JNICALL Java_com_nomone_vr_1desktop_runtime_PtyNative_write(JNIEnv *env, jclass type, jint fd, jbyteArray source) {
    (void) type;
    jsize count = (*env)->GetArrayLength(env, source);
    jbyte *bytes = (*env)->GetByteArrayElements(env, source, NULL);
    if (!bytes) return;
    size_t offset = 0;
    while (offset < (size_t) count) {
        struct pollfd ready = {.fd = fd, .events = POLLOUT};
        int available;
        do { available = poll(&ready, 1, 2000); } while (available < 0 && errno == EINTR);
        if (available <= 0) { if (!available) errno = ETIMEDOUT; failure(env, "PTY write readiness"); break; }
        ssize_t written = write(fd, bytes + offset, (size_t) count - offset);
        if (written < 0 && (errno == EINTR || errno == EAGAIN)) continue;
        if (written <= 0) { failure(env, "PTY write"); break; }
        offset += (size_t) written;
    }
    (*env)->ReleaseByteArrayElements(env, source, bytes, JNI_ABORT);
}

JNIEXPORT void JNICALL Java_com_nomone_vr_1desktop_runtime_PtyNative_resize(JNIEnv *env, jclass type, jint fd, jint rows, jint columns) {
    (void) type;
    if (rows < 1 || columns < 1 || rows > 65535 || columns > 65535) { errno = EINVAL; failure(env, "PTY size"); return; }
    struct winsize size = {.ws_row = (unsigned short) rows, .ws_col = (unsigned short) columns};
    if (ioctl(fd, TIOCSWINSZ, &size) < 0) failure(env, "PTY resize");
}

JNIEXPORT void JNICALL Java_com_nomone_vr_1desktop_runtime_PtyNative_terminate(JNIEnv *env, jclass type, jint pid) {
    (void) env; (void) type;
    if (pid > 1) kill(-pid, SIGHUP);
}

JNIEXPORT void JNICALL Java_com_nomone_vr_1desktop_runtime_PtyNative_kill(JNIEnv *env, jclass type, jint pid) {
    (void) env; (void) type;
    if (pid > 1) kill(-pid, SIGKILL);
}

JNIEXPORT jint JNICALL Java_com_nomone_vr_1desktop_runtime_PtyNative_waitFor(JNIEnv *env, jclass type, jint pid) {
    (void) type;
    int status;
    pid_t result;
    do { result = waitpid(pid, &status, 0); } while (result < 0 && errno == EINTR);
    if (result < 0) { failure(env, "waitpid"); return -1; }
    return WIFEXITED(status) ? WEXITSTATUS(status) : 128 + WTERMSIG(status);
}

JNIEXPORT void JNICALL Java_com_nomone_vr_1desktop_runtime_PtyNative_close(JNIEnv *env, jclass type, jint fd) {
    (void) env; (void) type;
    if (fd >= 0) close(fd);
}
