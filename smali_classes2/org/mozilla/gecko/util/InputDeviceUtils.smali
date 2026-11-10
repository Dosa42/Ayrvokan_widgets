.class public Lorg/mozilla/gecko/util/InputDeviceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPointerTypeDevice(Landroid/view/InputDevice;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result p0

    and-int/lit8 p0, p0, 0x1e

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
