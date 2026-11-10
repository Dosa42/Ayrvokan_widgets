.class public final Lcom/google/android/gms/internal/play_billing/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/play_billing/b0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/b0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/s0;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/d0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    iput-object p0, p1, Lcom/google/android/gms/internal/play_billing/b0;->C:Lcom/google/android/gms/internal/play_billing/d0;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    .line 1
    add-int v0, p2, p2

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/d0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/b0;->l0(II)V

    return-void
.end method

.method public final b(JI)V
    .locals 3

    .line 1
    add-long v0, p1, p1

    const/16 v2, 0x3f

    shr-long/2addr p1, v2

    xor-long/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/d0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/b0;->n0(JI)V

    return-void
.end method

.method public final c(ILjava/util/List;)V
    .locals 5

    .line 1
    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/x0;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/d0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/play_billing/x0;

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/play_billing/x0;->d(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/internal/play_billing/b0;->j0(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    check-cast v3, Lcom/google/android/gms/internal/play_billing/z;

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/internal/play_billing/b0;->c0(ILcom/google/android/gms/internal/play_billing/z;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/play_billing/b0;->j0(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final d(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/d0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/b0;->l0(II)V

    return-void
.end method

.method public final e(JI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/d0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/b0;->n0(JI)V

    return-void
.end method

.method public final f(IZ)V
    .locals 1

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/d0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/b0;->m0(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/b0;->a0(B)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final g(ILcom/google/android/gms/internal/play_billing/z;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/d0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/b0;->c0(ILcom/google/android/gms/internal/play_billing/z;)V

    return-void
.end method

.method public final h(ILjava/util/List;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/z;

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/d0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/play_billing/b0;->c0(ILcom/google/android/gms/internal/play_billing/z;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i(DI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/d0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/b0;->f0(JI)V

    return-void
.end method

.method public final j(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/d0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/b0;->h0(II)V

    return-void
.end method

.method public final k(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/d0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/b0;->d0(II)V

    return-void
.end method

.method public final l(JI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/d0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/b0;->f0(JI)V

    return-void
.end method

.method public final m(FI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/d0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/b0;->d0(II)V

    return-void
.end method

.method public final n(ILcom/google/android/gms/internal/play_billing/t1;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p3, Lcom/google/android/gms/internal/play_billing/j1;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/d0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/play_billing/b0;->k0(II)V

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/b0;->C:Lcom/google/android/gms/internal/play_billing/d0;

    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/play_billing/t1;->c(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/d0;)V

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/b0;->k0(II)V

    return-void
.end method

.method public final o(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/d0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/b0;->h0(II)V

    return-void
.end method

.method public final p(JI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/d0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/b0;->n0(JI)V

    return-void
.end method

.method public final q(ILcom/google/android/gms/internal/play_billing/t1;Ljava/lang/Object;)V
    .locals 1

    .line 1
    shl-int/lit8 p1, p1, 0x3

    check-cast p3, Lcom/google/android/gms/internal/play_billing/j1;

    or-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/d0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/b0;->m0(I)V

    move-object p1, p3

    check-cast p1, Lcom/google/android/gms/internal/play_billing/r;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/r;->a(Lcom/google/android/gms/internal/play_billing/t1;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/b0;->m0(I)V

    iget-object p1, v0, Lcom/google/android/gms/internal/play_billing/b0;->C:Lcom/google/android/gms/internal/play_billing/d0;

    invoke-interface {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/t1;->c(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/d0;)V

    return-void
.end method

.method public final r(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/d0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/b0;->d0(II)V

    return-void
.end method

.method public final s(JI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/d0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/b0;->f0(JI)V

    return-void
.end method
