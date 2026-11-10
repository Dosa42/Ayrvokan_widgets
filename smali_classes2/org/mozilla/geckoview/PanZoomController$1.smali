.class final Lorg/mozilla/geckoview/PanZoomController$1;
.super Lorg/mozilla/gecko/PrefsHelper$PrefHandlerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/PanZoomController;->initMouseAsTouch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/PrefsHelper$PrefHandlerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public prefValue(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "ui.android.mouse_as_touch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    if-nez p2, :cond_2

    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/mozilla/geckoview/PanZoomController;->access$702(Z)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    invoke-static {v0}, Lorg/mozilla/geckoview/PanZoomController;->access$702(Z)Z

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "uimode"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    invoke-virtual {p2}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result p2

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
