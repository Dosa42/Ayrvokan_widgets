.class Lorg/mozilla/geckoview/GeckoResult$AllOfResult;
.super Lorg/mozilla/geckoview/GeckoResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllOfResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mozilla/geckoview/GeckoResult<",
        "Ljava/util/List<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final mAccumulator:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end field

.field private mFailed:Z

.field private final mPending:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private mResultCount:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoResult;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoResult$AllOfResult;->mFailed:Z

    iput v0, p0, Lorg/mozilla/geckoview/GeckoResult$AllOfResult;->mResultCount:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoResult$AllOfResult;->mAccumulator:Ljava/util/List;

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoResult$AllOfResult;->mPending:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/mozilla/geckoview/GeckoResult;->complete(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/geckoview/GeckoResult;

    new-instance v3, Lorg/mozilla/geckoview/f;

    invoke-direct {v3, p0, v1, v0}, Lorg/mozilla/geckoview/f;-><init>(Ljava/lang/Object;II)V

    new-instance v1, Lorg/mozilla/geckoview/g;

    invoke-direct {v1, p0, v0}, Lorg/mozilla/geckoview/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3, v1}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic g(Lorg/mozilla/geckoview/GeckoResult$AllOfResult;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoResult$AllOfResult;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic h(Lorg/mozilla/geckoview/GeckoResult$AllOfResult;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/mozilla/geckoview/GeckoResult$AllOfResult;->lambda$new$0(ILjava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$0(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lorg/mozilla/geckoview/GeckoResult$AllOfResult;->onResult(Ljava/lang/Object;I)V

    return-void
.end method

.method private onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoResult$AllOfResult;->mFailed:Z

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->completeExceptionally(Ljava/lang/Throwable;)V

    return-void
.end method

.method private onResult(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoResult$AllOfResult;->mFailed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/mozilla/geckoview/GeckoResult$AllOfResult;->mResultCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/geckoview/GeckoResult$AllOfResult;->mResultCount:I

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoResult$AllOfResult;->mAccumulator:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lorg/mozilla/geckoview/GeckoResult$AllOfResult;->mResultCount:I

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoResult$AllOfResult;->mPending:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoResult$AllOfResult;->mAccumulator:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->complete(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
