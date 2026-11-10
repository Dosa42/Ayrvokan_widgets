.class Lorg/mozilla/geckoview/ContentBlockingController$3;
.super Lorg/mozilla/geckoview/CallbackResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/ContentBlockingController;->getLog(Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/geckoview/GeckoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mozilla/geckoview/CallbackResult<",
        "Ljava/util/List<",
        "Lorg/mozilla/geckoview/ContentBlockingController$LogEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/ContentBlockingController;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/ContentBlockingController;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlockingController$3;->this$0:Lorg/mozilla/geckoview/ContentBlockingController;

    invoke-direct {p0}, Lorg/mozilla/geckoview/CallbackResult;-><init>()V

    return-void
.end method


# virtual methods
.method public sendSuccess(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lorg/mozilla/gecko/util/GeckoBundle;

    const-string v0, "log"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundleArray(Ljava/lang/String;)[Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    new-instance v4, Lorg/mozilla/geckoview/ContentBlockingController$LogEntry;

    invoke-direct {v4, v3}, Lorg/mozilla/geckoview/ContentBlockingController$LogEntry;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->complete(Ljava/lang/Object;)V

    return-void
.end method
