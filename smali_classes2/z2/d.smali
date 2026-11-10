.class public abstract Lz2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz2/p;


# instance fields
.field public final a:Lt2/w;

.field public final b:I

.field public final c:[I

.field public final d:[Lf2/t;

.field public final e:[J

.field public f:I


# direct methods
.method public varargs constructor <init>(Lt2/w;[I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p2

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lz2/d;->a:Lt2/w;

    .line 18
    .line 19
    array-length v0, p2

    .line 20
    iput v0, p0, Lz2/d;->b:I

    .line 21
    .line 22
    new-array v0, v0, [Lf2/t;

    .line 23
    .line 24
    iput-object v0, p0, Lz2/d;->d:[Lf2/t;

    .line 25
    .line 26
    move v0, v1

    .line 27
    :goto_1
    array-length v2, p2

    .line 28
    if-ge v0, v2, :cond_1

    .line 29
    .line 30
    iget-object v2, p0, Lz2/d;->d:[Lf2/t;

    .line 31
    .line 32
    aget v3, p2, v0

    .line 33
    .line 34
    iget-object v4, p1, Lt2/w;->b:[Lf2/t;

    .line 35
    .line 36
    aget-object v3, v4, v3

    .line 37
    .line 38
    aput-object v3, v2, v0

    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-object p2, p0, Lz2/d;->d:[Lf2/t;

    .line 44
    .line 45
    new-instance v0, Lh/f;

    .line 46
    .line 47
    invoke-direct {v0}, Lh/f;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 51
    .line 52
    .line 53
    iget p2, p0, Lz2/d;->b:I

    .line 54
    .line 55
    new-array p2, p2, [I

    .line 56
    .line 57
    iput-object p2, p0, Lz2/d;->c:[I

    .line 58
    .line 59
    :goto_2
    iget p2, p0, Lz2/d;->b:I

    .line 60
    .line 61
    if-ge v1, p2, :cond_2

    .line 62
    .line 63
    iget-object p2, p0, Lz2/d;->c:[I

    .line 64
    .line 65
    iget-object v0, p0, Lz2/d;->d:[Lf2/t;

    .line 66
    .line 67
    aget-object v0, v0, v1

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lt2/w;->a(Lf2/t;)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    aput v0, p2, v1

    .line 74
    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    new-array p1, p2, [J

    .line 79
    .line 80
    iput-object p1, p0, Lz2/d;->e:[J

    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public e(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lz2/d;

    iget-object v2, p0, Lz2/d;->a:Lt2/w;

    iget-object v3, p1, Lz2/d;->a:Lt2/w;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lz2/d;->c:[I

    iget-object p1, p1, Lz2/d;->c:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final g(JI)Z
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p3}, Lz2/d;->i(JI)Z

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, p0, Lz2/d;->b:I

    const/4 v6, 0x1

    if-ge v4, v5, :cond_1

    if-nez v2, :cond_1

    if-eq v4, p3, :cond_0

    invoke-virtual {p0, v0, v1, v4}, Lz2/d;->i(JI)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v6

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    return v3

    :cond_2
    iget-object v2, p0, Lz2/d;->e:[J

    aget-wide v3, v2, p3

    sget v5, Lb3/n;->a:I

    add-long v7, v0, p1

    xor-long/2addr v0, v7

    xor-long/2addr p1, v7

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_3

    const-wide v7, 0x7fffffffffffffffL

    :cond_3
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    aput-wide p1, v2, p3

    return v6
.end method

.method public final h(I)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lz2/d;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lz2/d;->c:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lz2/d;->f:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/d;->a:Lt2/w;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz2/d;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lz2/d;->f:I

    :cond_0
    iget v0, p0, Lz2/d;->f:I

    return v0
.end method

.method public final i(JI)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lz2/d;->e:[J

    aget-wide v1, v0, p3

    cmp-long p1, v1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
