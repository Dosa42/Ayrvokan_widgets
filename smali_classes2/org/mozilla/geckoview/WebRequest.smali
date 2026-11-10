.class public Lorg/mozilla/geckoview/WebRequest;
.super Lorg/mozilla/geckoview/WebMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/WebRequest$Builder;
    }
.end annotation

.annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
.end annotation


# static fields
.field public static final CACHE_MODE_DEFAULT:I = 0x1

.field static final CACHE_MODE_FIRST:I = 0x1

.field public static final CACHE_MODE_FORCE_CACHE:I = 0x5

.field static final CACHE_MODE_LAST:I = 0x6

.field public static final CACHE_MODE_NO_CACHE:I = 0x4

.field public static final CACHE_MODE_NO_STORE:I = 0x2

.field public static final CACHE_MODE_ONLY_IF_CACHED:I = 0x6

.field public static final CACHE_MODE_RELOAD:I = 0x3


# instance fields
.field public final body:Ljava/nio/ByteBuffer;

.field public final cacheMode:I

.field public final method:Ljava/lang/String;

.field public final referrer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/mozilla/geckoview/WebRequest$Builder;

    invoke-direct {v0, p1}, Lorg/mozilla/geckoview/WebRequest$Builder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/WebRequest;-><init>(Lorg/mozilla/geckoview/WebRequest$Builder;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/geckoview/WebRequest$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/WebMessage;-><init>(Lorg/mozilla/geckoview/WebMessage$Builder;)V

    iget-object v0, p1, Lorg/mozilla/geckoview/WebRequest$Builder;->mMethod:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/geckoview/WebRequest;->method:Ljava/lang/String;

    iget v0, p1, Lorg/mozilla/geckoview/WebRequest$Builder;->mCacheMode:I

    iput v0, p0, Lorg/mozilla/geckoview/WebRequest;->cacheMode:I

    iget-object v0, p1, Lorg/mozilla/geckoview/WebRequest$Builder;->mReferrer:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/geckoview/WebRequest;->referrer:Ljava/lang/String;

    iget-object p1, p1, Lorg/mozilla/geckoview/WebMessage$Builder;->mBody:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/mozilla/geckoview/WebRequest;->body:Ljava/nio/ByteBuffer;

    return-void
.end method
