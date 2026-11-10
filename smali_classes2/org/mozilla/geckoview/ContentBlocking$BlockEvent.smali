.class public Lorg/mozilla/geckoview/ContentBlocking$BlockEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/ContentBlocking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockEvent"
.end annotation


# instance fields
.field private final mAntiTrackingCat:I

.field private final mCookieBehaviorCat:I

.field private final mIsBlocking:Z

.field private final mSafeBrowsingCat:I

.field public final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlocking$BlockEvent;->uri:Ljava/lang/String;

    iput p2, p0, Lorg/mozilla/geckoview/ContentBlocking$BlockEvent;->mAntiTrackingCat:I

    iput p3, p0, Lorg/mozilla/geckoview/ContentBlocking$BlockEvent;->mSafeBrowsingCat:I

    iput p4, p0, Lorg/mozilla/geckoview/ContentBlocking$BlockEvent;->mCookieBehaviorCat:I

    iput-boolean p5, p0, Lorg/mozilla/geckoview/ContentBlocking$BlockEvent;->mIsBlocking:Z

    return-void
.end method

.method public static fromBundle(Lorg/mozilla/gecko/util/GeckoBundle;)Lorg/mozilla/geckoview/ContentBlocking$BlockEvent;
    .locals 11

    const-string v0, "uri"

    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "blockedList"

    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadedLists"

    invoke-virtual {p0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "error"

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v3, "category"

    invoke-virtual {p0, v3, v4, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    if-eqz v0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    cmp-long v0, v6, v4

    if-nez v0, :cond_1

    invoke-static {v8, v9}, Lorg/mozilla/geckoview/ContentBlocking;->isBlockingGeckoCbCat(J)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    new-instance v10, Lorg/mozilla/geckoview/ContentBlocking$BlockEvent;

    invoke-static {p0}, Lorg/mozilla/geckoview/ContentBlocking;->atListToAtCat(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0}, Lorg/mozilla/geckoview/ContentBlocking;->cmListToAtCat(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v1, v3

    invoke-static {p0}, Lorg/mozilla/geckoview/ContentBlocking;->fpListToAtCat(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v1, v3

    invoke-static {p0}, Lorg/mozilla/geckoview/ContentBlocking;->stListToAtCat(Ljava/lang/String;)I

    move-result p0

    or-int v3, v1, p0

    invoke-static {v6, v7}, Lorg/mozilla/geckoview/ContentBlocking;->errorToSbCat(J)I

    move-result v4

    invoke-static {v8, v9}, Lorg/mozilla/geckoview/ContentBlocking;->geckoCatToCbCat(J)I

    move-result v5

    move-object v1, v10

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/geckoview/ContentBlocking$BlockEvent;-><init>(Ljava/lang/String;IIIZ)V

    return-object v10
.end method


# virtual methods
.method public getAntiTrackingCategory()I
    .locals 1

    iget v0, p0, Lorg/mozilla/geckoview/ContentBlocking$BlockEvent;->mAntiTrackingCat:I

    return v0
.end method

.method public getCookieBehaviorCategory()I
    .locals 1

    iget v0, p0, Lorg/mozilla/geckoview/ContentBlocking$BlockEvent;->mCookieBehaviorCat:I

    return v0
.end method

.method public getSafeBrowsingCategory()I
    .locals 1

    iget v0, p0, Lorg/mozilla/geckoview/ContentBlocking$BlockEvent;->mSafeBrowsingCat:I

    return v0
.end method

.method public isBlocking()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/geckoview/ContentBlocking$BlockEvent;->mIsBlocking:Z

    return v0
.end method
