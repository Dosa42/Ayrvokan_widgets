.class final Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;
.super Lorg/mozilla/gecko/mozglue/JNIObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/SessionAccessibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NativeProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/SessionAccessibility;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/SessionAccessibility;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-direct {p0}, Lorg/mozilla/gecko/mozglue/JNIObject;-><init>()V

    return-void
.end method

.method private replaceFocusPathCache([Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 6
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v1, v1, Lorg/mozilla/geckoview/SessionAccessibility;->mFocusPathCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v4, v4, Lorg/mozilla/geckoview/SessionAccessibility;->mFocusPathCache:Landroid/util/SparseArray;

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v1, p1, Lorg/mozilla/geckoview/SessionAccessibility;->mCaches:Ljava/util/LinkedList;

    iget-object p1, p1, Lorg/mozilla/geckoview/SessionAccessibility;->mFocusPathCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v1, p1, Lorg/mozilla/geckoview/SessionAccessibility;->mCaches:Ljava/util/LinkedList;

    iget-object p1, p1, Lorg/mozilla/geckoview/SessionAccessibility;->mFocusPathCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private replaceViewportCache([Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 6
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v1, v1, Lorg/mozilla/geckoview/SessionAccessibility;->mViewportCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v4, v4, Lorg/mozilla/geckoview/SessionAccessibility;->mViewportCache:Landroid/util/SparseArray;

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v1, p1, Lorg/mozilla/geckoview/SessionAccessibility;->mCaches:Ljava/util/LinkedList;

    iget-object p1, p1, Lorg/mozilla/geckoview/SessionAccessibility;->mViewportCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v1, p1, Lorg/mozilla/geckoview/SessionAccessibility;->mCaches:Ljava/util/LinkedList;

    iget-object p1, p1, Lorg/mozilla/geckoview/SessionAccessibility;->mViewportCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private sendEventNative(IIILorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 7
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
        stubName = "SendEvent"
    .end annotation

    new-instance v6, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider$1;-><init>(Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;IIILorg/mozilla/gecko/util/GeckoBundle;)V

    invoke-static {v6}, Lorg/mozilla/gecko/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setAttached(Z)V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v0, p1}, Lorg/mozilla/geckoview/SessionAccessibility;->access$002(Lorg/mozilla/geckoview/SessionAccessibility;Z)Z

    return-void
.end method

.method private updateAccessibleFocusBoundaries(II)V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/SessionAccessibility;->access$1402(Lorg/mozilla/geckoview/SessionAccessibility;I)I

    iget-object p1, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {p1, p2}, Lorg/mozilla/geckoview/SessionAccessibility;->access$1502(Lorg/mozilla/geckoview/SessionAccessibility;I)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private updateCachedBounds([Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 7
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    monitor-enter v0

    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    iget-object v4, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lorg/mozilla/geckoview/SessionAccessibility;->access$200(Lorg/mozilla/geckoview/SessionAccessibility;I)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v5, "bounds"

    const-string v6, "bounds"

    invoke-virtual {v3, v6}, Lorg/mozilla/gecko/util/GeckoBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->putIntArray(Ljava/lang/String;[I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public native click(I)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method public native copy(I)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method public native cut(I)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method public disposeNative()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public native exploreByTouch(IFF)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method public native getNodeInfo(I)Lorg/mozilla/gecko/util/GeckoBundle;
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "current"
    .end annotation
.end method

.method public native navigateText(IIIIZZ)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method public native paste(I)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method public native pivotNative(IIZZ)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
        stubName = "Pivot"
    .end annotation
.end method

.method public native setSelection(III)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method public native setText(ILjava/lang/String;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method
