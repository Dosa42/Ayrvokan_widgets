.class public Lorg/mozilla/geckoview/ContentBlocking$Settings$Builder;
.super Lorg/mozilla/geckoview/RuntimeSettings$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/ContentBlocking$Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mozilla/geckoview/RuntimeSettings$Builder<",
        "Lorg/mozilla/geckoview/ContentBlocking$Settings;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public antiTracking(I)Lorg/mozilla/geckoview/ContentBlocking$Settings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/ContentBlocking$Settings;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/ContentBlocking$Settings;->setAntiTracking(I)Lorg/mozilla/geckoview/ContentBlocking$Settings;

    return-object p0
.end method

.method public cookieBehavior(I)Lorg/mozilla/geckoview/ContentBlocking$Settings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/ContentBlocking$Settings;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/ContentBlocking$Settings;->setCookieBehavior(I)Lorg/mozilla/geckoview/ContentBlocking$Settings;

    return-object p0
.end method

.method public cookieLifetime(I)Lorg/mozilla/geckoview/ContentBlocking$Settings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/ContentBlocking$Settings;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/ContentBlocking$Settings;->setCookieLifetime(I)Lorg/mozilla/geckoview/ContentBlocking$Settings;

    return-object p0
.end method

.method public enhancedTrackingProtectionLevel(I)Lorg/mozilla/geckoview/ContentBlocking$Settings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/ContentBlocking$Settings;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/ContentBlocking$Settings;->setEnhancedTrackingProtectionLevel(I)Lorg/mozilla/geckoview/ContentBlocking$Settings;

    return-object p0
.end method

.method public newSettings(Lorg/mozilla/geckoview/ContentBlocking$Settings;)Lorg/mozilla/geckoview/ContentBlocking$Settings;
    .locals 1

    .line 1
    new-instance v0, Lorg/mozilla/geckoview/ContentBlocking$Settings;

    invoke-direct {v0, p1}, Lorg/mozilla/geckoview/ContentBlocking$Settings;-><init>(Lorg/mozilla/geckoview/ContentBlocking$Settings;)V

    return-object v0
.end method

.method public bridge synthetic newSettings(Lorg/mozilla/geckoview/RuntimeSettings;)Lorg/mozilla/geckoview/RuntimeSettings;
    .locals 0

    .line 2
    check-cast p1, Lorg/mozilla/geckoview/ContentBlocking$Settings;

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/ContentBlocking$Settings$Builder;->newSettings(Lorg/mozilla/geckoview/ContentBlocking$Settings;)Lorg/mozilla/geckoview/ContentBlocking$Settings;

    move-result-object p1

    return-object p1
.end method

.method public safeBrowsing(I)Lorg/mozilla/geckoview/ContentBlocking$Settings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/ContentBlocking$Settings;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/ContentBlocking$Settings;->setSafeBrowsing(I)Lorg/mozilla/geckoview/ContentBlocking$Settings;

    return-object p0
.end method
