.class public final synthetic Lorg/mozilla/geckoview/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lorg/mozilla/geckoview/GeckoRuntime;

.field public final synthetic h:Lorg/mozilla/geckoview/WebNotification;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/geckoview/GeckoRuntime;Lorg/mozilla/geckoview/WebNotification;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/mozilla/geckoview/h;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/mozilla/geckoview/h;->g:Lorg/mozilla/geckoview/GeckoRuntime;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/mozilla/geckoview/h;->h:Lorg/mozilla/geckoview/WebNotification;

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
    iget v0, p0, Lorg/mozilla/geckoview/h;->f:I

    iget-object v1, p0, Lorg/mozilla/geckoview/h;->h:Lorg/mozilla/geckoview/WebNotification;

    iget-object v2, p0, Lorg/mozilla/geckoview/h;->g:Lorg/mozilla/geckoview/GeckoRuntime;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v2, v1}, Lorg/mozilla/geckoview/GeckoRuntime;->a(Lorg/mozilla/geckoview/GeckoRuntime;Lorg/mozilla/geckoview/WebNotification;)V

    return-void

    :goto_0
    invoke-static {v2, v1}, Lorg/mozilla/geckoview/GeckoRuntime;->c(Lorg/mozilla/geckoview/GeckoRuntime;Lorg/mozilla/geckoview/WebNotification;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
