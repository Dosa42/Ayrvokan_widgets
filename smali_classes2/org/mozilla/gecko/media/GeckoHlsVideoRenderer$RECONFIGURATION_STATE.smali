.class final enum Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RECONFIGURATION_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

.field public static final enum NONE:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

.field public static final enum QUEUE_PENDING:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

.field public static final enum WRITE_PENDING:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;->NONE:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    new-instance v1, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    const-string v2, "WRITE_PENDING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;->WRITE_PENDING:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    new-instance v2, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    const-string v3, "QUEUE_PENDING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;->QUEUE_PENDING:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    filled-new-array {v0, v1, v2}, [Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;->$VALUES:[Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;
    .locals 1

    const-class v0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;->$VALUES:[Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    invoke-virtual {v0}, [Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    return-object v0
.end method
