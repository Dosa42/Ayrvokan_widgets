.class Lorg/mozilla/geckoview/GeckoEditable$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/GeckoEditable$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/mozilla/geckoview/GeckoEditable$6;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoEditable$6;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable$6$1;->this$1:Lorg/mozilla/geckoview/GeckoEditable$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$6$1;->this$1:Lorg/mozilla/geckoview/GeckoEditable$6;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoEditable$6;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    invoke-static {v0}, Lorg/mozilla/geckoview/GeckoEditable;->access$300(Lorg/mozilla/geckoview/GeckoEditable;)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable$6$1;->this$1:Lorg/mozilla/geckoview/GeckoEditable$6;

    iget v2, v1, Lorg/mozilla/geckoview/GeckoEditable$6;->val$reason:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lorg/mozilla/geckoview/GeckoEditable$6;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    iget-object v2, v2, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    if-nez v2, :cond_0

    move v0, v4

    :cond_0
    iget-object v1, v1, Lorg/mozilla/geckoview/GeckoEditable$6;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    invoke-virtual {v1, v4, v0}, Lorg/mozilla/geckoview/GeckoEditable;->toggleSoftInput(ZI)V

    return-void
.end method
