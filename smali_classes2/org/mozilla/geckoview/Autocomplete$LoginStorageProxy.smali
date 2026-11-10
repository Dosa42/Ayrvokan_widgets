.class final Lorg/mozilla/geckoview/Autocomplete$LoginStorageProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/util/BundleEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/Autocomplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoginStorageProxy"
.end annotation


# static fields
.field private static final FETCH_LOGIN_EVENT:Ljava/lang/String; = "GeckoView:Autocomplete:Fetch:Login"

.field private static final LOGTAG:Ljava/lang/String; = "LoginStorageProxy"

.field private static final SAVE_LOGIN_EVENT:Ljava/lang/String; = "GeckoView:Autocomplete:Save:Login"

.field private static final USED_LOGIN_EVENT:Ljava/lang/String; = "GeckoView:Autocomplete:Used:Login"


# instance fields
.field private mDelegate:Lorg/mozilla/geckoview/Autocomplete$LoginStorageDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/Autocomplete$LoginStorageProxy;->lambda$handleMessage$1(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Lorg/mozilla/gecko/util/EventCallback;[Lorg/mozilla/geckoview/Autocomplete$LoginEntry;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/Autocomplete$LoginStorageProxy;->lambda$handleMessage$0(Lorg/mozilla/gecko/util/EventCallback;[Lorg/mozilla/geckoview/Autocomplete$LoginEntry;)V

    return-void
.end method

.method private static synthetic lambda$handleMessage$0(Lorg/mozilla/gecko/util/EventCallback;[Lorg/mozilla/geckoview/Autocomplete$LoginEntry;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-interface {p0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void

    :cond_0
    array-length v1, p1

    new-array v1, v1, [Lorg/mozilla/gecko/util/GeckoBundle;

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->toBundle()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0, v1}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$handleMessage$1(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-void
.end method

.method private registerListener()V
    .locals 4

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v0

    const-string v1, "GeckoView:Autocomplete:Save:Login"

    const-string v2, "GeckoView:Autocomplete:Used:Login"

    const-string v3, "GeckoView:Autocomplete:Fetch:Login"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/mozilla/gecko/EventDispatcher;->registerUiThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V

    return-void
.end method

.method private unregisterListener()V
    .locals 4

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v0

    const-string v1, "GeckoView:Autocomplete:Save:Login"

    const-string v2, "GeckoView:Autocomplete:Used:Login"

    const-string v3, "GeckoView:Autocomplete:Fetch:Login"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/mozilla/gecko/EventDispatcher;->unregisterUiThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getDelegate()Lorg/mozilla/geckoview/Autocomplete$LoginStorageDelegate;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/geckoview/Autocomplete$LoginStorageProxy;->mDelegate:Lorg/mozilla/geckoview/Autocomplete$LoginStorageDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleMessage(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/geckoview/Autocomplete$LoginStorageProxy;->mDelegate:Lorg/mozilla/geckoview/Autocomplete$LoginStorageDelegate;

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "No LoginStorageDelegate attached"

    invoke-interface {p3, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "GeckoView:Autocomplete:Fetch:Login"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "domain"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/geckoview/Autocomplete$LoginStorageProxy;->mDelegate:Lorg/mozilla/geckoview/Autocomplete$LoginStorageDelegate;

    invoke-interface {p2, p1}, Lorg/mozilla/geckoview/Autocomplete$LoginStorageDelegate;->onLoginFetch(Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_2

    new-array p1, p2, [Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-interface {p3, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-instance v0, Lorg/mozilla/geckoview/a;

    invoke-direct {v0, p3, p2}, Lorg/mozilla/geckoview/a;-><init>(Lorg/mozilla/gecko/util/EventCallback;I)V

    new-instance p2, Lorg/mozilla/geckoview/a;

    const/4 v1, 0x1

    invoke-direct {p2, p3, v1}, Lorg/mozilla/geckoview/a;-><init>(Lorg/mozilla/gecko/util/EventCallback;I)V

    invoke-virtual {p1, v0, p2}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    goto :goto_0

    :cond_3
    const-string p3, "GeckoView:Autocomplete:Save:Login"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p1, "login"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    new-instance p2, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;

    invoke-direct {p2, p1}, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    iget-object p1, p0, Lorg/mozilla/geckoview/Autocomplete$LoginStorageProxy;->mDelegate:Lorg/mozilla/geckoview/Autocomplete$LoginStorageDelegate;

    invoke-interface {p1, p2}, Lorg/mozilla/geckoview/Autocomplete$LoginStorageDelegate;->onLoginSave(Lorg/mozilla/geckoview/Autocomplete$LoginEntry;)V

    goto :goto_0

    :cond_4
    const-string p3, "GeckoView:Autocomplete:Used:Login"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "login"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    new-instance p3, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;

    invoke-direct {p3, p1}, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    const-string p1, "usedFields"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lorg/mozilla/geckoview/Autocomplete$LoginStorageProxy;->mDelegate:Lorg/mozilla/geckoview/Autocomplete$LoginStorageDelegate;

    invoke-interface {p2, p3, p1}, Lorg/mozilla/geckoview/Autocomplete$LoginStorageDelegate;->onLoginUsed(Lorg/mozilla/geckoview/Autocomplete$LoginEntry;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDelegate(Lorg/mozilla/geckoview/Autocomplete$LoginStorageDelegate;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/geckoview/Autocomplete$LoginStorageProxy;->mDelegate:Lorg/mozilla/geckoview/Autocomplete$LoginStorageDelegate;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/geckoview/Autocomplete$LoginStorageProxy;->registerListener()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/mozilla/geckoview/Autocomplete$LoginStorageProxy;->unregisterListener()V

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/mozilla/geckoview/Autocomplete$LoginStorageProxy;->mDelegate:Lorg/mozilla/geckoview/Autocomplete$LoginStorageDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
