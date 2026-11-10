.class public interface abstract Ld3/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ld3/r0;ZI)Ld3/r0;
    .locals 10

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    const/high16 v1, 0x3f000000    # 0.5f

    .line 7
    .line 8
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/high16 p1, -0x40800000    # -1.0f

    .line 14
    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    int-to-float p1, p2

    .line 21
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 22
    .line 23
    .line 24
    const/high16 p1, -0x41000000    # -0.5f

    .line 25
    .line 26
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 27
    .line 28
    .line 29
    iget v2, p0, Ld3/r0;->a:I

    .line 30
    .line 31
    iget v3, p0, Ld3/r0;->b:I

    .line 32
    .line 33
    new-instance v6, Landroid/graphics/Matrix;

    .line 34
    .line 35
    iget-object p1, p0, Ld3/r0;->e:Landroid/graphics/Matrix;

    .line 36
    .line 37
    invoke-direct {v6, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Ld3/r0;->i:Ld3/q0;

    .line 44
    .line 45
    check-cast p1, Ld3/o0;

    .line 46
    .line 47
    invoke-virtual {p1}, Ld3/o0;->c()V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Ld3/r0;->h:Ln2/a0;

    .line 51
    .line 52
    invoke-virtual {p1}, Ln2/a0;->e()V

    .line 53
    .line 54
    .line 55
    new-instance p1, Ld3/r0;

    .line 56
    .line 57
    iget v4, p0, Ld3/r0;->c:I

    .line 58
    .line 59
    iget v5, p0, Ld3/r0;->d:I

    .line 60
    .line 61
    iget-object v7, p0, Ld3/r0;->f:Landroid/os/Handler;

    .line 62
    .line 63
    iget-object v8, p0, Ld3/r0;->g:Lj0/j;

    .line 64
    .line 65
    new-instance v9, Ld3/o0;

    .line 66
    .line 67
    const/4 p2, 0x1

    .line 68
    invoke-direct {v9, p0, p2}, Ld3/o0;-><init>(Ljava/lang/Object;I)V

    .line 69
    .line 70
    .line 71
    move-object v1, p1

    .line 72
    invoke-direct/range {v1 .. v9}, Ld3/r0;-><init>(IIIILandroid/graphics/Matrix;Landroid/os/Handler;Lj0/j;Ld3/o0;)V

    .line 73
    .line 74
    .line 75
    return-object p1
.end method

.method public static b(Landroid/content/Context;)I
    .locals 1

    .line 1
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0
.end method


# virtual methods
.method public abstract stop()V
.end method
