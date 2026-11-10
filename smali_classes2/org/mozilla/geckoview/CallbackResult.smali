.class abstract Lorg/mozilla/geckoview/CallbackResult;
.super Lorg/mozilla/geckoview/GeckoResult;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/util/EventCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mozilla/geckoview/GeckoResult<",
        "TT;>;",
        "Lorg/mozilla/gecko/util/EventCallback;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoResult;-><init>()V

    return-void
.end method


# virtual methods
.method public sendError(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnknownError;

    invoke-direct {v0}, Ljava/lang/UnknownError;-><init>()V

    :goto_0
    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/GeckoResult;->completeExceptionally(Ljava/lang/Throwable;)V

    return-void
.end method
