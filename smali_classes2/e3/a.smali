.class public final enum Le3/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Le3/a;

.field public static final enum c:Le3/a;

.field public static final enum d:Le3/a;

.field public static final synthetic e:[Le3/a;


# instance fields
.field public final a:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Le3/a;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "FLOW"

    invoke-direct {v0, v3, v1, v2}, Le3/a;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    sput-object v0, Le3/a;->b:Le3/a;

    new-instance v1, Le3/a;

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "BLOCK"

    invoke-direct {v1, v4, v2, v3}, Le3/a;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    sput-object v1, Le3/a;->c:Le3/a;

    new-instance v2, Le3/a;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "AUTO"

    invoke-direct {v2, v5, v3, v4}, Le3/a;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    sput-object v2, Le3/a;->d:Le3/a;

    filled-new-array {v0, v1, v2}, [Le3/a;

    move-result-object v0

    sput-object v0, Le3/a;->e:[Le3/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Le3/a;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le3/a;
    .locals 1

    .line 1
    const-class v0, Le3/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le3/a;

    return-object p0
.end method

.method public static values()[Le3/a;
    .locals 1

    .line 1
    sget-object v0, Le3/a;->e:[Le3/a;

    invoke-virtual {v0}, [Le3/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le3/a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Flow style: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Le3/a;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
