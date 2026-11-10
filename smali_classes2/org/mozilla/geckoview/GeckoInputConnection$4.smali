.class Lorg/mozilla/geckoview/GeckoInputConnection$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/GeckoInputConnection;->notifySelectionChange(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoInputConnection;

.field final synthetic val$compositionEnd:I

.field final synthetic val$compositionStart:I

.field final synthetic val$end:I

.field final synthetic val$start:I


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoInputConnection;IIII)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoInputConnection$4;->this$0:Lorg/mozilla/geckoview/GeckoInputConnection;

    iput p2, p0, Lorg/mozilla/geckoview/GeckoInputConnection$4;->val$start:I

    iput p3, p0, Lorg/mozilla/geckoview/GeckoInputConnection$4;->val$end:I

    iput p4, p0, Lorg/mozilla/geckoview/GeckoInputConnection$4;->val$compositionStart:I

    iput p5, p0, Lorg/mozilla/geckoview/GeckoInputConnection$4;->val$compositionEnd:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection$4;->this$0:Lorg/mozilla/geckoview/GeckoInputConnection;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoInputConnection;->getInputDelegate()Lorg/mozilla/geckoview/GeckoSession$TextInputDelegate;

    move-result-object v1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection$4;->this$0:Lorg/mozilla/geckoview/GeckoInputConnection;

    invoke-static {v0}, Lorg/mozilla/geckoview/GeckoInputConnection;->access$000(Lorg/mozilla/geckoview/GeckoInputConnection;)Lorg/mozilla/geckoview/GeckoSession;

    move-result-object v2

    iget v3, p0, Lorg/mozilla/geckoview/GeckoInputConnection$4;->val$start:I

    iget v4, p0, Lorg/mozilla/geckoview/GeckoInputConnection$4;->val$end:I

    iget v5, p0, Lorg/mozilla/geckoview/GeckoInputConnection$4;->val$compositionStart:I

    iget v6, p0, Lorg/mozilla/geckoview/GeckoInputConnection$4;->val$compositionEnd:I

    invoke-interface/range {v1 .. v6}, Lorg/mozilla/geckoview/GeckoSession$TextInputDelegate;->updateSelection(Lorg/mozilla/geckoview/GeckoSession;IIII)V

    return-void
.end method
