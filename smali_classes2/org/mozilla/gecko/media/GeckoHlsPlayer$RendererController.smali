.class Lorg/mozilla/gecko/media/GeckoHlsPlayer$RendererController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/GeckoHlsPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RendererController"
.end annotation


# instance fields
.field private final mEnableA:Z

.field private final mEnableV:Z

.field final synthetic this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer;ZZ)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$RendererController;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$RendererController;->mEnableV:Z

    iput-boolean p3, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$RendererController;->mEnableA:Z

    return-void
.end method


# virtual methods
.method public isAudioRendererEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$RendererController;->mEnableA:Z

    return v0
.end method

.method public isVideoRendererEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$RendererController;->mEnableV:Z

    return v0
.end method
