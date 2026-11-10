.class public final Lu1/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lq1/f;

.field public b:Lcom/nomone/vr_desktop/Applications/KeyboardApplication;

.field public final c:Lz1/e;

.field public d:Lu1/n;

.field public final e:Landroid/view/ViewGroup;

.field public f:Landroid/view/inputmethod/BaseInputConnection;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Z

.field public j:Z

.field public final k:Lo0/n;


# direct methods
.method public constructor <init>(Lq1/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lz1/e;

    .line 5
    .line 6
    invoke-direct {v0}, Lz1/e;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lu1/o;->c:Lz1/e;

    .line 10
    .line 11
    new-instance v0, Lu1/l;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Lu1/l;-><init>(Lu1/o;I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lu1/o;->d:Lu1/n;

    .line 18
    .line 19
    const-string v0, ""

    .line 20
    .line 21
    iput-object v0, p0, Lu1/o;->g:Ljava/lang/String;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lu1/o;->j:Z

    .line 25
    .line 26
    new-instance v0, Lo0/n;

    .line 27
    .line 28
    const/16 v1, 0xf

    .line 29
    .line 30
    invoke-direct {v0, p0, v1}, Lo0/n;-><init>(Ljava/lang/Object;I)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lu1/o;->k:Lo0/n;

    .line 34
    .line 35
    iput-object p1, p0, Lu1/o;->a:Lq1/f;

    .line 36
    .line 37
    iget-object p1, p1, Lq1/f;->c:Landroid/view/ViewGroup;

    .line 38
    .line 39
    iput-object p1, p0, Lu1/o;->e:Landroid/view/ViewGroup;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lu1/o;->h:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lu1/o;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu1/o;->g:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lu1/o;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lu1/o;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lu1/o;->g:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    :goto_0
    sget-object p2, Lq1/f;->L:Lo1/j0;

    const-string v0, "hideKeyboardTask"

    int-to-long v1, p1

    iget-object p1, p0, Lu1/o;->k:Lo0/n;

    invoke-virtual {p2, p1, v0, v1, v2}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    return-void
.end method

.method public final b(Landroid/view/KeyEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lu1/o;->f:Landroid/view/inputmethod/BaseInputConnection;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    iget-object v1, p0, Lu1/o;->e:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lu1/o;->f:Landroid/view/inputmethod/BaseInputConnection;

    :cond_0
    iget-object v0, p0, Lu1/o;->f:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method
