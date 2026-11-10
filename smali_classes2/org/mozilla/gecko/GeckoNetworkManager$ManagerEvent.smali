.class public final enum Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/GeckoNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ManagerEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

.field public static final enum disableNotifications:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

.field public static final enum enableNotifications:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

.field public static final enum receivedUpdate:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

.field public static final enum start:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

.field public static final enum stop:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    const-string v1, "start"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;->start:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    new-instance v1, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    const-string v2, "stop"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;->stop:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    new-instance v2, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    const-string v3, "enableNotifications"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;->enableNotifications:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    new-instance v3, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    const-string v4, "disableNotifications"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;->disableNotifications:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    new-instance v4, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    const-string v5, "receivedUpdate"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;->receivedUpdate:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;->$VALUES:[Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

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

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;
    .locals 1

    const-class v0, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;->$VALUES:[Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    invoke-virtual {v0}, [Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    return-object v0
.end method
