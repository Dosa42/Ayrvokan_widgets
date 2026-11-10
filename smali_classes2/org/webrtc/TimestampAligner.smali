.class public Lorg/webrtc/TimestampAligner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/webrtc/TimestampAligner;->nativeCreateTimestampAligner()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/webrtc/TimestampAligner;->a:J

    return-void
.end method

.method private static native nativeCreateTimestampAligner()J
.end method

.method private static native nativeTranslateTimestamp(JJ)J
.end method


# virtual methods
.method public final a(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/webrtc/TimestampAligner;->a:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lorg/webrtc/TimestampAligner;->a:J

    .line 10
    .line 11
    invoke-static {v0, v1, p1, p2}, Lorg/webrtc/TimestampAligner;->nativeTranslateTimestamp(JJ)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    return-wide p1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string p2, "TimestampAligner has been disposed."

    .line 19
    .line 20
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method
