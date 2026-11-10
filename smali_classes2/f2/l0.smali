.class public abstract Lf2/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf2/i0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf2/i0;

    invoke-direct {v0}, Lf2/i0;-><init>()V

    sput-object v0, Lf2/l0;->a:Lf2/i0;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)I
.end method

.method public final b(ILf2/j0;Lf2/k0;IZ)I
    .locals 2

    .line 1
    const/4 p5, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p5}, Lf2/l0;->c(ILf2/j0;Z)Lf2/j0;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    iget p2, p2, Lf2/j0;->b:I

    .line 7
    .line 8
    invoke-virtual {p0, p2, p3}, Lf2/l0;->h(ILf2/k0;)Lf2/k0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v0, v0, Lf2/k0;->f:I

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, p1, :cond_8

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    if-eqz p4, :cond_3

    .line 19
    .line 20
    if-eq p4, v1, :cond_6

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    if-ne p4, v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lf2/l0;->k()Z

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    if-eqz p4, :cond_0

    .line 30
    .line 31
    move p4, p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lf2/l0;->j()I

    .line 34
    .line 35
    .line 36
    move-result p4

    .line 37
    add-int/2addr p4, p1

    .line 38
    :goto_0
    if-ne p2, p4, :cond_5

    .line 39
    .line 40
    invoke-virtual {p0}, Lf2/l0;->k()Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    move p5, p1

    .line 47
    :cond_1
    move p2, p5

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_3
    invoke-virtual {p0}, Lf2/l0;->k()Z

    .line 56
    .line 57
    .line 58
    move-result p4

    .line 59
    if-eqz p4, :cond_4

    .line 60
    .line 61
    move p4, p1

    .line 62
    goto :goto_1

    .line 63
    :cond_4
    invoke-virtual {p0}, Lf2/l0;->j()I

    .line 64
    .line 65
    .line 66
    move-result p4

    .line 67
    add-int/2addr p4, p1

    .line 68
    :goto_1
    if-ne p2, p4, :cond_5

    .line 69
    .line 70
    move p2, p1

    .line 71
    goto :goto_2

    .line 72
    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 73
    .line 74
    :cond_6
    :goto_2
    if-ne p2, p1, :cond_7

    .line 75
    .line 76
    return p1

    .line 77
    :cond_7
    invoke-virtual {p0, p2, p3}, Lf2/l0;->h(ILf2/k0;)Lf2/k0;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget p1, p1, Lf2/k0;->e:I

    .line 82
    .line 83
    return p1

    .line 84
    :cond_8
    add-int/2addr p1, v1

    .line 85
    return p1
.end method

.method public abstract c(ILf2/j0;Z)Lf2/j0;
.end method

.method public final d(Ljava/lang/Object;Lf2/j0;)Lf2/j0;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lf2/l0;->a(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lf2/l0;->c(ILf2/j0;Z)Lf2/j0;

    move-result-object p1

    return-object p1
.end method

.method public abstract e()I
.end method

.method public final f(Lf2/k0;Lf2/j0;IJJ)Landroid/util/Pair;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf2/l0;->j()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz p3, :cond_2

    .line 6
    .line 7
    if-ge p3, v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, p3, p1, p6, p7}, Lf2/l0;->i(ILf2/k0;J)Lf2/k0;

    .line 10
    .line 11
    .line 12
    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    cmp-long p3, p4, p6

    .line 18
    .line 19
    if-nez p3, :cond_0

    .line 20
    .line 21
    iget-wide p4, p1, Lf2/k0;->g:J

    .line 22
    .line 23
    cmp-long p3, p4, p6

    .line 24
    .line 25
    if-nez p3, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    return-object p1

    .line 29
    :cond_0
    iget p3, p1, Lf2/k0;->e:I

    .line 30
    .line 31
    iget-wide v0, p1, Lf2/k0;->i:J

    .line 32
    .line 33
    add-long/2addr v0, p4

    .line 34
    :goto_0
    const/4 p4, 0x1

    .line 35
    invoke-virtual {p0, p3, p2, p4}, Lf2/l0;->c(ILf2/j0;Z)Lf2/j0;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    iget-wide p4, p4, Lf2/j0;->c:J

    .line 40
    .line 41
    cmp-long v2, p4, p6

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    cmp-long v2, v0, p4

    .line 46
    .line 47
    if-ltz v2, :cond_1

    .line 48
    .line 49
    iget v2, p1, Lf2/k0;->f:I

    .line 50
    .line 51
    if-ge p3, v2, :cond_1

    .line 52
    .line 53
    sub-long/2addr v0, p4

    .line 54
    add-int/lit8 p3, p3, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object p1, p2, Lf2/j0;->a:Ljava/lang/Object;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1

    .line 71
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 74
    .line 75
    .line 76
    throw p1
.end method

.method public abstract g(I)Ljava/lang/Object;
.end method

.method public final h(ILf2/k0;)Lf2/k0;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lf2/l0;->i(ILf2/k0;J)Lf2/k0;

    move-result-object p1

    return-object p1
.end method

.method public abstract i(ILf2/k0;J)Lf2/k0;
.end method

.method public abstract j()I
.end method

.method public final k()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf2/l0;->j()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
