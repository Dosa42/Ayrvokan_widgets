.class Lorg/mozilla/geckoview/GeckoInputConnection$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/GeckoInputConnection;->onDefaultKeyEvent(Landroid/view/KeyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoInputConnection;

.field final synthetic val$event:Landroid/view/KeyEvent;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoInputConnection;Landroid/view/KeyEvent;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoInputConnection$8;->this$0:Lorg/mozilla/geckoview/GeckoInputConnection;

    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoInputConnection$8;->val$event:Landroid/view/KeyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection$8;->this$0:Lorg/mozilla/geckoview/GeckoInputConnection;

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoInputConnection$8;->val$event:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoInputConnection;->performDefaultKeyAction(Landroid/view/KeyEvent;)V

    return-void
.end method
