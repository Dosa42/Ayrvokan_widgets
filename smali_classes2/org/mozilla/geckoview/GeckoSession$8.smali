.class Lorg/mozilla/geckoview/GeckoSession$8;
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
        "Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoSession;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$8;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-direct {p0, p2, p3, p4}, Lorg/mozilla/geckoview/GeckoSessionHandler;-><init>(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleMessage(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/geckoview/GeckoSession$8;->handleMessage(Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    return-void
.end method

.method public handleMessage(Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v1}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v5, "GeckoView:AndroidPermission"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v2, v0, Lorg/mozilla/geckoview/GeckoSession$8;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    const-string v5, "perms"

    invoke-virtual {v3, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lorg/mozilla/geckoview/GeckoSession$PermissionCallback;

    const-string v6, "android"

    invoke-direct {v5, v6, v4}, Lorg/mozilla/geckoview/GeckoSession$PermissionCallback;-><init>(Ljava/lang/String;Lorg/mozilla/gecko/util/EventCallback;)V

    invoke-interface {p1, v2, v3, v5}, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate;->onAndroidPermissionsRequest(Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$Callback;)V

    goto/16 :goto_4

    :cond_1
    const-string v5, "GeckoView:ContentPermission"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "uri"

    const/4 v7, 0x0

    if-eqz v5, :cond_a

    const-string v2, "perm"

    invoke-virtual {v3, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "geolocation"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const-string v5, "desktop-notification"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const-string v5, "persistent-storage"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v7, 0x2

    goto :goto_0

    :cond_4
    const-string v5, "xr"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v7, 0x3

    goto :goto_0

    :cond_5
    const-string v5, "midi"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v1, "Unsupported"

    invoke-interface {v4, v1}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-void

    :cond_6
    const-string v5, "autoplay-media-inaudible"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v7, 0x4

    goto :goto_0

    :cond_7
    const-string v5, "autoplay-media-audible"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v7, 0x5

    goto :goto_0

    :cond_8
    const-string v5, "media-key-system-access"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v7, 0x6

    :goto_0
    iget-object v5, v0, Lorg/mozilla/geckoview/GeckoSession$8;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v3, v6}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lorg/mozilla/geckoview/GeckoSession$PermissionCallback;

    invoke-direct {v6, v2, v4}, Lorg/mozilla/geckoview/GeckoSession$PermissionCallback;-><init>(Ljava/lang/String;Lorg/mozilla/gecko/util/EventCallback;)V

    invoke-interface {p1, v5, v3, v7, v6}, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate;->onContentPermissionRequest(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;ILorg/mozilla/geckoview/GeckoSession$PermissionDelegate$Callback;)V

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown permission request: "

    .line 2
    invoke-static {v3, v2}, La1/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    const-string v5, "GeckoView:MediaPermission"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "video"

    invoke-virtual {v3, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundleArray(Ljava/lang/String;)[Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v2

    const-string v5, "audio"

    invoke-virtual {v3, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundleArray(Ljava/lang/String;)[Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v5

    const/4 v8, 0x0

    if-eqz v2, :cond_b

    array-length v9, v2

    new-array v9, v9, [Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;

    move v10, v7

    :goto_1
    array-length v11, v2

    if-ge v10, v11, :cond_c

    new-instance v11, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;

    aget-object v12, v2, v10

    invoke-direct {v11, v12}, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_b
    move-object v9, v8

    :cond_c
    if-eqz v5, :cond_e

    array-length v2, v5

    new-array v2, v2, [Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;

    :goto_2
    array-length v8, v5

    if-ge v7, v8, :cond_d

    new-instance v8, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;

    aget-object v10, v5, v7

    invoke-direct {v8, v10}, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    aput-object v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_d
    move-object v5, v2

    goto :goto_3

    :cond_e
    move-object v5, v8

    :goto_3
    iget-object v2, v0, Lorg/mozilla/geckoview/GeckoSession$8;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v3, v6}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lorg/mozilla/geckoview/GeckoSession$PermissionCallback;

    const-string v7, "media"

    invoke-direct {v6, v7, v4}, Lorg/mozilla/geckoview/GeckoSession$PermissionCallback;-><init>(Ljava/lang/String;Lorg/mozilla/gecko/util/EventCallback;)V

    move-object v1, p1

    move-object v4, v9

    invoke-interface/range {v1 .. v6}, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate;->onMediaPermissionRequest(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;[Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;[Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaCallback;)V

    :cond_f
    :goto_4
    return-void
.end method
