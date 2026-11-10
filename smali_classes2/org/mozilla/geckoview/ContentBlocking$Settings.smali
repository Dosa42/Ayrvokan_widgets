.class public Lorg/mozilla/geckoview/ContentBlocking$Settings;
.super Lorg/mozilla/geckoview/RuntimeSettings;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/ContentBlocking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/ContentBlocking$Settings$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mozilla/geckoview/ContentBlocking$Settings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAt:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mCm:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mCmList:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mCookieBehavior:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mCookieLifetime:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mEtpEnabled:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mEtpStrict:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mFp:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mFpList:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSbMalware:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mSbPhishing:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mSt:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mStList:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mStStrict:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/geckoview/ContentBlocking$Settings$1;

    invoke-direct {v0}, Lorg/mozilla/geckoview/ContentBlocking$Settings$1;-><init>()V

    sput-object v0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/ContentBlocking$Settings;-><init>(Lorg/mozilla/geckoview/ContentBlocking$Settings;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/geckoview/ContentBlocking$Settings;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/mozilla/geckoview/ContentBlocking$Settings;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Lorg/mozilla/geckoview/ContentBlocking$Settings;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/geckoview/RuntimeSettings;Lorg/mozilla/geckoview/ContentBlocking$Settings;)V
    .locals 4

    .line 3
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/RuntimeSettings;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;)V

    new-instance p1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const/16 v0, 0x2e

    invoke-static {v0}, Lorg/mozilla/geckoview/ContentBlocking;->catToAtPref(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "urlclassifier.trackingTable"

    invoke-direct {p1, p0, v1, v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mAt:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance p1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "privacy.trackingprotection.cryptomining.enabled"

    invoke-direct {p1, p0, v1, v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mCm:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance p1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/mozilla/geckoview/ContentBlocking;->catToCmListPref(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "urlclassifier.features.cryptomining.blacklistTables"

    invoke-direct {p1, p0, v3, v2}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mCmList:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance p1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const-string v2, "privacy.trackingprotection.fingerprinting.enabled"

    invoke-direct {p1, p0, v2, v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mFp:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance p1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const-string v2, "urlclassifier.features.fingerprinting.blacklistTables"

    invoke-static {v1}, Lorg/mozilla/geckoview/ContentBlocking;->catToFpListPref(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, p0, v2, v3}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mFpList:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance p1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const-string v2, "privacy.socialtracking.block_cookies.enabled"

    invoke-direct {p1, p0, v2, v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mSt:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance p1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const-string v2, "privacy.trackingprotection.socialtracking.enabled"

    invoke-direct {p1, p0, v2, v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mStStrict:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance p1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const-string v2, "urlclassifier.features.socialtracking.annotate.blacklistTables"

    invoke-static {v1}, Lorg/mozilla/geckoview/ContentBlocking;->catToStListPref(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, p0, v2, v3}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mStList:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance p1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "browser.safebrowsing.malware.enabled"

    invoke-direct {p1, p0, v3, v2}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mSbMalware:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance p1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const-string v3, "browser.safebrowsing.phishing.enabled"

    invoke-direct {p1, p0, v3, v2}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mSbPhishing:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance p1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "network.cookie.cookieBehavior"

    invoke-direct {p1, p0, v3, v2}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mCookieBehavior:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance p1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const-string v2, "network.cookie.lifetimePolicy"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, p0, v2, v1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mCookieLifetime:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance p1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const-string v1, "privacy.trackingprotection.annotate_channels"

    invoke-direct {p1, p0, v1, v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mEtpEnabled:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance p1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const-string v1, "privacy.annotate_channels.strict_list.enabled"

    invoke-direct {p1, p0, v1, v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mEtpStrict:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lorg/mozilla/geckoview/ContentBlocking$Settings;->updateSettings(Lorg/mozilla/geckoview/ContentBlocking$Settings;)V

    :cond_0
    return-void
.end method

.method private updateSettings(Lorg/mozilla/geckoview/ContentBlocking$Settings;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/RuntimeSettings;->updatePrefs(Lorg/mozilla/geckoview/RuntimeSettings;)V

    return-void
.end method


# virtual methods
.method public getAntiTrackingCategories()I
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mAt:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/mozilla/geckoview/ContentBlocking;->atListToAtCat(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mCmList:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/mozilla/geckoview/ContentBlocking;->cmListToAtCat(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mFpList:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/mozilla/geckoview/ContentBlocking;->fpListToAtCat(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mStList:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/mozilla/geckoview/ContentBlocking;->stListToAtCat(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getCookieBehavior()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mCookieBehavior:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCookieLifetime()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mCookieLifetime:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEnhancedTrackingProtectionLevel()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mEtpStrict:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mEtpEnabled:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getSafeBrowsingCategories()I
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mSbMalware:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/mozilla/geckoview/ContentBlocking;->sbMalwareToSbCat(Z)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mSbPhishing:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lorg/mozilla/geckoview/ContentBlocking;->sbPhishingToSbCat(Z)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public setAntiTracking(I)Lorg/mozilla/geckoview/ContentBlocking$Settings;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mAt:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Lorg/mozilla/geckoview/ContentBlocking;->catToAtPref(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mCm:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Lorg/mozilla/geckoview/ContentBlocking;->catToCmPref(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mCmList:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Lorg/mozilla/geckoview/ContentBlocking;->catToCmListPref(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mFp:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Lorg/mozilla/geckoview/ContentBlocking;->catToFpPref(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mFpList:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Lorg/mozilla/geckoview/ContentBlocking;->catToFpListPref(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mSt:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Lorg/mozilla/geckoview/ContentBlocking;->catToStPref(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mStList:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Lorg/mozilla/geckoview/ContentBlocking;->catToStListPref(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setCookieBehavior(I)Lorg/mozilla/geckoview/ContentBlocking$Settings;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mCookieBehavior:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setCookieLifetime(I)Lorg/mozilla/geckoview/ContentBlocking$Settings;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mCookieLifetime:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setEnhancedTrackingProtectionLevel(I)Lorg/mozilla/geckoview/ContentBlocking$Settings;
    .locals 5

    iget-object v0, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mEtpEnabled:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mEtpStrict:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    if-ne p1, v2, :cond_2

    move v1, v3

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setSafeBrowsing(I)Lorg/mozilla/geckoview/ContentBlocking$Settings;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mSbMalware:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Lorg/mozilla/geckoview/ContentBlocking;->catToSbMalware(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mSbPhishing:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Lorg/mozilla/geckoview/ContentBlocking;->catToSbPhishing(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setStrictSocialTrackingProtection(Z)Lorg/mozilla/geckoview/ContentBlocking$Settings;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/ContentBlocking$Settings;->mStStrict:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    return-object p0
.end method
