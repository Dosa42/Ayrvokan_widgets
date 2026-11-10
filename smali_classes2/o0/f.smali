.class public final enum Lo0/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lo0/f;

.field public static final enum b:Lo0/f;

.field public static final enum c:Lo0/f;

.field public static final synthetic d:[Lo0/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lo0/f;

    const-string v1, "NETWORK_UNMETERED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo0/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo0/f;->a:Lo0/f;

    new-instance v1, Lo0/f;

    const-string v2, "DEVICE_IDLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lo0/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo0/f;->b:Lo0/f;

    new-instance v2, Lo0/f;

    const-string v3, "DEVICE_CHARGING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lo0/f;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lo0/f;->c:Lo0/f;

    filled-new-array {v0, v1, v2}, [Lo0/f;

    move-result-object v0

    sput-object v0, Lo0/f;->d:[Lo0/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo0/f;
    .locals 1

    .line 1
    const-class v0, Lo0/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo0/f;

    return-object p0
.end method

.method public static values()[Lo0/f;
    .locals 1

    .line 1
    sget-object v0, Lo0/f;->d:[Lo0/f;

    invoke-virtual {v0}, [Lo0/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo0/f;

    return-object v0
.end method
