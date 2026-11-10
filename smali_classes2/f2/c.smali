.class public abstract Lf2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/e0;
.implements Lf2/f0;


# instance fields
.field private configuration:Lf2/g0;

.field private final formatHolder:Lf2/u;

.field private index:I

.field private readingPositionUs:J

.field private state:I

.field private stream:Lt2/s;

.field private streamFormats:[Lf2/t;

.field private streamIsFinal:Z

.field private streamOffsetUs:J

.field private throwRendererExceptionIsExecuting:Z

.field private final trackType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lf2/c;->trackType:I

    new-instance p1, Lf2/u;

    invoke-direct {p1}, Lf2/u;-><init>()V

    iput-object p1, p0, Lf2/c;->formatHolder:Lf2/u;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lf2/c;->readingPositionUs:J

    return-void
.end method

.method public static supportsFormatDrm(Lj2/d;Lj2/b;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj2/d;",
            "Lj2/b;",
            ")Z"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final createRendererException(Ljava/lang/Exception;Lf2/t;)Lf2/h;
    .locals 9

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-boolean v1, p0, Lf2/c;->throwRendererExceptionIsExecuting:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lf2/c;->throwRendererExceptionIsExecuting:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    invoke-interface {p0, p2}, Lf2/f0;->supportsFormat(Lf2/t;)I

    .line 13
    .line 14
    .line 15
    move-result v2
    :try_end_0
    .catch Lf2/h; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    and-int/lit8 v2, v2, 0x7

    .line 17
    .line 18
    iput-boolean v1, p0, Lf2/c;->throwRendererExceptionIsExecuting:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    iput-boolean v1, p0, Lf2/c;->throwRendererExceptionIsExecuting:Z

    .line 23
    .line 24
    throw p1

    .line 25
    :catch_0
    iput-boolean v1, p0, Lf2/c;->throwRendererExceptionIsExecuting:Z

    .line 26
    .line 27
    :cond_0
    move v2, v0

    .line 28
    :goto_0
    invoke-virtual {p0}, Lf2/c;->getIndex()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    new-instance v1, Lf2/h;

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    if-nez p2, :cond_1

    .line 36
    .line 37
    move v8, v0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v8, v2

    .line 40
    :goto_1
    move-object v3, v1

    .line 41
    move-object v5, p1

    .line 42
    move-object v7, p2

    .line 43
    invoke-direct/range {v3 .. v8}, Lf2/h;-><init>(ILjava/lang/Throwable;ILf2/t;I)V

    .line 44
    .line 45
    .line 46
    return-object v1
.end method

.method public final disable()V
    .locals 3

    .line 1
    iget v0, p0, Lf2/c;->state:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, v1

    .line 9
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lf2/c;->formatHolder:Lf2/u;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-object v2, v0, Lf2/u;->a:Lf2/t;

    .line 16
    .line 17
    iput v1, p0, Lf2/c;->state:I

    .line 18
    .line 19
    iput-object v2, p0, Lf2/c;->stream:Lt2/s;

    .line 20
    .line 21
    iput-object v2, p0, Lf2/c;->streamFormats:[Lf2/t;

    .line 22
    .line 23
    iput-boolean v1, p0, Lf2/c;->streamIsFinal:Z

    .line 24
    .line 25
    invoke-virtual {p0}, Lf2/c;->onDisabled()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final enable(Lf2/g0;[Lf2/t;Lt2/s;JZJ)V
    .locals 2

    .line 1
    iget v0, p0, Lf2/c;->state:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    iput-object p1, p0, Lf2/c;->configuration:Lf2/g0;

    iput v1, p0, Lf2/c;->state:I

    invoke-virtual {p0, p6}, Lf2/c;->onEnabled(Z)V

    invoke-virtual {p0, p2, p3, p7, p8}, Lf2/c;->replaceStream([Lf2/t;Lt2/s;J)V

    invoke-virtual {p0, p4, p5, p6}, Lf2/c;->onPositionReset(JZ)V

    return-void
.end method

.method public final getCapabilities()Lf2/f0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final getConfiguration()Lf2/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/c;->configuration:Lf2/g0;

    return-object v0
.end method

.method public final getFormatHolder()Lf2/u;
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/c;->formatHolder:Lf2/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lf2/u;->a:Lf2/t;

    .line 5
    .line 6
    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lf2/c;->index:I

    return v0
.end method

.method public getMediaClock()Lb3/b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getReadingPositionUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf2/c;->readingPositionUs:J

    return-wide v0
.end method

.method public final getState()I
    .locals 1

    .line 1
    iget v0, p0, Lf2/c;->state:I

    return v0
.end method

.method public final getStream()Lt2/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/c;->stream:Lt2/s;

    return-object v0
.end method

.method public final getStreamFormats()[Lf2/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/c;->streamFormats:[Lf2/t;

    return-object v0
.end method

.method public final getTrackType()I
    .locals 1

    .line 1
    iget v0, p0, Lf2/c;->trackType:I

    return v0
.end method

.method public final getUpdatedSourceDrmSession(Lf2/t;Lf2/t;Lj2/d;Lj2/c;)Lj2/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf2/t;",
            "Lf2/t;",
            "Lj2/d;",
            "Lj2/c;",
            ")",
            "Lj2/c;"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lf2/t;->l:Lj2/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    move-object p1, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p1, Lf2/t;->l:Lj2/b;

    .line 9
    .line 10
    :goto_0
    invoke-static {v0, p1}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    xor-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    return-object p4

    .line 19
    :cond_1
    iget-object p1, p2, Lf2/t;->l:Lj2/b;

    .line 20
    .line 21
    if-eqz p1, :cond_3

    .line 22
    .line 23
    if-eqz p3, :cond_2

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    new-instance v1, Lh/a;

    .line 33
    .line 34
    new-instance p1, La3/j;

    .line 35
    .line 36
    new-instance p2, Lj2/e;

    .line 37
    .line 38
    invoke-direct {p2}, Lj2/e;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, p2}, La3/j;-><init>(Lj2/e;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, p1}, Lh/a;-><init>(La3/j;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p3, "Media requires a DrmSessionManager"

    .line 51
    .line 52
    invoke-direct {p1, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1, p2}, Lf2/c;->createRendererException(Ljava/lang/Exception;Lf2/t;)Lf2/h;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    throw p1

    .line 60
    :cond_3
    :goto_1
    return-object v1
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lf2/c;->readingPositionUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCurrentStreamFinal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf2/c;->streamIsFinal:Z

    return v0
.end method

.method public final isSourceReady()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf2/c;->hasReadStreamToEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lf2/c;->streamIsFinal:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf2/c;->stream:Lt2/s;

    invoke-interface {v0}, Lt2/s;->isReady()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final maybeThrowStreamError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/c;->stream:Lt2/s;

    invoke-interface {v0}, Lt2/s;->y()V

    return-void
.end method

.method public abstract onDisabled()V
.end method

.method public abstract onEnabled(Z)V
.end method

.method public abstract onPositionReset(JZ)V
.end method

.method public onReset()V
    .locals 0

    .line 1
    return-void
.end method

.method public onStarted()V
    .locals 0

    .line 1
    return-void
.end method

.method public onStopped()V
    .locals 0

    .line 1
    return-void
.end method

.method public onStreamChanged([Lf2/t;J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final readSource(Lf2/u;Li2/c;Z)I
    .locals 4

    .line 1
    iget-object v0, p0, Lf2/c;->stream:Lt2/s;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lt2/s;->B(Lf2/u;Li2/c;Z)I

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    const/4 v0, -0x4

    .line 8
    if-ne p3, v0, :cond_2

    .line 9
    .line 10
    const/4 p1, 0x4

    .line 11
    invoke-virtual {p2, p1}, Li2/a;->b(I)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const-wide/high16 p1, -0x8000000000000000L

    .line 18
    .line 19
    iput-wide p1, p0, Lf2/c;->readingPositionUs:J

    .line 20
    .line 21
    iget-boolean p1, p0, Lf2/c;->streamIsFinal:Z

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, -0x3

    .line 27
    :goto_0
    return v0

    .line 28
    :cond_1
    iget-wide v0, p2, Li2/c;->f:J

    .line 29
    .line 30
    iget-wide v2, p0, Lf2/c;->streamOffsetUs:J

    .line 31
    .line 32
    add-long/2addr v0, v2

    .line 33
    iput-wide v0, p2, Li2/c;->f:J

    .line 34
    .line 35
    iget-wide p1, p0, Lf2/c;->readingPositionUs:J

    .line 36
    .line 37
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 38
    .line 39
    .line 40
    move-result-wide p1

    .line 41
    iput-wide p1, p0, Lf2/c;->readingPositionUs:J

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/4 p2, -0x5

    .line 45
    if-ne p3, p2, :cond_3

    .line 46
    .line 47
    iget-object p2, p1, Lf2/u;->a:Lf2/t;

    .line 48
    .line 49
    iget-wide v0, p2, Lf2/t;->m:J

    .line 50
    .line 51
    const-wide v2, 0x7fffffffffffffffL

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    cmp-long v2, v0, v2

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    iget-wide v2, p0, Lf2/c;->streamOffsetUs:J

    .line 61
    .line 62
    add-long/2addr v0, v2

    .line 63
    invoke-virtual {p2, v0, v1}, Lf2/t;->c(J)Lf2/t;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    iput-object p2, p1, Lf2/u;->a:Lf2/t;

    .line 68
    .line 69
    :cond_3
    :goto_1
    return p3
.end method

.method public final replaceStream([Lf2/t;Lt2/s;J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf2/c;->streamIsFinal:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    iput-object p2, p0, Lf2/c;->stream:Lt2/s;

    iput-wide p3, p0, Lf2/c;->readingPositionUs:J

    iput-object p1, p0, Lf2/c;->streamFormats:[Lf2/t;

    iput-wide p3, p0, Lf2/c;->streamOffsetUs:J

    invoke-virtual {p0, p1, p3, p4}, Lf2/c;->onStreamChanged([Lf2/t;J)V

    return-void
.end method

.method public final reset()V
    .locals 2

    .line 1
    iget v0, p0, Lf2/c;->state:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lf2/c;->formatHolder:Lf2/u;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, v0, Lf2/u;->a:Lf2/t;

    .line 15
    .line 16
    invoke-virtual {p0}, Lf2/c;->onReset()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final resetPosition(J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lf2/c;->streamIsFinal:Z

    iput-wide p1, p0, Lf2/c;->readingPositionUs:J

    invoke-virtual {p0, p1, p2, v0}, Lf2/c;->onPositionReset(JZ)V

    return-void
.end method

.method public final setCurrentStreamFinal()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf2/c;->streamIsFinal:Z

    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lf2/c;->index:I

    return-void
.end method

.method public skipSource(J)I
    .locals 3

    .line 1
    iget-object v0, p0, Lf2/c;->stream:Lt2/s;

    iget-wide v1, p0, Lf2/c;->streamOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lt2/s;->A(J)I

    move-result p1

    return p1
.end method

.method public final start()V
    .locals 2

    .line 1
    iget v0, p0, Lf2/c;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lf2/c;->state:I

    invoke-virtual {p0}, Lf2/c;->onStarted()V

    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget v0, p0, Lf2/c;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    iput v2, p0, Lf2/c;->state:I

    invoke-virtual {p0}, Lf2/c;->onStopped()V

    return-void
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
