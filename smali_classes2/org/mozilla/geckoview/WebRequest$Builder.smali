.class public Lorg/mozilla/geckoview/WebRequest$Builder;
.super Lorg/mozilla/geckoview/WebMessage$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mCacheMode:I

.field mMethod:Ljava/lang/String;

.field mReferrer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/WebMessage$Builder;-><init>(Ljava/lang/String;)V

    const-string p1, "GET"

    iput-object p1, p0, Lorg/mozilla/geckoview/WebRequest$Builder;->mMethod:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lorg/mozilla/geckoview/WebRequest$Builder;->mCacheMode:I

    return-void
.end method


# virtual methods
.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/geckoview/WebMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/geckoview/WebRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/geckoview/WebRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/geckoview/WebRequest$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/mozilla/geckoview/WebMessage$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/geckoview/WebMessage$Builder;

    return-object p0
.end method

.method public body(Ljava/nio/ByteBuffer;)Lorg/mozilla/geckoview/WebRequest$Builder;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "body must be directly allocated"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/mozilla/geckoview/WebMessage$Builder;->mBody:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public build()Lorg/mozilla/geckoview/WebRequest;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/WebMessage$Builder;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/mozilla/geckoview/WebRequest;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/WebRequest;-><init>(Lorg/mozilla/geckoview/WebRequest$Builder;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must set URI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cacheMode(I)Lorg/mozilla/geckoview/WebRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    iput p1, p0, Lorg/mozilla/geckoview/WebRequest$Builder;->mCacheMode:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown cache mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic header(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/geckoview/WebMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/geckoview/WebRequest$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/geckoview/WebRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/geckoview/WebRequest$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/mozilla/geckoview/WebMessage$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/geckoview/WebMessage$Builder;

    return-object p0
.end method

.method public method(Ljava/lang/String;)Lorg/mozilla/geckoview/WebRequest$Builder;
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/WebRequest$Builder;->mMethod:Ljava/lang/String;

    return-object p0
.end method

.method public referrer(Ljava/lang/String;)Lorg/mozilla/geckoview/WebRequest$Builder;
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/WebRequest$Builder;->mReferrer:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic uri(Ljava/lang/String;)Lorg/mozilla/geckoview/WebMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/WebRequest$Builder;->uri(Ljava/lang/String;)Lorg/mozilla/geckoview/WebRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public uri(Ljava/lang/String;)Lorg/mozilla/geckoview/WebRequest$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lorg/mozilla/geckoview/WebMessage$Builder;->uri(Ljava/lang/String;)Lorg/mozilla/geckoview/WebMessage$Builder;

    return-object p0
.end method
