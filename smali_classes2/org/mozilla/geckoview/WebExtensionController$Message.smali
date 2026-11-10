.class Lorg/mozilla/geckoview/WebExtensionController$Message;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebExtensionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Message"
.end annotation


# instance fields
.field final bundle:Lorg/mozilla/gecko/util/GeckoBundle;

.field final callback:Lorg/mozilla/gecko/util/EventCallback;

.field final event:Ljava/lang/String;

.field final session:Lorg/mozilla/geckoview/GeckoSession;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mozilla/geckoview/WebExtensionController$Message;->bundle:Lorg/mozilla/gecko/util/GeckoBundle;

    iput-object p3, p0, Lorg/mozilla/geckoview/WebExtensionController$Message;->callback:Lorg/mozilla/gecko/util/EventCallback;

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtensionController$Message;->event:Ljava/lang/String;

    iput-object p4, p0, Lorg/mozilla/geckoview/WebExtensionController$Message;->session:Lorg/mozilla/geckoview/GeckoSession;

    return-void
.end method
