.class Lorg/mozilla/geckoview/GeckoResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoResult$OnValueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/GeckoResult;->nativeThen(Lorg/mozilla/geckoview/GeckoResult$GeckoCallback;Lorg/mozilla/geckoview/GeckoResult$GeckoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mozilla/geckoview/GeckoResult$OnValueListener<",
        "TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoResult;

.field final synthetic val$accept:Lorg/mozilla/geckoview/GeckoResult$GeckoCallback;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/geckoview/GeckoResult$GeckoCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoResult$1;->this$0:Lorg/mozilla/geckoview/GeckoResult;

    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoResult$1;->val$accept:Lorg/mozilla/geckoview/GeckoResult$GeckoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoResult$1;->val$accept:Lorg/mozilla/geckoview/GeckoResult$GeckoCallback;

    invoke-static {v0, p1}, Lorg/mozilla/geckoview/GeckoResult$GeckoCallback;->access$000(Lorg/mozilla/geckoview/GeckoResult$GeckoCallback;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
