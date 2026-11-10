.class public Lorg/mozilla/gecko/media/GeckoHlsPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/media/BaseHlsPlayer;
.implements Lf2/c0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;,
        Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;,
        Lorg/mozilla/gecko/media/GeckoHlsPlayer$SourceEventListener;,
        Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;,
        Lorg/mozilla/gecko/media/GeckoHlsPlayer$RendererController;,
        Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;
    }
.end annotation

.annotation build Lorg/mozilla/gecko/annotation/ReflectionTarget;
.end annotation


# static fields
.field private static final BANDWIDTH_METER:La3/o;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_MAX_BUFFER_MS:I = 0x2710

.field private static final DEFAULT_MIN_BUFFER_MS:I = 0x1388

.field private static final LOGTAG:Ljava/lang/String; = "GeckoHlsPlayer"

.field private static final MAX_TIMELINE_ITEM_LINES:I = 0x3

.field public static final synthetic d:I

.field private static final sPlayerId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mARenderer:Lorg/mozilla/gecko/media/GeckoHlsAudioRenderer;

.field private mComponentEventDispatcher:Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;

.field private mComponentListener:Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;

.field private mDemuxerCallbacks:Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerCallbacks;

.field private mDurationUs:J

.field private mExoplayerSuspended:Z

.field private mIsDemuxerInitDone:Z

.field private mIsPlayerInitDone:Z

.field private volatile mIsTimelineStatic:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mMediaDecoderPlayState:Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

.field private mMediaSource:Lt2/g;

.field private mPlayer:Lf2/j;

.field private final mPlayerId:I

.field private mReleasing:Z

.field private mRendererController:Lorg/mozilla/gecko/media/GeckoHlsPlayer$RendererController;

