.class public Lorg/mozilla/gecko/GeckoScreenOrientation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/GeckoScreenOrientation$OrientationChangeListener;,
        Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;
    }
.end annotation


# static fields
.field private static final DEFAULT_ROTATION:I = 0x0

.field private static final LOGTAG:Ljava/lang/String; = "GeckoScreenOrientation"

.field private static sInstance:Lorg/mozilla/gecko/GeckoScreenOrientation;


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/gecko/GeckoScreenOrientation$OrientationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOrientation:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

.field private mShouldNotify:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->PORTRAIT_PRIMARY:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    iput-object v0, p0, Lorg/mozilla/gecko/GeckoScreenOrientation;->mScreenOrientation:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/GeckoScreenOrientation;->mShouldNotify:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/gecko/GeckoScreenOrientation;->mListeners:Ljava/util/List;

    invoke-virtual {p0}, Lorg/mozilla/gecko/GeckoScreenOrientation;->update()Z

    return-void
.end method

.method public static synthetic access$000(Lorg/mozilla/gecko/GeckoScreenOrientation;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/gecko/GeckoScreenOrientation;->mListeners:Ljava/util/List;

    return-object p0
.end method

.method public static getInstance()Lorg/mozilla/gecko/GeckoScreenOrientation;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoScreenOrientation;->sInstance:Lorg/mozilla/gecko/GeckoScreenOrientation;

    if-nez v0, :cond_0

    new-instance v0, Lorg/mozilla/gecko/GeckoScreenOrientation;

    invoke-direct {v0}, Lorg/mozilla/gecko/GeckoScreenOrientation;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/GeckoScreenOrientation;->sInstance:Lorg/mozilla/gecko/GeckoScreenOrientation;

    :cond_0
    sget-object v0, Lorg/mozilla/gecko/GeckoScreenOrientation;->sInstance:Lorg/mozilla/gecko/GeckoScreenOrientation;

    return-object v0
.end method

.method private getRotation()I
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method private getScreenOrientation(II)Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;
    .locals 1

    .line 2
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v0

    :goto_1
    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    sget-object p1, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->PORTRAIT_PRIMARY:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    return-object p1

    :cond_2
    sget-object p1, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->PORTRAIT_SECONDARY:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    return-object p1

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_4

    sget-object p1, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->LANDSCAPE_PRIMARY:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    return-object p1

    :cond_4
    sget-object p1, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->LANDSCAPE_SECONDARY:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    return-object p1

    :cond_5
    sget-object p1, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->NONE:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    return-object p1
.end method

.method private notifyListeners(Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;)V
    .locals 1

    new-instance v0, Lorg/mozilla/gecko/GeckoScreenOrientation$1;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/gecko/GeckoScreenOrientation$1;-><init>(Lorg/mozilla/gecko/GeckoScreenOrientation;Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;)V

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->isOnUiThread()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/mozilla/gecko/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static native onOrientationChange(SS)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method public static screenOrientationFromArrayString(Ljava/lang/String;)Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;
    .locals 2

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/mozilla/gecko/GeckoScreenOrientation;->screenOrientationFromString(Ljava/lang/String;)Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->DEFAULT:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    return-object p0
.end method

.method public static screenOrientationFromString(Ljava/lang/String;)Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "portrait-secondary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "landscape-primary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "landscape"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "portrait"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "landscape-secondary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "portrait-primary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget-object p0, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->DEFAULT:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->PORTRAIT_SECONDARY:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->LANDSCAPE_PRIMARY:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->LANDSCAPE:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->PORTRAIT:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->LANDSCAPE_SECONDARY:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->PORTRAIT_PRIMARY:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x49321e30 -> :sswitch_5
        -0x8c4a71e -> :sswitch_4
        0x2b77bb9b -> :sswitch_3
        0x5545f2bb -> :sswitch_2
        0x6f02f8f0 -> :sswitch_1
        0x77ef89c2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static screenOrientationToActivityInfoOrientation(Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;)I
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoScreenOrientation$2;->$SwitchMap$org$mozilla$gecko$GeckoScreenOrientation$ScreenOrientation:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x5

    return p0

    :pswitch_0
    const/4 p0, -0x1

    return p0

    :pswitch_1
    const/16 p0, 0x8

    return p0

    :pswitch_2
    const/4 p0, 0x0

    return p0

    :pswitch_3
    const/4 p0, 0x6

    return p0

    :pswitch_4
    const/16 p0, 0x9

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    :pswitch_6
    const/4 p0, 0x7

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static screenOrientationToAndroidOrientation(Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;)I
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoScreenOrientation$2;->$SwitchMap$org$mozilla$gecko$GeckoScreenOrientation$ScreenOrientation:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addListener(Lorg/mozilla/gecko/GeckoScreenOrientation$OrientationChangeListener;)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoScreenOrientation;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public disableNotifications()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/gecko/GeckoScreenOrientation;->mShouldNotify:Z

    return-void
.end method

.method public enableNotifications()V
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/gecko/GeckoScreenOrientation;->update()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/GeckoScreenOrientation;->mShouldNotify:Z

    return-void
.end method

.method public getAndroidOrientation()I
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/gecko/GeckoScreenOrientation;->getScreenOrientation()Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoScreenOrientation;->screenOrientationToAndroidOrientation(Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;)I

    move-result v0

    return v0
.end method

.method public getAngle()S
    .locals 2

    invoke-direct {p0}, Lorg/mozilla/gecko/GeckoScreenOrientation;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x10e

    return v0

    :cond_1
    const/16 v0, 0xb4

    return v0

    :cond_2
    const/16 v0, 0x5a

    return v0
.end method

.method public getScreenOrientation()Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/GeckoScreenOrientation;->mScreenOrientation:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    return-object v0
.end method

.method public lock(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->get(I)Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/gecko/GeckoScreenOrientation;->lock(Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;)Z

    return-void
.end method

.method public lock(Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;)Z
    .locals 2

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getScreenOrientationDelegate()Lorg/mozilla/gecko/ScreenOrientationDelegate;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/gecko/GeckoScreenOrientation;->screenOrientationToActivityInfoOrientation(Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;)I

    move-result v1

    monitor-enter p0

    :try_start_0
    invoke-interface {v0, v1}, Lorg/mozilla/gecko/ScreenOrientationDelegate;->setRequestedOrientationForCurrentActivity(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/mozilla/gecko/GeckoScreenOrientation;->update(Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;)Z

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeListener(Lorg/mozilla/gecko/GeckoScreenOrientation$OrientationChangeListener;)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoScreenOrientation;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unlock()Z
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getScreenOrientationDelegate()Lorg/mozilla/gecko/ScreenOrientationDelegate;

    move-result-object v0

    sget-object v1, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->DEFAULT:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    invoke-static {v1}, Lorg/mozilla/gecko/GeckoScreenOrientation;->screenOrientationToActivityInfoOrientation(Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;)I

    move-result v1

    monitor-enter p0

    :try_start_0
    invoke-interface {v0, v1}, Lorg/mozilla/gecko/ScreenOrientationDelegate;->setRequestedOrientationForCurrentActivity(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/gecko/GeckoScreenOrientation;->update()Z

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/GeckoScreenOrientation;->update(I)Z

    move-result v0

    return v0
.end method

.method public update(I)Z
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/mozilla/gecko/GeckoScreenOrientation;->getRotation()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/gecko/GeckoScreenOrientation;->getScreenOrientation(II)Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/gecko/GeckoScreenOrientation;->update(Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized update(Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;)Z
    .locals 5

    .line 3
    monitor-enter p0

    :try_start_0
    iget-short v0, p1, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->value:S

    sget-object v1, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->PORTRAIT_PRIMARY:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    iget-short v2, v1, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->value:S

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->PORTRAIT_SECONDARY:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    iget-short v3, v2, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->value:S

    and-int/2addr v3, v0

    if-eqz v3, :cond_1

    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_1
    sget-object v2, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->LANDSCAPE_PRIMARY:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    iget-short v3, v2, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->value:S

    and-int/2addr v3, v0

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    sget-object v2, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->LANDSCAPE_SECONDARY:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    iget-short v3, v2, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->value:S

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/mozilla/gecko/GeckoScreenOrientation;->mScreenOrientation:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    monitor-exit p0

    return v2

    :cond_4
    :try_start_1
    iput-object v1, p0, Lorg/mozilla/gecko/GeckoScreenOrientation;->mScreenOrientation:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoScreenOrientation;->mScreenOrientation:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    invoke-direct {p0, v0}, Lorg/mozilla/gecko/GeckoScreenOrientation;->notifyListeners(Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;)V

    iget-boolean v0, p0, Lorg/mozilla/gecko/GeckoScreenOrientation;->mShouldNotify:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    sget-object v0, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->NONE:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_5

    monitor-exit p0

    return v2

    :cond_5
    :try_start_2
    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-short p1, v1, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->value:S

    invoke-virtual {p0}, Lorg/mozilla/gecko/GeckoScreenOrientation;->getAngle()S

    move-result v0

    invoke-static {p1, v0}, Lorg/mozilla/gecko/GeckoScreenOrientation;->onOrientationChange(SS)V

    goto :goto_2

    :cond_6
    const-class p1, Lorg/mozilla/gecko/GeckoScreenOrientation;

    const-string v0, "onOrientationChange"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-short v1, v1, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->value:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-virtual {p0}, Lorg/mozilla/gecko/GeckoScreenOrientation;->getAngle()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {p1, v0, v4}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCall(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_2
    invoke-static {}, Lorg/mozilla/gecko/ScreenManagerHelper;->refreshScreenInfo()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
