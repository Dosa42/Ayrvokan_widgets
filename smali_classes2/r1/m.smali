.class public final Lr1/m;
.super Lc1/b;
.source "SourceFile"


# instance fields
.field public final C:Lz1/c;

.field public final synthetic D:Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;Lr1/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr1/m;->D:Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;

    invoke-direct {p0}, Lc1/b;-><init>()V

    iget-object p1, p2, Lr1/q;->b:Lz1/c;

    iput-object p1, p0, Lr1/m;->C:Lz1/c;

    return-void
.end method


# virtual methods
.method public final n(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr1/m;->C:Lz1/c;

    invoke-virtual {v0, p1, p2}, Lz1/c;->n(II)V

    return-void
.end method

.method public final r(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr1/m;->D:Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;

    iget-object v0, v0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->b:Lz1/f;

    invoke-virtual {v0, p1, p2}, Lz1/f;->l(II)V

    iget-object p1, p0, Lr1/m;->C:Lz1/c;

    invoke-virtual {p1, p3, p4}, Lz1/c;->l(II)V

    return-void
.end method

.method public final w()V
    .locals 4

    .line 1
    iget-object v0, p0, Lr1/m;->D:Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;

    iget-object v1, v0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->c:La2/b;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    new-instance v2, Lo0/n;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lo0/n;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lq1/f;->c(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->b()V

    return-void
.end method
