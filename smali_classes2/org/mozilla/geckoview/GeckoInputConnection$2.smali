.class Lorg/mozilla/geckoview/GeckoInputConnection$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/GeckoInputConnection;->performEditorAction(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoInputConnection;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoInputConnection;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoInputConnection$2;->this$0:Lorg/mozilla/geckoview/GeckoInputConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection$2;->this$0:Lorg/mozilla/geckoview/GeckoInputConnection;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoInputConnection;->getInputDelegate()Lorg/mozilla/geckoview/GeckoSession$TextInputDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoInputConnection$2;->this$0:Lorg/mozilla/geckoview/GeckoInputConnection;

    invoke-static {v1}, Lorg/mozilla/geckoview/GeckoInputConnection;->access$000(Lorg/mozilla/geckoview/GeckoInputConnection;)Lorg/mozilla/geckoview/GeckoSession;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mozilla/geckoview/GeckoSession$TextInputDelegate;->hideSoftInput(Lorg/mozilla/geckoview/GeckoSession;)V

    return-void
.end method
