.class public interface abstract Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PermissionDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaCallback;,
        Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;,
        Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$Callback;
    }
.end annotation


# static fields
.field public static final PERMISSION_AUTOPLAY_AUDIBLE:I = 0x5

.field public static final PERMISSION_AUTOPLAY_INAUDIBLE:I = 0x4

.field public static final PERMISSION_DESKTOP_NOTIFICATION:I = 0x1

.field public static final PERMISSION_GEOLOCATION:I = 0x0

.field public static final PERMISSION_MEDIA_KEY_SYSTEM_ACCESS:I = 0x6

.field public static final PERMISSION_PERSISTENT_STORAGE:I = 0x2

.field public static final PERMISSION_XR:I = 0x3


# virtual methods
.method public onAndroidPermissionsRequest(Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$Callback;)V
    .locals 0

    invoke-interface {p3}, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$Callback;->reject()V

    return-void
.end method

.method public onContentPermissionRequest(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;ILorg/mozilla/geckoview/GeckoSession$PermissionDelegate$Callback;)V
    .locals 0

    invoke-interface {p4}, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$Callback;->reject()V

    return-void
.end method

.method public onMediaPermissionRequest(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;[Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;[Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaCallback;)V
    .locals 0

    invoke-interface {p5}, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaCallback;->reject()V

    return-void
.end method
