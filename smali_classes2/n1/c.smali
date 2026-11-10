.class public abstract Ln1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lorg/mozilla/geckoview/WebExtension;

.field public static b:Z


# direct methods
.method public static a(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/WebExtension$PortDelegate;Lo1/j0;)V
    .locals 2

    .line 1
    sget-boolean v0, Ln1/c;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ln1/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ln1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2, v0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    sget-object p2, Ln1/c;->a:Lorg/mozilla/geckoview/WebExtension;

    if-eqz p2, :cond_1

    new-instance p2, Ln1/b;

    invoke-direct {p2, p1}, Ln1/b;-><init>(Lorg/mozilla/geckoview/WebExtension$PortDelegate;)V

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession;->getWebExtensionController()Lorg/mozilla/geckoview/WebExtension$SessionController;

    move-result-object p0

    sget-object p1, Ln1/c;->a:Lorg/mozilla/geckoview/WebExtension;

    const-string v0, "browser"

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/geckoview/WebExtension$SessionController;->setMessageDelegate(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/WebExtension$MessageDelegate;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Can\'t set messaging delegate when messaging extension is not ready."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
