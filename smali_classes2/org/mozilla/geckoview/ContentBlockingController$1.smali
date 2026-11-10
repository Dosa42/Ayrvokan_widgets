.class Lorg/mozilla/geckoview/ContentBlockingController$1;
.super Lorg/mozilla/geckoview/CallbackResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/ContentBlockingController;->checkException(Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/geckoview/GeckoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mozilla/geckoview/CallbackResult<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/ContentBlockingController;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/ContentBlockingController;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlockingController$1;->this$0:Lorg/mozilla/geckoview/ContentBlockingController;

    invoke-direct {p0}, Lorg/mozilla/geckoview/CallbackResult;-><init>()V

    return-void
.end method


# virtual methods
.method public sendSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->complete(Ljava/lang/Object;)V

    return-void
.end method
