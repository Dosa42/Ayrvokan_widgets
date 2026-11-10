.class public final Lorg/mozilla/geckoview/GeckoSessionSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/GeckoSessionSettings$Key;,
        Lorg/mozilla/geckoview/GeckoSessionSettings$Builder;
    }
.end annotation


# static fields
.field private static final ALLOW_JAVASCRIPT:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoSessionSettings$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHROME_URI:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoSessionSettings$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTEXT_ID:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoSessionSettings$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mozilla/geckoview/GeckoSessionSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DISPLAY_MODE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoSessionSettings$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISPLAY_MODE_BROWSER:I = 0x0

.field public static final DISPLAY_MODE_FULLSCREEN:I = 0x3

.field public static final DISPLAY_MODE_MINIMAL_UI:I = 0x1

.field public static final DISPLAY_MODE_STANDALONE:I = 0x2

.field private static final FULL_ACCESSIBILITY_TREE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoSessionSettings$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_POPUP:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoSessionSettings$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGTAG:Ljava/lang/String; = "GeckoSessionSettings"

.field private static final SCREEN_ID:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoSessionSettings$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUSPEND_MEDIA_WHEN_INACTIVE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoSessionSettings$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNSAFE_CONTEXT_ID:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoSessionSettings$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final USER_AGENT_MODE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoSessionSettings$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final USER_AGENT_MODE_DESKTOP:I = 0x1

.field public static final USER_AGENT_MODE_MOBILE:I = 0x0

.field public static final USER_AGENT_MODE_VR:I = 0x2

.field private static final USER_AGENT_OVERRIDE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoSessionSettings$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final USE_PRIVATE_MODE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoSessionSettings$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final USE_TRACKING_PROTECTION:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoSessionSettings$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIEWPORT_MODE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoSessionSettings$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIEWPORT_MODE_DESKTOP:I = 0x1

.field public static final VIEWPORT_MODE_MOBILE:I


# instance fields
.field private final mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

