.class Lorg/mozilla/geckoview/GeckoSession$Window$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/GeckoSession$Window;->onLoadRequest(Ljava/lang/String;IILjava/lang/String;ZZ)Lorg/mozilla/geckoview/GeckoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoSession$Window;

.field final synthetic val$flags:I

.field final synthetic val$hasUserGesture:Z

.field final synthetic val$isTopLevel:Z

.field final synthetic val$res:Lorg/mozilla/geckoview/GeckoResult;

.field final synthetic val$session:Lorg/mozilla/geckoview/GeckoSession;

.field final synthetic val$triggeringUri:Ljava/lang/String;

.field final synthetic val$uri:Ljava/lang/String;

.field final synthetic val$windowType:I


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession$Window;Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/String;Ljava/lang/String;IIZZ)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$Window$1;->this$0:Lorg/mozilla/geckoview/GeckoSession$Window;

    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$Window$1;->val$session:Lorg/mozilla/geckoview/GeckoSession;

    iput-object p3, p0, Lorg/mozilla/geckoview/GeckoSession$Window$1;->val$res:Lorg/mozilla/geckoview/GeckoResult;

    iput-object p4, p0, Lorg/mozilla/geckoview/GeckoSession$Window$1;->val$triggeringUri:Ljava/lang/String;

    iput-object p5, p0, Lorg/mozilla/geckoview/GeckoSession$Window$1;->val$uri:Ljava/lang/String;

    iput p6, p0, Lorg/mozilla/geckoview/GeckoSession$Window$1;->val$windowType:I

    iput p7, p0, Lorg/mozilla/geckoview/GeckoSession$Window$1;->val$flags:I

    iput-boolean p8, p0, Lorg/mozilla/geckoview/GeckoSession$Window$1;->val$hasUserGesture:Z

    iput-boolean p9, p0, Lorg/mozilla/geckoview/GeckoSession$Window$1;->val$isTopLevel:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/GeckoSession$Window$1;->lambda$run$1(Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/geckoview/AllowOrDeny;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/GeckoSession$Window$1;->lambda$run$0(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/geckoview/AllowOrDeny;)V

    return-void
.end method

.method private static synthetic lambda$run$0(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/geckoview/AllowOrDeny;)V
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/AllowOrDeny;->DENY:Lorg/mozilla/geckoview/AllowOrDeny;

    if-ne p1, v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$run$1(Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/Throwable;)V
    .locals 0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->complete(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$Window$1;->val$session:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getNavigationDelegate()Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$Window$1;->val$res:Lorg/mozilla/geckoview/GeckoResult;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoResult;->complete(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSession$Window$1;->val$triggeringUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSession$Window$1;->val$triggeringUri:Ljava/lang/String;

    :goto_0
    move-object v4, v1

    new-instance v1, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;

    iget-object v3, p0, Lorg/mozilla/geckoview/GeckoSession$Window$1;->val$uri:Ljava/lang/String;

    iget v5, p0, Lorg/mozilla/geckoview/GeckoSession$Window$1;->val$windowType:I

    iget v6, p0, Lorg/mozilla/geckoview/GeckoSession$Window$1;->val$flags:I

    iget-boolean v7, p0, Lorg/mozilla/geckoview/GeckoSession$Window$1;->val$hasUserGesture:Z

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    iget-boolean v2, p0, Lorg/mozilla/geckoview/GeckoSession$Window$1;->val$isTopLevel:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoSession$Window$1;->val$session:Lorg/mozilla/geckoview/GeckoSession;

    invoke-interface {v0, v2, v1}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;->onLoadRequest(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoSession$Window$1;->val$session:Lorg/mozilla/geckoview/GeckoSession;

    invoke-interface {v0, v2, v1}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;->onSubframeLoadRequest(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$Window$1;->val$res:Lorg/mozilla/geckoview/GeckoResult;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoResult;->complete(Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSession$Window$1;->val$res:Lorg/mozilla/geckoview/GeckoResult;

    new-instance v2, Lorg/mozilla/geckoview/k;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/mozilla/geckoview/k;-><init>(Lorg/mozilla/geckoview/GeckoResult;I)V

    new-instance v3, Lorg/mozilla/geckoview/k;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Lorg/mozilla/geckoview/k;-><init>(Lorg/mozilla/geckoview/GeckoResult;I)V

    invoke-virtual {v0, v2, v3}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    return-void
.end method
