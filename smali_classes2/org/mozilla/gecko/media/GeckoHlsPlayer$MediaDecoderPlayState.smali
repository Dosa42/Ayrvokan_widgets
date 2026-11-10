.class final enum Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/GeckoHlsPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaDecoderPlayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

.field public static final enum PLAY_STATE_PAUSED:Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

.field public static final enum PLAY_STATE_PLAYING:Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

.field public static final enum PLAY_STATE_PREPARING:Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    const-string v1, "PLAY_STATE_PREPARING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;->PLAY_STATE_PREPARING:Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    new-instance v1, Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    const-string v2, "PLAY_STATE_PAUSED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;->PLAY_STATE_PAUSED:Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    new-instance v2, Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    const-string v3, "PLAY_STATE_PLAYING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;->PLAY_STATE_PLAYING:Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    filled-new-array {v0, v1, v2}, [Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;->$VALUES:[Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

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

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;
    .locals 1

    const-class v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;->$VALUES:[Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    invoke-virtual {v0}, [Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/gecko/media/GeckoHlsPlayer$MediaDecoderPlayState;

    return-object v0
.end method
