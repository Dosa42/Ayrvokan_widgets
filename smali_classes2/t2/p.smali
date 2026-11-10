.class public final Lt2/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La3/b;

.field public final b:I

.field public final c:Lb3/h;

.field public d:Lt2/o;

.field public e:Lt2/o;

.field public f:Lt2/o;

.field public g:J


# direct methods
.method public constructor <init>(La3/b;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt2/p;->a:La3/b;

    .line 5
    .line 6
    check-cast p1, La3/m;

    .line 7
    .line 8
    iget p1, p1, La3/m;->b:I

    .line 9
    .line 10
    iput p1, p0, Lt2/p;->b:I

    .line 11
    .line 12
    new-instance v0, Lb3/h;

    .line 13
    .line 14
    const/16 v1, 0x20

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lb3/h;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lt2/p;->c:Lb3/h;

    .line 20
    .line 21
    new-instance v0, Lt2/o;

    .line 22
    .line 23
    const-wide/16 v1, 0x0

    .line 24
    .line 25
    invoke-direct {v0, v1, v2, p1}, Lt2/o;-><init>(JI)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lt2/p;->d:Lt2/o;

    .line 29
    .line 30
    iput-object v0, p0, Lt2/p;->e:Lt2/o;

    .line 31
    .line 32
    iput-object v0, p0, Lt2/p;->f:Lt2/o;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 4

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :goto_0
    iget-object v0, p0, Lt2/p;->d:Lt2/o;

    .line 9
    .line 10
    iget-wide v1, v0, Lt2/o;->c:J

    .line 11
    .line 12
    cmp-long v1, p1, v1

    .line 13
    .line 14
    if-ltz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lt2/p;->a:La3/b;

    .line 17
    .line 18
    iget-object v0, v0, Lt2/o;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, La3/a;

    .line 21
    .line 22
    check-cast v1, La3/m;

    .line 23
    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    iget-object v2, v1, La3/m;->c:[La3/a;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    aput-object v0, v2, v3

    .line 29
    .line 30
    invoke-virtual {v1, v2}, La3/m;->a([La3/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    monitor-exit v1

    .line 34
    iget-object v0, p0, Lt2/p;->d:Lt2/o;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    iput-object v1, v0, Lt2/o;->d:Ljava/lang/Object;

    .line 38
    .line 39
    iget-object v2, v0, Lt2/o;->e:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v2, Lt2/o;

    .line 42
    .line 43
    iput-object v1, v0, Lt2/o;->e:Ljava/lang/Object;

    .line 44
    .line 45
    iput-object v2, p0, Lt2/p;->d:Lt2/o;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    monitor-exit v1

    .line 50
    throw p1

    .line 51
    :cond_1
    iget-object p1, p0, Lt2/p;->e:Lt2/o;

    .line 52
    .line 53
    iget-wide p1, p1, Lt2/o;->b:J

    .line 54
    .line 55
    iget-wide v1, v0, Lt2/o;->b:J

    .line 56
    .line 57
    cmp-long p1, p1, v1

    .line 58
    .line 59
    if-gez p1, :cond_2

    .line 60
    .line 61
    iput-object v0, p0, Lt2/p;->e:Lt2/o;

    .line 62
    .line 63
    :cond_2
    return-void
.end method

.method public final b(I)I
    .locals 8

    .line 1
    iget-object v0, p0, Lt2/p;->f:Lt2/o;

    .line 2
    .line 3
    iget-boolean v1, v0, Lt2/o;->a:Z

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Lt2/p;->a:La3/b;

    .line 8
    .line 9
    check-cast v1, La3/m;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget v2, v1, La3/m;->e:I

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    add-int/2addr v2, v3

    .line 16
    iput v2, v1, La3/m;->e:I

    .line 17
    .line 18
    iget v2, v1, La3/m;->f:I

    .line 19
    .line 20
    if-lez v2, :cond_0

    .line 21
    .line 22
    iget-object v4, v1, La3/m;->g:[La3/a;

    .line 23
    .line 24
    add-int/lit8 v2, v2, -0x1

    .line 25
    .line 26
    iput v2, v1, La3/m;->f:I

    .line 27
    .line 28
    aget-object v5, v4, v2

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    aput-object v6, v4, v2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v5, La3/a;

    .line 35
    .line 36
    iget v2, v1, La3/m;->b:I

    .line 37
    .line 38
    new-array v2, v2, [B

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-direct {v5, v2, v4}, La3/a;-><init>([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    :goto_0
    monitor-exit v1

    .line 45
    new-instance v1, Lt2/o;

    .line 46
    .line 47
    iget-object v2, p0, Lt2/p;->f:Lt2/o;

    .line 48
    .line 49
    iget-wide v6, v2, Lt2/o;->c:J

    .line 50
    .line 51
    iget v2, p0, Lt2/p;->b:I

    .line 52
    .line 53
    invoke-direct {v1, v6, v7, v2}, Lt2/o;-><init>(JI)V

    .line 54
    .line 55
    .line 56
    iput-object v5, v0, Lt2/o;->d:Ljava/lang/Object;

    .line 57
    .line 58
    iput-object v1, v0, Lt2/o;->e:Ljava/lang/Object;

    .line 59
    .line 60
    iput-boolean v3, v0, Lt2/o;->a:Z

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    monitor-exit v1

    .line 65
    throw p1

    .line 66
    :cond_1
    :goto_1
    iget-object v0, p0, Lt2/p;->f:Lt2/o;

    .line 67
    .line 68
    iget-wide v0, v0, Lt2/o;->c:J

    .line 69
    .line 70
    iget-wide v2, p0, Lt2/p;->g:J

    .line 71
    .line 72
    sub-long/2addr v0, v2

    .line 73
    long-to-int v0, v0

    .line 74
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    return p1
.end method

.method public final c(JLjava/nio/ByteBuffer;I)V
    .locals 6

    .line 1
    :goto_0
    iget-object v0, p0, Lt2/p;->e:Lt2/o;

    .line 2
    .line 3
    iget-wide v1, v0, Lt2/o;->c:J

    .line 4
    .line 5
    cmp-long v1, p1, v1

    .line 6
    .line 7
    if-ltz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lt2/o;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lt2/o;

    .line 12
    .line 13
    iput-object v0, p0, Lt2/p;->e:Lt2/o;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    :goto_1
    if-lez p4, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lt2/p;->e:Lt2/o;

    .line 19
    .line 20
    iget-wide v0, v0, Lt2/o;->c:J

    .line 21
    .line 22
    sub-long/2addr v0, p1

    .line 23
    long-to-int v0, v0

    .line 24
    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v1, p0, Lt2/p;->e:Lt2/o;

    .line 29
    .line 30
    iget-object v2, v1, Lt2/o;->d:Ljava/lang/Object;

    .line 31
    .line 32
    move-object v3, v2

    .line 33
    check-cast v3, La3/a;

    .line 34
    .line 35
    iget-object v3, v3, La3/a;->a:[B

    .line 36
    .line 37
    iget-wide v4, v1, Lt2/o;->b:J

    .line 38
    .line 39
    sub-long v4, p1, v4

    .line 40
    .line 41
    long-to-int v1, v4

    .line 42
    check-cast v2, La3/a;

    .line 43
    .line 44
    iget v2, v2, La3/a;->b:I

    .line 45
    .line 46
    add-int/2addr v1, v2

    .line 47
    invoke-virtual {p3, v3, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    .line 50
    sub-int/2addr p4, v0

    .line 51
    int-to-long v0, v0

    .line 52
    add-long/2addr p1, v0

    .line 53
    iget-object v0, p0, Lt2/p;->e:Lt2/o;

    .line 54
    .line 55
    iget-wide v1, v0, Lt2/o;->c:J

    .line 56
    .line 57
    cmp-long v1, p1, v1

    .line 58
    .line 59
    if-nez v1, :cond_0

    .line 60
    .line 61
    iget-object v0, v0, Lt2/o;->e:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Lt2/o;

    .line 64
    .line 65
    iput-object v0, p0, Lt2/p;->e:Lt2/o;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    return-void
.end method

.method public final d(J[BI)V
    .locals 7

    .line 1
    :goto_0
    iget-object v0, p0, Lt2/p;->e:Lt2/o;

    .line 2
    .line 3
    iget-wide v1, v0, Lt2/o;->c:J

    .line 4
    .line 5
    cmp-long v1, p1, v1

    .line 6
    .line 7
    if-ltz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lt2/o;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lt2/o;

    .line 12
    .line 13
    iput-object v0, p0, Lt2/p;->e:Lt2/o;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, p4

    .line 17
    :cond_1
    :goto_1
    if-lez v0, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lt2/p;->e:Lt2/o;

    .line 20
    .line 21
    iget-wide v1, v1, Lt2/o;->c:J

    .line 22
    .line 23
    sub-long/2addr v1, p1

    .line 24
    long-to-int v1, v1

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget-object v2, p0, Lt2/p;->e:Lt2/o;

    .line 30
    .line 31
    iget-object v3, v2, Lt2/o;->d:Ljava/lang/Object;

    .line 32
    .line 33
    move-object v4, v3

    .line 34
    check-cast v4, La3/a;

    .line 35
    .line 36
    iget-object v4, v4, La3/a;->a:[B

    .line 37
    .line 38
    iget-wide v5, v2, Lt2/o;->b:J

    .line 39
    .line 40
    sub-long v5, p1, v5

    .line 41
    .line 42
    long-to-int v2, v5

    .line 43
    check-cast v3, La3/a;

    .line 44
    .line 45
    iget v3, v3, La3/a;->b:I

    .line 46
    .line 47
    add-int/2addr v2, v3

    .line 48
    sub-int v3, p4, v0

    .line 49
    .line 50
    invoke-static {v4, v2, p3, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    .line 52
    .line 53
    sub-int/2addr v0, v1

    .line 54
    int-to-long v1, v1

    .line 55
    add-long/2addr p1, v1

    .line 56
    iget-object v1, p0, Lt2/p;->e:Lt2/o;

    .line 57
    .line 58
    iget-wide v2, v1, Lt2/o;->c:J

    .line 59
    .line 60
    cmp-long v2, p1, v2

    .line 61
    .line 62
    if-nez v2, :cond_1

    .line 63
    .line 64
    iget-object v1, v1, Lt2/o;->e:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v1, Lt2/o;

    .line 67
    .line 68
    iput-object v1, p0, Lt2/p;->e:Lt2/o;

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    return-void
.end method
