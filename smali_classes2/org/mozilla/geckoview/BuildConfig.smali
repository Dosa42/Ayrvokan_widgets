.class public final Lorg/mozilla/geckoview/BuildConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "org.mozilla.geckoview"

.field public static final BUILD_TYPE:Ljava/lang/String; = "debug"

.field public static final DEBUG:Z = true

.field public static final DEBUG_BUILD:Z = false

.field public static final FLAVOR:Ljava/lang/String; = "withGeckoBinaries"

.field public static final GRE_MILESTONE:Ljava/lang/String; = "79.0.1"

.field public static final MIN_SDK_VERSION:I = 0x10

.field public static final MOZILLA_OFFICIAL:Z = true

.field public static final MOZILLA_VERSION:Ljava/lang/String; = "79.0.1"

.field public static final MOZ_APP_BASENAME:Ljava/lang/String; = "Fennec"

.field public static final MOZ_APP_BUILDID:Ljava/lang/String; = "20200813192915"

.field public static final MOZ_APP_DISPLAYNAME:Ljava/lang/String; = "Firefox Nightly"

.field public static final MOZ_APP_ID:Ljava/lang/String; = "{aa3c5121-dab2-40e2-81ca-7ea25febc110}"

.field public static final MOZ_APP_NAME:Ljava/lang/String; = "fennec"

.field public static final MOZ_APP_UA_NAME:Ljava/lang/String; = "Firefox"

.field public static final MOZ_APP_VENDOR:Ljava/lang/String; = "Mozilla"

.field public static final MOZ_APP_VERSION:Ljava/lang/String; = "79.0.1"

.field public static final MOZ_CRASHREPORTER:Z = true

.field public static final MOZ_UPDATE_CHANNEL:Ljava/lang/String; = "release"

.field public static final NIGHTLY_BUILD:Z = false

.field public static final OMNIJAR_NAME:Ljava/lang/String; = "assets/omni.ja"

.field public static final RELEASE_OR_BETA:Z = true

.field public static final USER_AGENT_GECKOVIEW_MOBILE:Ljava/lang/String;

.field public static final USER_AGENT_GECKOVIEW_TABLET:Ljava/lang/String;

.field public static final VERSION_CODE:I = 0x788b61

.field public static final VERSION_NAME:Ljava/lang/String; = "79.0.1-release"


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Mozilla/5.0 (Android "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 9
    .line 10
    const-string v3, "; Mobile; rv:79.0) Gecko/79.0 Firefox/79.0"

    .line 11
    .line 12
    invoke-static {v0, v2, v3}, La1/b;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lorg/mozilla/geckoview/BuildConfig;->USER_AGENT_GECKOVIEW_MOBILE:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "; Tablet; rv:79.0) Gecko/79.0 Firefox/79.0"

    .line 19
    .line 20
    invoke-static {v1, v2, v0}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lorg/mozilla/geckoview/BuildConfig;->USER_AGENT_GECKOVIEW_TABLET:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
