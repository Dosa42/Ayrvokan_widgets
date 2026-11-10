.class public final synthetic Lorg/mozilla/gecko/process/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoResult$Consumer;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lorg/mozilla/geckoview/GeckoResult;

.field public final synthetic h:Ljava/lang/RuntimeException;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/RuntimeException;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/mozilla/gecko/process/e;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/mozilla/gecko/process/e;->g:Lorg/mozilla/geckoview/GeckoResult;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/mozilla/gecko/process/e;->h:Ljava/lang/RuntimeException;

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
    iget v0, p0, Lorg/mozilla/gecko/process/e;->f:I

    iget-object v1, p0, Lorg/mozilla/gecko/process/e;->g:Lorg/mozilla/geckoview/GeckoResult;

    iget-object v2, p0, Lorg/mozilla/gecko/process/e;->h:Ljava/lang/RuntimeException;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Lorg/mozilla/gecko/process/ServiceAllocator$BindException;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v1, v2, p1}, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->b(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/ServiceAllocator$BindException;Ljava/lang/Void;)V

    return-void

    :goto_0
    check-cast p1, Ljava/lang/Void;

    invoke-static {v1, v2, p1}, Lorg/mozilla/gecko/process/GeckoProcessManager;->h(Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/RuntimeException;Ljava/lang/Void;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
