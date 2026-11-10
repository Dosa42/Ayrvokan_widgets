.class Lorg/mozilla/geckoview/GeckoEditable$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/GeckoEditable;->processKey(Landroid/view/View;IILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoEditable;

.field final synthetic val$action:I

.field final synthetic val$event:Landroid/view/KeyEvent;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoEditable;Landroid/view/View;ILandroid/view/KeyEvent;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable$12;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoEditable$12;->val$view:Landroid/view/View;

    iput p3, p0, Lorg/mozilla/geckoview/GeckoEditable$12;->val$action:I

    iput-object p4, p0, Lorg/mozilla/geckoview/GeckoEditable$12;->val$event:Landroid/view/KeyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$12;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable$12;->val$view:Landroid/view/View;

    iget v2, p0, Lorg/mozilla/geckoview/GeckoEditable$12;->val$action:I

    iget-object v3, p0, Lorg/mozilla/geckoview/GeckoEditable$12;->val$event:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/geckoview/GeckoEditable;->sendKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)V

    return-void
.end method
