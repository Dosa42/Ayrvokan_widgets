.class public final synthetic Lr1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/nomone/vr_desktop/Applications/BrowserApplication;


# direct methods
.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/Applications/BrowserApplication;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr1/e;->a:Lcom/nomone/vr_desktop/Applications/BrowserApplication;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    sget-object p1, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->v:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Lr1/e;->a:Lcom/nomone/vr_desktop/Applications/BrowserApplication;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    and-int/2addr v0, v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v2

    .line 20
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    iput-boolean v0, p1, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->t:Z

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-ne v3, v1, :cond_2

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iput-boolean v2, p1, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->t:Z

    .line 38
    .line 39
    :cond_2
    :goto_1
    iget-boolean v0, p1, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->t:Z

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    sget-object v0, Lq1/f;->L:Lo1/j0;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->u:Lo0/n;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    and-int/lit8 p1, p1, 0x2

    .line 55
    .line 56
    if-lez p1, :cond_4

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    move v1, v2

    .line 60
    :goto_2
    return v1
.end method
