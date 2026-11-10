.class public final enum Lm0/d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lm1/c;


# static fields
.field public static final enum b:Lm0/d;

.field public static final enum c:Lm0/d;

.field public static final enum d:Lm0/d;

.field public static final enum e:Lm0/d;

.field public static final enum f:Lm0/d;

.field public static final enum g:Lm0/d;

.field public static final enum h:Lm0/d;

.field public static final synthetic i:[Lm0/d;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lm0/d;

    const-string v1, "REASON_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lm0/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lm0/d;->b:Lm0/d;

    new-instance v1, Lm0/d;

    const-string v2, "MESSAGE_TOO_OLD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lm0/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lm0/d;->c:Lm0/d;

    new-instance v2, Lm0/d;

    const-string v3, "CACHE_FULL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lm0/d;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lm0/d;->d:Lm0/d;

    new-instance v3, Lm0/d;

    const-string v4, "PAYLOAD_TOO_BIG"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lm0/d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lm0/d;->e:Lm0/d;

    new-instance v4, Lm0/d;

    const-string v5, "MAX_RETRIES_REACHED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lm0/d;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lm0/d;->f:Lm0/d;

    new-instance v5, Lm0/d;

    const-string v6, "INVALID_PAYLOD"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lm0/d;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lm0/d;->g:Lm0/d;

    new-instance v6, Lm0/d;

    const-string v7, "SERVER_ERROR"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lm0/d;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lm0/d;->h:Lm0/d;

    filled-new-array/range {v0 .. v6}, [Lm0/d;

    move-result-object v0

    sput-object v0, Lm0/d;->i:[Lm0/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lm0/d;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lm0/d;
    .locals 1

    .line 1
    const-class v0, Lm0/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm0/d;

    return-object p0
.end method

.method public static values()[Lm0/d;
    .locals 1

    .line 1
    sget-object v0, Lm0/d;->i:[Lm0/d;

    invoke-virtual {v0}, [Lm0/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm0/d;

    return-object v0
.end method
