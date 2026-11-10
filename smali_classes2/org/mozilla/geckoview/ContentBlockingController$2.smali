.class Lorg/mozilla/geckoview/ContentBlockingController$2;
.super Lorg/mozilla/geckoview/CallbackResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/ContentBlockingController;->saveExceptionList()Lorg/mozilla/geckoview/GeckoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mozilla/geckoview/CallbackResult<",
        "Ljava/util/List<",
        "Lorg/mozilla/geckoview/ContentBlockingController$ContentBlockingException;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/ContentBlockingController;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/ContentBlockingController;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlockingController$2;->this$0:Lorg/mozilla/geckoview/ContentBlockingController;

    invoke-direct {p0}, Lorg/mozilla/geckoview/CallbackResult;-><init>()V

    return-void
.end method


# virtual methods
.method public sendSuccess(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lorg/mozilla/gecko/util/GeckoBundle;

    const-string v0, "principals"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "uris"

    invoke-virtual {p1, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    new-instance v3, Lorg/mozilla/geckoview/ContentBlockingController$ContentBlockingException;

    aget-object v4, v0, v2

    aget-object v5, p1, v2

    invoke-direct {v3, v4, v5}, Lorg/mozilla/geckoview/ContentBlockingController$ContentBlockingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->complete(Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Received invalid content blocking exception list"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->completeExceptionally(Ljava/lang/Throwable;)V

    return-void
.end method
