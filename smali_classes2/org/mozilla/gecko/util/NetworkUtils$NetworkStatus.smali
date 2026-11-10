.class public final enum Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/util/NetworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

.field public static final enum DOWN:Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

.field public static final enum UNKNOWN:Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

.field public static final enum UP:Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

    const/4 v1, 0x0

    const-string v2, "up"

    const-string v3, "UP"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;->UP:Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

    new-instance v1, Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

    const/4 v2, 0x1

    const-string v3, "down"

    const-string v4, "DOWN"

    invoke-direct {v1, v4, v2, v3}, Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;->DOWN:Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

    new-instance v2, Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

    const/4 v3, 0x2

    const-string v4, "unknown"

    const-string v5, "UNKNOWN"

    invoke-direct {v2, v5, v3, v4}, Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;->UNKNOWN:Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

    filled-new-array {v0, v1, v2}, [Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;->$VALUES:[Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

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

    iput-object p3, p0, Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;
    .locals 1

    const-class v0, Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;->$VALUES:[Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

    invoke-virtual {v0}, [Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

    return-object v0
.end method
