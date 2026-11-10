.class Lorg/mozilla/geckoview/SessionAccessibility$Settings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/SessionAccessibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# static fields
.field private static final FORCE_ACCESSIBILITY_PREF:Ljava/lang/String; = "accessibility.force_disabled"

.field private static volatile sEnabled:Z

.field static volatile sForceEnabled:Z

.field private static volatile sTouchExplorationEnabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    new-instance v1, Lorg/mozilla/geckoview/l;

    invoke-direct {v1}, Lorg/mozilla/geckoview/l;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    new-instance v1, Lorg/mozilla/geckoview/m;

    invoke-direct {v1}, Lorg/mozilla/geckoview/m;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    new-instance v0, Lorg/mozilla/geckoview/SessionAccessibility$Settings$1;

    invoke-direct {v0}, Lorg/mozilla/geckoview/SessionAccessibility$Settings$1;-><init>()V

    const-string v1, "accessibility.force_disabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/mozilla/gecko/PrefsHelper;->addObserver([Ljava/lang/String;Lorg/mozilla/gecko/PrefsHelper$PrefHandler;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/mozilla/geckoview/SessionAccessibility$Settings;->lambda$static$1(Z)V

    return-void
.end method

.method public static synthetic b(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/mozilla/geckoview/SessionAccessibility$Settings;->lambda$static$0(Z)V

    return-void
.end method

.method public static dispatch()V
    .locals 4

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v1, "touchEnabled"

    invoke-static {}, Lorg/mozilla/geckoview/SessionAccessibility$Settings;->isTouchExplorationEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "enabled"

    invoke-static {}, Lorg/mozilla/geckoview/SessionAccessibility$Settings;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v1

    const-string v2, "GeckoView:AccessibilityEnabled"

    invoke-virtual {v1, v2, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    sget-object v0, Lorg/mozilla/gecko/GeckoThread$State;->PROFILE_READY:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/mozilla/geckoview/SessionAccessibility$Settings;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Lorg/mozilla/geckoview/SessionAccessibility$Settings;->toggleNativeAccessibility(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mozilla/geckoview/SessionAccessibility$Settings;->isEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lorg/mozilla/geckoview/SessionAccessibility$Settings;

    const-string v3, "toggleNativeAccessibility"

    invoke-static {v0, v2, v3, v1}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCallUntil(Lorg/mozilla/gecko/GeckoThread$State;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    sget-boolean v0, Lorg/mozilla/geckoview/SessionAccessibility$Settings;->sEnabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/mozilla/geckoview/SessionAccessibility$Settings;->sForceEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isPlatformEnabled()Z
    .locals 1

    sget-boolean v0, Lorg/mozilla/geckoview/SessionAccessibility$Settings;->sEnabled:Z

    return v0
.end method

.method public static isTouchExplorationEnabled()Z
    .locals 1

    sget-boolean v0, Lorg/mozilla/geckoview/SessionAccessibility$Settings;->sTouchExplorationEnabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/mozilla/geckoview/SessionAccessibility$Settings;->sForceEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static synthetic lambda$static$0(Z)V
    .locals 0

    invoke-static {}, Lorg/mozilla/geckoview/SessionAccessibility$Settings;->updateAccessibilitySettings()V

    return-void
.end method

.method private static synthetic lambda$static$1(Z)V
    .locals 0

    invoke-static {}, Lorg/mozilla/geckoview/SessionAccessibility$Settings;->updateAccessibilitySettings()V

    return-void
.end method

.method private static native toggleNativeAccessibility(Z)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method public static updateAccessibilitySettings()V
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    sput-boolean v1, Lorg/mozilla/geckoview/SessionAccessibility$Settings;->sEnabled:Z

    sget-boolean v1, Lorg/mozilla/geckoview/SessionAccessibility$Settings;->sEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lorg/mozilla/geckoview/SessionAccessibility$Settings;->sTouchExplorationEnabled:Z

    invoke-static {}, Lorg/mozilla/geckoview/SessionAccessibility$Settings;->dispatch()V

    return-void
.end method
