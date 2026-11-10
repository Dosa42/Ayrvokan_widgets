.class Lorg/mozilla/geckoview/GeckoView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/GeckoView;->setSession(Lorg/mozilla/geckoview/GeckoSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoView;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoView;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoView$2;->this$0:Lorg/mozilla/geckoview/GeckoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$2;->this$0:Lorg/mozilla/geckoview/GeckoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoView;->coverUntilFirstPaint(I)V

    return-void
.end method
