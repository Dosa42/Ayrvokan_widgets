.class Lorg/mozilla/geckoview/GeckoRuntime$2;
.super Lorg/mozilla/geckoview/CallbackResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/GeckoRuntime;->registerWebExtension(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mozilla/geckoview/CallbackResult<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoRuntime;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoRuntime;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoRuntime$2;->this$0:Lorg/mozilla/geckoview/GeckoRuntime;

    invoke-direct {p0}, Lorg/mozilla/geckoview/CallbackResult;-><init>()V

    return-void
.end method


# virtual methods
.method public sendSuccess(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->complete(Ljava/lang/Object;)V

    return-void
.end method
