.class public interface abstract Ly1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract C()I
.end method

.method public abstract D()I
.end method

.method public abstract E()I
.end method

.method public abstract G()V
.end method

.method public abstract H()I
.end method

.method public abstract I()I
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public abstract d()I
.end method

.method public abstract e()I
.end method

.method public abstract f(F)I
.end method

.method public g(F)I
    .locals 2

    .line 1
    invoke-interface {p0}, Ly1/a;->e()I

    move-result v0

    invoke-interface {p0}, Ly1/a;->j()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v0, v1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public i(Lcom/nomone/vr_desktop/LaunchActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-interface {p0}, Ly1/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lt1/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract j()I
.end method

.method public l(F)I
    .locals 2

    .line 1
    invoke-interface {p0}, Ly1/a;->E()I

    move-result v0

    invoke-interface {p0}, Ly1/a;->s()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v0, v1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public abstract n()I
.end method

.method public abstract r()I
.end method

.method public abstract s()I
.end method

.method public u(F)I
    .locals 2

    .line 1
    invoke-interface {p0}, Ly1/a;->I()I

    move-result v0

    invoke-interface {p0}, Ly1/a;->n()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v0, v1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public w(FF)I
    .locals 0

    .line 1
    invoke-interface {p0, p2}, Ly1/a;->f(F)I

    move-result p2

    invoke-interface {p0}, Ly1/a;->G()V

    add-int/lit8 p2, p2, 0x0

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method public abstract z()Z
.end method
