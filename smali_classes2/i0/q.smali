.class public final enum Li0/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Li0/q;

.field public static final synthetic b:[Li0/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Li0/q;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li0/q;-><init>(Ljava/lang/String;I)V

    new-instance v1, Li0/q;

    const/4 v2, 0x1

    const-string v3, "ANDROID_FIREBASE"

    invoke-direct {v1, v3, v2}, Li0/q;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li0/q;->a:Li0/q;

    filled-new-array {v0, v1}, [Li0/q;

    move-result-object v0

    sput-object v0, Li0/q;->b:[Li0/q;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li0/q;
    .locals 1

    .line 1
    const-class v0, Li0/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li0/q;

    return-object p0
.end method

.method public static values()[Li0/q;
    .locals 1

    .line 1
    sget-object v0, Li0/q;->b:[Li0/q;

    invoke-virtual {v0}, [Li0/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li0/q;

    return-object v0
.end method
