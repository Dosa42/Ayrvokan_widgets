.class Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession$SessionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SessionStateIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field private final mState:Lorg/mozilla/geckoview/GeckoSession$SessionState;

.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoSession$SessionState;


# direct methods
.method private constructor <init>(Lorg/mozilla/geckoview/GeckoSession$SessionState;Lorg/mozilla/geckoview/GeckoSession$SessionState;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;-><init>(Lorg/mozilla/geckoview/GeckoSession$SessionState;Lorg/mozilla/geckoview/GeckoSession$SessionState;I)V

    return-void
.end method

.method private constructor <init>(Lorg/mozilla/geckoview/GeckoSession$SessionState;Lorg/mozilla/geckoview/GeckoSession$SessionState;I)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->this$0:Lorg/mozilla/geckoview/GeckoSession$SessionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->mIndex:I

    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->mState:Lorg/mozilla/geckoview/GeckoSession$SessionState;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/geckoview/GeckoSession$SessionState;Lorg/mozilla/geckoview/GeckoSession$SessionState;ILorg/mozilla/geckoview/GeckoSession$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;-><init>(Lorg/mozilla/geckoview/GeckoSession$SessionState;Lorg/mozilla/geckoview/GeckoSession$SessionState;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryItem;

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->add(Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryItem;)V

    return-void
.end method

.method public add(Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryItem;)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hasNext()Z
    .locals 3

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->mState:Lorg/mozilla/geckoview/GeckoSession$SessionState;

    invoke-static {v0}, Lorg/mozilla/geckoview/GeckoSession$SessionState;->access$600(Lorg/mozilla/geckoview/GeckoSession$SessionState;)[Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->mIndex:I

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->mState:Lorg/mozilla/geckoview/GeckoSession$SessionState;

    invoke-static {v2}, Lorg/mozilla/geckoview/GeckoSession$SessionState;->access$600(Lorg/mozilla/geckoview/GeckoSession$SessionState;)[Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->mIndex:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->next()Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryItem;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryItem;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->mIndex:I

    new-instance v0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateItem;

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->this$0:Lorg/mozilla/geckoview/GeckoSession$SessionState;

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->mState:Lorg/mozilla/geckoview/GeckoSession$SessionState;

    invoke-static {v2}, Lorg/mozilla/geckoview/GeckoSession$SessionState;->access$600(Lorg/mozilla/geckoview/GeckoSession$SessionState;)[Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v2

    iget v3, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->mIndex:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateItem;-><init>(Lorg/mozilla/geckoview/GeckoSession$SessionState;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/geckoview/GeckoSession$1;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->mIndex:I

    return v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->previous()Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryItem;

    move-result-object v0

    return-object v0
.end method

.method public previous()Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryItem;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->mIndex:I

    new-instance v0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateItem;

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->this$0:Lorg/mozilla/geckoview/GeckoSession$SessionState;

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->mState:Lorg/mozilla/geckoview/GeckoSession$SessionState;

    invoke-static {v2}, Lorg/mozilla/geckoview/GeckoSession$SessionState;->access$600(Lorg/mozilla/geckoview/GeckoSession$SessionState;)[Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v2

    iget v3, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->mIndex:I

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateItem;-><init>(Lorg/mozilla/geckoview/GeckoSession$SessionState;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/geckoview/GeckoSession$1;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryItem;

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;->set(Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryItem;)V

    return-void
.end method

.method public set(Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryItem;)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
