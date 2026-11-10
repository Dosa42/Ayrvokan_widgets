.class final Lorg/mozilla/geckoview/Autofill$Support;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/util/BundleEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/Autofill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Support"
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "AutofillSupport"


# instance fields
.field private final mAutofillSession:Lorg/mozilla/geckoview/Autofill$Session;

.field private mDelegate:Lorg/mozilla/geckoview/Autofill$Delegate;

.field private final mGeckoSession:Lorg/mozilla/geckoview/GeckoSession;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/Autofill$Support;->mGeckoSession:Lorg/mozilla/geckoview/GeckoSession;

    new-instance v0, Lorg/mozilla/geckoview/Autofill$Session;

    invoke-direct {v0, p1}, Lorg/mozilla/geckoview/Autofill$Session;-><init>(Lorg/mozilla/geckoview/GeckoSession;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/Autofill$Support;->mAutofillSession:Lorg/mozilla/geckoview/Autofill$Session;

    return-void
.end method

.method public static getDummyAutofillRect(Lorg/mozilla/geckoview/GeckoSession;ZLandroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/GeckoSession;->getSurfaceBounds(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-virtual {p2, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x0

    aget p1, p0, p1

    const/4 p2, 0x1

    aget p0, p0, p2

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private maybeDispatch(ILorg/mozilla/geckoview/Autofill$Node;)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Support;->mDelegate:Lorg/mozilla/geckoview/Autofill$Delegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/mozilla/geckoview/Autofill$Support;->mGeckoSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-interface {v0, v1, p1, p2}, Lorg/mozilla/geckoview/Autofill$Delegate;->onAutofill(Lorg/mozilla/geckoview/GeckoSession;ILorg/mozilla/geckoview/Autofill$Node;)V

    return-void
.end method


# virtual methods
.method public addNode(Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 3

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Support;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/Autofill$Session;->isEmpty()Z

    move-result v0

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Support;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/geckoview/Autofill$Session;->clear()V

    :cond_0
    new-instance v1, Lorg/mozilla/geckoview/Autofill$Node$Builder;

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Support;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/mozilla/geckoview/Autofill$Node$Builder;-><init>(Lorg/mozilla/geckoview/Autofill$Session;Lorg/mozilla/gecko/util/GeckoBundle;)V

    invoke-virtual {v1}, Lorg/mozilla/geckoview/Autofill$Node$Builder;->build()Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/mozilla/geckoview/Autofill$Node;->setCallback(Lorg/mozilla/gecko/util/EventCallback;)Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Support;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/mozilla/geckoview/Autofill$Session;->addNode(Lorg/mozilla/geckoview/Autofill$Node;)V

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    :goto_0
    invoke-direct {p0, p2, p1}, Lorg/mozilla/geckoview/Autofill$Support;->maybeDispatch(ILorg/mozilla/geckoview/Autofill$Node;)V

    return-void
.end method

.method public autofill(Landroid/util/SparseArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Support;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/Autofill$Session;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v2

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    move v6, v4

    move v7, v6

    :goto_1
    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Support;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/mozilla/geckoview/Autofill$Session;->getNode(I)Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object v7

    if-nez v7, :cond_1

    return-void

    :cond_1
    invoke-virtual {v7}, Lorg/mozilla/geckoview/Autofill$Node;->getParentId()I

    move-result v7

    move v9, v7

    move v7, v6

    move v6, v9

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Support;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v6

    invoke-virtual {v6, v7}, Lorg/mozilla/geckoview/Autofill$Session;->getNode(I)Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lorg/mozilla/geckoview/Autofill$Node;->getCallback()Lorg/mozilla/gecko/util/EventCallback;

    move-result-object v6

    goto :goto_2

    :cond_3
    move-object v6, v0

    :goto_2
    if-eqz v2, :cond_4

    if-eq v6, v2, :cond_6

    :cond_4
    if-eqz v2, :cond_5

    invoke-interface {v2, v3}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    :cond_5
    new-instance v3, Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-direct {v3, v2}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    move-object v2, v6

    :cond_6
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    if-eqz v2, :cond_8

    invoke-interface {v2, v3}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public clear()V
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Support;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/Autofill$Session;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Support;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/Autofill$Session;->clear()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/mozilla/geckoview/Autofill$Support;->maybeDispatch(ILorg/mozilla/geckoview/Autofill$Node;)V

    return-void
.end method

.method public commit(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Support;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/Autofill$Session;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Support;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/Autofill$Session;->getNode(I)Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/mozilla/geckoview/Autofill$Support;->maybeDispatch(ILorg/mozilla/geckoview/Autofill$Node;)V

    return-void
.end method

.method public getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Support;->mAutofillSession:Lorg/mozilla/geckoview/Autofill$Session;

    return-object v0
.end method

.method public getDelegate()Lorg/mozilla/geckoview/Autofill$Delegate;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Support;->mDelegate:Lorg/mozilla/geckoview/Autofill$Delegate;

    return-object v0
.end method

.method public handleMessage(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 1

    const-string v0, "GeckoView:AddAutofill"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lorg/mozilla/geckoview/Autofill$Support;->addNode(Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    goto :goto_0

    :cond_0
    const-string p3, "GeckoView:ClearAutofill"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Support;->clear()V

    goto :goto_0

    :cond_1
    const-string p3, "GeckoView:OnAutofillFocus"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0, p2}, Lorg/mozilla/geckoview/Autofill$Support;->onFocusChanged(Lorg/mozilla/gecko/util/GeckoBundle;)V

    goto :goto_0

    :cond_2
    const-string p3, "GeckoView:CommitAutofill"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p0, p2}, Lorg/mozilla/geckoview/Autofill$Support;->commit(Lorg/mozilla/gecko/util/GeckoBundle;)V

    goto :goto_0

    :cond_3
    const-string p3, "GeckoView:UpdateAutofill"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p2}, Lorg/mozilla/geckoview/Autofill$Support;->update(Lorg/mozilla/gecko/util/GeckoBundle;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Support;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/Autofill$Session;->getFocusedId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x6

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Support;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/mozilla/geckoview/Autofill$Session;->getNode(I)Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/geckoview/Autofill$Support;->maybeDispatch(ILorg/mozilla/geckoview/Autofill$Node;)V

    return-void
.end method

.method public onFocusChanged(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 4

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Support;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/Autofill$Session;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Support;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/Autofill$Session;->getFocusedId()I

    move-result v0

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "root"

    invoke-virtual {p1, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    move v2, p1

    :goto_0
    if-ne v0, v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Support;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lorg/mozilla/geckoview/Autofill$Session;->setFocus(II)V

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Support;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/Autofill$Session;->getNode(I)Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object p1

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lorg/mozilla/geckoview/Autofill$Support;->maybeDispatch(ILorg/mozilla/geckoview/Autofill$Node;)V

    :cond_3
    if-eq v2, v1, :cond_4

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Support;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/mozilla/geckoview/Autofill$Session;->getNode(I)Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object p1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lorg/mozilla/geckoview/Autofill$Support;->maybeDispatch(ILorg/mozilla/geckoview/Autofill$Node;)V

    :cond_4
    return-void
.end method

.method public registerListeners()V
    .locals 6

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Support;->mGeckoSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v0

    const-string v1, "GeckoView:OnAutofillFocus"

    const-string v2, "GeckoView:UpdateAutofill"

    const-string v3, "GeckoView:AddAutofill"

    const-string v4, "GeckoView:ClearAutofill"

    const-string v5, "GeckoView:CommitAutofill"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/mozilla/gecko/EventDispatcher;->registerUiThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V

    return-void
.end method

.method public setDelegate(Lorg/mozilla/geckoview/Autofill$Delegate;)V
    .locals 0

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iput-object p1, p0, Lorg/mozilla/geckoview/Autofill$Support;->mDelegate:Lorg/mozilla/geckoview/Autofill$Delegate;

    return-void
.end method

.method public update(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Support;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/Autofill$Session;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Support;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/mozilla/geckoview/Autofill$Session;->getNode(I)Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {p1, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/Autofill$Node;->setValue(Ljava/lang/String;)Lorg/mozilla/geckoview/Autofill$Node;

    const/4 p1, 0x5

    invoke-direct {p0, p1, v0}, Lorg/mozilla/geckoview/Autofill$Support;->maybeDispatch(ILorg/mozilla/geckoview/Autofill$Node;)V

    return-void
.end method
