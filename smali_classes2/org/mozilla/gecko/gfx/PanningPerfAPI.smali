.class public final Lorg/mozilla/gecko/gfx/PanningPerfAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EXPECTED_FRAME_COUNT:I = 0x800

.field private static final LOGTAG:Ljava/lang/String; = "GeckoPanningPerfAPI"

.field private static mFrameStartTime:J

.field private static mFrameTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mRecordingFrames:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initialiseRecordingArrays()V
    .locals 2

    sget-object v0, Lorg/mozilla/gecko/gfx/PanningPerfAPI;->mFrameTimes:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lorg/mozilla/gecko/gfx/PanningPerfAPI;->mFrameTimes:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    return-void
.end method

.method public static recordFrameTime()V
    .locals 5

    sget-boolean v0, Lorg/mozilla/gecko/gfx/PanningPerfAPI;->mRecordingFrames:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/mozilla/gecko/gfx/PanningPerfAPI;->mFrameTimes:Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget-wide v3, Lorg/mozilla/gecko/gfx/PanningPerfAPI;->mFrameStartTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static startCheckerboardRecording()V
    .locals 1
    .annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static startFrameTimeRecording()V
    .locals 2
    .annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
    .end annotation

    sget-boolean v0, Lorg/mozilla/gecko/gfx/PanningPerfAPI;->mRecordingFrames:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/mozilla/gecko/gfx/PanningPerfAPI;->mRecordingFrames:Z

    invoke-static {}, Lorg/mozilla/gecko/gfx/PanningPerfAPI;->initialiseRecordingArrays()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/mozilla/gecko/gfx/PanningPerfAPI;->mFrameStartTime:J

    return-void
.end method

.method public static stopCheckerboardRecording()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static stopFrameTimeRecording()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
    .end annotation

    sget-boolean v0, Lorg/mozilla/gecko/gfx/PanningPerfAPI;->mRecordingFrames:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lorg/mozilla/gecko/gfx/PanningPerfAPI;->mRecordingFrames:Z

    sget-object v0, Lorg/mozilla/gecko/gfx/PanningPerfAPI;->mFrameTimes:Ljava/util/List;

    return-object v0
.end method
