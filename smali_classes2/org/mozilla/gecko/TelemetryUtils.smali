.class public Lorg/mozilla/gecko/TelemetryUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/TelemetryUtils$UptimeTimer;,
        Lorg/mozilla/gecko/TelemetryUtils$RealtimeTimer;,
        Lorg/mozilla/gecko/TelemetryUtils$Timer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "TelemetryUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToHistogram(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/mozilla/gecko/TelemetryUtils;->nativeAddHistogram(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-class v0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-class p1, Lorg/mozilla/gecko/TelemetryUtils;

    const-string v0, "nativeAddHistogram"

    invoke-static {p1, v0, p0}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCall(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static addToKeyedHistogram(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/mozilla/gecko/TelemetryUtils;->nativeAddKeyedHistogram(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-class v0, Ljava/lang/String;

    filled-new-array {v0, p0, v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-class p1, Lorg/mozilla/gecko/TelemetryUtils;

    const-string p2, "nativeAddKeyedHistogram"

    invoke-static {p1, p2, p0}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCall(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static getSessionName(Lorg/mozilla/gecko/TelemetryContract$Session;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/mozilla/gecko/TelemetryContract$Session;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/gecko/TelemetryContract$Session;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeAddHistogram(Ljava/lang/String;I)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
        stubName = "AddHistogram"
    .end annotation
.end method

.method private static native nativeAddKeyedHistogram(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
        stubName = "AddKeyedHistogram"
    .end annotation
.end method

.method private static native nativeAddUiEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
        stubName = "AddUIEvent"
    .end annotation
.end method

.method private static native nativeStartUiSession(Ljava/lang/String;J)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
        stubName = "StartUISession"
    .end annotation
.end method

.method private static native nativeStopUiSession(Ljava/lang/String;Ljava/lang/String;J)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
        stubName = "StopUISession"
    .end annotation
.end method

.method public static realtime()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static sendUIEvent(Ljava/lang/String;Lorg/mozilla/gecko/TelemetryContract$Method;JLjava/lang/String;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_1

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/gecko/TelemetryContract$Method;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/gecko/TelemetryUtils;->nativeAddUiEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-class v0, Ljava/lang/String;

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/mozilla/gecko/TelemetryContract$Method;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    move-object v1, p0

    move-object v6, p4

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-class p1, Lorg/mozilla/gecko/TelemetryUtils;

    const-string p2, "nativeAddUiEvent"

    invoke-static {p1, p2, p0}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCall(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected non-null method - use Method.NONE?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sendUIEvent(Lorg/mozilla/gecko/TelemetryContract$Event;)V
    .locals 4

    .line 2
    sget-object v0, Lorg/mozilla/gecko/TelemetryContract$Method;->NONE:Lorg/mozilla/gecko/TelemetryContract$Method;

    invoke-static {}, Lorg/mozilla/gecko/TelemetryUtils;->realtime()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lorg/mozilla/gecko/TelemetryUtils;->sendUIEvent(Lorg/mozilla/gecko/TelemetryContract$Event;Lorg/mozilla/gecko/TelemetryContract$Method;JLjava/lang/String;)V

    return-void
.end method

.method public static sendUIEvent(Lorg/mozilla/gecko/TelemetryContract$Event;Lorg/mozilla/gecko/TelemetryContract$Method;)V
    .locals 3

    .line 3
    invoke-static {}, Lorg/mozilla/gecko/TelemetryUtils;->realtime()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lorg/mozilla/gecko/TelemetryUtils;->sendUIEvent(Lorg/mozilla/gecko/TelemetryContract$Event;Lorg/mozilla/gecko/TelemetryContract$Method;JLjava/lang/String;)V

    return-void
.end method

.method public static sendUIEvent(Lorg/mozilla/gecko/TelemetryContract$Event;Lorg/mozilla/gecko/TelemetryContract$Method;J)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/mozilla/gecko/TelemetryUtils;->sendUIEvent(Lorg/mozilla/gecko/TelemetryContract$Event;Lorg/mozilla/gecko/TelemetryContract$Method;JLjava/lang/String;)V

    return-void
.end method

.method public static sendUIEvent(Lorg/mozilla/gecko/TelemetryContract$Event;Lorg/mozilla/gecko/TelemetryContract$Method;JLjava/lang/String;)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lorg/mozilla/gecko/TelemetryContract$Event;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/gecko/TelemetryUtils;->sendUIEvent(Ljava/lang/String;Lorg/mozilla/gecko/TelemetryContract$Method;JLjava/lang/String;)V

    return-void
.end method

.method public static sendUIEvent(Lorg/mozilla/gecko/TelemetryContract$Event;Lorg/mozilla/gecko/TelemetryContract$Method;Ljava/lang/String;)V
    .locals 2

    .line 6
    invoke-static {}, Lorg/mozilla/gecko/TelemetryUtils;->realtime()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1, p2}, Lorg/mozilla/gecko/TelemetryUtils;->sendUIEvent(Lorg/mozilla/gecko/TelemetryContract$Event;Lorg/mozilla/gecko/TelemetryContract$Method;JLjava/lang/String;)V

    return-void
.end method

.method public static sendUIEvent(Lorg/mozilla/gecko/TelemetryContract$Event;Z)V
    .locals 3

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lorg/mozilla/gecko/TelemetryContract$Method;->NONE:Lorg/mozilla/gecko/TelemetryContract$Method;

    invoke-static {}, Lorg/mozilla/gecko/TelemetryUtils;->realtime()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lorg/mozilla/gecko/TelemetryUtils;->sendUIEvent(Ljava/lang/String;Lorg/mozilla/gecko/TelemetryContract$Method;JLjava/lang/String;)V

    return-void
.end method

.method public static startUISession(Lorg/mozilla/gecko/TelemetryContract$Session;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/mozilla/gecko/TelemetryUtils;->startUISession(Lorg/mozilla/gecko/TelemetryContract$Session;Ljava/lang/String;)V

    return-void
.end method

.method public static startUISession(Lorg/mozilla/gecko/TelemetryContract$Session;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {p0, p1}, Lorg/mozilla/gecko/TelemetryUtils;->getSessionName(Lorg/mozilla/gecko/TelemetryContract$Session;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->isRunning()Z

    move-result p1

    invoke-static {}, Lorg/mozilla/gecko/TelemetryUtils;->realtime()J

    move-result-wide v0

    if-eqz p1, :cond_0

    invoke-static {p0, v0, v1}, Lorg/mozilla/gecko/TelemetryUtils;->nativeStartUiSession(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-class v0, Ljava/lang/String;

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-class p1, Lorg/mozilla/gecko/TelemetryUtils;

    const-string v0, "nativeStartUiSession"

    invoke-static {p1, v0, p0}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCall(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static stopUISession(Lorg/mozilla/gecko/TelemetryContract$Session;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    sget-object v1, Lorg/mozilla/gecko/TelemetryContract$Reason;->NONE:Lorg/mozilla/gecko/TelemetryContract$Reason;

    invoke-static {p0, v0, v1}, Lorg/mozilla/gecko/TelemetryUtils;->stopUISession(Lorg/mozilla/gecko/TelemetryContract$Session;Ljava/lang/String;Lorg/mozilla/gecko/TelemetryContract$Reason;)V

    return-void
.end method

.method public static stopUISession(Lorg/mozilla/gecko/TelemetryContract$Session;Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/mozilla/gecko/TelemetryContract$Reason;->NONE:Lorg/mozilla/gecko/TelemetryContract$Reason;

    invoke-static {p0, p1, v0}, Lorg/mozilla/gecko/TelemetryUtils;->stopUISession(Lorg/mozilla/gecko/TelemetryContract$Session;Ljava/lang/String;Lorg/mozilla/gecko/TelemetryContract$Reason;)V

    return-void
.end method

.method public static stopUISession(Lorg/mozilla/gecko/TelemetryContract$Session;Ljava/lang/String;Lorg/mozilla/gecko/TelemetryContract$Reason;)V
    .locals 2

    .line 3
    invoke-static {p0, p1}, Lorg/mozilla/gecko/TelemetryUtils;->getSessionName(Lorg/mozilla/gecko/TelemetryContract$Session;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lorg/mozilla/gecko/TelemetryContract$Reason;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/mozilla/gecko/TelemetryUtils;->realtime()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lorg/mozilla/gecko/TelemetryUtils;->nativeStopUiSession(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/mozilla/gecko/TelemetryContract$Reason;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/mozilla/gecko/TelemetryUtils;->realtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-class v0, Ljava/lang/String;

    filled-new-array {v0, p0, v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-class p1, Lorg/mozilla/gecko/TelemetryUtils;

    const-string p2, "nativeStopUiSession"

    invoke-static {p1, p2, p0}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCall(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static stopUISession(Lorg/mozilla/gecko/TelemetryContract$Session;Lorg/mozilla/gecko/TelemetryContract$Reason;)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/mozilla/gecko/TelemetryUtils;->stopUISession(Lorg/mozilla/gecko/TelemetryContract$Session;Ljava/lang/String;Lorg/mozilla/gecko/TelemetryContract$Reason;)V

    return-void
.end method

.method public static uptime()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
