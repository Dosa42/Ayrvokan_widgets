.class public final Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
.super Lorg/mozilla/geckoview/RuntimeSettings$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoRuntimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mozilla/geckoview/RuntimeSettings$Builder<",
        "Lorg/mozilla/geckoview/GeckoRuntimeSettings;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public aboutConfigEnabled(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mAboutConfig:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public arguments([Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iput-object p1, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mArgs:[Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Arguments must not  be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public automaticFontSizeAdjustment(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->setAutomaticFontSizeAdjustment(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    return-object p0
.end method

.method public configFilePath(Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iput-object p1, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mConfigFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public consoleOutput(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mConsoleOutput:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public contentBlocking(Lorg/mozilla/geckoview/ContentBlocking$Settings;)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iput-object p1, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mContentBlocking:Lorg/mozilla/geckoview/ContentBlocking$Settings;

    return-object p0
.end method

.method public crashHandler(Ljava/lang/Class;)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)",
            "Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iput-object p1, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mCrashHandler:Ljava/lang/Class;

    return-object p0
.end method

.method public debugLogging(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDevToolsConsoleToLogcat:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mConsoleServiceToLogcat:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mGeckoViewLogLevel:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    if-eqz p1, :cond_0

    const-string p1, "Debug"

    goto :goto_0

    :cond_0
    const-string p1, "Fatal"

    :goto_0
    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public displayDensityOverride(F)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iput p1, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDisplayDensityOverride:F

    return-object p0
.end method

.method public displayDpiOverride(I)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iput p1, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDisplayDpiOverride:I

    return-object p0
.end method

.method public doubleTapZoomingEnabled(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDoubleTapZooming:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public extras(Landroid/os/Bundle;)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iput-object p1, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mExtras:Landroid/os/Bundle;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Extras must not  be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fontInflation(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->setFontInflationEnabled(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    return-object p0
.end method

.method public fontSizeFactor(F)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->setFontSizeFactor(F)Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    return-object p0
.end method

.method public forceUserScalableEnabled(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mForceUserScalable:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public glMsaaLevel(I)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mGlMsaaLevel:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public inputAutoZoomEnabled(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mInputAutoZoom:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public javaScriptEnabled(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mJavaScript:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public locales([Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iput-object p1, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mRequestedLocales:[Ljava/lang/String;

    return-object p0
.end method

.method public loginAutofillEnabled(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->setLoginAutofillEnabled(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    return-object p0
.end method

.method public newSettings(Lorg/mozilla/geckoview/GeckoRuntimeSettings;)Lorg/mozilla/geckoview/GeckoRuntimeSettings;
    .locals 1

    .line 1
    new-instance v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    invoke-direct {v0, p1}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;-><init>(Lorg/mozilla/geckoview/GeckoRuntimeSettings;)V

    return-object v0
.end method

.method public bridge synthetic newSettings(Lorg/mozilla/geckoview/RuntimeSettings;)Lorg/mozilla/geckoview/RuntimeSettings;
    .locals 0

    .line 2
    check-cast p1, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;->newSettings(Lorg/mozilla/geckoview/GeckoRuntimeSettings;)Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    move-result-object p1

    return-object p1
.end method

.method public pauseForDebugger(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iput-boolean p1, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mDebugPause:Z

    return-object p0
.end method

.method public preferredColorScheme(I)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->setPreferredColorScheme(I)Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    return-object p0
.end method

.method public remoteDebuggingEnabled(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mRemoteDebugging:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public screenSizeOverride(II)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iput p1, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mScreenWidthOverride:I

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object p1

    check-cast p1, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iput p2, p1, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mScreenHeightOverride:I

    return-object p0
.end method

.method public telemetryDelegate(Lorg/mozilla/geckoview/RuntimeTelemetry$Delegate;)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    new-instance v1, Lorg/mozilla/geckoview/RuntimeTelemetry$Proxy;

    invoke-direct {v1, p1}, Lorg/mozilla/geckoview/RuntimeTelemetry$Proxy;-><init>(Lorg/mozilla/geckoview/RuntimeTelemetry$Delegate;)V

    iput-object v1, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mTelemetryProxy:Lorg/mozilla/geckoview/RuntimeTelemetry$Proxy;

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object p1

    check-cast p1, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mTelemetryEnabled:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public useMaxScreenDepth(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iput-boolean p1, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mUseMaxScreenDepth:Z

    return-object p0
.end method

.method public useMultiprocess(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mUseMultiprocess:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public webFontsEnabled(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mWebFonts:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public webManifest(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->getSettings()Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mWebManifest:Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->set(Ljava/lang/Object;)V

    return-object p0
.end method
