.class public final synthetic Lorg/mozilla/geckoview/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoResult$Consumer;


# instance fields
.field public final synthetic f:Lorg/mozilla/geckoview/WebExtensionController;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lorg/mozilla/geckoview/WebExtensionController$Message;

.field public final synthetic i:Lorg/mozilla/gecko/util/GeckoBundle;

.field public final synthetic j:Lorg/mozilla/gecko/util/EventCallback;

.field public final synthetic k:Lorg/mozilla/gecko/util/GeckoBundle;

.field public final synthetic l:Lorg/mozilla/geckoview/GeckoSession;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/geckoview/WebExtensionController;Ljava/lang/String;Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/p;->f:Lorg/mozilla/geckoview/WebExtensionController;

    iput-object p2, p0, Lorg/mozilla/geckoview/p;->g:Ljava/lang/String;

    iput-object p3, p0, Lorg/mozilla/geckoview/p;->h:Lorg/mozilla/geckoview/WebExtensionController$Message;

    iput-object p4, p0, Lorg/mozilla/geckoview/p;->i:Lorg/mozilla/gecko/util/GeckoBundle;

    iput-object p5, p0, Lorg/mozilla/geckoview/p;->j:Lorg/mozilla/gecko/util/EventCallback;

    iput-object p6, p0, Lorg/mozilla/geckoview/p;->k:Lorg/mozilla/gecko/util/GeckoBundle;

    iput-object p7, p0, Lorg/mozilla/geckoview/p;->l:Lorg/mozilla/geckoview/GeckoSession;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/mozilla/geckoview/p;->f:Lorg/mozilla/geckoview/WebExtensionController;

    iget-object v1, p0, Lorg/mozilla/geckoview/p;->g:Ljava/lang/String;

    iget-object v2, p0, Lorg/mozilla/geckoview/p;->h:Lorg/mozilla/geckoview/WebExtensionController$Message;

    iget-object v3, p0, Lorg/mozilla/geckoview/p;->i:Lorg/mozilla/gecko/util/GeckoBundle;

    iget-object v4, p0, Lorg/mozilla/geckoview/p;->j:Lorg/mozilla/gecko/util/EventCallback;

    iget-object v5, p0, Lorg/mozilla/geckoview/p;->k:Lorg/mozilla/gecko/util/GeckoBundle;

    iget-object v6, p0, Lorg/mozilla/geckoview/p;->l:Lorg/mozilla/geckoview/GeckoSession;

    move-object v7, p1

    check-cast v7, Lorg/mozilla/geckoview/WebExtension;

    invoke-static/range {v0 .. v7}, Lorg/mozilla/geckoview/WebExtensionController;->k(Lorg/mozilla/geckoview/WebExtensionController;Ljava/lang/String;Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/WebExtension;)V

    return-void
.end method
