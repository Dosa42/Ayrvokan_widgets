.class public final enum Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/BaseHlsPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DemuxerError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;

.field public static final enum BASE:Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;

.field public static final enum PLAYER:Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;

.field public static final enum UNKNOWN:Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;

.field public static final enum UNSUPPORTED:Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;


# instance fields
.field private mNumVal:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;

    const/4 v1, 0x0

    const/16 v2, -0xc8

    const-string v3, "BASE"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;->BASE:Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;

    new-instance v1, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;

    const/4 v2, 0x1

    const/16 v3, -0xc9

    const-string v4, "UNKNOWN"

    invoke-direct {v1, v4, v2, v3}, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;->UNKNOWN:Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;

    new-instance v2, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;

    const/4 v3, 0x2

    const/16 v4, -0xca

    const-string v5, "PLAYER"

    invoke-direct {v2, v5, v3, v4}, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;->PLAYER:Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;

    new-instance v3, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;

    const/4 v4, 0x3

    const/16 v5, -0xcb

    const-string v6, "UNSUPPORTED"

    invoke-direct {v3, v6, v4, v5}, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;->UNSUPPORTED:Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;

    filled-new-array {v0, v1, v2, v3}, [Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;->$VALUES:[Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;->mNumVal:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;
    .locals 1

    const-class v0, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;->$VALUES:[Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;

    invoke-virtual {v0}, [Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;

    return-object v0
.end method


# virtual methods
.method public code()I
    .locals 1

    iget v0, p0, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;->mNumVal:I

    return v0
.end method
