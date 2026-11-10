.class public final Ld3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# instance fields
.field public final synthetic a:Ld3/f;


# direct methods
.method public constructor <init>(Ld3/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld3/c;->a:Ld3/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILandroid/hardware/Camera;)V
    .locals 2

    .line 1
    const/16 p2, 0x64

    .line 2
    .line 3
    if-ne p1, p2, :cond_0

    .line 4
    .line 5
    const-string p2, "Camera server died!"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string p2, "Camera error: "

    .line 9
    .line 10
    invoke-static {p2, p1}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :goto_0
    const-string v0, "Camera1Session"

    .line 15
    .line 16
    invoke-static {v0, p2}, Lorg/webrtc/Logging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Ld3/c;->a:Ld3/f;

    .line 20
    .line 21
    invoke-virtual {v0}, Ld3/f;->e()V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-ne p1, v1, :cond_1

    .line 26
    .line 27
    iget-object p1, v0, Ld3/f;->b:Ld3/m;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ld3/m;->h(Ld3/x;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object p1, v0, Ld3/f;->b:Ld3/m;

    .line 34
    .line 35
    invoke-virtual {p1, v0, p2}, Ld3/m;->i(Ld3/x;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_1
    return-void
.end method
