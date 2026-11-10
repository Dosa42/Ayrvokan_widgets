.class public final Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSessionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/geckoview/GeckoSessionSettings;

    invoke-direct {v0}, Lorg/mozilla/geckoview/GeckoSessionSettings;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;->mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSessionSettings;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/geckoview/GeckoSessionSettings;

    invoke-direct {v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;-><init>(Lorg/mozilla/geckoview/GeckoSessionSettings;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;->mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

    return-void
.end method


# virtual methods
.method public allowJavascript(Z)Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;->mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setAllowJavascript(Z)V

    return-object p0
.end method

.method public build()Lorg/mozilla/geckoview/GeckoSessionSettings;
    .locals 2

    new-instance v0, Lorg/mozilla/geckoview/GeckoSessionSettings;

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;->mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

    invoke-direct {v0, v1}, Lorg/mozilla/geckoview/GeckoSessionSettings;-><init>(Lorg/mozilla/geckoview/GeckoSessionSettings;)V

    return-object v0
.end method

.method public chromeUri(Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;->mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

    invoke-static {v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->access$000(Lorg/mozilla/geckoview/GeckoSessionSettings;Ljava/lang/String;)V

    return-object p0
.end method

.method public contextId(Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;->mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

    invoke-static {v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->access$300(Lorg/mozilla/geckoview/GeckoSessionSettings;Ljava/lang/String;)V

    return-object p0
.end method

.method public displayMode(I)Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;->mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setDisplayMode(I)V

    return-object p0
.end method

.method public fullAccessibilityTree(Z)Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;->mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setFullAccessibilityTree(Z)V

    return-object p0
.end method

.method public screenId(I)Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;->mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

    invoke-static {v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->access$100(Lorg/mozilla/geckoview/GeckoSessionSettings;I)V

    return-object p0
.end method

.method public suspendMediaWhenInactive(Z)Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;->mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setSuspendMediaWhenInactive(Z)V

    return-object p0
.end method

.method public usePrivateMode(Z)Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;->mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

    invoke-static {v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->access$200(Lorg/mozilla/geckoview/GeckoSessionSettings;Z)V

    return-object p0
.end method

.method public useTrackingProtection(Z)Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;->mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setUseTrackingProtection(Z)V

    return-object p0
.end method

.method public userAgentMode(I)Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;->mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setUserAgentMode(I)V

    return-object p0
.end method

.method public userAgentOverride(Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;->mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setUserAgentOverride(Ljava/lang/String;)V

    return-object p0
.end method

.method public viewportMode(I)Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;->mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setViewportMode(I)V

    return-object p0
.end method
