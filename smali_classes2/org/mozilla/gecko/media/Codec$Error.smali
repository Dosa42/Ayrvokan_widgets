.class public final enum Lorg/mozilla/gecko/media/Codec$Error;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/gecko/media/Codec$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/gecko/media/Codec$Error;

.field public static final enum DECODE:Lorg/mozilla/gecko/media/Codec$Error;

.field public static final enum FATAL:Lorg/mozilla/gecko/media/Codec$Error;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/mozilla/gecko/media/Codec$Error;

    const-string v1, "DECODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/gecko/media/Codec$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/gecko/media/Codec$Error;->DECODE:Lorg/mozilla/gecko/media/Codec$Error;

    new-instance v1, Lorg/mozilla/gecko/media/Codec$Error;

    const-string v2, "FATAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mozilla/gecko/media/Codec$Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mozilla/gecko/media/Codec$Error;->FATAL:Lorg/mozilla/gecko/media/Codec$Error;

    filled-new-array {v0, v1}, [Lorg/mozilla/gecko/media/Codec$Error;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/media/Codec$Error;->$VALUES:[Lorg/mozilla/gecko/media/Codec$Error;

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

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/gecko/media/Codec$Error;
    .locals 1

    const-class v0, Lorg/mozilla/gecko/media/Codec$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/gecko/media/Codec$Error;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/gecko/media/Codec$Error;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/media/Codec$Error;->$VALUES:[Lorg/mozilla/gecko/media/Codec$Error;

    invoke-virtual {v0}, [Lorg/mozilla/gecko/media/Codec$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/gecko/media/Codec$Error;

    return-object v0
.end method
