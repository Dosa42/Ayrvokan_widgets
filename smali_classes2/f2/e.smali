.class public final Lf2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La3/m;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:I

.field public final h:Z

.field public final i:J

.field public final j:Z

.field public k:I

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>(La3/m;IIIII)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const-string v1, "bufferForPlaybackMs"

    const-string v2, "0"

    invoke-static {p5, v0, v1, v2}, Lf2/e;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "bufferForPlaybackAfterRebufferMs"

    invoke-static {p6, v0, v3, v2}, Lf2/e;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "minBufferAudioMs"

    invoke-static {p2, p5, v4, v1}, Lf2/e;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v5, "minBufferVideoMs"

    invoke-static {p3, p5, v5, v1}, Lf2/e;->a(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p6, v4, v3}, Lf2/e;->a(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p3, p6, v5, v3}, Lf2/e;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "maxBufferMs"

    invoke-static {p4, p2, v1, v4}, Lf2/e;->a(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p4, p3, v1, v5}, Lf2/e;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "backBufferDurationMs"

    invoke-static {v0, v0, v1, v2}, Lf2/e;->a(IILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lf2/e;->a:La3/m;

    int-to-long p1, p2

    invoke-static {p1, p2}, Lf2/d;->a(J)J

    move-result-wide p1

    iput-wide p1, p0, Lf2/e;->b:J

    int-to-long p1, p3

    invoke-static {p1, p2}, Lf2/d;->a(J)J

    move-result-wide p1

    iput-wide p1, p0, Lf2/e;->c:J

    int-to-long p1, p4

    invoke-static {p1, p2}, Lf2/d;->a(J)J

    move-result-wide p1

    iput-wide p1, p0, Lf2/e;->d:J

    int-to-long p1, p5

    invoke-static {p1, p2}, Lf2/d;->a(J)J

    move-result-wide p1

    iput-wide p1, p0, Lf2/e;->e:J

    int-to-long p1, p6

    invoke-static {p1, p2}, Lf2/d;->a(J)J

    move-result-wide p1

    iput-wide p1, p0, Lf2/e;->f:J

    const/4 p1, -0x1

    iput p1, p0, Lf2/e;->g:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lf2/e;->h:Z

    int-to-long p1, v0

    invoke-static {p1, p2}, Lf2/d;->a(J)J

    move-result-wide p1

    iput-wide p1, p0, Lf2/e;->i:J

    iput-boolean v0, p0, Lf2/e;->j:Z

    return-void
.end method

.method public static a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be less than "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/play_billing/i0;->f(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf2/e;->k:I

    .line 3
    .line 4
    iput-boolean v0, p0, Lf2/e;->l:Z

    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    iget-object p1, p0, Lf2/e;->a:La3/m;

    .line 9
    .line 10
    monitor-enter p1

    .line 11
    :try_start_0
    iget-boolean v1, p1, La3/m;->a:Z

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    iget v1, p1, La3/m;->d:I

    .line 17
    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v1, v0

    .line 23
    :goto_0
    iput v0, p1, La3/m;->d:I

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, La3/m;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    :cond_1
    :try_start_2
    monitor-exit p1

    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit p1

    .line 34
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    :cond_2
    :goto_1
    monitor-exit p1

    .line 36
    goto :goto_2

    .line 37
    :catchall_1
    move-exception v0

    .line 38
    monitor-exit p1

    .line 39
    throw v0

    .line 40
    :cond_3
    :goto_2
    return-void
.end method
