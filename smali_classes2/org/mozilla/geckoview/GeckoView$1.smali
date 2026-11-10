.class Lorg/mozilla/geckoview/GeckoView$1;
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

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoView$1;->this$0:Lorg/mozilla/geckoview/GeckoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$1;->this$0:Lorg/mozilla/geckoview/GeckoView;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method