.field private final mSession:Lorg/mozilla/geckoview/GeckoSession;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    const-string v1, "chromeUri"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4}, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;-><init>(Ljava/lang/String;ZLjava/util/Collection;)V

    sput-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->CHROME_URI:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    new-instance v0, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    const-string v1, "screenId"

    invoke-direct {v0, v1, v2, v4}, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;-><init>(Ljava/lang/String;ZLjava/util/Collection;)V

    sput-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->SCREEN_ID:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    new-instance v0, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    const-string v1, "useTrackingProtection"

    invoke-direct {v0, v1}, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->USE_TRACKING_PROTECTION:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    new-instance v0, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    const-string v1, "usePrivateMode"

    invoke-direct {v0, v1, v2, v4}, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;-><init>(Ljava/lang/String;ZLjava/util/Collection;)V

    sput-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->USE_PRIVATE_MODE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    new-instance v0, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v3, v5, v2

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v10, "userAgentMode"

    invoke-direct {v0, v10, v6, v5}, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;-><init>(Ljava/lang/String;ZLjava/util/Collection;)V

    sput-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->USER_AGENT_MODE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    new-instance v0, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    const-string v5, "userAgentOverride"

    invoke-direct {v0, v5, v6, v4}, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;-><init>(Ljava/lang/String;ZLjava/util/Collection;)V

    sput-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->USER_AGENT_OVERRIDE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    new-instance v0, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    new-array v5, v8, [Ljava/lang/Integer;

    aput-object v7, v5, v6

    aput-object v3, v5, v2

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v10, "viewportMode"

    invoke-direct {v0, v10, v6, v5}, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;-><init>(Ljava/lang/String;ZLjava/util/Collection;)V

    sput-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->VIEWPORT_MODE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    new-instance v0, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Integer;

    aput-object v7, v5, v6

    aput-object v3, v5, v2

    aput-object v9, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v3, "displayMode"

    invoke-direct {v0, v3, v6, v1}, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;-><init>(Ljava/lang/String;ZLjava/util/Collection;)V

    sput-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->DISPLAY_MODE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    new-instance v0, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    const-string v1, "suspendMediaWhenInactive"

    invoke-direct {v0, v1, v6, v4}, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;-><init>(Ljava/lang/String;ZLjava/util/Collection;)V

    sput-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->SUSPEND_MEDIA_WHEN_INACTIVE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    new-instance v0, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    const-string v1, "allowJavascript"

    invoke-direct {v0, v1, v6, v4}, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;-><init>(Ljava/lang/String;ZLjava/util/Collection;)V

    sput-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->ALLOW_JAVASCRIPT:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    new-instance v0, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    const-string v1, "fullAccessibilityTree"

    invoke-direct {v0, v1, v6, v4}, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;-><init>(Ljava/lang/String;ZLjava/util/Collection;)V

    sput-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->FULL_ACCESSIBILITY_TREE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    new-instance v0, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    const-string v1, "isPopup"

    invoke-direct {v0, v1, v6, v4}, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;-><init>(Ljava/lang/String;ZLjava/util/Collection;)V

    sput-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->IS_POPUP:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    new-instance v0, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    const-string v1, "sessionContextId"

    invoke-direct {v0, v1, v2, v4}, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;-><init>(Ljava/lang/String;ZLjava/util/Collection;)V

    sput-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->CONTEXT_ID:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    new-instance v0, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    const-string v1, "unsafeSessionContextId"

    invoke-direct {v0, v1, v2, v4}, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;-><init>(Ljava/lang/String;ZLjava/util/Collection;)V

    sput-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->UNSAFE_CONTEXT_ID:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    new-instance v0, Lorg/mozilla/geckoview/GeckoSessionSettings$1;

    invoke-direct {v0}, Lorg/mozilla/geckoview/GeckoSessionSettings$1;-><init>()V

    sput-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/mozilla/geckoview/GeckoSessionSettings;-><init>(Lorg/mozilla/geckoview/GeckoSessionSettings;Lorg/mozilla/geckoview/GeckoSession;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSessionSettings;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/geckoview/GeckoSessionSettings;-><init>(Lorg/mozilla/geckoview/GeckoSessionSettings;Lorg/mozilla/geckoview/GeckoSession;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSessionSettings;Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz p1, :cond_0

    new-instance p2, Lorg/mozilla/gecko/util/GeckoBundle;

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoSessionSettings;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-direct {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    return-void

    :cond_0
    new-instance p1, Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-direct {p1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    sget-object p2, Lorg/mozilla/geckoview/GeckoSessionSettings;->CHROME_URI:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    iget-object p2, p2, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->name:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lorg/mozilla/geckoview/GeckoSessionSettings;->SCREEN_ID:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    iget-object p2, p2, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->putInt(Ljava/lang/String;I)V

    sget-object p2, Lorg/mozilla/geckoview/GeckoSessionSettings;->USE_TRACKING_PROTECTION:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    iget-object p2, p2, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->name:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p2, Lorg/mozilla/geckoview/GeckoSessionSettings;->USE_PRIVATE_MODE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    iget-object p2, p2, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->name:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p2, Lorg/mozilla/geckoview/GeckoSessionSettings;->SUSPEND_MEDIA_WHEN_INACTIVE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    iget-object p2, p2, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->name:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p2, Lorg/mozilla/geckoview/GeckoSessionSettings;->ALLOW_JAVASCRIPT:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    iget-object p2, p2, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->name:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p2, Lorg/mozilla/geckoview/GeckoSessionSettings;->FULL_ACCESSIBILITY_TREE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    iget-object p2, p2, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->name:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p2, Lorg/mozilla/geckoview/GeckoSessionSettings;->IS_POPUP:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    iget-object p2, p2, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->name:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p2, Lorg/mozilla/geckoview/GeckoSessionSettings;->USER_AGENT_MODE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    iget-object p2, p2, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->name:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->putInt(Ljava/lang/String;I)V

    sget-object p2, Lorg/mozilla/geckoview/GeckoSessionSettings;->USER_AGENT_OVERRIDE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    iget-object p2, p2, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->name:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lorg/mozilla/geckoview/GeckoSessionSettings;->VIEWPORT_MODE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    iget-object p2, p2, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->name:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->putInt(Ljava/lang/String;I)V

    sget-object p2, Lorg/mozilla/geckoview/GeckoSessionSettings;->DISPLAY_MODE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    iget-object p2, p2, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->name:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->putInt(Ljava/lang/String;I)V

    sget-object p2, Lorg/mozilla/geckoview/GeckoSessionSettings;->CONTEXT_ID:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    iget-object p2, p2, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->name:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lorg/mozilla/geckoview/GeckoSessionSettings;->UNSAFE_CONTEXT_ID:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    iget-object p2, p2, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->name:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/mozilla/geckoview/GeckoSessionSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setChromeUri(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lorg/mozilla/geckoview/GeckoSessionSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setScreenId(I)V

    return-void
.end method

.method public static synthetic access$200(Lorg/mozilla/geckoview/GeckoSessionSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setUsePrivateMode(Z)V

    return-void
.end method

.method public static synthetic access$300(Lorg/mozilla/geckoview/GeckoSessionSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setContextId(Ljava/lang/String;)V

    return-void
.end method

.method private dispatchUpdate()V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v0

    const-string v1, "GeckoView:UpdateSettings"

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSessionSettings;->toBundle()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    :cond_0
    return-void
.end method

.method private getBoolean(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSessionSettings$Key<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getInt(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSessionSettings$Key<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getString(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSessionSettings$Key<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private setBoolean(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSessionSettings$Key<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    monitor-enter v0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->valueChangedLocked(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->name:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoSessionSettings;->dispatchUpdate()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private setChromeUri(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->CHROME_URI:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setString(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;Ljava/lang/String;)V

    return-void
.end method

.method private setContextId(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->UNSAFE_CONTEXT_ID:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setString(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;Ljava/lang/String;)V

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->CONTEXT_ID:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-static {p1}, Lorg/mozilla/geckoview/StorageController;->createSafeSessionContextId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setString(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;Ljava/lang/String;)V

    return-void
.end method

.method private setInt(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSessionSettings$Key<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    monitor-enter v0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->valueChangedLocked(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->name:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoSessionSettings;->dispatchUpdate()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private setScreenId(I)V
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->SCREEN_ID:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setInt(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;I)V

    return-void
.end method

.method private setString(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSessionSettings$Key<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/mozilla/geckoview/GeckoSessionSettings;->valueChangedLocked(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->name:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoSessionSettings;->dispatchUpdate()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private setUsePrivateMode(Z)V
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->USE_PRIVATE_MODE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setBoolean(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;Z)V

    return-void
.end method

.method private valueChangedLocked(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mozilla/geckoview/GeckoSessionSettings$Key<",
            "TT;>;TT;)Z"
        }
    .end annotation

    iget-boolean v0, p1, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->initOnly:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Read-only property"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p1, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->values:Ljava/util/Collection;

    if-eqz v0, :cond_3

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p2, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/mozilla/geckoview/GeckoSessionSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    check-cast p1, Lorg/mozilla/geckoview/GeckoSessionSettings;

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoSessionSettings;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAllowJavascript()Z
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->ALLOW_JAVASCRIPT:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoSessionSettings;->getBoolean(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;)Z

    move-result v0

    return v0
.end method

.method public getChromeUri()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->CHROME_URI:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoSessionSettings;->getString(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContextId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->UNSAFE_CONTEXT_ID:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoSessionSettings;->getString(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMode()I
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->DISPLAY_MODE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoSessionSettings;->getInt(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;)I

    move-result v0

    return v0
.end method

.method public getFullAccessibilityTree()Z
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->FULL_ACCESSIBILITY_TREE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoSessionSettings;->getBoolean(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;)Z

    move-result v0

    return v0
.end method

.method public getIsPopup()Z
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->IS_POPUP:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoSessionSettings;->getBoolean(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;)Z

    move-result v0

    return v0
.end method

.method public getScreenId()I
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->SCREEN_ID:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoSessionSettings;->getInt(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;)I

    move-result v0

    return v0
.end method

.method public getSuspendMediaWhenInactive()Z
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->SUSPEND_MEDIA_WHEN_INACTIVE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoSessionSettings;->getBoolean(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;)Z

    move-result v0

    return v0
.end method

.method public getUsePrivateMode()Z
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->USE_PRIVATE_MODE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoSessionSettings;->getBoolean(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;)Z

    move-result v0

    return v0
.end method

.method public getUseTrackingProtection()Z
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->USE_TRACKING_PROTECTION:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoSessionSettings;->getBoolean(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;)Z

    move-result v0

    return v0
.end method

.method public getUserAgentMode()I
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->USER_AGENT_MODE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoSessionSettings;->getInt(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;)I

    move-result v0

    return v0
.end method

.method public getUserAgentOverride()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->USER_AGENT_OVERRIDE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoSessionSettings;->getString(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewportMode()I
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->VIEWPORT_MODE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoSessionSettings;->getInt(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-virtual {v0}, Lorg/mozilla/gecko/util/GeckoBundle;->hashCode()I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public setAllowJavascript(Z)V
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->ALLOW_JAVASCRIPT:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setBoolean(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;Z)V

    return-void
.end method

.method public setDisplayMode(I)V
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->DISPLAY_MODE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setInt(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;I)V

    return-void
.end method

.method public setFullAccessibilityTree(Z)V
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->FULL_ACCESSIBILITY_TREE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setBoolean(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;Z)V

    return-void
.end method

.method public setIsPopup(Z)V
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->IS_POPUP:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setBoolean(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;Z)V

    return-void
.end method

.method public setSuspendMediaWhenInactive(Z)V
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->SUSPEND_MEDIA_WHEN_INACTIVE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setBoolean(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;Z)V

    return-void
.end method

.method public setUseTrackingProtection(Z)V
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->USE_TRACKING_PROTECTION:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setBoolean(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;Z)V

    return-void
.end method

.method public setUserAgentMode(I)V
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->USER_AGENT_MODE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setInt(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;I)V

    return-void
.end method

.method public setUserAgentOverride(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->USER_AGENT_OVERRIDE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setString(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;Ljava/lang/String;)V

    return-void
.end method

.method public setViewportMode(I)V
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSessionSettings;->VIEWPORT_MODE:Lorg/mozilla/geckoview/GeckoSessionSettings$Key;

    invoke-direct {p0, v0, p1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setInt(Lorg/mozilla/geckoview/GeckoSessionSettings$Key;I)V

    return-void
.end method

.method public toBundle()Lorg/mozilla/gecko/util/GeckoBundle;
    .locals 2

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-virtual {v0}, Lorg/mozilla/gecko/util/GeckoBundle;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionSettings;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
