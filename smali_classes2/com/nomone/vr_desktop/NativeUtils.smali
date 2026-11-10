.class public Lcom/nomone/vr_desktop/NativeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Utils"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native closeFD(I)V
.end method

.method public static native createPipe(Ljava/lang/String;)Z
.end method

.method public static javaLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sdf"

    invoke-static {v0, p0}, Lo1/m;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static native nativeChmod(Ljava/lang/String;I)Z
.end method

.method public static native nativeGetMyProcesses()[I
.end method

.method public static native nativeGetProcessCommand(I)Ljava/lang/String;
.end method

.method public static native nativeGetProcessCommandTruncated(I)Ljava/lang/String;
.end method

.method public static native nativeGetProcessExecutable(I)Ljava/lang/String;
.end method

.method public static native nativeGetTotalSwapMemory()J
.end method

.method public static native nativeKillProcess(I)V
.end method

.method public static native nativeReplaceInFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native nativeSetEnv(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method public static native nativeSymlink(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native openFD(Ljava/lang/String;Z)I
.end method

.method public static native readFromFD(I)Ljava/lang/String;
.end method

.method public static native writeToFD(ILjava/lang/String;)V
.end method
