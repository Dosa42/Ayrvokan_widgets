.class public final Lr1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;


# instance fields
.field public final synthetic a:Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr1/t;->a:Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFullScreen(Lorg/mozilla/geckoview/GeckoSession;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lr1/t;->a:Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;

    invoke-virtual {p1, p2}, Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;->g(Z)V

    return-void
.end method

.method public final onMetaViewportFitChange(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onMetaViewportFitChange: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast p1, Ln1/e;

    .line 9
    .line 10
    iget-object p1, p1, Ln1/e;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, ", "

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string p2, "sdf"

    .line 28
    .line 29
    invoke-static {p2, p1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onTitleChange(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lr1/t;->a:Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 4
    .line 5
    iget-boolean v0, p1, La2/i;->i:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "document.getElementById(\'titleBar\').textContent = `"

    .line 10
    .line 11
    const-string v1, "`"

    .line 12
    .line 13
    invoke-static {v0, p2, v1}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iget-object p1, p1, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/nomone/GeckoView/MyGeckoView;->e(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lr1/s;

    .line 24
    .line 25
    invoke-direct {v0, p1, p2}, Lr1/s;-><init>(La2/p;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lq1/f;->L:Lo1/j0;

    .line 29
    .line 30
    const-string p2, "setPageTitleTask"

    .line 31
    .line 32
    const-wide/16 v1, 0x64

    .line 33
    .line 34
    invoke-virtual {p1, v0, p2, v1, v2}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method
