.class public La2/b0;
.super La2/e0;
.source "SourceFile"

# interfaces
.implements La2/r;
.implements La2/a;


# instance fields
.field public final p:Lh/a;

.field public final q:Landroidx/fragment/app/h;


# direct methods
.method public constructor <init>(Lq1/f;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, La2/e0;-><init>(Lq1/f;)V

    new-instance p1, Lh/a;

    const/16 v0, 0xb

    invoke-direct {p1, v0}, Lh/a;-><init>(I)V

    iput-object p1, p0, La2/b0;->p:Lh/a;

    new-instance v0, Landroidx/fragment/app/h;

    invoke-direct {v0, p1}, Landroidx/fragment/app/h;-><init>(Lh/a;)V

    iput-object v0, p0, La2/b0;->q:Landroidx/fragment/app/h;

    return-void
.end method


# virtual methods
.method public final D(Lo1/q;Z)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, La2/e0;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, La2/e0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, La2/e0;->f:Lq1/f;

    if-eqz p2, :cond_2

    move p2, v1

    :goto_0
    if-ge p2, v2, :cond_4

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La2/r;

    if-eqz v4, :cond_1

    invoke-interface {v4, p1}, La2/r;->i(Lo1/q;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Lq1/f;->e(ZZ)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    move p2, v1

    :goto_1
    if-ge p2, v2, :cond_4

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La2/r;

    if-eqz v4, :cond_3

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La2/r;

    invoke-interface {v4, p1}, La2/r;->t(Lo1/q;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v1, v1}, Lq1/f;->e(ZZ)V

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    return v1
.end method

.method public final g(Landroidx/fragment/app/h;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public i(Lo1/q;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, La2/b0;->D(Lo1/q;Z)Z

    move-result p1

    return p1
.end method

.method public k()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, La2/e0;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, La2/e0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La2/r;

    instance-of v5, v4, La2/a;

    if-eqz v5, :cond_1

    check-cast v4, La2/a;

    iget-object v5, p0, La2/b0;->p:Lh/a;

    invoke-virtual {v5}, Lh/a;->A()V

    invoke-interface {v4}, La2/a;->k()Z

    iget-object v5, p0, La2/b0;->q:Landroidx/fragment/app/h;

    invoke-interface {v4, v5}, La2/a;->g(Landroidx/fragment/app/h;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final l()Landroid/graphics/Rect;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public t(Lo1/q;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, La2/b0;->D(Lo1/q;Z)Z

    return v0
.end method
