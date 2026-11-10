.class public final Lk2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/o;


# virtual methods
.method public final a(Lk2/f;IZ)I
    .locals 7

    .line 1
    iget v0, p1, Lk2/f;->g:I

    .line 2
    .line 3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Lk2/f;->g(I)V

    .line 8
    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    iget-object v2, p1, Lk2/f;->a:[B

    .line 14
    .line 15
    array-length v0, v2

    .line 16
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x1

    .line 22
    move-object v1, p1

    .line 23
    invoke-virtual/range {v1 .. v6}, Lk2/f;->d([BIIIZ)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :cond_0
    const/4 p2, -0x1

    .line 28
    if-eq v0, p2, :cond_1

    .line 29
    .line 30
    iget-wide v1, p1, Lk2/f;->d:J

    .line 31
    .line 32
    int-to-long v3, v0

    .line 33
    add-long/2addr v1, v3

    .line 34
    iput-wide v1, p1, Lk2/f;->d:J

    .line 35
    .line 36
    :cond_1
    if-ne v0, p2, :cond_3

    .line 37
    .line 38
    if-eqz p3, :cond_2

    .line 39
    .line 40
    return p2

    .line 41
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_3
    return v0
.end method

.method public final b(JIIILk2/n;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Lf2/t;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(ILb3/h;)V
    .locals 0

    .line 1
    invoke-virtual {p2, p1}, Lb3/h;->r(I)V

    return-void
.end method
