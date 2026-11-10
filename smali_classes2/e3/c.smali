.class public final enum Le3/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Le3/c;

.field public static final enum c:Le3/c;

.field public static final synthetic d:[Le3/c;


# instance fields
.field public final a:[Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Le3/c;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const-string v6, "V1_0"

    invoke-direct {v0, v6, v5, v2}, Le3/c;-><init>(Ljava/lang/String;I[Ljava/lang/Integer;)V

    sput-object v0, Le3/c;->b:Le3/c;

    new-instance v2, Le3/c;

    new-array v1, v1, [Ljava/lang/Integer;

    aput-object v4, v1, v5

    aput-object v4, v1, v3

    const-string v4, "V1_1"

    invoke-direct {v2, v4, v3, v1}, Le3/c;-><init>(Ljava/lang/String;I[Ljava/lang/Integer;)V

    sput-object v2, Le3/c;->c:Le3/c;

    filled-new-array {v0, v2}, [Le3/c;

    move-result-object v0

    sput-object v0, Le3/c;->d:[Le3/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Le3/c;->a:[Ljava/lang/Integer;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le3/c;
    .locals 1

    .line 1
    const-class v0, Le3/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le3/c;

    return-object p0
.end method

.method public static values()[Le3/c;
    .locals 1

    .line 1
    sget-object v0, Le3/c;->d:[Le3/c;

    invoke-virtual {v0}, [Le3/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le3/c;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Version: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Le3/c;->a:[Ljava/lang/Integer;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    aget-object v3, v2, v3

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v3, "."

    .line 22
    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    aget-object v2, v2, v3

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method
