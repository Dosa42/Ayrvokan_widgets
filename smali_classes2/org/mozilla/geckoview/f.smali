.class public final synthetic Lorg/mozilla/geckoview/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoResult$Consumer;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/mozilla/geckoview/f;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/mozilla/geckoview/f;->h:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Lorg/mozilla/geckoview/f;->g:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/mozilla/geckoview/f;->f:I

    iget v1, p0, Lorg/mozilla/geckoview/f;->g:I

    iget-object v2, p0, Lorg/mozilla/geckoview/f;->h:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Lorg/mozilla/geckoview/GeckoResult$AllOfResult;

    invoke-static {v2, v1, p1}, Lorg/mozilla/geckoview/GeckoResult$AllOfResult;->h(Lorg/mozilla/geckoview/GeckoResult$AllOfResult;ILjava/lang/Object;)V

    return-void

    :goto_0
    check-cast v2, Lorg/mozilla/geckoview/GeckoSession$4;

    check-cast p1, Lorg/mozilla/geckoview/SlowScriptResponse;

    invoke-static {v2, v1, p1}, Lorg/mozilla/geckoview/GeckoSession$4;->a(Lorg/mozilla/geckoview/GeckoSession$4;ILorg/mozilla/geckoview/SlowScriptResponse;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
