.class Lorg/mozilla/geckoview/GeckoEditable$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/GeckoEditable;->toggleSoftInput(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoEditable;

.field final synthetic val$flags:I

.field final synthetic val$force:Z

.field final synthetic val$state:I


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoEditable;IZI)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable$7;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    iput p2, p0, Lorg/mozilla/geckoview/GeckoEditable$7;->val$flags:I

    iput-boolean p3, p0, Lorg/mozilla/geckoview/GeckoEditable$7;->val$force:Z

    iput p4, p0, Lorg/mozilla/geckoview/GeckoEditable$7;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$7;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoEditable;->mSoftInputReentrancyGuard:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$7;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoEditable;->mSoftInputReentrancyGuard:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/mozilla/geckoview/GeckoEditable$7;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    iget-object v3, v3, Lorg/mozilla/geckoview/GeckoEditable;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/geckoview/GeckoSession;

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {v3}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mozilla/geckoview/SessionTextInput;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v4, v2

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v1

    :goto_2
    iget v5, p0, Lorg/mozilla/geckoview/GeckoEditable$7;->val$flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    move v2, v1

    :cond_5
    iget-boolean v5, p0, Lorg/mozilla/geckoview/GeckoEditable$7;->val$force:Z

    if-nez v5, :cond_7

    if-nez v0, :cond_6

    if-eqz v4, :cond_6

    if-nez v2, :cond_7

    :cond_6
    return-void

    :cond_7
    iget v0, p0, Lorg/mozilla/geckoview/GeckoEditable$7;->val$state:I

    if-nez v0, :cond_8

    invoke-virtual {v3}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/SessionTextInput;->getDelegate()Lorg/mozilla/geckoview/GeckoSession$TextInputDelegate;

    move-result-object v0

    invoke-interface {v0, v3}, Lorg/mozilla/geckoview/GeckoSession$TextInputDelegate;->hideSoftInput(Lorg/mozilla/geckoview/GeckoSession;)V

    return-void

    :cond_8
    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-direct {v0}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>()V

    iget-boolean v2, p0, Lorg/mozilla/geckoview/GeckoEditable$7;->val$force:Z

    xor-int/2addr v1, v2

    const-string v2, "force"

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3}, Lorg/mozilla/geckoview/GeckoSession;->getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v1

    const-string v2, "GeckoView:ZoomToInput"

    invoke-virtual {v1, v2, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    invoke-virtual {v3}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/SessionTextInput;->getDelegate()Lorg/mozilla/geckoview/GeckoSession$TextInputDelegate;

    move-result-object v0

    invoke-interface {v0, v3}, Lorg/mozilla/geckoview/GeckoSession$TextInputDelegate;->showSoftInput(Lorg/mozilla/geckoview/GeckoSession;)V

    return-void
.end method
