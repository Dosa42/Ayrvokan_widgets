.class public final enum Lg0/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lg0/c;

.field public static final enum b:Lg0/c;

.field public static final enum c:Lg0/c;

.field public static final synthetic d:[Lg0/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lg0/c;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg0/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg0/c;->a:Lg0/c;

    new-instance v1, Lg0/c;

    const-string v2, "VERY_LOW"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lg0/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg0/c;->b:Lg0/c;

    new-instance v2, Lg0/c;

    const-string v3, "HIGHEST"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lg0/c;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg0/c;->c:Lg0/c;

    filled-new-array {v0, v1, v2}, [Lg0/c;

    move-result-object v0

    sput-object v0, Lg0/c;->d:[Lg0/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg0/c;
    .locals 1

    .line 1
    const-class v0, Lg0/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg0/c;

    return-object p0
.end method

.method public static values()[Lg0/c;
    .locals 1

    .line 1
    sget-object v0, Lg0/c;->d:[Lg0/c;

    invoke-virtual {v0}, [Lg0/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg0/c;

    return-object v0
.end method
