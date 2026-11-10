.class public final Landroidx/media/AudioAttributesImplBaseParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ld0/a;)Ly/c;
    .locals 3

    .line 1
    new-instance v0, Ly/c;

    invoke-direct {v0}, Ly/c;-><init>()V

    iget v1, v0, Ly/c;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ld0/a;->f(II)I

    move-result v1

    iput v1, v0, Ly/c;->a:I

    iget v1, v0, Ly/c;->b:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ld0/a;->f(II)I

    move-result v1

    iput v1, v0, Ly/c;->b:I

    iget v1, v0, Ly/c;->c:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ld0/a;->f(II)I

    move-result v1

    iput v1, v0, Ly/c;->c:I

    iget v1, v0, Ly/c;->d:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ld0/a;->f(II)I

    move-result p0

    iput p0, v0, Ly/c;->d:I

    return-object v0
.end method

.method public static write(Ly/c;Ld0/a;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Ly/c;->a:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ld0/a;->j(II)V

    iget v0, p0, Ly/c;->b:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ld0/a;->j(II)V

    iget v0, p0, Ly/c;->c:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ld0/a;->j(II)V

    iget p0, p0, Ly/c;->d:I

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Ld0/a;->j(II)V

    return-void
.end method
