.class Lorg/mozilla/geckoview/GeckoSession$2;
.super Lorg/mozilla/geckoview/GeckoSessionHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mozilla/geckoview/GeckoSessionHandler<",
        "Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoSession;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$2;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-direct {p0, p2, p3, p4}, Lorg/mozilla/geckoview/GeckoSessionHandler;-><init>(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleMessage(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/geckoview/GeckoSession$2;->handleMessage(Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    return-void
.end method

.method public handleMessage(Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 8

    .line 2
    const-string p4, "GeckoView:ContentCrash"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$2;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoSession;->close()V

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$2;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-interface {p1, p2}, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;->onCrash(Lorg/mozilla/geckoview/GeckoSession;)V

    goto/16 :goto_1

    :cond_0
    const-string p4, "GeckoView:ContentKill"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$2;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoSession;->close()V

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$2;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-interface {p1, p2}, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;->onKill(Lorg/mozilla/geckoview/GeckoSession;)V

    goto/16 :goto_1

    :cond_1
    const-string p4, "GeckoView:ContextMenu"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const-string v0, "title"

    if-eqz p4, :cond_2

    new-instance p2, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate$ContextElement;

    const-string p4, "baseUri"

    invoke-virtual {p3, p4}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p4, "uri"

    invoke-virtual {p3, p4}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p4, "alt"

    invoke-virtual {p3, p4}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p4, "elementType"

    invoke-virtual {p3, p4}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p4, "elementSrc"

    invoke-virtual {p3, p4}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate$ContextElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lorg/mozilla/geckoview/GeckoSession$2;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    const-string v0, "screenX"

    invoke-virtual {p3, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "screenY"

    invoke-virtual {p3, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p4, v0, p3, p2}, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;->onContextMenu(Lorg/mozilla/geckoview/GeckoSession;IILorg/mozilla/geckoview/GeckoSession$ContentDelegate$ContextElement;)V

    goto/16 :goto_1

    :cond_2
    const-string p4, "GeckoView:DOMMetaViewportFit"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$2;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    const-string p4, "viewportfit"

    invoke-virtual {p3, p4}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;->onMetaViewportFitChange(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string p4, "GeckoView:DOMTitleChanged"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$2;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {p3, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;->onTitleChange(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string p4, "GeckoView:FocusRequest"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$2;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-interface {p1, p2}, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;->onFocusRequest(Lorg/mozilla/geckoview/GeckoSession;)V

    goto :goto_1

    :cond_5
    const-string p4, "GeckoView:DOMWindowClose"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$2;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-interface {p1, p2}, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;->onCloseRequest(Lorg/mozilla/geckoview/GeckoSession;)V

    goto :goto_1

    :cond_6
    const-string p4, "GeckoView:FullScreenEnter"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$2;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    const/4 p3, 0x1

    :goto_0
    invoke-interface {p1, p2, p3}, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;->onFullScreen(Lorg/mozilla/geckoview/GeckoSession;Z)V

    goto :goto_1

    :cond_7
    const-string p4, "GeckoView:FullScreenExit"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$2;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    const/4 p3, 0x0

    goto :goto_0

    :cond_8
    const-string p4, "GeckoView:ExternalResponse"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$2;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    new-instance p4, Lorg/mozilla/geckoview/GeckoSession$WebResponseInfo;

    invoke-direct {p4, p3}, Lorg/mozilla/geckoview/GeckoSession$WebResponseInfo;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    invoke-interface {p1, p2, p4}, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;->onExternalResponse(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$WebResponseInfo;)V

    goto :goto_1

    :cond_9
    const-string p4, "GeckoView:WebAppManifest"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b

    const-string p2, "manifest"

    invoke-virtual {p3, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p2

    if-nez p2, :cond_a

    return-void

    :cond_a
    :try_start_0
    iget-object p3, p0, Lorg/mozilla/geckoview/GeckoSession$2;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {p2}, Lorg/mozilla/gecko/util/GeckoBundle;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2}, Lorg/mozilla/geckoview/GeckoSession;->access$200(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;->onWebAppManifest(Lorg/mozilla/geckoview/GeckoSession;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_b
    const-string p3, "GeckoView:FirstContentfulPaint"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$2;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-interface {p1, p2}, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;->onFirstContentfulPaint(Lorg/mozilla/geckoview/GeckoSession;)V

    :catch_0
    :cond_c
    :goto_1
    return-void
.end method
