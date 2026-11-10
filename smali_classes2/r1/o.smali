.class public final Lr1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/q;


# instance fields
.field public final synthetic f:Lq1/d;

.field public final synthetic g:Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;Lr1/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr1/o;->g:Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;

    iput-object p2, p0, Lr1/o;->f:Lq1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lr1/o;->g:Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 4
    .line 5
    iget-boolean v1, v1, La2/p;->n0:Z

    .line 6
    .line 7
    xor-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->g(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lr1/o;->g:Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 4
    .line 5
    iget-boolean v1, v1, La2/p;->n0:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 10
    .line 11
    iget-object v1, v1, Lq1/f;->F:Lu1/i;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2}, Lu1/i;->h(Lu1/h;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, v0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 18
    .line 19
    iget-object v0, v0, Lq1/f;->k:Ljava/util/List;

    .line 20
    .line 21
    iget-object v1, p0, Lr1/o;->f:Lq1/d;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method
