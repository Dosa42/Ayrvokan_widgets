.class public Lcom/nomone/vr_desktop/Applications/BrowserApplication;
.super Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;
.source "SourceFile"


# static fields
.field public static final v:Ljava/lang/String;


# instance fields
.field public final n:Lq1/f;

.field public o:Ljava/lang/String;

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public final u:Lo0/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "apps/browser/startPage/index.html"

    invoke-static {v0}, Lt1/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->v:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lq1/f;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nomone/vr_desktop/Applications/BrowserApplication;-><init>(Lq1/f;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lq1/f;Ljava/lang/String;)V
    .locals 5

    const-string v0, "url:"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "popUpWindow"

    if-eqz v0, :cond_0

    const/16 v0, 0x3a

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "sdf"

    const-string v3, "Critical (BrowserApplication): unknown argument type"

    invoke-static {v0, v3}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    new-instance v3, Lr1/u;

    invoke-direct {v3, p1, v0}, Lr1/u;-><init>(Lq1/f;Ljava/lang/String;)V

    invoke-static {}, Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;->h()Lo1/x;

    move-result-object v0

    iget v4, v0, Lo1/x;->a:F

    float-to-int v4, v4

    iget v0, v0, Lo1/x;->b:F

    float-to-int v0, v0

    .line 3
    iput v4, v3, Lr1/q;->e:I

    iput v0, v3, Lr1/q;->f:I

    const/high16 v0, 0x41f00000    # 30.0f

    .line 4
    iput v0, v3, Lr1/q;->h:F

    .line 5
    invoke-direct {p0, v3}, Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;-><init>(Lr1/u;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->o:Ljava/lang/String;

    new-instance v0, Lo0/n;

    const/4 v3, 0x4

    invoke-direct {v0, p0, v3}, Lo0/n;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->u:Lo0/n;

    iput-object p1, p0, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->n:Lq1/f;

    .line 6
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->s:Z

    iput-boolean v1, p0, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->q:Z

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p1, La2/i;->y:Z

    .line 9
    iget-object p1, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->e:La2/a;

    .line 10
    check-cast p1, La2/i;

    .line 11
    iget-object p1, p1, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 12
    invoke-virtual {p1}, Lcom/nomone/GeckoView/MyGeckoView;->getSession()Lorg/mozilla/geckoview/GeckoSession;

    move-result-object p1

    check-cast p1, Ln1/e;

    .line 13
    iget-object v0, p1, Ln1/e;->b:Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;

    .line 14
    new-instance v1, Lr1/g;

    invoke-direct {v1, p0, p1, v0}, Lr1/g;-><init>(Lcom/nomone/vr_desktop/Applications/BrowserApplication;Ln1/e;Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;)V

    .line 15
    iput-object v1, p1, Ln1/e;->b:Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;

    .line 16
    new-instance v0, Lr1/h;

    invoke-direct {v0, p0}, Lr1/h;-><init>(Lcom/nomone/vr_desktop/Applications/BrowserApplication;)V

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoSession;->setProgressDelegate(Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate;)V

    new-instance p1, Lr1/d;

    invoke-direct {p1, p0}, Lr1/d;-><init>(Lcom/nomone/vr_desktop/Applications/BrowserApplication;)V

    .line 17
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 18
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 19
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 20
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->e:La2/a;

    .line 21
    check-cast v0, La2/i;

    .line 22
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 23
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance p1, Lr1/e;

    invoke-direct {p1, p0}, Lr1/e;-><init>(Lcom/nomone/vr_desktop/Applications/BrowserApplication;)V

    .line 24
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 25
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 26
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 27
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->e:La2/a;

    .line 28
    check-cast v0, La2/i;

    .line 29
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 30
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 31
    iget-object p1, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 32
    iget-object p1, p1, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 33
    new-instance v0, Lr1/f;

    invoke-direct {v0, p0, p1, p2}, Lr1/f;-><init>(Lr1/c;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/nomone/GeckoView/MyGeckoView;->a(Ln1/m;)V

    return-void
.end method

.method public static i(Lcom/nomone/vr_desktop/Applications/BrowserApplication;Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "file://"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/i0;->m0(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->n:Lq1/f;

    .line 20
    .line 21
    iget-object p0, p0, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 22
    .line 23
    new-instance v0, Landroid/content/Intent;

    .line 24
    .line 25
    const-string v1, "android.intent.action.VIEW"

    .line 26
    .line 27
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/i0;->W(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    const-string p1, "PornBlocking/PornSiteBlocked.html"

    .line 45
    .line 46
    invoke-static {p1}, Lt1/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->e:La2/a;

    .line 51
    .line 52
    check-cast v0, La2/i;

    .line 53
    .line 54
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/nomone/GeckoView/MyGeckoView;->getSession()Lorg/mozilla/geckoview/GeckoSession;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoSession;->loadUri(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->j(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :catch_0
    :goto_1
    sget-object p0, Lorg/mozilla/geckoview/AllowOrDeny;->DENY:Lorg/mozilla/geckoview/AllowOrDeny;

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    sget-object p0, Lorg/mozilla/geckoview/AllowOrDeny;->ALLOW:Lorg/mozilla/geckoview/AllowOrDeny;

    .line 70
    .line 71
    :goto_2
    invoke-static {p0}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method


# virtual methods
.method public final j(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "PornBlocking/PornSiteBlocked.html"

    .line 2
    .line 3
    invoke-static {v0}, Lt1/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    :cond_0
    iput-object p1, p0, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->o:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 18
    .line 19
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "document.getElementById(\'urlText\').value = `"

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, "`"

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v0, p1}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final k(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->r:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 6
    .line 7
    iget-object p1, p1, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 8
    .line 9
    const-string v0, "document.getElementById(  \'stopButton\').style.display = \'inline-block\';document.getElementById(\'reloadButton\').style.display =         \'none\';"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 13
    .line 14
    iget-object p1, p1, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 15
    .line 16
    const-string v0, "document.getElementById(  \'stopButton\').style.display =         \'none\';document.getElementById(\'reloadButton\').style.display = \'inline-block\';"

    .line 17
    .line 18
    :goto_0
    invoke-virtual {p1, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
