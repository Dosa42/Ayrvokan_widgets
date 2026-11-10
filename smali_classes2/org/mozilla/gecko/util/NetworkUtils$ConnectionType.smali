.class public final enum Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/util/NetworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

.field public static final enum BLUETOOTH:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

.field public static final enum CELLULAR:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

.field public static final enum ETHERNET:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

.field public static final enum NONE:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

.field public static final enum OTHER:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

.field public static final enum WIFI:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;


# instance fields
.field public final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    const-string v1, "CELLULAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;->CELLULAR:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    new-instance v1, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    const-string v2, "BLUETOOTH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;->BLUETOOTH:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    new-instance v2, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    const-string v3, "ETHERNET"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;->ETHERNET:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    new-instance v3, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    const-string v4, "WIFI"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;->WIFI:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    new-instance v4, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    const-string v5, "OTHER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;->OTHER:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    new-instance v5, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    const-string v6, "NONE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;->NONE:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    filled-new-array/range {v0 .. v5}, [Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;->$VALUES:[Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;
    .locals 1

    const-class v0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;->$VALUES:[Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    invoke-virtual {v0}, [Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    return-object v0
.end method
