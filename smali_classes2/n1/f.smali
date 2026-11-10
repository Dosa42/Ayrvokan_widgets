.class public final Ln1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/nomone/GeckoView/MyGeckoView;


# direct methods
.method public synthetic constructor <init>(Lcom/nomone/GeckoView/MyGeckoView;I)V
    .locals 0

    .line 1
    iput p2, p0, Ln1/f;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Ln1/f;->g:Lcom/nomone/GeckoView/MyGeckoView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Ln1/f;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Ln1/f;->g:Lcom/nomone/GeckoView/MyGeckoView;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_1
    invoke-virtual {v1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lorg/mozilla/gecko/InputMethods;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, v1, Lcom/nomone/GeckoView/MyGeckoView;->d:Z

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    iput-boolean v0, v1, Lcom/nomone/GeckoView/MyGeckoView;->d:Z

    .line 52
    .line 53
    :cond_1
    :goto_1
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
