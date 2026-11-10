.class public final Lr1/b0;
.super Lc1/b;
.source "SourceFile"


# instance fields
.field public final synthetic C:Z

.field public final synthetic D:Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr1/b0;->D:Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;

    iput-boolean p2, p0, Lr1/b0;->C:Z

    invoke-direct {p0}, Lc1/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final n(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final r(IIII)V
    .locals 0

    .line 1
    iget-object p3, p0, Lr1/b0;->D:Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;

    iget-object p3, p3, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->b:Lz1/f;

    invoke-virtual {p3, p1, p2}, Lz1/f;->l(II)V

    return-void
.end method

.method public final w()V
    .locals 4

    .line 1
    iget-object v0, p0, Lr1/b0;->D:Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->a:Lq1/f;

    .line 9
    .line 10
    new-instance v2, Lo0/n;

    .line 11
    .line 12
    const/16 v3, 0xb

    .line 13
    .line 14
    invoke-direct {v2, p0, v3}, Lo0/n;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lq1/f;->c(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->e:Lr1/p;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Lr1/p;->f()V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-boolean v1, p0, Lr1/b0;->C:Z

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v1, v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 32
    .line 33
    iget-object v1, v1, La2/b;->f:Lq1/u;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v1, v2}, La2/e0;->B(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 40
    .line 41
    iget-object v0, v0, La2/b;->f:Lq1/u;

    .line 42
    .line 43
    iput-boolean v2, v0, La2/e0;->m:Z

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v0}, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->b()V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method
