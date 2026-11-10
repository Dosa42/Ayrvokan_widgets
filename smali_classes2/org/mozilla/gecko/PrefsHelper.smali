.class public final Lorg/mozilla/gecko/PrefsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/PrefsHelper$PrefHandlerBase;,
        Lorg/mozilla/gecko/PrefsHelper$PrefHandler;
    }
.end annotation


# static fields
.field private static final INT_TO_BOOL_PREFS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INT_TO_STRING_PREFS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGTAG:Ljava/lang/String; = "GeckoPrefsHelper"

.field private static final OBSERVERS:Lf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i;"
        }
    .end annotation
.end field

.field private static final PREF_BOOL:I = 0x1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field private static final PREF_FINISH:I = 0x0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field private static final PREF_INT:I = 0x2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field private static final PREF_INVALID:I = -0x1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field private static final PREF_STRING:I = 0x3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lf/i;

    invoke-direct {v0}, Lf/i;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/PrefsHelper;->OBSERVERS:Lf/i;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lorg/mozilla/gecko/PrefsHelper;->INT_TO_STRING_PREFS:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    sput-object v1, Lorg/mozilla/gecko/PrefsHelper;->INT_TO_BOOL_PREFS:Ljava/util/HashSet;

    const-string v2, "browser.chrome.titlebarMode"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "network.cookie.cookieBehavior"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "home.sync.updateMode"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "browser.image_blocking"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "media.autoplay.default"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "browser.display.use_document_fonts"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addObserver([Ljava/lang/String;Lorg/mozilla/gecko/PrefsHelper$PrefHandler;)V
    .locals 11
    .annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
    .end annotation

    .line 1
    const-class v0, Lorg/mozilla/gecko/PrefsHelper;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    array-length v1, p0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move v4, v2

    .line 8
    move-object v5, v3

    .line 9
    :goto_0
    const/4 v6, 0x2

    .line 10
    if-ge v4, v1, :cond_3

    .line 11
    .line 12
    aget-object v7, p0, v4

    .line 13
    .line 14
    sget-object v8, Lorg/mozilla/gecko/PrefsHelper;->OBSERVERS:Lf/i;

    .line 15
    .line 16
    invoke-virtual {v8, v7, v3}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v9

    .line 20
    if-nez v9, :cond_1

    .line 21
    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    new-instance v5, Ljava/util/ArrayList;

    .line 25
    .line 26
    array-length v6, p0

    .line 27
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v8, v7, p1}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    instance-of v10, v9, Lorg/mozilla/gecko/PrefsHelper$PrefHandler;

    .line 38
    .line 39
    if-eqz v10, :cond_2

    .line 40
    .line 41
    new-instance v10, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    .line 45
    .line 46
    check-cast v9, Lorg/mozilla/gecko/PrefsHelper$PrefHandler;

    .line 47
    .line 48
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8, v7, v10}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    check-cast v9, Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v9, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    if-nez v5, :cond_4

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    new-array v1, v1, [Ljava/lang/String;

    .line 74
    .line 75
    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    move-object v3, v1

    .line 80
    check-cast v3, [Ljava/lang/String;

    .line 81
    .line 82
    :goto_2
    sget-object v1, Lorg/mozilla/gecko/GeckoThread$State;->PROFILE_READY:Lorg/mozilla/gecko/GeckoThread$State;

    .line 83
    .line 84
    invoke-static {v1}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_5

    .line 89
    .line 90
    invoke-static {p0, p1, v3}, Lorg/mozilla/gecko/PrefsHelper;->nativeAddObserver([Ljava/lang/String;Lorg/mozilla/gecko/PrefsHelper$PrefHandler;[Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_5
    const-class v4, Lorg/mozilla/gecko/PrefsHelper;

    .line 95
    .line 96
    const-string v5, "nativeAddObserver"

    .line 97
    .line 98
    const/4 v7, 0x6

    .line 99
    new-array v7, v7, [Ljava/lang/Object;

    .line 100
    .line 101
    const-class v8, [Ljava/lang/String;

    .line 102
    .line 103
    aput-object v8, v7, v2

    .line 104
    .line 105
    const/4 v2, 0x1

    .line 106
    aput-object p0, v7, v2

    .line 107
    .line 108
    const-class p0, Lorg/mozilla/gecko/PrefsHelper$PrefHandler;

    .line 109
    .line 110
    aput-object p0, v7, v6

    .line 111
    .line 112
    const/4 p0, 0x3

    .line 113
    aput-object p1, v7, p0

    .line 114
    .line 115
    const-class p0, [Ljava/lang/String;

    .line 116
    .line 117
    const/4 p1, 0x4

    .line 118
    aput-object p0, v7, p1

    .line 119
    .line 120
    const/4 p0, 0x5

    .line 121
    aput-object v3, v7, p0

    .line 122
    .line 123
    invoke-static {v1, v4, v5, v7}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCallUntil(Lorg/mozilla/gecko/GeckoThread$State;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    .line 126
    :goto_3
    monitor-exit v0

    .line 127
    return-void

    .line 128
    :catchall_0
    move-exception p0

    .line 129
    monitor-exit v0

    .line 130
    throw p0
.end method

.method private static callPrefHandler(Lorg/mozilla/gecko/PrefsHelper$PrefHandler;ILjava/lang/String;ZILjava/lang/String;)V
    .locals 3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    sget-object v0, Lorg/mozilla/gecko/PrefsHelper;->INT_TO_STRING_PREFS:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    move p1, v1

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/mozilla/gecko/PrefsHelper;->INT_TO_BOOL_PREFS:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p4, v2, :cond_1

    move p3, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    move p3, p1

    :goto_0
    move p1, v2

    :cond_2
    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    const/4 p3, 0x2

    if-eq p1, p3, :cond_4

    if-ne p1, v1, :cond_3

    invoke-interface {p0, p2, p5}, Lorg/mozilla/gecko/PrefsHelper$PrefHandler;->prefValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_4
    invoke-interface {p0, p2, p4}, Lorg/mozilla/gecko/PrefsHelper$PrefHandler;->prefValue(Ljava/lang/String;I)V

    return-void

    :cond_5
    invoke-interface {p0, p2, p3}, Lorg/mozilla/gecko/PrefsHelper$PrefHandler;->prefValue(Ljava/lang/String;Z)V

    return-void

    :cond_6
    invoke-interface {p0}, Lorg/mozilla/gecko/PrefsHelper$PrefHandler;->finish()V

    return-void
.end method

.method public static getPref(Ljava/lang/String;Lorg/mozilla/gecko/PrefsHelper$PrefHandler;)V
    .locals 0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/mozilla/gecko/PrefsHelper;->getPrefs([Ljava/lang/String;Lorg/mozilla/gecko/PrefsHelper$PrefHandler;)V

    return-void
.end method

.method public static getPrefs(Ljava/util/ArrayList;Lorg/mozilla/gecko/PrefsHelper$PrefHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/mozilla/gecko/PrefsHelper$PrefHandler;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/mozilla/gecko/PrefsHelper;->getPrefs([Ljava/lang/String;Lorg/mozilla/gecko/PrefsHelper$PrefHandler;)V

    return-void
.end method

.method public static getPrefs([Ljava/lang/String;Lorg/mozilla/gecko/PrefsHelper$PrefHandler;)V
    .locals 3
    .annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
    .end annotation

    .line 2
    sget-object v0, Lorg/mozilla/gecko/GeckoThread$State;->PROFILE_READY:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lorg/mozilla/gecko/PrefsHelper;->nativeGetPrefs([Ljava/lang/String;Lorg/mozilla/gecko/PrefsHelper$PrefHandler;)V

    goto :goto_0

    :cond_0
    const-class v1, [Ljava/lang/String;

    const-class v2, Lorg/mozilla/gecko/PrefsHelper$PrefHandler;

    filled-new-array {v1, p0, v2, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-class p1, Lorg/mozilla/gecko/PrefsHelper;

    const-string v1, "nativeGetPrefs"

    invoke-static {v0, p1, v1, p0}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCallUntil(Lorg/mozilla/gecko/GeckoThread$State;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static native nativeAddObserver([Ljava/lang/String;Lorg/mozilla/gecko/PrefsHelper$PrefHandler;[Ljava/lang/String;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
        stubName = "AddObserver"
    .end annotation
.end method

.method private static native nativeGetPrefs([Ljava/lang/String;Lorg/mozilla/gecko/PrefsHelper$PrefHandler;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
        stubName = "GetPrefs"
    .end annotation
.end method

.method private static native nativeRemoveObserver([Ljava/lang/String;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
        stubName = "RemoveObserver"
    .end annotation
.end method

.method private static native nativeSetPref(Ljava/lang/String;ZIZILjava/lang/String;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
        stubName = "SetPref"
    .end annotation
.end method

.method private static declared-synchronized onPrefChange(Ljava/lang/String;IZILjava/lang/String;)V
    .locals 11
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    .line 1
    const-class v0, Lorg/mozilla/gecko/PrefsHelper;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/PrefsHelper;->OBSERVERS:Lf/i;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, p0, v2}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :cond_0
    :try_start_1
    instance-of v3, v1, Lorg/mozilla/gecko/PrefsHelper$PrefHandler;

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    check-cast v1, Lorg/mozilla/gecko/PrefsHelper$PrefHandler;

    .line 20
    .line 21
    move-object v3, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lorg/mozilla/gecko/PrefsHelper$PrefHandler;

    .line 42
    .line 43
    move-object v10, v3

    .line 44
    move-object v3, v1

    .line 45
    move-object v1, v10

    .line 46
    :cond_3
    :goto_0
    move-object v4, v1

    .line 47
    move v5, p1

    .line 48
    move-object v6, p0

    .line 49
    move v7, p2

    .line 50
    move v8, p3

    .line 51
    move-object v9, p4

    .line 52
    invoke-static/range {v4 .. v9}, Lorg/mozilla/gecko/PrefsHelper;->callPrefHandler(Lorg/mozilla/gecko/PrefsHelper$PrefHandler;ILjava/lang/String;ZILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v1}, Lorg/mozilla/gecko/PrefsHelper$PrefHandler;->finish()V

    .line 56
    .line 57
    .line 58
    if-eqz v3, :cond_4

    .line 59
    .line 60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lorg/mozilla/gecko/PrefsHelper$PrefHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    move-object v1, v2

    .line 74
    :goto_1
    if-nez v1, :cond_3

    .line 75
    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    monitor-exit v0

    .line 80
    throw p0
.end method

.method public static declared-synchronized removeObserver(Lorg/mozilla/gecko/PrefsHelper$PrefHandler;)V
    .locals 8
    .annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
    .end annotation

    .line 1
    const-class v0, Lorg/mozilla/gecko/PrefsHelper;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/PrefsHelper;->OBSERVERS:Lf/i;

    .line 5
    .line 6
    iget v1, v1, Lf/i;->c:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    sub-int/2addr v1, v2

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    const/4 v4, 0x0

    .line 12
    if-ltz v1, :cond_4

    .line 13
    .line 14
    sget-object v5, Lorg/mozilla/gecko/PrefsHelper;->OBSERVERS:Lf/i;

    .line 15
    .line 16
    invoke-virtual {v5, v1}, Lf/i;->j(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    if-ne v6, p0, :cond_0

    .line 21
    .line 22
    :goto_1
    move v4, v2

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    instance-of v7, v6, Lorg/mozilla/gecko/PrefsHelper$PrefHandler;

    .line 25
    .line 26
    if-nez v7, :cond_1

    .line 27
    .line 28
    check-cast v6, Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v6, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-eqz v7, :cond_1

    .line 35
    .line 36
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_2
    if-eqz v4, :cond_3

    .line 44
    .line 45
    if-nez v3, :cond_2

    .line 46
    .line 47
    new-instance v3, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {v5, v1}, Lf/i;->h(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v1}, Lf/i;->i(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    if-nez v3, :cond_5

    .line 66
    .line 67
    monitor-exit v0

    .line 68
    return-void

    .line 69
    :cond_5
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    new-array p0, p0, [Ljava/lang/String;

    .line 74
    .line 75
    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, [Ljava/lang/String;

    .line 80
    .line 81
    sget-object v1, Lorg/mozilla/gecko/GeckoThread$State;->PROFILE_READY:Lorg/mozilla/gecko/GeckoThread$State;

    .line 82
    .line 83
    invoke-static {v1}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_6

    .line 88
    .line 89
    invoke-static {p0}, Lorg/mozilla/gecko/PrefsHelper;->nativeRemoveObserver([Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_6
    const-class v3, Lorg/mozilla/gecko/PrefsHelper;

    .line 94
    .line 95
    const-string v5, "nativeRemoveObserver"

    .line 96
    .line 97
    const/4 v6, 0x2

    .line 98
    new-array v6, v6, [Ljava/lang/Object;

    .line 99
    .line 100
    const-class v7, [Ljava/lang/String;

    .line 101
    .line 102
    aput-object v7, v6, v4

    .line 103
    .line 104
    aput-object p0, v6, v2

    .line 105
    .line 106
    invoke-static {v1, v3, v5, v6}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCallUntil(Lorg/mozilla/gecko/GeckoThread$State;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .line 108
    .line 109
    :goto_3
    monitor-exit v0

    .line 110
    return-void

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    monitor-exit v0

    .line 113
    throw p0
.end method

.method public static setPref(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/mozilla/gecko/PrefsHelper;->setPref(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static setPref(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 12
    .annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
    .end annotation

    .line 2
    sget-object v2, Lorg/mozilla/gecko/PrefsHelper;->INT_TO_STRING_PREFS:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    move v2, v3

    move v3, v4

    move-object v7, v5

    move v4, v0

    goto :goto_1

    :cond_0
    sget-object v2, Lorg/mozilla/gecko/PrefsHelper;->INT_TO_BOOL_PREFS:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    move v3, v0

    move-object v7, v5

    goto :goto_1

    :cond_2
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    move-object v7, v0

    move v3, v4

    :goto_1
    sget-object v8, Lorg/mozilla/gecko/GeckoThread$State;->PROFILE_READY:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v8}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p0

    move v1, p2

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lorg/mozilla/gecko/PrefsHelper;->nativeSetPref(Ljava/lang/String;ZIZILjava/lang/String;)V

    goto :goto_2

    :cond_4
    const-class v0, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-class v11, Ljava/lang/String;

    move-object v1, p0

    move-object v2, v5

    move-object v3, v6

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lorg/mozilla/gecko/PrefsHelper;

    const-string v2, "nativeSetPref"

    invoke-static {v8, v1, v2, v0}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCallUntil(Lorg/mozilla/gecko/GeckoThread$State;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
