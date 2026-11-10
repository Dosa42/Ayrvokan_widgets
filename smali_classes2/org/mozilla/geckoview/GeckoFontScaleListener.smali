.class final Lorg/mozilla/geckoview/GeckoFontScaleListener;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# static fields
.field private static final DEFAULT_FONT_SCALE:F = 1.0f

.field private static final LOGTAG:Ljava/lang/String; = "GeckoFontScaleListener"

.field private static final sInstance:Lorg/mozilla/geckoview/GeckoFontScaleListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mAttached:Z

.field private mEnabled:Z

.field private mPrevGeckoFontScale:F

.field private mRunning:Z

.field private mSettings:Lorg/mozilla/geckoview/GeckoRuntimeSettings;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/geckoview/GeckoFontScaleListener;

    invoke-direct {v0}, Lorg/mozilla/geckoview/GeckoFontScaleListener;-><init>()V

    sput-object v0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->sInstance:Lorg/mozilla/geckoview/GeckoFontScaleListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static getInstance()Lorg/mozilla/geckoview/GeckoFontScaleListener;
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->sInstance:Lorg/mozilla/geckoview/GeckoFontScaleListener;

    return-object v0
.end method

.method private onEnabledChange()V
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->mAttached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->mEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoFontScaleListener;->start()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoFontScaleListener;->stop()V

    :goto_0
    return-void
.end method

.method private onSystemFontScaleChange(Landroid/content/ContentResolver;Z)V
    .locals 1

    if-nez p2, :cond_0

    const-string p2, "font_scale"

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->mPrevGeckoFontScale:F

    :goto_0
    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->mSettings:Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    invoke-virtual {p2, p1}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->setFontSizeFactorInternal(F)Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    return-void
.end method

.method private start()V
    .locals 3

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->mRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->mSettings:Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->getFontSizeFactor()F

    move-result v0

    iput v0, p0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->mPrevGeckoFontScale:F

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0, v0, v2}, Lorg/mozilla/geckoview/GeckoFontScaleListener;->onSystemFontScaleChange(Landroid/content/ContentResolver;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->mRunning:Z

    return-void
.end method

.method private stop()V
    .locals 2

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->mRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/mozilla/geckoview/GeckoFontScaleListener;->onSystemFontScaleChange(Landroid/content/ContentResolver;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->mRunning:Z

    return-void
.end method


# virtual methods
.method public attachToContext(Landroid/content/Context;Lorg/mozilla/geckoview/GeckoRuntimeSettings;)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->mAttached:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->mAttached:Z

    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->mSettings:Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->mApplicationContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoFontScaleListener;->onEnabledChange()V

    return-void
.end method

.method public detachFromContext()V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->mAttached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoFontScaleListener;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->mApplicationContext:Landroid/content/Context;

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->mSettings:Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->mAttached:Z

    return-void
.end method

.method public getEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->mEnabled:Z

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/geckoview/GeckoFontScaleListener;->onSystemFontScaleChange(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iput-boolean p1, p0, Lorg/mozilla/geckoview/GeckoFontScaleListener;->mEnabled:Z

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoFontScaleListener;->onEnabledChange()V

    return-void
.end method
