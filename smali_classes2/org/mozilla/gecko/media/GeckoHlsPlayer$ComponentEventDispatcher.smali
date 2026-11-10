.class public final Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/GeckoHlsPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentEventDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ILorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;)V
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;->lambda$onDataArrived$0(I)V

    return-void
.end method

.method public static synthetic b(Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;Lf2/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;->lambda$onVideoInputFormatChanged$1(Lf2/t;)V

    return-void
.end method

.method public static synthetic c(Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;Lf2/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;->lambda$onAudioInputFormatChanged$2(Lf2/t;)V

    return-void
.end method

.method private synthetic lambda$onAudioInputFormatChanged$2(Lf2/t;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$300(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;->onAudioInputFormatChanged(Lf2/t;)V

    return-void
.end method

.method private synthetic lambda$onDataArrived$0(I)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$300(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;->onDataArrived(I)V

    return-void
.end method

.method private synthetic lambda$onVideoInputFormatChanged$1(Lf2/t;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$300(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;->onVideoInputFormatChanged(Lf2/t;)V

    return-void
.end method


# virtual methods
.method public onAudioInputFormatChanged(Lf2/t;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$300(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$100(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$300(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    new-instance v2, Lorg/mozilla/gecko/media/d;

    invoke-direct {v2, p0, p1, v1}, Lorg/mozilla/gecko/media/d;-><init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;Lf2/t;I)V

    invoke-static {v0, v2}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$400(Lorg/mozilla/gecko/media/GeckoHlsPlayer;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onDataArrived(I)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$300(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$100(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$300(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    new-instance v2, Lw1/n;

    invoke-direct {v2, p0, p1, v1}, Lw1/n;-><init>(Ljava/lang/Object;II)V

    invoke-static {v0, v2}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$400(Lorg/mozilla/gecko/media/GeckoHlsPlayer;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onVideoInputFormatChanged(Lf2/t;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$300(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$100(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$300(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    new-instance v2, Lorg/mozilla/gecko/media/d;

    invoke-direct {v2, p0, p1, v1}, Lorg/mozilla/gecko/media/d;-><init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;Lf2/t;I)V

    invoke-static {v0, v2}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$400(Lorg/mozilla/gecko/media/GeckoHlsPlayer;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
