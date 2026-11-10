.class public Lorg/mozilla/geckoview/WebExtension$MetaData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetaData"
.end annotation


# instance fields
.field public final allowedInPrivateBrowsing:Z

.field public final baseUrl:Ljava/lang/String;

.field public final blocklistState:I

.field public final creatorName:Ljava/lang/String;

.field public final creatorUrl:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final disabledFlags:I

.field public final enabled:Z

.field public final homepageUrl:Ljava/lang/String;

.field public final icon:Lorg/mozilla/geckoview/WebExtension$Icon;

.field public final isRecommended:Z

.field public final name:Ljava/lang/String;

.field public final openOptionsPageInTab:Z

.field public final optionsPageUrl:Ljava/lang/String;

.field public final origins:[Ljava/lang/String;

.field public final permissions:[Ljava/lang/String;

.field public final signedState:I

.field final synthetic this$0:Lorg/mozilla/geckoview/WebExtension;

.field public final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/WebExtension;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->this$0:Lorg/mozilla/geckoview/WebExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->icon:Lorg/mozilla/geckoview/WebExtension$Icon;

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->permissions:[Ljava/lang/String;

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->origins:[Ljava/lang/String;

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->name:Ljava/lang/String;

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->description:Ljava/lang/String;

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->version:Ljava/lang/String;

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->creatorName:Ljava/lang/String;

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->creatorUrl:Ljava/lang/String;

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->homepageUrl:Ljava/lang/String;

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->optionsPageUrl:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->openOptionsPageInTab:Z

    iput-boolean v0, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->isRecommended:Z

    iput v0, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->blocklistState:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->signedState:I

    iput v0, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->disabledFlags:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->enabled:Z

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->baseUrl:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->allowedInPrivateBrowsing:Z

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 5

    .line 2
    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->this$0:Lorg/mozilla/geckoview/WebExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "promptPermissions"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->permissions:[Ljava/lang/String;

    const-string p1, "origins"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->origins:[Ljava/lang/String;

    const-string p1, "description"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->description:Ljava/lang/String;

    const-string p1, "version"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->version:Ljava/lang/String;

    const-string p1, "creatorName"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->creatorName:Ljava/lang/String;

    const-string p1, "creatorURL"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->creatorUrl:Ljava/lang/String;

    const-string p1, "homepageURL"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->homepageUrl:Ljava/lang/String;

    const-string p1, "name"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->name:Ljava/lang/String;

    const-string p1, "optionsPageURL"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->optionsPageUrl:Ljava/lang/String;

    const-string p1, "openOptionsPageInTab"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->openOptionsPageInTab:Z

    const-string p1, "isRecommended"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->isRecommended:Z

    const-string p1, "blocklistState"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->blocklistState:I

    const-string p1, "enabled"

    invoke-virtual {p2, p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->enabled:Z

    const-string p1, "baseURL"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->baseUrl:Ljava/lang/String;

    const-string p1, "privateBrowsingAllowed"

    invoke-virtual {p2, p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->allowedInPrivateBrowsing:Z

    const-string p1, "signedState"

    const/4 v1, -0x1

    invoke-virtual {p2, p1, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x4

    if-gt p1, v2, :cond_0

    iput p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->signedState:I

    goto :goto_0

    :cond_0
    iput v1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->signedState:I

    :goto_0
    const-string p1, "disabledFlags"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    move v2, v0

    :goto_1
    if-ge v0, v1, :cond_4

    aget-object v3, p1, v0

    const-string v4, "userDisabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    or-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_1
    const-string v4, "blocklistDisabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    or-int/lit8 v2, v2, 0x4

    goto :goto_2

    :cond_2
    const-string v4, "appDisabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x8

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iput v2, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->disabledFlags:I

    const-string p1, "icons"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lorg/mozilla/geckoview/WebExtension$Icon;

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mozilla/geckoview/WebExtension$Icon;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->icon:Lorg/mozilla/geckoview/WebExtension$Icon;

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MetaData;->icon:Lorg/mozilla/geckoview/WebExtension$Icon;

    :goto_3
    return-void
.end method
