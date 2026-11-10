.class public Lorg/mozilla/gecko/NativeQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/NativeQueue$QueuedCall;,
        Lorg/mozilla/gecko/NativeQueue$State;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "GeckoNativeQueue"

.field private static final QUEUED_CALLS_COUNT:I = 0x10


# instance fields
.field final mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mozilla/gecko/NativeQueue$QueuedCall;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadyState:Lorg/mozilla/gecko/NativeQueue$State;

.field private volatile mState:Lorg/mozilla/gecko/NativeQueue$State;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/NativeQueue$State;Lorg/mozilla/gecko/NativeQueue$State;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/gecko/NativeQueue;->mQueue:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/mozilla/gecko/NativeQueue;->mState:Lorg/mozilla/gecko/NativeQueue$State;

    iput-object p2, p0, Lorg/mozilla/gecko/NativeQueue;->mReadyState:Lorg/mozilla/gecko/NativeQueue$State;

    return-void
.end method

.method private flushQueuedLocked(Lorg/mozilla/gecko/NativeQueue$State;)V
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/mozilla/gecko/NativeQueue;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/mozilla/gecko/NativeQueue;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/gecko/NativeQueue$QueuedCall;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v2, Lorg/mozilla/gecko/NativeQueue$QueuedCall;->state:Lorg/mozilla/gecko/NativeQueue$State;

    invoke-interface {p1, v3}, Lorg/mozilla/gecko/NativeQueue$State;->isAtLeast(Lorg/mozilla/gecko/NativeQueue$State;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/mozilla/gecko/NativeQueue;->mQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lorg/mozilla/gecko/NativeQueue$QueuedCall;->method:Ljava/lang/reflect/Method;

    iget-object v4, v2, Lorg/mozilla/gecko/NativeQueue$QueuedCall;->target:Ljava/lang/Object;

    iget-object v2, v2, Lorg/mozilla/gecko/NativeQueue$QueuedCall;->args:[Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lorg/mozilla/gecko/NativeQueue;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/mozilla/gecko/NativeQueue;->mQueue:Ljava/util/ArrayList;

    if-gez v0, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ge v0, p1, :cond_4

    iget-object p1, p0, Lorg/mozilla/gecko/NativeQueue;->mQueue:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_4
    :goto_2
    return-void
.end method

.method private static invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Cannot make call"

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected exception"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private queueNativeCallLocked(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/gecko/NativeQueue$State;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Lorg/mozilla/gecko/NativeQueue$State;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p4

    if-ge v2, v3, :cond_9

    aget-object v3, p4, v2

    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    aget-object v3, p4, v2

    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Boolean;

    if-ne v3, v4, :cond_1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_2

    :cond_1
    const-class v4, Ljava/lang/Byte;

    if-ne v3, v4, :cond_2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_2

    :cond_2
    const-class v4, Ljava/lang/Character;

    if-ne v3, v4, :cond_3

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_2

    :cond_3
    const-class v4, Ljava/lang/Double;

    if-ne v3, v4, :cond_4

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_2

    :cond_4
    const-class v4, Ljava/lang/Float;

    if-ne v3, v4, :cond_5

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_2

    :cond_5
    const-class v4, Ljava/lang/Integer;

    if-ne v3, v4, :cond_6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_2

    :cond_6
    const-class v4, Ljava/lang/Long;

    if-ne v3, v4, :cond_7

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_2

    :cond_7
    const-class v4, Ljava/lang/Short;

    if-ne v3, v4, :cond_8

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    :cond_8
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v3, p4, v2

    goto :goto_1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p4

    new-array p4, p4, [Ljava/lang/Class;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/Class;

    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p2

    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isNative(I)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {p0}, Lorg/mozilla/gecko/NativeQueue;->getState()Lorg/mozilla/gecko/NativeQueue$State;

    move-result-object p2

    invoke-interface {p2, p5}, Lorg/mozilla/gecko/NativeQueue$State;->isAtLeast(Lorg/mozilla/gecko/NativeQueue$State;)Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lorg/mozilla/gecko/NativeQueue;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_a
    iget-object p2, p0, Lorg/mozilla/gecko/NativeQueue;->mQueue:Ljava/util/ArrayList;

    new-instance p4, Lorg/mozilla/gecko/NativeQueue$QueuedCall;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p4, p1, p3, v0, p5}, Lorg/mozilla/gecko/NativeQueue$QueuedCall;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/gecko/NativeQueue$State;)V

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not allowed to queue non-native methods"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Cannot find method"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public declared-synchronized checkAndSetState(Lorg/mozilla/gecko/NativeQueue$State;Lorg/mozilla/gecko/NativeQueue$State;)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/NativeQueue;->mState:Lorg/mozilla/gecko/NativeQueue$State;

    invoke-interface {v0, p1}, Lorg/mozilla/gecko/NativeQueue$State;->is(Lorg/mozilla/gecko/NativeQueue$State;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lorg/mozilla/gecko/NativeQueue;->flushQueuedLocked(Lorg/mozilla/gecko/NativeQueue$State;)V

    iput-object p2, p0, Lorg/mozilla/gecko/NativeQueue;->mState:Lorg/mozilla/gecko/NativeQueue$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getState()Lorg/mozilla/gecko/NativeQueue$State;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/NativeQueue;->mState:Lorg/mozilla/gecko/NativeQueue$State;

    return-object v0
.end method

.method public isReady()Z
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/gecko/NativeQueue;->getState()Lorg/mozilla/gecko/NativeQueue$State;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/gecko/NativeQueue;->mReadyState:Lorg/mozilla/gecko/NativeQueue$State;

    invoke-interface {v0, v1}, Lorg/mozilla/gecko/NativeQueue$State;->isAtLeast(Lorg/mozilla/gecko/NativeQueue$State;)Z

    move-result v0

    return v0
.end method

.method public varargs declared-synchronized queueUntil(Lorg/mozilla/gecko/NativeQueue$State;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/gecko/NativeQueue$State;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p1

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/gecko/NativeQueue;->queueNativeCallLocked(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/gecko/NativeQueue$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized queueUntil(Lorg/mozilla/gecko/NativeQueue$State;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 2
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/gecko/NativeQueue;->queueNativeCallLocked(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/gecko/NativeQueue$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized queueUntilReady(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lorg/mozilla/gecko/NativeQueue;->mReadyState:Lorg/mozilla/gecko/NativeQueue$State;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/gecko/NativeQueue;->queueNativeCallLocked(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/gecko/NativeQueue$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized queueUntilReady(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 2
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v5, p0, Lorg/mozilla/gecko/NativeQueue;->mReadyState:Lorg/mozilla/gecko/NativeQueue$State;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/gecko/NativeQueue;->queueNativeCallLocked(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/gecko/NativeQueue$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset(Lorg/mozilla/gecko/NativeQueue$State;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/NativeQueue;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object p1, p0, Lorg/mozilla/gecko/NativeQueue;->mState:Lorg/mozilla/gecko/NativeQueue$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setState(Lorg/mozilla/gecko/NativeQueue$State;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/gecko/NativeQueue;->checkAndSetState(Lorg/mozilla/gecko/NativeQueue$State;Lorg/mozilla/gecko/NativeQueue$State;)Z

    move-result p1

    return p1
.end method
