.class public final enum Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/util/NetworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionSubType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

.field public static final enum CELL_2G:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

.field public static final enum CELL_3G:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

.field public static final enum CELL_4G:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

.field public static final enum ETHERNET:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

.field public static final enum UNKNOWN:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

.field public static final enum WIFI:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

.field public static final enum WIMAX:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    const/4 v1, 0x0

    const-string v2, "2g"

    const-string v3, "CELL_2G"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;->CELL_2G:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    new-instance v1, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    const/4 v2, 0x1

    const-string v3, "3g"

    const-string v4, "CELL_3G"

    invoke-direct {v1, v4, v2, v3}, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;->CELL_3G:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    new-instance v2, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    const/4 v3, 0x2

    const-string v4, "4g"

    const-string v5, "CELL_4G"

    invoke-direct {v2, v5, v3, v4}, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;->CELL_4G:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    new-instance v3, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    const/4 v4, 0x3

    const-string v5, "ethernet"

    const-string v6, "ETHERNET"

    invoke-direct {v3, v6, v4, v5}, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;->ETHERNET:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    new-instance v4, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    const/4 v5, 0x4

    const-string v6, "wifi"

    const-string v7, "WIFI"

    invoke-direct {v4, v7, v5, v6}, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;->WIFI:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    new-instance v5, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    const/4 v6, 0x5

    const-string v7, "wimax"

    const-string v8, "WIMAX"

    invoke-direct {v5, v8, v6, v7}, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;->WIMAX:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    new-instance v6, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    const/4 v7, 0x6

    const-string v8, "unknown"

    const-string v9, "UNKNOWN"

    invoke-direct {v6, v9, v7, v8}, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;->UNKNOWN:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    filled-new-array/range {v0 .. v6}, [Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;->$VALUES:[Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

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

    iput-object p3, p0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;
    .locals 1

    const-class v0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;->$VALUES:[Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    invoke-virtual {v0}, [Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    return-object v0
.end method
