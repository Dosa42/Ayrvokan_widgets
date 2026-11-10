.class public final Lt2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/b;


# instance fields
.field public a:Z

.field public b:J

.field public c:J

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lt2/o;->b:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lt2/o;->c:J

    return-void
.end method

.method public constructor <init>(Lb3/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt2/o;->d:Ljava/lang/Object;

    sget-object p1, Lf2/b0;->d:Lf2/b0;

    iput-object p1, p0, Lt2/o;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lf2/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lt2/o;->e:Ljava/lang/Object;

    check-cast v0, Lf2/b0;

    return-object v0
.end method

.method public final b(Lf2/b0;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lt2/o;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lt2/o;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lt2/o;->d(J)V

    :cond_0
    iput-object p1, p0, Lt2/o;->e:Ljava/lang/Object;

    return-void
.end method

.method public final c()J
    .locals 7

    .line 1
    iget-wide v0, p0, Lt2/o;->b:J

    .line 2
    .line 3
    iget-boolean v2, p0, Lt2/o;->a:Z

    .line 4
    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Lt2/o;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lb3/a;

    .line 10
    .line 11
    check-cast v2, Ly0/i;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    iget-wide v4, p0, Lt2/o;->c:J

    .line 21
    .line 22
    sub-long/2addr v2, v4

    .line 23
    iget-object v4, p0, Lt2/o;->e:Ljava/lang/Object;

    .line 24
    .line 25
    move-object v5, v4

    .line 26
    check-cast v5, Lf2/b0;

    .line 27
    .line 28
    iget v5, v5, Lf2/b0;->a:F

    .line 29
    .line 30
    const/high16 v6, 0x3f800000    # 1.0f

    .line 31
    .line 32
    cmpl-float v5, v5, v6

    .line 33
    .line 34
    if-nez v5, :cond_0

    .line 35
    .line 36
    invoke-static {v2, v3}, Lf2/d;->a(J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    check-cast v4, Lf2/b0;

    .line 42
    .line 43
    iget v4, v4, Lf2/b0;->c:I

    .line 44
    .line 45
    int-to-long v4, v4

    .line 46
    mul-long/2addr v2, v4

    .line 47
    :goto_0
    add-long/2addr v0, v2

    .line 48
    :cond_1
    return-wide v0
.end method

.method public final d(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lt2/o;->b:J

    .line 2
    .line 3
    iget-boolean p1, p0, Lt2/o;->a:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lt2/o;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lb3/a;

    .line 10
    .line 11
    check-cast p1, Ly0/i;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    iput-wide p1, p0, Lt2/o;->c:J

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lt2/o;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lt2/o;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lb3/a;

    .line 8
    .line 9
    check-cast v0, Ly0/i;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lt2/o;->c:J

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lt2/o;->a:Z

    .line 22
    .line 23
    :cond_0
    return-void
.end method
