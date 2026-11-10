.class public final enum Lorg/mozilla/geckoview/AllowOrDeny;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/geckoview/AllowOrDeny;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/geckoview/AllowOrDeny;

.field public static final enum ALLOW:Lorg/mozilla/geckoview/AllowOrDeny;

.field public static final enum DENY:Lorg/mozilla/geckoview/AllowOrDeny;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/mozilla/geckoview/AllowOrDeny;

    const-string v1, "ALLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/geckoview/AllowOrDeny;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/geckoview/AllowOrDeny;->ALLOW:Lorg/mozilla/geckoview/AllowOrDeny;

    new-instance v1, Lorg/mozilla/geckoview/AllowOrDeny;

    const-string v2, "DENY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mozilla/geckoview/AllowOrDeny;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mozilla/geckoview/AllowOrDeny;->DENY:Lorg/mozilla/geckoview/AllowOrDeny;

    filled-new-array {v0, v1}, [Lorg/mozilla/geckoview/AllowOrDeny;

    move-result-object v0

    sput-object v0, Lorg/mozilla/geckoview/AllowOrDeny;->$VALUES:[Lorg/mozilla/geckoview/AllowOrDeny;

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

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/geckoview/AllowOrDeny;
    .locals 1

    const-class v0, Lorg/mozilla/geckoview/AllowOrDeny;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/geckoview/AllowOrDeny;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/geckoview/AllowOrDeny;
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/AllowOrDeny;->$VALUES:[Lorg/mozilla/geckoview/AllowOrDeny;

    invoke-virtual {v0}, [Lorg/mozilla/geckoview/AllowOrDeny;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/geckoview/AllowOrDeny;

    return-object v0
.end method
