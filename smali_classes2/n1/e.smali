.class public final Ln1/e;
.super Lorg/mozilla/geckoview/GeckoSession;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSessionSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoSession;-><init>(Lorg/mozilla/geckoview/GeckoSessionSettings;)V

    new-instance p1, Ln1/d;

    invoke-direct {p1, p0}, Ln1/d;-><init>(Ln1/e;)V

    invoke-super {p0, p1}, Lorg/mozilla/geckoview/GeckoSession;->setNavigationDelegate(Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;)V

    return-void
.end method


# virtual methods
.method public final getNavigationDelegate()Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;
    .locals 1

    .line 1
    iget-object v0, p0, Ln1/e;->b:Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;

    return-object v0
.end method

.method public final loadUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln1/e;->a:Ljava/lang/String;

    invoke-super {p0, p1}, Lorg/mozilla/geckoview/GeckoSession;->loadUri(Ljava/lang/String;)V

    return-void
.end method

.method public final setNavigationDelegate(Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln1/e;->b:Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;

    return-void
.end method
