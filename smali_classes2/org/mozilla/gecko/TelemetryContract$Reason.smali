.class public final enum Lorg/mozilla/gecko/TelemetryContract$Reason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/TelemetryContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/gecko/TelemetryContract$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/gecko/TelemetryContract$Reason;

.field public static final enum COMMIT:Lorg/mozilla/gecko/TelemetryContract$Reason;

.field public static final enum NONE:Lorg/mozilla/gecko/TelemetryContract$Reason;

.field public static final enum _TEST1:Lorg/mozilla/gecko/TelemetryContract$Reason;

.field public static final enum _TEST2:Lorg/mozilla/gecko/TelemetryContract$Reason;

.field public static final enum _TEST_IGNORED:Lorg/mozilla/gecko/TelemetryContract$Reason;


# instance fields
.field private final mString:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Reason;

    const/4 v1, 0x0

    const-string v2, "commit"

    const-string v3, "COMMIT"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Reason;->COMMIT:Lorg/mozilla/gecko/TelemetryContract$Reason;

    new-instance v1, Lorg/mozilla/gecko/TelemetryContract$Reason;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "NONE"

    invoke-direct {v1, v4, v2, v3}, Lorg/mozilla/gecko/TelemetryContract$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/mozilla/gecko/TelemetryContract$Reason;->NONE:Lorg/mozilla/gecko/TelemetryContract$Reason;

    new-instance v2, Lorg/mozilla/gecko/TelemetryContract$Reason;

    const/4 v3, 0x2

    const-string v4, "_test_reason_1"

    const-string v5, "_TEST1"

    invoke-direct {v2, v5, v3, v4}, Lorg/mozilla/gecko/TelemetryContract$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/mozilla/gecko/TelemetryContract$Reason;->_TEST1:Lorg/mozilla/gecko/TelemetryContract$Reason;

    new-instance v3, Lorg/mozilla/gecko/TelemetryContract$Reason;

    const/4 v4, 0x3

    const-string v5, "_test_reason_2"

    const-string v6, "_TEST2"

    invoke-direct {v3, v6, v4, v5}, Lorg/mozilla/gecko/TelemetryContract$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/mozilla/gecko/TelemetryContract$Reason;->_TEST2:Lorg/mozilla/gecko/TelemetryContract$Reason;

    new-instance v4, Lorg/mozilla/gecko/TelemetryContract$Reason;

    const/4 v5, 0x4

    const-string v6, "_test_reason_ignored"

    const-string v7, "_TEST_IGNORED"

    invoke-direct {v4, v7, v5, v6}, Lorg/mozilla/gecko/TelemetryContract$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/mozilla/gecko/TelemetryContract$Reason;->_TEST_IGNORED:Lorg/mozilla/gecko/TelemetryContract$Reason;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/mozilla/gecko/TelemetryContract$Reason;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Reason;->$VALUES:[Lorg/mozilla/gecko/TelemetryContract$Reason;

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

    iput-object p3, p0, Lorg/mozilla/gecko/TelemetryContract$Reason;->mString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/gecko/TelemetryContract$Reason;
    .locals 1

    const-class v0, Lorg/mozilla/gecko/TelemetryContract$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/gecko/TelemetryContract$Reason;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/gecko/TelemetryContract$Reason;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/TelemetryContract$Reason;->$VALUES:[Lorg/mozilla/gecko/TelemetryContract$Reason;

    invoke-virtual {v0}, [Lorg/mozilla/gecko/TelemetryContract$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/gecko/TelemetryContract$Reason;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/TelemetryContract$Reason;->mString:Ljava/lang/String;

    return-object v0
.end method
