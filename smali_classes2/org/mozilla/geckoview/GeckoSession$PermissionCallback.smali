.class Lorg/mozilla/geckoview/GeckoSession$PermissionCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$Callback;
.implements Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionCallback"
.end annotation


# instance fields
.field private mCallback:Lorg/mozilla/gecko/util/EventCallback;

.field private final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$PermissionCallback;->mType:Ljava/lang/String;

    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$PermissionCallback;->mCallback:Lorg/mozilla/gecko/util/EventCallback;

    return-void
.end method

.method private submit(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$PermissionCallback;->mCallback:Lorg/mozilla/gecko/util/EventCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$PermissionCallback;->mCallback:Lorg/mozilla/gecko/util/EventCallback;

    :cond_0
    return-void
.end method


# virtual methods
.method public grant()V
    .locals 2

    .line 1
    const-string v0, "media"

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSession$PermissionCallback;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoSession$PermissionCallback;->submit(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public grant(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    const-string v0, "media"

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSession$PermissionCallback;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v1, "video"

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "audio"

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoSession$PermissionCallback;->submit(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public grant(Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p2, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;->id:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/mozilla/geckoview/GeckoSession$PermissionCallback;->grant(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reject()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoSession$PermissionCallback;->submit(Ljava/lang/Object;)V

    return-void
.end method
