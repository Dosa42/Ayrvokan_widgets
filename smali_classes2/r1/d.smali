.class public final synthetic Lr1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/nomone/vr_desktop/Applications/BrowserApplication;


# direct methods
.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/Applications/BrowserApplication;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr1/d;->a:Lcom/nomone/vr_desktop/Applications/BrowserApplication;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    sget-object p1, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->v:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Lr1/d;->a:Lcom/nomone/vr_desktop/Applications/BrowserApplication;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const/4 v0, 0x0

    .line 13
    if-nez p2, :cond_3

    .line 14
    .line 15
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    const/4 v1, 0x4

    .line 20
    if-ne p2, v1, :cond_3

    .line 21
    .line 22
    iget-object p2, p1, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->n:Lq1/f;

    .line 23
    .line 24
    iget-object p2, p2, Lq1/f;->G:Lu1/o;

    .line 25
    .line 26
    iget-object v1, p2, Lu1/o;->b:Lcom/nomone/vr_desktop/Applications/KeyboardApplication;

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    move v1, v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, v1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 33
    .line 34
    iget-object v1, v1, La2/b;->f:Lq1/u;

    .line 35
    .line 36
    iget-boolean v1, v1, La2/e0;->k:Z

    .line 37
    .line 38
    :goto_0
    if-eqz v1, :cond_1

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-virtual {p2, v0, p1}, Lu1/o;->a(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-boolean p2, p1, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->p:Z

    .line 46
    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    iget-boolean p2, p1, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->t:Z

    .line 50
    .line 51
    if-nez p2, :cond_2

    .line 52
    .line 53
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-gtz p2, :cond_2

    .line 58
    .line 59
    sget-object p2, Lq1/f;->L:Lo1/j0;

    .line 60
    .line 61
    const-string p3, "browserGoBackTask"

    .line 62
    .line 63
    const-wide/16 v0, 0xfa

    .line 64
    .line 65
    iget-object p1, p1, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->u:Lo0/n;

    .line 66
    .line 67
    invoke-virtual {p2, p1, p3, v0, v1}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 71
    :cond_3
    return v0
.end method
