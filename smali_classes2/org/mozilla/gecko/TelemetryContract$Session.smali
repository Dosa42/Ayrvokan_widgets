.class public final enum Lorg/mozilla/gecko/TelemetryContract$Session;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/TelemetryContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/gecko/TelemetryContract$Session;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/gecko/TelemetryContract$Session;

.field public static final enum ACTIVITY_STREAM:Lorg/mozilla/gecko/TelemetryContract$Session;

.field public static final enum AWESOMESCREEN:Lorg/mozilla/gecko/TelemetryContract$Session;

.field public static final enum EXPERIMENT:Lorg/mozilla/gecko/TelemetryContract$Session;

.field public static final enum FIRSTRUN:Lorg/mozilla/gecko/TelemetryContract$Session;

.field public static final enum FRECENCY:Lorg/mozilla/gecko/TelemetryContract$Session;

.field public static final enum HOME_PANEL:Lorg/mozilla/gecko/TelemetryContract$Session;

.field public static final enum READER:Lorg/mozilla/gecko/TelemetryContract$Session;

.field public static final enum SEARCH_ACTIVITY:Lorg/mozilla/gecko/TelemetryContract$Session;

.field public static final enum SETTINGS:Lorg/mozilla/gecko/TelemetryContract$Session;

.field public static final enum _TEST_STARTED_TWICE:Lorg/mozilla/gecko/TelemetryContract$Session;

.field public static final enum _TEST_STOPPED_TWICE:Lorg/mozilla/gecko/TelemetryContract$Session;


# instance fields
.field private final mString:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Session;

    const/4 v1, 0x0

    const-string v2, "activitystream.1"

    const-string v3, "ACTIVITY_STREAM"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Session;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Session;->ACTIVITY_STREAM:Lorg/mozilla/gecko/TelemetryContract$Session;

    new-instance v1, Lorg/mozilla/gecko/TelemetryContract$Session;

    const/4 v2, 0x1

    const-string v3, "awesomescreen.1"

    const-string v4, "AWESOMESCREEN"

    invoke-direct {v1, v4, v2, v3}, Lorg/mozilla/gecko/TelemetryContract$Session;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/mozilla/gecko/TelemetryContract$Session;->AWESOMESCREEN:Lorg/mozilla/gecko/TelemetryContract$Session;

    new-instance v2, Lorg/mozilla/gecko/TelemetryContract$Session;

    const/4 v3, 0x2

    const-string v4, "experiment.1"

    const-string v5, "EXPERIMENT"

    invoke-direct {v2, v5, v3, v4}, Lorg/mozilla/gecko/TelemetryContract$Session;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/mozilla/gecko/TelemetryContract$Session;->EXPERIMENT:Lorg/mozilla/gecko/TelemetryContract$Session;

    new-instance v3, Lorg/mozilla/gecko/TelemetryContract$Session;

    const/4 v4, 0x3

    const-string v5, "firstrun.1"

    const-string v6, "FIRSTRUN"

    invoke-direct {v3, v6, v4, v5}, Lorg/mozilla/gecko/TelemetryContract$Session;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/mozilla/gecko/TelemetryContract$Session;->FIRSTRUN:Lorg/mozilla/gecko/TelemetryContract$Session;

    new-instance v4, Lorg/mozilla/gecko/TelemetryContract$Session;

    const/4 v5, 0x4

    const-string v6, "frecency.1"

    const-string v7, "FRECENCY"

    invoke-direct {v4, v7, v5, v6}, Lorg/mozilla/gecko/TelemetryContract$Session;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/mozilla/gecko/TelemetryContract$Session;->FRECENCY:Lorg/mozilla/gecko/TelemetryContract$Session;

    new-instance v5, Lorg/mozilla/gecko/TelemetryContract$Session;

    const/4 v6, 0x5

    const-string v7, "homepanel.1"

    const-string v8, "HOME_PANEL"

    invoke-direct {v5, v8, v6, v7}, Lorg/mozilla/gecko/TelemetryContract$Session;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/mozilla/gecko/TelemetryContract$Session;->HOME_PANEL:Lorg/mozilla/gecko/TelemetryContract$Session;

    new-instance v6, Lorg/mozilla/gecko/TelemetryContract$Session;

    const/4 v7, 0x6

    const-string v8, "reader.1"

    const-string v9, "READER"

    invoke-direct {v6, v9, v7, v8}, Lorg/mozilla/gecko/TelemetryContract$Session;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/mozilla/gecko/TelemetryContract$Session;->READER:Lorg/mozilla/gecko/TelemetryContract$Session;

    new-instance v7, Lorg/mozilla/gecko/TelemetryContract$Session;

    const/4 v8, 0x7

    const-string v9, "searchactivity.1"

    const-string v10, "SEARCH_ACTIVITY"

    invoke-direct {v7, v10, v8, v9}, Lorg/mozilla/gecko/TelemetryContract$Session;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/mozilla/gecko/TelemetryContract$Session;->SEARCH_ACTIVITY:Lorg/mozilla/gecko/TelemetryContract$Session;

    new-instance v8, Lorg/mozilla/gecko/TelemetryContract$Session;

    const/16 v9, 0x8

    const-string v10, "settings.1"

    const-string v11, "SETTINGS"

    invoke-direct {v8, v11, v9, v10}, Lorg/mozilla/gecko/TelemetryContract$Session;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/mozilla/gecko/TelemetryContract$Session;->SETTINGS:Lorg/mozilla/gecko/TelemetryContract$Session;

    new-instance v9, Lorg/mozilla/gecko/TelemetryContract$Session;

    const/16 v10, 0x9

    const-string v11, "_test_session_started_twice.1"

    const-string v12, "_TEST_STARTED_TWICE"

    invoke-direct {v9, v12, v10, v11}, Lorg/mozilla/gecko/TelemetryContract$Session;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/mozilla/gecko/TelemetryContract$Session;->_TEST_STARTED_TWICE:Lorg/mozilla/gecko/TelemetryContract$Session;

    new-instance v10, Lorg/mozilla/gecko/TelemetryContract$Session;

    const/16 v11, 0xa

    const-string v12, "_test_session_stopped_twice.1"

    const-string v13, "_TEST_STOPPED_TWICE"

    invoke-direct {v10, v13, v11, v12}, Lorg/mozilla/gecko/TelemetryContract$Session;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/mozilla/gecko/TelemetryContract$Session;->_TEST_STOPPED_TWICE:Lorg/mozilla/gecko/TelemetryContract$Session;

    filled-new-array/range {v0 .. v10}, [Lorg/mozilla/gecko/TelemetryContract$Session;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Session;->$VALUES:[Lorg/mozilla/gecko/TelemetryContract$Session;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/mozilla/gecko/TelemetryContract$Session;->mString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/gecko/TelemetryContract$Session;
    .locals 1

    const-class v0, Lorg/mozilla/gecko/TelemetryContract$Session;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/gecko/TelemetryContract$Session;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/gecko/TelemetryContract$Session;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/TelemetryContract$Session;->$VALUES:[Lorg/mozilla/gecko/TelemetryContract$Session;

    invoke-virtual {v0}, [Lorg/mozilla/gecko/TelemetryContract$Session;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/gecko/TelemetryContract$Session;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/TelemetryContract$Session;->mString:Ljava/lang/String;

    return-object v0
.end method
