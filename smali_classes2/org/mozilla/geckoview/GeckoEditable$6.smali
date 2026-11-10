.class Lorg/mozilla/geckoview/GeckoEditable$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/GeckoEditable;->icRestartInput(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoEditable;

.field final synthetic val$reason:I

.field final synthetic val$toggleSoftInput:Z


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoEditable;IZ)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable$6;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    iput p2, p0, Lorg/mozilla/geckoview/GeckoEditable$6;->val$reason:I

    iput-boolean p3, p0, Lorg/mozilla/geckoview/GeckoEditable$6;->val$toggleSoftInput:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoEditable$6;->val$toggleSoftInput:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$6;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoEditable;->mSoftInputReentrancyGuard:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$6;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoEditable;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/geckoview/SessionTextInput;->getDelegate()Lorg/mozilla/geckoview/GeckoSession$TextInputDelegate;

    move-result-object v1

    iget v2, p0, Lorg/mozilla/geckoview/GeckoEditable$6;->val$reason:I

    invoke-interface {v1, v0, v2}, Lorg/mozilla/geckoview/GeckoSession$TextInputDelegate;->restartInput(Lorg/mozilla/geckoview/GeckoSession;I)V

    :cond_1
    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoEditable$6;->val$toggleSoftInput:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$6;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    new-instance v1, Lorg/mozilla/geckoview/GeckoEditable$6$1;

    invoke-direct {v1, p0}, Lorg/mozilla/geckoview/GeckoEditable$6$1;-><init>(Lorg/mozilla/geckoview/GeckoEditable$6;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoEditable;->postToInputConnection(Ljava/lang/Runnable;)V

    return-void
.end method
