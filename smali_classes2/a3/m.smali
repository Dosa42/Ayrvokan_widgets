.class public final La3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/b;


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:[La3/a;

.field public d:I

.field public e:I

.field public f:I

.field public g:[La3/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, La3/m;->a:Z

    .line 6
    .line 7
    const/high16 v1, 0x10000

    .line 8
    .line 9
    iput v1, p0, La3/m;->b:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput v1, p0, La3/m;->f:I

    .line 13
    .line 14
    const/16 v1, 0x64

    .line 15
    .line 16
    new-array v1, v1, [La3/a;

    .line 17
    .line 18
    iput-object v1, p0, La3/m;->g:[La3/a;

    .line 19
    .line 20
    new-array v0, v0, [La3/a;

    .line 21
    .line 22
    iput-object v0, p0, La3/m;->c:[La3/a;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final declared-synchronized a([La3/a;)V
    .locals 6

    .line 1
    monitor-enter p0

    :try_start_0
    iget v0, p0, La3/m;->f:I

    array-length v1, p1

    add-int/2addr v1, v0

    iget-object v2, p0, La3/m;->g:[La3/a;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    array-length v3, p1

    add-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La3/a;

    iput-object v0, p0, La3/m;->g:[La3/a;

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, La3/m;->g:[La3/a;

    iget v4, p0, La3/m;->f:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, La3/m;->f:I

    aput-object v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, La3/m;->e:I

    array-length p1, p1

    sub-int/2addr v0, p1

    iput v0, p0, La3/m;->e:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, La3/m;->d:I

    .line 3
    .line 4
    iget v1, p0, La3/m;->b:I

    .line 5
    .line 6
    sget v2, Lb3/n;->a:I

    .line 7
    .line 8
    add-int/2addr v0, v1

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    div-int/2addr v0, v1

    .line 12
    iget v1, p0, La3/m;->e:I

    .line 13
    .line 14
    sub-int/2addr v0, v1

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget v1, p0, La3/m;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    if-lt v0, v1, :cond_0

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :cond_0
    :try_start_1
    iget-object v2, p0, La3/m;->g:[La3/a;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static {v2, v0, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput v0, p0, La3/m;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    monitor-exit p0

    .line 38
    throw v0
.end method
