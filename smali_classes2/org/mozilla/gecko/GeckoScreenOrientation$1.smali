.class Lorg/mozilla/gecko/GeckoScreenOrientation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/gecko/GeckoScreenOrientation;->notifyListeners(Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/gecko/GeckoScreenOrientation;

.field final synthetic val$newOrientation:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/GeckoScreenOrientation;Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/GeckoScreenOrientation$1;->this$0:Lorg/mozilla/gecko/GeckoScreenOrientation;

    iput-object p2, p0, Lorg/mozilla/gecko/GeckoScreenOrientation$1;->val$newOrientation:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoScreenOrientation$1;->this$0:Lorg/mozilla/gecko/GeckoScreenOrientation;

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoScreenOrientation;->access$000(Lorg/mozilla/gecko/GeckoScreenOrientation;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/gecko/GeckoScreenOrientation$OrientationChangeListener;

    iget-object v2, p0, Lorg/mozilla/gecko/GeckoScreenOrientation$1;->val$newOrientation:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    invoke-interface {v1, v2}, Lorg/mozilla/gecko/GeckoScreenOrientation$OrientationChangeListener;->onScreenOrientationChanged(Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;)V

    goto :goto_0

    :cond_0
    return-void
.end method
