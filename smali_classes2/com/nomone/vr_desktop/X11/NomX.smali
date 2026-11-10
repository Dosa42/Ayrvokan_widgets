.class public Lcom/nomone/vr_desktop/X11/NomX;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;
    }
.end annotation


# static fields
.field public static a:Lcom/nomone/browser_module/OpenGLView;

.field public static final b:Lo0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "NomX"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lo0/a;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lo0/a;-><init>(I)V

    sput-object v0, Lcom/nomone/vr_desktop/X11/NomX;->b:Lo0/a;

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/nomone/vr_desktop/X11/NomX;->performSetGLThreadTask()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static native createNotifyFd()V
.end method

.method public static native finishRendering()V
.end method

.method public static native getRenderingInfo(Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;)V
.end method

.method public static javaGlGenTexture()I
    .locals 1

    invoke-static {}, Lo1/r;->d()I

    move-result v0

    return v0
.end method

.method public static javaIsOnGlThread()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/nomone/vr_desktop/X11/NomX;->a:Lcom/nomone/browser_module/OpenGLView;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v0, v0, Lcom/nomone/browser_module/OpenGLView;->g:Ljava/lang/Thread;

    .line 11
    .line 12
    if-ne v1, v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public static javaRequestRender()V
    .locals 2

    .line 1
    sget-object v0, Lcom/nomone/vr_desktop/X11/NomX;->a:Lcom/nomone/browser_module/OpenGLView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/nomone/browser_module/OpenGLView;->j:Z

    .line 5
    .line 6
    return-void
.end method

.method public static javaRunOnGlThread()V
    .locals 2

    sget-object v0, Lcom/nomone/vr_desktop/X11/NomX;->a:Lcom/nomone/browser_module/OpenGLView;

    sget-object v1, Lcom/nomone/vr_desktop/X11/NomX;->b:Lo0/a;

    invoke-virtual {v0, v1}, Lcom/nomone/browser_module/OpenGLView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static javaSetAHardwareBufferBadAlignmentMethod()V
    .locals 5

    .line 1
    const-string v0, "Info_AHardwareBuffer16ByteAligned"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string v2, "sdf"

    .line 12
    .line 13
    const-string v3, "=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*"

    .line 14
    .line 15
    invoke-static {v2, v3}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v4, "AHardwareBuffer NOT 16 BYTE ALIGNED!!!"

    .line 19
    .line 20
    invoke-static {v2, v4}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v3}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static {v0, v2}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v4, "<pre>AHardwareBuffer bad alignment.</pre>"

    .line 45
    .line 46
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sget-object v4, Lcom/nomone/vr_desktop/MyApplication;->c:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/i0;->L(Landroid/content/Context;Z)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v4, "<pre>StackTrace:<br>===========<br>"

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, "</pre><pre>Logs:<br>===========<br>"

    .line 67
    .line 68
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lo1/m;->e()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, "</pre>"

    .line 79
    .line 80
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v3, "VGVzdA"

    .line 88
    .line 89
    const/4 v4, 0x0

    .line 90
    invoke-static {v3, v0, v2, v1, v4}, Lcom/google/android/gms/internal/play_billing/i0;->e0(Ljava/lang/String;Ljava/lang/String;ZZLq1/z;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public static native lockPixMapAndEmptyDamage()V
.end method

.method public static native notifyX11Thread()V
.end method

.method private static native performSetGLThreadTask()V
.end method

.method public static native readCursorBackground(IIII)V
.end method

.method public static native readyToInitialize()Z
.end method

.method public static native shouldRedraw()Z
.end method

.method public static native shouldUpdate()Z
.end method

.method public static native startX11([Ljava/lang/String;)Z
.end method

.method public static native surfaceCreated()V
.end method

.method public static native triggerFdNotify()Z
.end method

.method public static native unlockPixMap()V
.end method

.method public static native updateCursorTexture()V
.end method

.method public static native updateMonitorConfiguration(III)V
.end method

.method public static native writeCursorBackground(IIIII)V
.end method
