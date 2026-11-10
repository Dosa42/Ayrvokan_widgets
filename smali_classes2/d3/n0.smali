.class public final Ld3/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ld3/d0;

.field public final synthetic b:Landroid/os/Handler;

.field public final synthetic c:Z

.field public final synthetic d:Lj0/j;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ld3/d0;Landroid/os/Handler;Lj0/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld3/n0;->a:Ld3/d0;

    iput-object p2, p0, Ld3/n0;->b:Landroid/os/Handler;

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld3/n0;->c:Z

    iput-object p3, p0, Ld3/n0;->d:Lj0/j;

    const-string p1, "VideoCaptureAndroidSurfaceTextureHelper"

    iput-object p1, p0, Ld3/n0;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ld3/p0;

    .line 2
    .line 3
    iget-object v1, p0, Ld3/n0;->a:Ld3/d0;

    .line 4
    .line 5
    iget-object v2, p0, Ld3/n0;->b:Landroid/os/Handler;

    .line 6
    .line 7
    iget-boolean v3, p0, Ld3/n0;->c:Z

    .line 8
    .line 9
    iget-object v4, p0, Ld3/n0;->d:Lj0/j;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, v4}, Ld3/p0;-><init>(Ld3/d0;Landroid/os/Handler;ZLj0/j;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Ld3/n0;->e:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " create failure"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "SurfaceTextureHelper"

    .line 36
    .line 37
    invoke-static {v2, v1, v0}, Lorg/webrtc/Logging;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0
.end method
