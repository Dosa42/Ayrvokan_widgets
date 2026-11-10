.class public final enum Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;

.field public static final enum AUDIO:Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;

.field public static final enum TEXT:Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;

.field public static final enum UNDEFINED:Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;

.field public static final enum VIDEO:Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;


# instance fields
.field private mType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;->UNDEFINED:Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;

    new-instance v1, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;

    const-string v2, "AUDIO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;->AUDIO:Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;

    new-instance v2, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;

    const-string v3, "VIDEO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;->VIDEO:Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;

    new-instance v3, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;

    const-string v4, "TEXT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;->TEXT:Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;

    filled-new-array {v0, v1, v2, v3}, [Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;->$VALUES:[Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;

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

    iput p3, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;->mType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;
    .locals 1

    const-class v0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;->$VALUES:[Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;

    invoke-virtual {v0}, [Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;->mType:I

    return v0
.end method
