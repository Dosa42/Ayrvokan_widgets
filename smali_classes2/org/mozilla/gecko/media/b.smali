.class public final synthetic Lorg/mozilla/gecko/media/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lorg/mozilla/gecko/media/GeckoHlsPlayer;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/mozilla/gecko/media/b;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/mozilla/gecko/media/b;->g:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/mozilla/gecko/media/b;->f:I

    iget-object v1, p0, Lorg/mozilla/gecko/media/b;->g:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->d(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)V

    return-void

    :pswitch_1
    invoke-static {v1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->f(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)V

    return-void

    :pswitch_2
    invoke-static {v1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->g(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)V

    return-void

    :pswitch_3
    invoke-static {v1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->c(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)V

    return-void

    :goto_0
    invoke-static {v1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->e(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
