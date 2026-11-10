.class Lorg/mozilla/geckoview/SessionFinder$1;
.super Lorg/mozilla/geckoview/CallbackResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/SessionFinder;->find(Ljava/lang/String;I)Lorg/mozilla/geckoview/GeckoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mozilla/geckoview/CallbackResult<",
        "Lorg/mozilla/geckoview/GeckoSession$FinderResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/SessionFinder;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/SessionFinder;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/SessionFinder$1;->this$0:Lorg/mozilla/geckoview/SessionFinder;

    invoke-direct {p0}, Lorg/mozilla/geckoview/CallbackResult;-><init>()V

    return-void
.end method


# virtual methods
.method public sendSuccess(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lorg/mozilla/geckoview/GeckoSession$FinderResult;

    check-cast p1, Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-direct {v0, p1}, Lorg/mozilla/geckoview/GeckoSession$FinderResult;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/GeckoResult;->complete(Ljava/lang/Object;)V

    return-void
.end method
