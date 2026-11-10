.class Lorg/mozilla/geckoview/GeckoInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/GeckoInputStream$Support;
    }
.end annotation

.annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "GeckoInputStream"


# instance fields
.field private mBuffers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mClosed:Z

.field private mEOF:Z

.field private mHaveError:Z

.field private mReadTimeout:J

.field private mResumed:Z

.field private mSupport:Lorg/mozilla/geckoview/GeckoInputStream$Support;


# direct methods
.method private constructor <init>(Lorg/mozilla/geckoview/GeckoInputStream$Support;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mBuffers:Ljava/util/LinkedList;

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mSupport:Lorg/mozilla/geckoview/GeckoInputStream$Support;

    return-void
.end method

.method private declared-synchronized appendBuffer([B)V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
        exceptionMode = "nsresult"
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnGeckoThread()V

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mClosed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mEOF:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mBuffers:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "EOF, no more data expected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Stream is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private ensureNotClosed()V
    .locals 2

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mClosed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mClosed:Z

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mSupport:Lorg/mozilla/geckoview/GeckoInputStream$Support;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/mozilla/geckoview/GeckoInputStream$Support;->access$000(Lorg/mozilla/geckoview/GeckoInputStream$Support;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mSupport:Lorg/mozilla/geckoview/GeckoInputStream$Support;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .locals 7

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoInputStream;->ensureNotClosed()V

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    rsub-int/lit8 v3, v2, 0x4

    invoke-virtual {p0, v1, v2, v3}, Lorg/mozilla/geckoview/GeckoInputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v3, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    monitor-exit p0

    const/4 v0, -0x1

    return v0

    :cond_0
    int-to-long v5, v2

    add-long/2addr v5, v3

    long-to-int v2, v5

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([B)I
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/mozilla/geckoview/GeckoInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized read([BII)I
    .locals 6

    .line 3
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoInputStream;->ensureNotClosed()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :catch_0
    :goto_0
    iget-boolean v2, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mEOF:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mBuffers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_3

    iget-wide v2, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mReadTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v4, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mReadTimeout:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Timed out"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    iget-boolean v2, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mResumed:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mSupport:Lorg/mozilla/geckoview/GeckoInputStream$Support;

    invoke-static {v2}, Lorg/mozilla/geckoview/GeckoInputStream$Support;->access$100(Lorg/mozilla/geckoview/GeckoInputStream$Support;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mResumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :try_start_1
    iget-wide v2, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mReadTimeout:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_2
    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mEOF:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_5

    iget-boolean p1, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mHaveError:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_4

    monitor-exit p0

    const/4 p1, -0x1

    return p1

    :cond_4
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unknown error"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mBuffers:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    monitor-exit p0

    return p3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendEof()V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mEOF:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mEOF:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have EOF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendError()V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mEOF:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mEOF:Z

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mHaveError:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have EOF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setReadTimeoutMillis(J)V
    .locals 0

    iput-wide p1, p0, Lorg/mozilla/geckoview/GeckoInputStream;->mReadTimeout:J

    return-void
.end method
