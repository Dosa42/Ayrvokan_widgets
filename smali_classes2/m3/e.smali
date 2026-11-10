.class public final enum Lm3/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lm3/e;

.field public static final enum b:Lm3/e;

.field public static final enum c:Lm3/e;

.field public static final enum d:Lm3/e;

.field public static final synthetic e:[Lm3/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lm3/e;

    const-string v1, "scalar"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lm3/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm3/e;->a:Lm3/e;

    new-instance v1, Lm3/e;

    const-string v2, "sequence"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lm3/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lm3/e;->b:Lm3/e;

    new-instance v2, Lm3/e;

    const-string v3, "mapping"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lm3/e;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lm3/e;->c:Lm3/e;

    new-instance v3, Lm3/e;

    const-string v4, "anchor"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lm3/e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lm3/e;->d:Lm3/e;

    filled-new-array {v0, v1, v2, v3}, [Lm3/e;

    move-result-object v0

    sput-object v0, Lm3/e;->e:[Lm3/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lm3/e;
    .locals 1

    .line 1
    const-class v0, Lm3/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm3/e;

    return-object p0
.end method

.method public static values()[Lm3/e;
    .locals 1

    .line 1
    sget-object v0, Lm3/e;->e:[Lm3/e;

    invoke-virtual {v0}, [Lm3/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm3/e;

    return-object v0
.end method
