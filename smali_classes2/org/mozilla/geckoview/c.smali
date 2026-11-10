.class public final synthetic Lorg/mozilla/geckoview/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lorg/mozilla/geckoview/GeckoResult;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoResult;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lorg/mozilla/geckoview/c;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/c;->h:Ljava/lang/Object;

    iput-object p2, p0, Lorg/mozilla/geckoview/c;->g:Lorg/mozilla/geckoview/GeckoResult;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/geckoview/GeckoResult;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/geckoview/c;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/c;->g:Lorg/mozilla/geckoview/GeckoResult;

    iput-object p2, p0, Lorg/mozilla/geckoview/c;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lorg/mozilla/geckoview/c;->f:I

    iget-object v1, p0, Lorg/mozilla/geckoview/c;->g:Lorg/mozilla/geckoview/GeckoResult;

    iget-object v2, p0, Lorg/mozilla/geckoview/c;->h:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Lorg/mozilla/geckoview/GeckoResult;

    invoke-static {v1, v2}, Lorg/mozilla/geckoview/GeckoResult;->d(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/geckoview/GeckoResult;)V

    return-void

    :goto_0
    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/mozilla/geckoview/GeckoRuntime;->d(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoResult;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
