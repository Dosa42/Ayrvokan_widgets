.class Lorg/mozilla/geckoview/GeckoView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/GeckoView;->onFocusChanged(ZILandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoView;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoView;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoView$3;->this$0:Lorg/mozilla/geckoview/GeckoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$3;->this$0:Lorg/mozilla/geckoview/GeckoView;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$3;->this$0:Lorg/mozilla/geckoview/GeckoView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/gecko/InputMethods;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoView$3;->this$0:Lorg/mozilla/geckoview/GeckoView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$3;->this$0:Lorg/mozilla/geckoview/GeckoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/mozilla/geckoview/GeckoView;->access$302(Lorg/mozilla/geckoview/GeckoView;Z)Z

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$3;->this$0:Lorg/mozilla/geckoview/GeckoView;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$3;->this$0:Lorg/mozilla/geckoview/GeckoView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$3;->this$0:Lorg/mozilla/geckoview/GeckoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/mozilla/geckoview/GeckoView;->access$302(Lorg/mozilla/geckoview/GeckoView;Z)Z

    :cond_1
    return-void
.end method
