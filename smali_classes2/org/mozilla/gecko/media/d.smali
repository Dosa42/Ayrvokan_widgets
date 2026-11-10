.class public final synthetic Lorg/mozilla/gecko/media/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;

.field public final synthetic h:Lf2/t;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;Lf2/t;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/mozilla/gecko/media/d;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/mozilla/gecko/media/d;->g:Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/mozilla/gecko/media/d;->h:Lf2/t;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lorg/mozilla/gecko/media/d;->f:I

    iget-object v1, p0, Lorg/mozilla/gecko/media/d;->h:Lf2/t;

    iget-object v2, p0, Lorg/mozilla/gecko/media/d;->g:Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v2, v1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;->c(Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;Lf2/t;)V

    return-void

    :goto_0
    invoke-static {v2, v1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;->b(Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;Lf2/t;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
