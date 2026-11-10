.class final Lorg/mozilla/gecko/media/GeckoHlsPlayer$SourceEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt2/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/GeckoHlsPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SourceEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;


# direct methods
.method private constructor <init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$SourceEventListener;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer;Lorg/mozilla/gecko/media/GeckoHlsPlayer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$SourceEventListener;-><init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDownstreamFormatChanged(ILt2/f;Lt2/m;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic onLoadCanceled(ILt2/f;Lt2/l;Lt2/m;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic onLoadCompleted(ILt2/f;Lt2/l;Lt2/m;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic onLoadError(ILt2/f;Lt2/l;Lt2/m;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public onLoadStarted(ILt2/f;Lt2/l;Lt2/m;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$SourceEventListener;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-static {p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$000(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Z

    move-result p1

    invoke-static {p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$100(Z)V

    iget p1, p4, Lt2/m;->a:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$SourceEventListener;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-static {p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$200(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceCallbacks;

    move-result-object p1

    iget-object p2, p3, Lt2/l;->a:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceCallbacks;->onLoad(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onMediaPeriodCreated(ILt2/f;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic onMediaPeriodReleased(ILt2/f;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic onReadingStarted(ILt2/f;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic onUpstreamDiscarded(ILt2/f;Lt2/m;)V
    .locals 0

    .line 1
    return-void
.end method
