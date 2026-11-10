.class public final Lorg/mozilla/gecko/util/GamepadUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SONY_XPERIA_GAMEPAD_DEVICE_ID:I = 0x30003

.field private static sClickDispatcher:Landroid/view/View$OnKeyListener; = null

.field private static sDeadZoneThresholdOverride:F = 0.01f


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areSonyXperiaGamepadKeysSwapped()Z
    .locals 5

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz v0, :cond_1

    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget v3, v0, v2

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    if-eqz v3, :cond_0

    const/16 v4, 0x17

    invoke-virtual {v3, v4}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v3

    const/16 v4, 0x25cb

    if-ne v4, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public static getClickDispatcher()Landroid/view/View$OnKeyListener;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/util/GamepadUtils;->sClickDispatcher:Landroid/view/View$OnKeyListener;

    if-nez v0, :cond_0

    new-instance v0, Lorg/mozilla/gecko/util/GamepadUtils$1;

    invoke-direct {v0}, Lorg/mozilla/gecko/util/GamepadUtils$1;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/util/GamepadUtils;->sClickDispatcher:Landroid/view/View$OnKeyListener;

    :cond_0
    sget-object v0, Lorg/mozilla/gecko/util/GamepadUtils;->sClickDispatcher:Landroid/view/View$OnKeyListener;

    return-object v0
.end method

.method public static isActionKey(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0}, Lorg/mozilla/gecko/util/GamepadUtils;->isGamepadKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 v0, 0x60

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isActionKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0}, Lorg/mozilla/gecko/util/GamepadUtils;->isActionKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBackKey(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0}, Lorg/mozilla/gecko/util/GamepadUtils;->isGamepadKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 v0, 0x61

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isGamepadKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getSource()I

    move-result p0

    const/16 v0, 0x401

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPanningControl(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-static {p0, v2}, Lorg/mozilla/gecko/util/GamepadUtils;->isValueInDeadZone(Landroid/view/MotionEvent;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {p0, v1}, Lorg/mozilla/gecko/util/GamepadUtils;->isValueInDeadZone(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    invoke-static {p0, v0}, Lorg/mozilla/gecko/util/GamepadUtils;->isValueInDeadZone(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    invoke-static {p0, v0}, Lorg/mozilla/gecko/util/GamepadUtils;->isValueInDeadZone(Landroid/view/MotionEvent;I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public static isSonyXperiaGamepadKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p0

    const v0, 0x30003

    if-ne p0, v0, :cond_1

    const-string p0, "Sony Ericsson"

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "R800"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "R800i"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValueInDeadZone(Landroid/view/MotionEvent;I)Z
    .locals 2

    sget v0, Lorg/mozilla/gecko/util/GamepadUtils;->sDeadZoneThresholdOverride:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getFuzz()F

    move-result v0

    add-float/2addr v0, v1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static overrideDeadZoneThreshold(F)V
    .locals 0

    sput p0, Lorg/mozilla/gecko/util/GamepadUtils;->sDeadZoneThresholdOverride:F

    return-void
.end method

.method public static translateSonyXperiaGamepadKeys(ILandroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 4

    invoke-static {}, Lorg/mozilla/gecko/util/GamepadUtils;->areSonyXperiaGamepadKeysSwapped()Z

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x60

    const/16 v3, 0x61

    if-eq p0, v1, :cond_2

    const/16 v1, 0x17

    if-eq p0, v1, :cond_0

    return-object p1

    :cond_0
    if-eqz v0, :cond_3

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_1

    :cond_3
    :goto_0
    new-instance p0, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    invoke-direct {p0, p1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    return-object p0
.end method