.field private mRenderers:[Lorg/mozilla/gecko/media/GeckoHlsRendererBase;

.field private mResourceCallbacks:Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceCallbacks;

.field private mSourceEventListener:Lorg/mozilla/gecko/media/GeckoHlsPlayer$SourceEventListener;

.field private mThread:Landroid/os/HandlerThread;

.field private mTrackSelector:Lz2/k;

.field private mTracksInfo:Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;

.field private mVRenderer:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    const/4 v1, 0x0

    .line 2
    sget v0, Lb3/n;->a:I

    .line 3
    .line 4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lb3/n;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v2, La3/o;->n:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, [I

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    filled-new-array {v2, v2, v2, v2}, [I

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_0
    new-instance v3, Landroid/util/SparseArray;

    .line 32
    .line 33
    const/4 v4, 0x6

    .line 34
    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 35
    .line 36
    .line 37
    const-wide/32 v4, 0xf4240

    .line 38
    .line 39
    .line 40
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-virtual {v3, v6, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sget-object v4, La3/o;->o:[J

    .line 49
    .line 50
    aget v5, v0, v6

    .line 51
    .line 52
    aget-wide v7, v4, v5

    .line 53
    .line 54
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v3, v2, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object v5, La3/o;->p:[J

    .line 62
    .line 63
    const/4 v7, 0x1

    .line 64
    aget v7, v0, v7

    .line 65
    .line 66
    aget-wide v7, v5, v7

    .line 67
    .line 68
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    const/4 v7, 0x3

    .line 73
    invoke-virtual {v3, v7, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    sget-object v5, La3/o;->q:[J

    .line 77
    .line 78
    aget v2, v0, v2

    .line 79
    .line 80
    aget-wide v8, v5, v2

    .line 81
    .line 82
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const/4 v5, 0x4

    .line 87
    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    sget-object v2, La3/o;->r:[J

    .line 91
    .line 92
    aget v5, v0, v7

    .line 93
    .line 94
    aget-wide v7, v2, v5

    .line 95
    .line 96
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const/4 v5, 0x5

    .line 101
    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    aget v2, v0, v6

    .line 105
    .line 106
    aget-wide v7, v4, v2

    .line 107
    .line 108
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    const/4 v5, 0x7

    .line 113
    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    aget v0, v0, v6

    .line 117
    .line 118
    aget-wide v7, v4, v0

    .line 119
    .line 120
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const/16 v2, 0x9

    .line 125
    .line 126
    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    const/16 v4, 0x7d0

    .line 130
    .line 131
    sget-object v5, Lb3/a;->a:Ly0/i;

    .line 132
    .line 133
    new-instance v7, La3/o;

    .line 134
    .line 135
    const/4 v8, 0x1

    .line 136
    move-object v0, v7

    .line 137
    move-object v2, v3

    .line 138
    move v3, v4

    .line 139
    move-object v4, v5

    .line 140
    move v5, v8

    .line 141
    invoke-direct/range {v0 .. v5}, La3/o;-><init>(Landroid/content/Context;Landroid/util/SparseArray;ILb3/a;Z)V

    .line 142
    .line 143
    .line 144
    sput-object v7, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->BANDWIDTH_METER:La3/o;

    .line 145
    .line 146
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 147
    .line 148
    invoke-direct {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 149
    .line 150
    .line 151
    sput-object v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->sPlayerId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 152
    .line 153
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mExoplayerSuspended:Z

    sget-object v1, Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;->PLAY_STATE_PREPARING:Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    iput-object v1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mMediaDecoderPlayState:Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mIsTimelineStatic:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mVRenderer:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;

    iput-object v1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mARenderer:Lorg/mozilla/gecko/media/GeckoHlsAudioRenderer;

    new-instance v1, Lorg/mozilla/gecko/media/GeckoHlsPlayer$RendererController;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, v2}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$RendererController;-><init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer;ZZ)V

    iput-object v1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mRendererController:Lorg/mozilla/gecko/media/GeckoHlsPlayer$RendererController;

    new-instance v1, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;

    invoke-direct {v1, p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;-><init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)V

    iput-object v1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mTracksInfo:Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mIsPlayerInitDone:Z

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mIsDemuxerInitDone:Z

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mReleasing:Z

    sget-object v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->sPlayerId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mPlayerId:I

    return-void
.end method

.method public static synthetic a(Lorg/mozilla/gecko/media/GeckoHlsPlayer;Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceCallbacks;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->lambda$init$1(Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Z
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->isPlayerThread()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Z)V
    .locals 0

    invoke-static {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->assertTrue(Z)V

    return-void
.end method

.method public static synthetic access$200(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceCallbacks;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mResourceCallbacks:Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceCallbacks;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mComponentListener:Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/mozilla/gecko/media/GeckoHlsPlayer;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->runOnPlayerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$500(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mIsPlayerInitDone:Z

    return p0
.end method

.method public static synthetic access$600(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mTracksInfo:Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;

    return-object p0
.end method

.method private static assertTrue(Z)V
    .locals 0

    return-void
.end method

.method private awaitPlayerThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->isPlayerThread()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->assertTrue(Z)V

    :try_start_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic b(Lorg/mozilla/gecko/media/GeckoHlsPlayer;J)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->lambda$seek$3(J)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private buildDataSourceFactory(Landroid/content/Context;La3/o;)Lw2/j;
    .locals 3

    .line 1
    new-instance v0, Lw2/j;

    new-instance v1, Lf0/k;

    invoke-direct {p0, p2}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->buildHttpDataSourceFactory(La3/o;)La3/t;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lf0/k;-><init>(Landroid/content/Context;La3/g0;La3/t;)V

    invoke-direct {v0, v1}, Lw2/j;-><init>(Lf0/k;)V

    return-object v0
.end method

.method private buildHttpDataSourceFactory(La3/o;)La3/t;
    .locals 2

    .line 1
    new-instance v0, Lq1/e;

    sget-object v1, Lorg/mozilla/geckoview/BuildConfig;->USER_AGENT_GECKOVIEW_MOBILE:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lq1/e;-><init>(Ljava/lang/String;La3/g0;)V

    return-object v0
.end method

.method public static synthetic c(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->lambda$resume$5()V

    return-void
.end method

.method private createExoPlayer(Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->isPlayerThread()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->assertTrue(Z)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;-><init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)V

    .line 17
    .line 18
    .line 19
    iput-object v2, v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mComponentListener:Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;

    .line 20
    .line 21
    new-instance v2, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;

    .line 22
    .line 23
    invoke-direct {v2, v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;-><init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)V

    .line 24
    .line 25
    .line 26
    iput-object v2, v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mComponentEventDispatcher:Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;

    .line 27
    .line 28
    const-wide/16 v2, 0x0

    .line 29
    .line 30
    iput-wide v2, v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mDurationUs:J

    .line 31
    .line 32
    new-instance v2, Lz2/b;

    .line 33
    .line 34
    sget-object v3, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->BANDWIDTH_METER:La3/o;

    .line 35
    .line 36
    invoke-direct {v2, v3}, Lz2/b;-><init>(La3/o;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lz2/k;

    .line 40
    .line 41
    sget-object v5, Lz2/g;->B:Lz2/g;

    .line 42
    .line 43
    invoke-direct {v4, v5, v2}, Lz2/k;-><init>(Lz2/g;Lz2/b;)V

    .line 44
    .line 45
    .line 46
    iput-object v4, v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mTrackSelector:Lz2/k;

    .line 47
    .line 48
    const/4 v2, 0x2

    .line 49
    new-array v4, v2, [Lorg/mozilla/gecko/media/GeckoHlsRendererBase;

    .line 50
    .line 51
    iput-object v4, v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mRenderers:[Lorg/mozilla/gecko/media/GeckoHlsRendererBase;

    .line 52
    .line 53
    new-instance v4, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;

    .line 54
    .line 55
    iget-object v5, v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mComponentEventDispatcher:Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;

    .line 56
    .line 57
    invoke-direct {v4, v5}, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;-><init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;)V

    .line 58
    .line 59
    .line 60
    iput-object v4, v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mVRenderer:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;

    .line 61
    .line 62
    new-instance v4, Lorg/mozilla/gecko/media/GeckoHlsAudioRenderer;

    .line 63
    .line 64
    iget-object v5, v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mComponentEventDispatcher:Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;

    .line 65
    .line 66
    invoke-direct {v4, v5}, Lorg/mozilla/gecko/media/GeckoHlsAudioRenderer;-><init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;)V

    .line 67
    .line 68
    .line 69
    iput-object v4, v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mARenderer:Lorg/mozilla/gecko/media/GeckoHlsAudioRenderer;

    .line 70
    .line 71
    iget-object v5, v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mRenderers:[Lorg/mozilla/gecko/media/GeckoHlsRendererBase;

    .line 72
    .line 73
    iget-object v6, v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mVRenderer:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;

    .line 74
    .line 75
    const/4 v7, 0x0

    .line 76
    aput-object v6, v5, v7

    .line 77
    .line 78
    const/4 v6, 0x1

    .line 79
    aput-object v4, v5, v6

    .line 80
    .line 81
    new-instance v9, La3/m;

    .line 82
    .line 83
    invoke-direct {v9}, La3/m;-><init>()V

    .line 84
    .line 85
    .line 86
    const/16 v4, 0x9c4

    .line 87
    .line 88
    const-string v5, "bufferForPlaybackMs"

    .line 89
    .line 90
    const-string v8, "0"

    .line 91
    .line 92
    invoke-static {v4, v7, v5, v8}, Lf2/e;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const/16 v10, 0x1388

    .line 96
    .line 97
    const-string v11, "bufferForPlaybackAfterRebufferMs"

    .line 98
    .line 99
    invoke-static {v10, v7, v11, v8}, Lf2/e;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v8, "minBufferMs"

    .line 103
    .line 104
    invoke-static {v10, v4, v8, v5}, Lf2/e;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v10, v10, v8, v11}, Lf2/e;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v4, "maxBufferMs"

    .line 111
    .line 112
    const/16 v5, 0x2710

    .line 113
    .line 114
    invoke-static {v5, v10, v4, v8}, Lf2/e;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    new-instance v4, Lf2/e;

    .line 118
    .line 119
    const/16 v11, 0x1388

    .line 120
    .line 121
    const/16 v12, 0x2710

    .line 122
    .line 123
    const/16 v13, 0x9c4

    .line 124
    .line 125
    const/16 v14, 0x1388

    .line 126
    .line 127
    move-object v8, v4

    .line 128
    move v10, v11

    .line 129
    invoke-direct/range {v8 .. v14}, Lf2/e;-><init>(La3/m;IIIII)V

    .line 130
    .line 131
    .line 132
    new-instance v5, Lf2/i;

    .line 133
    .line 134
    iget-object v8, v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mRenderers:[Lorg/mozilla/gecko/media/GeckoHlsRendererBase;

    .line 135
    .line 136
    invoke-direct {v5, v1, v8}, Lf2/i;-><init>(Landroid/content/Context;[Lf2/e0;)V

    .line 137
    .line 138
    .line 139
    iget-object v8, v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mTrackSelector:Lz2/k;

    .line 140
    .line 141
    iget-boolean v9, v5, Lf2/i;->g:Z

    .line 142
    .line 143
    xor-int/2addr v9, v6

    .line 144
    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 145
    .line 146
    .line 147
    iput-object v8, v5, Lf2/i;->c:Lz2/n;

    .line 148
    .line 149
    iget-boolean v8, v5, Lf2/i;->g:Z

    .line 150
    .line 151
    xor-int/2addr v8, v6

    .line 152
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 153
    .line 154
    .line 155
    iput-object v4, v5, Lf2/i;->d:Lf2/e;

    .line 156
    .line 157
    iget-boolean v4, v5, Lf2/i;->g:Z

    .line 158
    .line 159
    xor-int/2addr v4, v6

    .line 160
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 161
    .line 162
    .line 163
    iput-boolean v6, v5, Lf2/i;->g:Z

    .line 164
    .line 165
    new-instance v4, Lf2/n;

    .line 166
    .line 167
    iget-object v9, v5, Lf2/i;->a:[Lf2/e0;

    .line 168
    .line 169
    iget-object v10, v5, Lf2/i;->c:Lz2/n;

    .line 170
    .line 171
    iget-object v11, v5, Lf2/i;->d:Lf2/e;

    .line 172
    .line 173
    iget-object v12, v5, Lf2/i;->e:La3/d;

    .line 174
    .line 175
    iget-object v13, v5, Lf2/i;->b:Lb3/a;

    .line 176
    .line 177
    iget-object v14, v5, Lf2/i;->f:Landroid/os/Looper;

    .line 178
    .line 179
    move-object v8, v4

    .line 180
    invoke-direct/range {v8 .. v14}, Lf2/n;-><init>([Lf2/e0;Lz2/n;Lf2/e;La3/d;Lb3/a;Landroid/os/Looper;)V

    .line 181
    .line 182
    .line 183
    iput-object v4, v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mPlayer:Lf2/j;

    .line 184
    .line 185
    iget-object v4, v4, Lf2/n;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 186
    .line 187
    new-instance v5, Lf2/a;

    .line 188
    .line 189
    invoke-direct {v5, v0}, Lf2/a;-><init>(Lf2/c0;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    invoke-direct {v0, v1, v3}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->buildDataSourceFactory(Landroid/content/Context;La3/o;)Lw2/j;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    new-instance v3, Lw2/k;

    .line 207
    .line 208
    iget-object v10, v1, Lw2/j;->a:Lw2/b;

    .line 209
    .line 210
    sget-object v11, Lw2/g;->e:Ly0/i;

    .line 211
    .line 212
    iget-object v12, v1, Lw2/j;->c:Lc/a;

    .line 213
    .line 214
    sget-object v13, Lj2/d;->c:Ly0/i;

    .line 215
    .line 216
    iget-object v14, v1, Lw2/j;->d:La3/r;

    .line 217
    .line 218
    iget-object v1, v1, Lw2/j;->b:Lc/a;

    .line 219
    .line 220
    new-instance v15, Lx2/b;

    .line 221
    .line 222
    invoke-direct {v15, v10, v14, v1}, Lx2/b;-><init>(Lw2/b;La3/r;Lx2/j;)V

    .line 223
    .line 224
    .line 225
    const/16 v16, 0x1

    .line 226
    .line 227
    move-object v8, v3

    .line 228
    invoke-direct/range {v8 .. v16}, Lw2/k;-><init>(Landroid/net/Uri;Lw2/b;Ly0/i;Lc/a;Ly0/i;La3/r;Lx2/b;I)V

    .line 229
    .line 230
    .line 231
    iput-object v3, v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mMediaSource:Lt2/g;

    .line 232
    .line 233
    new-instance v1, Lorg/mozilla/gecko/media/GeckoHlsPlayer$SourceEventListener;

    .line 234
    .line 235
    const/4 v3, 0x0

    .line 236
    invoke-direct {v1, v0, v3}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$SourceEventListener;-><init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer;Lorg/mozilla/gecko/media/GeckoHlsPlayer$1;)V

    .line 237
    .line 238
    .line 239
    iput-object v1, v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mSourceEventListener:Lorg/mozilla/gecko/media/GeckoHlsPlayer$SourceEventListener;

    .line 240
    .line 241
    iget-object v3, v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mMediaSource:Lt2/g;

    .line 242
    .line 243
    iget-object v4, v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mMainHandler:Landroid/os/Handler;

    .line 244
    .line 245
    check-cast v3, Lt2/a;

    .line 246
    .line 247
    iget-object v3, v3, Lt2/a;->c:Lcom/google/android/gms/internal/play_billing/v;

    .line 248
    .line 249
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    if-eqz v4, :cond_0

    .line 253
    .line 254
    move v5, v6

    .line 255
    goto :goto_0

    .line 256
    :cond_0
    move v5, v7

    .line 257
    :goto_0
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/i0;->g(Z)V

    .line 258
    .line 259
    .line 260
    iget-object v3, v3, Lcom/google/android/gms/internal/play_billing/v;->d:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 263
    .line 264
    new-instance v5, Lt2/k;

    .line 265
    .line 266
    invoke-direct {v5, v4, v1}, Lt2/k;-><init>(Landroid/os/Handler;Lt2/n;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    iget-object v1, v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mPlayer:Lf2/j;

    .line 273
    .line 274
    check-cast v1, Lf2/n;

    .line 275
    .line 276
    invoke-virtual {v1, v7}, Lf2/n;->k(Z)V

    .line 277
    .line 278
    .line 279
    iget-object v1, v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mPlayer:Lf2/j;

    .line 280
    .line 281
    iget-object v3, v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mMediaSource:Lt2/g;

    .line 282
    .line 283
    move-object v8, v1

    .line 284
    check-cast v8, Lf2/n;

    .line 285
    .line 286
    invoke-virtual {v8, v6, v6, v6, v2}, Lf2/n;->d(ZZZI)Lf2/a0;

    .line 287
    .line 288
    .line 289
    move-result-object v9

    .line 290
    iput-boolean v6, v8, Lf2/n;->l:Z

    .line 291
    .line 292
    iget v1, v8, Lf2/n;->k:I

    .line 293
    .line 294
    add-int/2addr v1, v6

    .line 295
    iput v1, v8, Lf2/n;->k:I

    .line 296
    .line 297
    iget-object v1, v8, Lf2/n;->e:Lf2/r;

    .line 298
    .line 299
    iget-object v1, v1, Lf2/r;->l:Lh/a;

    .line 300
    .line 301
    iget-object v1, v1, Lh/a;->g:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v1, Landroid/os/Handler;

    .line 304
    .line 305
    invoke-virtual {v1, v7, v6, v6, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 310
    .line 311
    .line 312
    const/4 v10, 0x0

    .line 313
    const/4 v11, 0x4

    .line 314
    const/4 v12, 0x1

    .line 315
    const/4 v13, 0x0

    .line 316
    invoke-virtual/range {v8 .. v13}, Lf2/n;->m(Lf2/a0;ZIIZ)V

    .line 317
    .line 318
    .line 319
    iput-boolean v6, v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mIsPlayerInitDone:Z

    .line 320
    .line 321
    return-void
.end method

.method public static synthetic d(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->lambda$suspend$4()V

    return-void
.end method

.method public static synthetic e(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->lambda$play$6()V

    return-void
.end method

.method public static synthetic f(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->lambda$pause$7()V

    return-void
.end method

.method public static synthetic g(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->lambda$release$8()V

    return-void
.end method

.method private static getAdaptiveSupportString(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const-string p0, "N/A"

    return-object p0

    :cond_0
    if-eqz p1, :cond_3

    const/16 p0, 0x8

    if-eq p1, p0, :cond_2

    const/16 p0, 0x10

    if-eq p1, p0, :cond_1

    const-string p0, "?"

    return-object p0

    :cond_1
    const-string p0, "YES"

    return-object p0

    :cond_2
    const-string p0, "YES_NOT_SEAMLESS"

    return-object p0

    :cond_3
    const-string p0, "NO"

    return-object p0
.end method

.method private getDuration()J
    .locals 2

    new-instance v0, Lorg/mozilla/gecko/media/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mozilla/gecko/media/a;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->awaitPlayerThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getFormatSupportString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "YES"

    return-object p0

    :cond_1
    const-string p0, "NO_EXCEEDS_CAPABILITIES"

    return-object p0

    :cond_2
    const-string p0, "NO_UNSUPPORTED_TYPE"

    return-object p0

    :cond_3
    const-string p0, "NO"

    return-object p0
.end method

.method private static getStateString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "E"

    return-object p0

    :cond_1
    const-string p0, "R"

    return-object p0

    :cond_2
    const-string p0, "B"

    return-object p0

    :cond_3
    const-string p0, "I"

    return-object p0
.end method

.method private static getTrackStatusString(Lz2/p;Lt2/w;I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    check-cast p0, Lz2/d;

    iget-object v0, p0, Lz2/d;->a:Lt2/w;

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, p2}, Lz2/d;->h(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->getTrackStatusString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTrackStatusString(Z)Ljava/lang/String;
    .locals 0

    .line 2
    if-eqz p0, :cond_0

    const-string p0, "[X]"

    goto :goto_0

    :cond_0
    const-string p0, "[ ]"

    :goto_0
    return-object p0
.end method

.method public static synthetic h(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->lambda$getDuration$0()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->lambda$getBufferedPosition$2()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private isPlayerThread()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private lambda$getBufferedPosition$2()Ljava/lang/Long;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mPlayer:Lf2/j;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    check-cast v0, Lf2/n;

    .line 10
    .line 11
    invoke-virtual {v0}, Lf2/n;->g()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_2

    .line 16
    .line 17
    iget-object v3, v0, Lf2/n;->p:Lf2/a0;

    .line 18
    .line 19
    iget-object v4, v3, Lf2/a0;->j:Lt2/f;

    .line 20
    .line 21
    iget-object v3, v3, Lf2/a0;->b:Lt2/f;

    .line 22
    .line 23
    invoke-virtual {v4, v3}, Lt2/f;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    iget-object v0, v0, Lf2/n;->p:Lf2/a0;

    .line 30
    .line 31
    iget-wide v3, v0, Lf2/a0;->k:J

    .line 32
    .line 33
    invoke-static {v3, v4}, Lf2/d;->b(J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :cond_1
    invoke-virtual {v0}, Lf2/n;->c()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_2
    invoke-virtual {v0}, Lf2/n;->l()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    iget-wide v3, v0, Lf2/n;->s:J

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    iget-object v3, v0, Lf2/n;->p:Lf2/a0;

    .line 55
    .line 56
    iget-object v4, v3, Lf2/a0;->j:Lt2/f;

    .line 57
    .line 58
    iget-wide v4, v4, Lt2/f;->d:J

    .line 59
    .line 60
    iget-object v6, v3, Lf2/a0;->b:Lt2/f;

    .line 61
    .line 62
    iget-wide v6, v6, Lt2/f;->d:J

    .line 63
    .line 64
    cmp-long v4, v4, v6

    .line 65
    .line 66
    if-eqz v4, :cond_4

    .line 67
    .line 68
    iget-object v3, v3, Lf2/a0;->a:Lf2/l0;

    .line 69
    .line 70
    invoke-virtual {v0}, Lf2/n;->b()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    iget-object v0, v0, Lf2/n;->a:Lf2/k0;

    .line 75
    .line 76
    invoke-virtual {v3, v4, v0}, Lf2/l0;->h(ILf2/k0;)Lf2/k0;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-wide v3, v0, Lf2/k0;->h:J

    .line 81
    .line 82
    invoke-static {v3, v4}, Lf2/d;->b(J)J

    .line 83
    .line 84
    .line 85
    move-result-wide v3

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    iget-wide v3, v3, Lf2/a0;->k:J

    .line 88
    .line 89
    iget-object v5, v0, Lf2/n;->p:Lf2/a0;

    .line 90
    .line 91
    iget-object v5, v5, Lf2/a0;->j:Lt2/f;

    .line 92
    .line 93
    invoke-virtual {v5}, Lt2/f;->a()Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_6

    .line 98
    .line 99
    iget-object v3, v0, Lf2/n;->p:Lf2/a0;

    .line 100
    .line 101
    iget-object v4, v3, Lf2/a0;->a:Lf2/l0;

    .line 102
    .line 103
    iget-object v3, v3, Lf2/a0;->j:Lt2/f;

    .line 104
    .line 105
    iget-object v3, v3, Lt2/f;->a:Ljava/lang/Object;

    .line 106
    .line 107
    iget-object v5, v0, Lf2/n;->g:Lf2/j0;

    .line 108
    .line 109
    invoke-virtual {v4, v3, v5}, Lf2/l0;->d(Ljava/lang/Object;Lf2/j0;)Lf2/j0;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    iget-object v4, v0, Lf2/n;->p:Lf2/a0;

    .line 114
    .line 115
    iget-object v4, v4, Lf2/a0;->j:Lt2/f;

    .line 116
    .line 117
    iget v4, v4, Lt2/f;->b:I

    .line 118
    .line 119
    iget-object v5, v3, Lf2/j0;->e:Lu2/b;

    .line 120
    .line 121
    iget-object v5, v5, Lu2/b;->b:[J

    .line 122
    .line 123
    aget-wide v4, v5, v4

    .line 124
    .line 125
    const-wide/high16 v6, -0x8000000000000000L

    .line 126
    .line 127
    cmp-long v6, v4, v6

    .line 128
    .line 129
    if-nez v6, :cond_5

    .line 130
    .line 131
    iget-wide v3, v3, Lf2/j0;->c:J

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_5
    move-wide v3, v4

    .line 135
    :cond_6
    :goto_0
    iget-object v5, v0, Lf2/n;->p:Lf2/a0;

    .line 136
    .line 137
    iget-object v5, v5, Lf2/a0;->j:Lt2/f;

    .line 138
    .line 139
    invoke-static {v3, v4}, Lf2/d;->b(J)J

    .line 140
    .line 141
    .line 142
    move-result-wide v3

    .line 143
    iget-object v6, v0, Lf2/n;->p:Lf2/a0;

    .line 144
    .line 145
    iget-object v6, v6, Lf2/a0;->a:Lf2/l0;

    .line 146
    .line 147
    iget-object v5, v5, Lt2/f;->a:Ljava/lang/Object;

    .line 148
    .line 149
    iget-object v0, v0, Lf2/n;->g:Lf2/j0;

    .line 150
    .line 151
    invoke-virtual {v6, v5, v0}, Lf2/l0;->d(Ljava/lang/Object;Lf2/j0;)Lf2/j0;

    .line 152
    .line 153
    .line 154
    iget-wide v5, v0, Lf2/j0;->d:J

    .line 155
    .line 156
    invoke-static {v5, v6}, Lf2/d;->b(J)J

    .line 157
    .line 158
    .line 159
    move-result-wide v5

    .line 160
    add-long/2addr v3, v5

    .line 161
    :goto_1
    const-wide/16 v5, 0x3e8

    .line 162
    .line 163
    mul-long/2addr v3, v5

    .line 164
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 165
    .line 166
    .line 167
    move-result-wide v1

    .line 168
    :goto_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    return-object v0
.end method

.method private synthetic lambda$getDuration$0()Ljava/lang/Long;
    .locals 7

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mPlayer:Lf2/j;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->isLiveStream()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mPlayer:Lf2/j;

    check-cast v0, Lf2/n;

    invoke-virtual {v0}, Lf2/n;->c()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$init$1(Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceCallbacks;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mResourceCallbacks:Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceCallbacks;

    invoke-direct {p0, p2}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->createExoPlayer(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$pause$7()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mMediaDecoderPlayState:Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    sget-object v1, Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;->PLAY_STATE_PLAYING:Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;->PLAY_STATE_PAUSED:Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    iput-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mMediaDecoderPlayState:Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->suspendExoplayer()V

    return-void
.end method

.method private synthetic lambda$play$6()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mMediaDecoderPlayState:Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    sget-object v1, Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;->PLAY_STATE_PLAYING:Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-object v1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mMediaDecoderPlayState:Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->resumeExoplayer()V

    return-void
.end method

.method private lambda$release$8()V
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mPlayer:Lf2/j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    check-cast v0, Lf2/n;

    .line 8
    .line 9
    iget-object v0, v0, Lf2/n;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x1

    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lf2/a;

    .line 27
    .line 28
    iget-object v6, v4, Lf2/a;->a:Lf2/c0;

    .line 29
    .line 30
    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    iput-boolean v5, v4, Lf2/a;->b:Z

    .line 37
    .line 38
    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mPlayer:Lf2/j;

    .line 43
    .line 44
    move-object v6, v0

    .line 45
    check-cast v6, Lf2/n;

    .line 46
    .line 47
    invoke-virtual {v6, v1, v1, v1, v5}, Lf2/n;->d(ZZZI)Lf2/a0;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    iget v0, v6, Lf2/n;->k:I

    .line 52
    .line 53
    add-int/2addr v0, v5

    .line 54
    iput v0, v6, Lf2/n;->k:I

    .line 55
    .line 56
    iget-object v0, v6, Lf2/n;->e:Lf2/r;

    .line 57
    .line 58
    iget-object v0, v0, Lf2/r;->l:Lh/a;

    .line 59
    .line 60
    iget-object v0, v0, Lh/a;->g:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Landroid/os/Handler;

    .line 63
    .line 64
    const/4 v3, 0x6

    .line 65
    invoke-virtual {v0, v3, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 70
    .line 71
    .line 72
    const/4 v8, 0x0

    .line 73
    const/4 v9, 0x4

    .line 74
    const/4 v10, 0x1

    .line 75
    const/4 v11, 0x0

    .line 76
    invoke-virtual/range {v6 .. v11}, Lf2/n;->m(Lf2/a0;ZIIZ)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mPlayer:Lf2/j;

    .line 80
    .line 81
    check-cast v0, Lf2/n;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    sget v3, Lb3/n;->a:I

    .line 94
    .line 95
    sget-object v3, Lf2/s;->a:Ljava/util/HashSet;

    .line 96
    .line 97
    const-class v3, Lf2/s;

    .line 98
    .line 99
    monitor-enter v3

    .line 100
    monitor-exit v3

    .line 101
    iget-object v3, v0, Lf2/n;->e:Lf2/r;

    .line 102
    .line 103
    monitor-enter v3

    .line 104
    :try_start_0
    iget-boolean v4, v3, Lf2/r;->B:Z

    .line 105
    .line 106
    if-nez v4, :cond_4

    .line 107
    .line 108
    iget-object v4, v3, Lf2/r;->m:Landroid/os/HandlerThread;

    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-nez v4, :cond_2

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_2
    iget-object v4, v3, Lf2/r;->l:Lh/a;

    .line 118
    .line 119
    const/4 v6, 0x7

    .line 120
    invoke-virtual {v4, v6}, Lh/a;->G(I)V

    .line 121
    .line 122
    .line 123
    move v4, v1

    .line 124
    :goto_1
    iget-boolean v6, v3, Lf2/r;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .line 126
    if-nez v6, :cond_3

    .line 127
    .line 128
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :catch_0
    move v4, v5

    .line 133
    goto :goto_1

    .line 134
    :cond_3
    if-eqz v4, :cond_4

    .line 135
    .line 136
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    .line 142
    .line 143
    :cond_4
    :goto_2
    monitor-exit v3

    .line 144
    iget-object v3, v0, Lf2/n;->d:Le1/d;

    .line 145
    .line 146
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1, v1, v1, v5}, Lf2/n;->d(ZZZI)Lf2/a0;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    iput-object v3, v0, Lf2/n;->p:Lf2/a0;

    .line 154
    .line 155
    iput-object v2, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mVRenderer:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;

    .line 156
    .line 157
    iput-object v2, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mARenderer:Lorg/mozilla/gecko/media/GeckoHlsAudioRenderer;

    .line 158
    .line 159
    iput-object v2, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mPlayer:Lf2/j;

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :catchall_0
    move-exception v0

    .line 163
    monitor-exit v3

    .line 164
    throw v0

    .line 165
    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mThread:Landroid/os/HandlerThread;

    .line 166
    .line 167
    if-eqz v0, :cond_6

    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 170
    .line 171
    .line 172
    iput-object v2, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mThread:Landroid/os/HandlerThread;

    .line 173
    .line 174
    :cond_6
    iput-object v2, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mDemuxerCallbacks:Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerCallbacks;

    .line 175
    .line 176
    iput-object v2, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mResourceCallbacks:Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceCallbacks;

    .line 177
    .line 178
    iput-boolean v1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mIsPlayerInitDone:Z

    .line 179
    .line 180
    iput-boolean v1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mIsDemuxerInitDone:Z

    .line 181
    .line 182
    return-void
.end method

.method private synthetic lambda$resume$5()V
    .locals 2

    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mExoplayerSuspended:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mMediaDecoderPlayState:Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    sget-object v1, Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;->PLAY_STATE_PLAYING:Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->resumeExoplayer()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$seek$3(J)Ljava/lang/Boolean;
    .locals 12

    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mExoplayerSuspended:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->resumeExoplayer()V

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mRenderers:[Lorg/mozilla/gecko/media/GeckoHlsRendererBase;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_4

    aget-object v7, v3, v6

    iget-object v8, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mVRenderer:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;

    if-ne v7, v8, :cond_1

    iget-object v8, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mRendererController:Lorg/mozilla/gecko/media/GeckoHlsPlayer$RendererController;

    invoke-virtual {v8}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$RendererController;->isVideoRendererEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mTracksInfo:Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;

    invoke-virtual {v8}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->hasVideo()Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    iget-object v8, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mARenderer:Lorg/mozilla/gecko/media/GeckoHlsAudioRenderer;

    if-ne v7, v8, :cond_3

    iget-object v8, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mRendererController:Lorg/mozilla/gecko/media/GeckoHlsPlayer$RendererController;

    invoke-virtual {v8}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$RendererController;->isAudioRendererEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mTracksInfo:Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;

    invoke-virtual {v8}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->hasAudio()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->getFirstSamplePTS()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v0, v3

    if-eqz v0, :cond_5

    const/4 v5, 0x1

    :cond_5
    invoke-static {v5}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mPlayer:Lf2/j;

    const-wide/16 v3, 0x3e8

    div-long/2addr p1, v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    div-long/2addr v1, v3

    sub-long/2addr p1, v1

    check-cast v0, Lf2/n;

    invoke-virtual {v0, p1, p2}, Lf2/n;->j(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :catch_0
    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mDemuxerCallbacks:Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerCallbacks;

    if-eqz p1, :cond_6

    sget-object p2, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;->UNKNOWN:Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;

    invoke-virtual {p2}, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;->code()I

    move-result p2

    invoke-interface {p1, p2}, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerCallbacks;->onError(I)V

    :cond_6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private synthetic lambda$suspend$4()V
    .locals 2

    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mExoplayerSuspended:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mMediaDecoderPlayState:Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    sget-object v1, Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;->PLAY_STATE_PLAYING:Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->suspendExoplayer()V

    :cond_1
    return-void
.end method

.method private resumeExoplayer()V
    .locals 2

    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->isPlayerThread()Z

    move-result v0

    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mPlayer:Lf2/j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mExoplayerSuspended:Z

    const/4 v1, 0x1

    check-cast v0, Lf2/n;

    invoke-virtual {v0, v1}, Lf2/n;->k(Z)V

    return-void
.end method

.method private runOnPlayerThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->assertTrue(Z)V

    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->isPlayerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method private suspendExoplayer()V
    .locals 2

    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->isPlayerThread()Z

    move-result v0

    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mPlayer:Lf2/j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mExoplayerSuspended:Z

    const/4 v1, 0x0

    check-cast v0, Lf2/n;

    invoke-virtual {v0, v1}, Lf2/n;->k(Z)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addDemuxerWrapperCallbackListener(Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerCallbacks;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mDemuxerCallbacks:Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerCallbacks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public checkInitDone()V
    .locals 4

    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mIsDemuxerInitDone:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mDemuxerCallbacks:Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerCallbacks;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mTracksInfo:Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->videoReady()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mTracksInfo:Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->audioReady()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mDemuxerCallbacks:Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerCallbacks;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mTracksInfo:Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;

    invoke-virtual {v2}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->hasAudio()Z

    move-result v2

    iget-object v3, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mTracksInfo:Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;

    invoke-virtual {v3}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->hasVideo()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerCallbacks;->onInitialized(ZZ)V

    :cond_2
    iput-boolean v1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mIsDemuxerInitDone:Z

    :cond_3
    return-void
.end method

.method public getAudioInfo(I)Lorg/mozilla/gecko/media/GeckoAudioInfo;
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mARenderer:Lorg/mozilla/gecko/media/GeckoHlsAudioRenderer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mTracksInfo:Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->hasAudio()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mARenderer:Lorg/mozilla/gecko/media/GeckoHlsAudioRenderer;

    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->getFormat(I)Lf2/t;

    move-result-object p1

    if-nez p1, :cond_2

    monitor-exit p0

    return-object v1

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "audio/raw"

    iget-object v2, p1, Lf2/t;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->assertTrue(Z)V

    iget-object v0, p1, Lf2/t;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lf2/t;->k:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [B

    :goto_0
    move-object v10, v1

    new-instance v0, Lorg/mozilla/gecko/media/GeckoAudioInfo;

    iget v3, p1, Lf2/t;->w:I

    iget v4, p1, Lf2/t;->v:I

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->getDuration()J

    move-result-wide v7

    iget-object v9, p1, Lf2/t;->i:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lorg/mozilla/gecko/media/GeckoAudioInfo;-><init>(IIIIJLjava/lang/String;[B)V

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getBufferedPosition()J
    .locals 2

    new-instance v0, Lorg/mozilla/gecko/media/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/mozilla/gecko/media/a;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->awaitPlayerThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mPlayerId:I

    return v0
.end method

.method public declared-synchronized getNextKeyFrameTime()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mVRenderer:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->getNextKeyFrameTime()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumberOfTracks(Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;)I
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;->VIDEO:Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mTracksInfo:Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;

    invoke-virtual {p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->getNumOfVideoTracks()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    sget-object v0, Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;->AUDIO:Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mTracksInfo:Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;

    invoke-virtual {p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->getNumOfAudioTracks()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSamples(Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;I)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;",
            "I)",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lorg/mozilla/gecko/media/GeckoHLSSample;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;->VIDEO:Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mVRenderer:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->getQueuedSamples(I)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    sget-object v0, Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;->AUDIO:Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mARenderer:Lorg/mozilla/gecko/media/GeckoHlsAudioRenderer;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->getQueuedSamples(I)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-object p1

    :cond_3
    :try_start_2
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getVideoInfo(I)Lorg/mozilla/gecko/media/GeckoVideoInfo;
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mVRenderer:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mTracksInfo:Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->hasVideo()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mVRenderer:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;

    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->getFormat(I)Lf2/t;

    move-result-object p1

    if-nez p1, :cond_2

    monitor-exit p0

    return-object v1

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v12, Lorg/mozilla/gecko/media/GeckoVideoInfo;

    iget v3, p1, Lf2/t;->n:I

    iget v4, p1, Lf2/t;->o:I

    iget v5, p1, Lf2/t;->q:I

    iget v6, p1, Lf2/t;->s:I

    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->getDuration()J

    move-result-wide v7

    iget-object v9, p1, Lf2/t;->i:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    move v1, v3

    move v2, v4

    invoke-direct/range {v0 .. v11}, Lorg/mozilla/gecko/media/GeckoVideoInfo;-><init>(IIIIIIJLjava/lang/String;[B[B)V

    return-object v12

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized init(Ljava/lang/String;Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceCallbacks;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    :try_start_0
    invoke-static {v2}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->assertTrue(Z)V

    iget-boolean v2, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mIsPlayerInitDone:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->assertTrue(Z)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GeckoHlsPlayerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Ln1/a;

    const/4 v2, 0x6

    invoke-direct {v1, p0, p2, p1, v2}, Ln1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isLiveStream()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mIsTimelineStatic:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic onIsPlayingChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public declared-synchronized onLoadingChanged(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->isPlayerThread()Z

    move-result v0

    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->assertTrue(Z)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mMediaDecoderPlayState:Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    sget-object v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;->PLAY_STATE_PLAYING:Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->suspendExoplayer()V

    :cond_0
    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mComponentEventDispatcher:Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;->onDataArrived(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onPlaybackParametersChanged(Lf2/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->isPlayerThread()Z

    move-result p1

    invoke-static {p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->assertTrue(Z)V

    return-void
.end method

.method public bridge synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public declared-synchronized onPlayerError(Lf2/h;)V
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->isPlayerThread()Z

    move-result p1

    invoke-static {p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->assertTrue(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mIsPlayerInitDone:Z

    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mResourceCallbacks:Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceCallbacks;

    if-eqz p1, :cond_0

    sget-object v0, Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceError;->PLAYER:Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceError;

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceError;->code()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceCallbacks;->onError(I)V

    :cond_0
    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mDemuxerCallbacks:Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerCallbacks;

    if-eqz p1, :cond_1

    sget-object v0, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;->PLAYER:Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;->code()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerCallbacks;->onError(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPlayerStateChanged(ZI)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->isPlayerThread()Z

    move-result p1

    invoke-static {p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->assertTrue(Z)V

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    iget-boolean p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mExoplayerSuspended:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mMediaDecoderPlayState:Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    sget-object p2, Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;->PLAY_STATE_PLAYING:Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->resumeExoplayer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->isPlayerThread()Z

    move-result p1

    invoke-static {p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->assertTrue(Z)V

    return-void
.end method

.method public bridge synthetic onRepeatModeChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic onSeekProcessed()V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public declared-synchronized onTimelineChanged(Lf2/l0;I)V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->isPlayerThread()Z

    move-result p2

    invoke-static {p2}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->assertTrue(Z)V

    new-instance p2, Lf2/k0;

    invoke-direct {p2}, Lf2/k0;-><init>()V

    invoke-virtual {p1}, Lf2/l0;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lf2/l0;->j()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0, p2}, Lf2/l0;->h(ILf2/k0;)Lf2/k0;

    move-result-object v0

    iget-boolean v0, v0, Lf2/k0;->d:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mIsTimelineStatic:Z

    invoke-virtual {p1}, Lf2/l0;->e()I

    move-result v0

    invoke-virtual {p1}, Lf2/l0;->j()I

    move-result v2

    new-instance v3, Lf2/j0;

    invoke-direct {v3}, Lf2/j0;-><init>()V

    move v4, v1

    :goto_1
    const/4 v5, 0x3

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 1
    invoke-virtual {p1, v4, v3, v1}, Lf2/l0;->c(ILf2/j0;Z)Lf2/j0;

    .line 2
    iget-wide v5, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mDurationUs:J

    .line 3
    iget-wide v7, v3, Lf2/j0;->c:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 4
    iput-wide v7, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mDurationUs:J

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1, p2}, Lf2/l0;->h(ILf2/k0;)Lf2/k0;

    iget-wide v3, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mDurationUs:J

    .line 5
    iget-wide v6, p2, Lf2/k0;->h:J

    cmp-long v0, v3, v6

    if-gez v0, :cond_3

    .line 6
    iput-wide v6, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mDurationUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic onTimelineChanged(Lf2/l0;Ljava/lang/Object;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    return-void
.end method

.method public declared-synchronized onTracksChanged(Lt2/x;Lz2/q;)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->isPlayerThread()Z

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    invoke-static {p2}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->assertTrue(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mTracksInfo:Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;

    .line 10
    .line 11
    invoke-virtual {p2}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->reset()V

    .line 12
    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    move v0, p2

    .line 16
    move v1, v0

    .line 17
    move v2, v1

    .line 18
    :goto_0
    iget v3, p1, Lt2/x;->a:I

    .line 19
    .line 20
    if-ge v0, v3, :cond_3

    .line 21
    .line 22
    iget-object v3, p1, Lt2/x;->b:[Lt2/w;

    .line 23
    .line 24
    aget-object v3, v3, v0

    .line 25
    .line 26
    move v4, p2

    .line 27
    :goto_1
    iget v5, v3, Lt2/w;->a:I

    .line 28
    .line 29
    if-ge v4, v5, :cond_2

    .line 30
    .line 31
    iget-object v5, v3, Lt2/w;->b:[Lf2/t;

    .line 32
    .line 33
    aget-object v5, v5, v4

    .line 34
    .line 35
    iget-object v6, v5, Lf2/t;->i:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v6, :cond_1

    .line 38
    .line 39
    iget-object v6, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mRendererController:Lorg/mozilla/gecko/media/GeckoHlsPlayer$RendererController;

    .line 40
    .line 41
    invoke-virtual {v6}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$RendererController;->isVideoRendererEnabled()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_0

    .line 46
    .line 47
    iget-object v6, v5, Lf2/t;->i:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v7, Ljava/lang/String;

    .line 50
    .line 51
    const-string v8, "video"

    .line 52
    .line 53
    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_0

    .line 61
    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_0
    iget-object v6, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mRendererController:Lorg/mozilla/gecko/media/GeckoHlsPlayer$RendererController;

    .line 66
    .line 67
    invoke-virtual {v6}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$RendererController;->isAudioRendererEnabled()Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_1

    .line 72
    .line 73
    iget-object v5, v5, Lf2/t;->i:Ljava/lang/String;

    .line 74
    .line 75
    new-instance v6, Ljava/lang/String;

    .line 76
    .line 77
    const-string v7, "audio"

    .line 78
    .line 79
    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_1

    .line 87
    .line 88
    add-int/lit8 v2, v2, 0x1

    .line 89
    .line 90
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mTracksInfo:Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->updateNumOfVideoTracks(I)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mTracksInfo:Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;

    .line 102
    .line 103
    invoke-virtual {p1, v2}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->updateNumOfAudioTracks(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    .line 106
    monitor-exit p0

    .line 107
    return-void

    .line 108
    :catchall_0
    move-exception p1

    .line 109
    monitor-exit p0

    .line 110
    throw p1
.end method

.method public declared-synchronized pause()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/mozilla/gecko/media/b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/mozilla/gecko/media/b;-><init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer;I)V

    invoke-direct {p0, v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->runOnPlayerThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized play()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/mozilla/gecko/media/b;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/mozilla/gecko/media/b;-><init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer;I)V

    invoke-direct {p0, v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->runOnPlayerThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mReleasing:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mReleasing:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lorg/mozilla/gecko/media/b;

    invoke-direct {v1, p0, v0}, Lorg/mozilla/gecko/media/b;-><init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer;I)V

    invoke-direct {p0, v1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->runOnPlayerThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/mozilla/gecko/media/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mozilla/gecko/media/b;-><init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer;I)V

    invoke-direct {p0, v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->runOnPlayerThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public seek(J)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->mPlayer:Lf2/j;

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lorg/mozilla/gecko/media/c;

    invoke-direct {v0, p0, p1, p2}, Lorg/mozilla/gecko/media/c;-><init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer;J)V

    invoke-direct {p0, v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->awaitPlayerThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized suspend()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/mozilla/gecko/media/b;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lorg/mozilla/gecko/media/b;-><init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer;I)V

    invoke-direct {p0, v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->runOnPlayerThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
