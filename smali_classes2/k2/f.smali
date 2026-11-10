.class public final Lk2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public final b:La3/i;

.field public final c:J

.field public d:J

.field public e:[B

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(La3/i;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk2/f;->b:La3/i;

    iput-wide p2, p0, Lk2/f;->d:J

    iput-wide p4, p0, Lk2/f;->c:J

    const/high16 p1, 0x10000

    new-array p1, p1, [B

    iput-object p1, p0, Lk2/f;->e:[B

    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Lk2/f;->a:[B

    return-void
.end method


# virtual methods
.method public final a(IZ)Z
    .locals 7

    .line 1
    iget v0, p0, Lk2/f;->f:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iget-object v1, p0, Lk2/f;->e:[B

    .line 5
    .line 6
    array-length v2, v1

    .line 7
    if-le v0, v2, :cond_0

    .line 8
    .line 9
    array-length v1, v1

    .line 10
    mul-int/lit8 v1, v1, 0x2

    .line 11
    .line 12
    const/high16 v2, 0x10000

    .line 13
    .line 14
    add-int/2addr v2, v0

    .line 15
    const/high16 v3, 0x80000

    .line 16
    .line 17
    add-int/2addr v0, v3

    .line 18
    sget v3, Lb3/n;->a:I

    .line 19
    .line 20
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v1, p0, Lk2/f;->e:[B

    .line 29
    .line 30
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lk2/f;->e:[B

    .line 35
    .line 36
    :cond_0
    iget v0, p0, Lk2/f;->g:I

    .line 37
    .line 38
    iget v1, p0, Lk2/f;->f:I

    .line 39
    .line 40
    sub-int/2addr v0, v1

    .line 41
    move v5, v0

    .line 42
    :goto_0
    if-ge v5, p1, :cond_2

    .line 43
    .line 44
    iget-object v2, p0, Lk2/f;->e:[B

    .line 45
    .line 46
    iget v3, p0, Lk2/f;->f:I

    .line 47
    .line 48
    move-object v1, p0

    .line 49
    move v4, p1

    .line 50
    move v6, p2

    .line 51
    invoke-virtual/range {v1 .. v6}, Lk2/f;->d([BIIIZ)I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    const/4 v0, -0x1

    .line 56
    if-ne v5, v0, :cond_1

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    return p1

    .line 60
    :cond_1
    iget v0, p0, Lk2/f;->f:I

    .line 61
    .line 62
    add-int/2addr v0, v5

    .line 63
    iput v0, p0, Lk2/f;->g:I

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget p2, p0, Lk2/f;->f:I

    .line 67
    .line 68
    add-int/2addr p2, p1

    .line 69
    iput p2, p0, Lk2/f;->f:I

    .line 70
    .line 71
    const/4 p1, 0x1

    .line 72
    return p1
.end method

.method public final b([BIIZ)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p3, p4}, Lk2/f;->a(IZ)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p4, p0, Lk2/f;->e:[B

    iget v0, p0, Lk2/f;->f:I

    sub-int/2addr v0, p3

    invoke-static {p4, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public final c([BII)I
    .locals 8

    .line 1
    iget v0, p0, Lk2/f;->g:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v2, p0, Lk2/f;->e:[B

    .line 12
    .line 13
    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lk2/f;->g(I)V

    .line 17
    .line 18
    .line 19
    move v1, v0

    .line 20
    :goto_0
    if-nez v1, :cond_1

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x1

    .line 24
    move-object v2, p0

    .line 25
    move-object v3, p1

    .line 26
    move v4, p2

    .line 27
    move v5, p3

    .line 28
    invoke-virtual/range {v2 .. v7}, Lk2/f;->d([BIIIZ)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    :cond_1
    const/4 p1, -0x1

    .line 33
    if-eq v1, p1, :cond_2

    .line 34
    .line 35
    iget-wide p1, p0, Lk2/f;->d:J

    .line 36
    .line 37
    int-to-long v2, v1

    .line 38
    add-long/2addr p1, v2

    .line 39
    iput-wide p1, p0, Lk2/f;->d:J

    .line 40
    .line 41
    :cond_2
    return v1
.end method

.method public final d([BIIIZ)I
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    iget-object v0, p0, Lk2/f;->b:La3/i;

    invoke-interface {v0, p1, p2, p3}, La3/i;->d([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    return p2

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    add-int/2addr p4, p1

    return p4

    :cond_2
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method public final e([BIIZ)Z
    .locals 8

    .line 1
    iget v0, p0, Lk2/f;->g:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v2, p0, Lk2/f;->e:[B

    .line 13
    .line 14
    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lk2/f;->g(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    move v6, v0

    .line 21
    :goto_1
    const/4 v0, -0x1

    .line 22
    if-ge v6, p3, :cond_1

    .line 23
    .line 24
    if-eq v6, v0, :cond_1

    .line 25
    .line 26
    move-object v2, p0

    .line 27
    move-object v3, p1

    .line 28
    move v4, p2

    .line 29
    move v5, p3

    .line 30
    move v7, p4

    .line 31
    invoke-virtual/range {v2 .. v7}, Lk2/f;->d([BIIIZ)I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    if-eq v6, v0, :cond_2

    .line 37
    .line 38
    iget-wide p1, p0, Lk2/f;->d:J

    .line 39
    .line 40
    int-to-long p3, v6

    .line 41
    add-long/2addr p1, p3

    .line 42
    iput-wide p1, p0, Lk2/f;->d:J

    .line 43
    .line 44
    :cond_2
    if-eq v6, v0, :cond_3

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    :cond_3
    return v1
.end method

.method public final f(I)V
    .locals 7

    .line 1
    const/4 v6, 0x0

    .line 2
    iget v0, p0, Lk2/f;->g:I

    .line 3
    .line 4
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lk2/f;->g(I)V

    .line 9
    .line 10
    .line 11
    move v4, v0

    .line 12
    :goto_0
    const/4 v0, -0x1

    .line 13
    if-ge v4, p1, :cond_0

    .line 14
    .line 15
    if-eq v4, v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lk2/f;->a:[B

    .line 18
    .line 19
    array-length v0, v0

    .line 20
    add-int/2addr v0, v4

    .line 21
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iget-object v1, p0, Lk2/f;->a:[B

    .line 26
    .line 27
    neg-int v2, v4

    .line 28
    move-object v0, p0

    .line 29
    move v5, v6

    .line 30
    invoke-virtual/range {v0 .. v5}, Lk2/f;->d([BIIIZ)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    if-eq v4, v0, :cond_1

    .line 36
    .line 37
    iget-wide v0, p0, Lk2/f;->d:J

    .line 38
    .line 39
    int-to-long v2, v4

    .line 40
    add-long/2addr v0, v2

    .line 41
    iput-wide v0, p0, Lk2/f;->d:J

    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public final g(I)V
    .locals 5

    .line 1
    iget v0, p0, Lk2/f;->g:I

    sub-int/2addr v0, p1

    iput v0, p0, Lk2/f;->g:I

    const/4 v1, 0x0

    iput v1, p0, Lk2/f;->f:I

    iget-object v2, p0, Lk2/f;->e:[B

    array-length v3, v2

    const/high16 v4, 0x80000

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    const/high16 v3, 0x10000

    add-int/2addr v3, v0

    new-array v3, v3, [B

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-static {v2, p1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lk2/f;->e:[B

    return-void
.end method
