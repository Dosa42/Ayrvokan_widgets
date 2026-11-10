.class public final synthetic Lorg/mozilla/geckoview/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/mozilla/geckoview/d;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/mozilla/geckoview/d;->g:Ljava/lang/Object;

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
    iget v0, p0, Lorg/mozilla/geckoview/d;->f:I

    iget-object v1, p0, Lorg/mozilla/geckoview/d;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/mozilla/geckoview/GeckoResult;->a(Ljava/util/ArrayList;)V

    return-void

    :goto_0
    check-cast v1, Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v1}, Lorg/mozilla/geckoview/GeckoSession;->onCompositorReady()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
