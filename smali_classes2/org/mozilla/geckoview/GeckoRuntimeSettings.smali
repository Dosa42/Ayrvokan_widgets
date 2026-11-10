.class public final Lorg/mozilla/geckoview/GeckoRuntimeSettings;
.super Lorg/mozilla/geckoview/RuntimeSettings;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    }
.end annotation


# static fields
.field public static final COLOR_SCHEME_DARK:I = 0x1

.field public static final COLOR_SCHEME_LIGHT:I = 0x0

.field public static final COLOR_SCHEME_SYSTEM:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mozilla/geckoview/GeckoRuntimeSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final FONT_INFLATION_BASE_VALUE:I = 0x78


# instance fields
.field final mAboutConfig:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mArgs:[Ljava/lang/String;

.field final mAutofillLogins:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mConfigFilePath:Ljava/lang/String;

.field final mConsoleOutput:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mConsoleServiceToLogcat:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mContentBlocking:Lorg/mozilla/geckoview/ContentBlocking$Settings;

.field mCrashHandler:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field mDebugPause:Z

.field final mDevToolsConsoleToLogcat:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayDensityOverride:F

.field mDisplayDpiOverride:I

.field final mDoubleTapZooming:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mExtras:Landroid/os/Bundle;

.field final mFontInflationMinTwips:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mFontSizeFactor:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mForceUserScalable:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mGeckoViewLogLevel:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mGlMsaaLevel:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mInputAutoZoom:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mJavaScript:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mPreferredColorScheme:I

.field final mRemoteDebugging:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mRequestedLocales:[Ljava/lang/String;

.field private mRuntime:Lorg/mozilla/geckoview/GeckoRuntime;

.field mScreenHeightOverride:I

.field mScreenWidthOverride:I

.field final mTelemetryEnabled:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mTelemetryProxy:Lorg/mozilla/geckoview/RuntimeTelemetry$Proxy;

.field mUseMaxScreenDepth:Z

.field final mUseMultiprocess:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mWebFonts:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mWebManifest:Lorg/mozilla/geckoview/RuntimeSettings$Pref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings$1;

    invoke-direct {v0}, Lorg/mozilla/geckoview/GeckoRuntimeSettings$1;-><init>()V

    sput-object v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;-><init>(Lorg/mozilla/geckoview/GeckoRuntimeSettings;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/geckoview/GeckoRuntimeSettings;)V
    .locals 7

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/RuntimeSettings;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;)V

    new-instance v1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "dom.manifest.enabled"

    invoke-direct {v1, p0, v3, v2}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mWebManifest:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance v1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const-string v3, "javascript.enabled"

    invoke-direct {v1, p0, v3, v2}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mJavaScript:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance v1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "devtools.debugger.remote-enabled"

    invoke-direct {v1, p0, v4, v3}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mRemoteDebugging:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance v1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "browser.display.use_document_fonts"

    invoke-direct {v1, p0, v5, v4}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mWebFonts:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance v1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const-string v4, "geckoview.console.enabled"

    invoke-direct {v1, p0, v4, v3}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mConsoleOutput:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance v1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "font.size.systemFontScale"

    invoke-direct {v1, p0, v5, v4}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mFontSizeFactor:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance v1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "font.size.inflation.minTwips"

    invoke-direct {v1, p0, v6, v5}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mFontInflationMinTwips:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance v1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const-string v6, "formhelper.autozoom"

    invoke-direct {v1, p0, v6, v2}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mInputAutoZoom:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance v1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const-string v6, "apz.allow_double_tap_zooming"

    invoke-direct {v1, p0, v6, v2}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDoubleTapZooming:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance v1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const-string v6, "gl.msaa-level"

    invoke-direct {v1, p0, v6, v5}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mGlMsaaLevel:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance v1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const-string v5, "toolkit.telemetry.geckoview.streaming"

    invoke-direct {v1, p0, v5, v3}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mTelemetryEnabled:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance v1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const-string v5, "geckoview.logging"

    const-string v6, "Debug"

    invoke-direct {v1, p0, v5, v6}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mGeckoViewLogLevel:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance v1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const-string v5, "consoleservice.logcat"

    invoke-direct {v1, p0, v5, v2}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mConsoleServiceToLogcat:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance v1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const-string v5, "devtools.console.stdout.chrome"

    invoke-direct {v1, p0, v5, v2}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDevToolsConsoleToLogcat:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance v1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const-string v5, "general.aboutConfig.enable"

    invoke-direct {v1, p0, v5, v3}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mAboutConfig:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance v1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const-string v5, "browser.ui.zoom.force-user-scalable"

    invoke-direct {v1, p0, v5, v3}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mForceUserScalable:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance v1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const-string v3, "browser.tabs.remote.autostart"

    invoke-direct {v1, p0, v3, v2}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mUseMultiprocess:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    new-instance v1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const-string v3, "signon.autofillForms"

    invoke-direct {v1, p0, v3, v2}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mAutofillLogins:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    const/4 v1, -0x1

    iput v1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mPreferredColorScheme:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDisplayDensityOverride:F

    if-nez p1, :cond_0

    new-array p1, v4, [Ljava/lang/String;

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mArgs:[Ljava/lang/String;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mExtras:Landroid/os/Bundle;

    new-instance p1, Lorg/mozilla/geckoview/ContentBlocking$Settings;

    invoke-direct {p1, p0, v0}, Lorg/mozilla/geckoview/ContentBlocking$Settings;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Lorg/mozilla/geckoview/ContentBlocking$Settings;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mContentBlocking:Lorg/mozilla/geckoview/ContentBlocking$Settings;

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->updateSettings(Lorg/mozilla/geckoview/GeckoRuntimeSettings;)V

    return-void
.end method

.method private commitLocales()V
    .locals 3

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v1, "requestedLocales"

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mRequestedLocales:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "acceptLanguages"

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->computeAcceptLanguages()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v1

    const-string v2, "GeckoView:SetLocale"

    invoke-virtual {v1, v2, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method private computeAcceptLanguages()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mRequestedLocales:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->getDefaultLocales()[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultLocales()[Ljava/lang/String;
    .locals 4

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static getLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x2d

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateSettings(Lorg/mozilla/geckoview/GeckoRuntimeSettings;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/RuntimeSettings;->updatePrefs(Lorg/mozilla/geckoview/RuntimeSettings;)V

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->getArguments()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mArgs:[Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mExtras:Landroid/os/Bundle;

    new-instance v0, Lorg/mozilla/geckoview/ContentBlocking$Settings;

    iget-object v1, p1, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mContentBlocking:Lorg/mozilla/geckoview/ContentBlocking$Settings;

    invoke-direct {v0, p0, v1}, Lorg/mozilla/geckoview/ContentBlocking$Settings;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;Lorg/mozilla/geckoview/ContentBlocking$Settings;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mContentBlocking:Lorg/mozilla/geckoview/ContentBlocking$Settings;

    iget-boolean v0, p1, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDebugPause:Z

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDebugPause:Z

    iget-boolean v0, p1, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mUseMaxScreenDepth:Z

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mUseMaxScreenDepth:Z

    iget v0, p1, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDisplayDensityOverride:F

    iput v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDisplayDensityOverride:F

    iget v0, p1, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDisplayDpiOverride:I

    iput v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDisplayDpiOverride:I

    iget v0, p1, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mScreenWidthOverride:I

    iput v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mScreenWidthOverride:I

    iget v0, p1, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mScreenHeightOverride:I

    iput v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mScreenHeightOverride:I

    iget-object v0, p1, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mCrashHandler:Ljava/lang/Class;

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mCrashHandler:Ljava/lang/Class;

    iget-object v0, p1, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mRequestedLocales:[Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mRequestedLocales:[Ljava/lang/String;

    iget-object v0, p1, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mConfigFilePath:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mConfigFilePath:Ljava/lang/String;

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mTelemetryProxy:Lorg/mozilla/geckoview/RuntimeTelemetry$Proxy;

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mTelemetryProxy:Lorg/mozilla/geckoview/RuntimeTelemetry$Proxy;

    return-void
.end method


# virtual methods
.method public attachTo(Lorg/mozilla/geckoview/GeckoRuntime;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mRuntime:Lorg/mozilla/geckoview/GeckoRuntime;

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->commit()V

    return-void
.end method

.method public commit()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->commitLocales()V

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings;->commitResetPrefs()V

    return-void
.end method

.method public getAboutConfigEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mAboutConfig:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getArguments()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getAutomaticFontSizeAdjustment()Z
    .locals 1

    invoke-static {}, Lorg/mozilla/geckoview/GeckoFontScaleListener;->getInstance()Lorg/mozilla/geckoview/GeckoFontScaleListener;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoFontScaleListener;->getEnabled()Z

    move-result v0

    return v0
.end method

.method public getConfigFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mConfigFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getConsoleOutputEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mConsoleOutput:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getContentBlocking()Lorg/mozilla/geckoview/ContentBlocking$Settings;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mContentBlocking:Lorg/mozilla/geckoview/ContentBlocking$Settings;

    return-object v0
.end method

.method public getCrashHandler()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mCrashHandler:Ljava/lang/Class;

    return-object v0
.end method

.method public getDisplayDensityOverride()Ljava/lang/Float;
    .locals 2

    iget v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDisplayDensityOverride:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayDpiOverride()Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDisplayDpiOverride:I

    if-lez v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDoubleTapZoomingEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDoubleTapZooming:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFontInflationEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mFontInflationMinTwips:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFontSizeFactor()F
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mFontSizeFactor:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getForceUserScalableEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mForceUserScalable:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getGlMsaaLevel()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mGlMsaaLevel:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getInputAutoZoomEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mInputAutoZoom:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getJavaScriptEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mJavaScript:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLocales()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mRequestedLocales:[Ljava/lang/String;

    return-object v0
.end method

.method public getLoginAutofillEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mAutofillLogins:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPauseForDebuggerEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDebugPause:Z

    return v0
.end method

.method public getPreferredColorScheme()I
    .locals 1

    iget v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mPreferredColorScheme:I

    return v0
.end method

.method public getRemoteDebuggingEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mRemoteDebugging:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getRuntime()Lorg/mozilla/geckoview/GeckoRuntime;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mRuntime:Lorg/mozilla/geckoview/GeckoRuntime;

    return-object v0
.end method

.method public getScreenSizeOverride()Landroid/graphics/Rect;
    .locals 4

    iget v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mScreenWidthOverride:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mScreenHeightOverride:I

    if-lez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mScreenWidthOverride:I

    iget v2, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mScreenHeightOverride:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTelemetryDelegate()Lorg/mozilla/geckoview/RuntimeTelemetry$Delegate;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mTelemetryProxy:Lorg/mozilla/geckoview/RuntimeTelemetry$Proxy;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/RuntimeTelemetry$Proxy;->getDelegate()Lorg/mozilla/geckoview/RuntimeTelemetry$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public getUseMaxScreenDepth()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mUseMaxScreenDepth:Z

    return v0
.end method

.method public getUseMultiprocess()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mUseMultiprocess:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getWebFontsEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mWebFonts:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getWebManifestEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mWebManifest:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/mozilla/geckoview/RuntimeSettings;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mArgs:[Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    invoke-static {p1}, Lorg/mozilla/geckoview/ParcelableUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDebugPause:Z

    invoke-static {p1}, Lorg/mozilla/geckoview/ParcelableUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mUseMaxScreenDepth:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDisplayDensityOverride:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDisplayDpiOverride:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mScreenWidthOverride:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mScreenHeightOverride:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mCrashHandler:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mRequestedLocales:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mConfigFilePath:Ljava/lang/String;

    return-void
.end method

.method public setAboutConfigEnabled(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mAboutConfig:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setAutomaticFontSizeAdjustment(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings;
    .locals 1

    invoke-static {}, Lorg/mozilla/geckoview/GeckoFontScaleListener;->getInstance()Lorg/mozilla/geckoview/GeckoFontScaleListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoFontScaleListener;->setEnabled(Z)V

    return-object p0
.end method

.method public setConsoleOutputEnabled(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mConsoleOutput:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setDoubleTapZoomingEnabled(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDoubleTapZooming:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setFontInflationEnabled(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings;
    .locals 1

    if-eqz p1, :cond_0

    const/high16 p1, 0x42f00000    # 120.0f

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->getFontSizeFactor()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mFontInflationMinTwips:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setFontSizeFactor(F)Lorg/mozilla/geckoview/GeckoRuntimeSettings;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->getAutomaticFontSizeAdjustment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->setFontSizeFactorInternal(F)Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not allowed when automatic font size adjustment is enabled"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFontSizeFactorInternal(F)Lorg/mozilla/geckoview/GeckoRuntimeSettings;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mFontSizeFactor:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->getFontInflationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x42f00000    # 120.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mFontInflationMinTwips:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    :cond_0
    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "fontSizeFactor cannot be < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setForceUserScalableEnabled(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mForceUserScalable:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setGlMsaaLevel(I)Lorg/mozilla/geckoview/GeckoRuntimeSettings;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mGlMsaaLevel:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setInputAutoZoomEnabled(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mInputAutoZoom:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setJavaScriptEnabled(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mJavaScript:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setLocales([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mRequestedLocales:[Ljava/lang/String;

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->commitLocales()V

    return-void
.end method

.method public setLoginAutofillEnabled(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mAutofillLogins:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setPreferredColorScheme(I)Lorg/mozilla/geckoview/GeckoRuntimeSettings;
    .locals 1

    iget v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mPreferredColorScheme:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mPreferredColorScheme:I

    invoke-static {}, Lorg/mozilla/gecko/GeckoSystemStateListener;->onDeviceChanged()V

    :cond_0
    return-object p0
.end method

.method public setRemoteDebuggingEnabled(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mRemoteDebugging:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setWebFontsEnabled(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mWebFonts:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setWebManifestEnabled(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mWebManifest:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/mozilla/geckoview/RuntimeSettings;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mArgs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean p2, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDebugPause:Z

    invoke-static {p1, p2}, Lorg/mozilla/geckoview/ParcelableUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    iget-boolean p2, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mUseMaxScreenDepth:Z

    invoke-static {p1, p2}, Lorg/mozilla/geckoview/ParcelableUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    iget p2, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDisplayDensityOverride:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDisplayDpiOverride:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mScreenWidthOverride:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mScreenHeightOverride:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mCrashHandler:Ljava/lang/Class;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mRequestedLocales:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mConfigFilePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
