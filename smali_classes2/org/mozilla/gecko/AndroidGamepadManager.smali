.class public Lorg/mozilla/gecko/AndroidGamepadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;,
        Lorg/mozilla/gecko/AndroidGamepadManager$Button;,
        Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;,
        Lorg/mozilla/gecko/AndroidGamepadManager$Trigger;,
        Lorg/mozilla/gecko/AndroidGamepadManager$Axis;
    }
.end annotation


# static fields
.field private static final FIRST_DPAD_BUTTON:I = 0xc

.field private static final POLL_TIMER_PERIOD:J = 0x3e8L

.field private static final TRIGGER_PRESSED_THRESHOLD:F = 0.25f

.field private static final sGamepads:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;",
            ">;"
        }
    .end annotation
.end field

.field private static sListener:Landroid/hardware/input/InputManager$InputDeviceListener;

.field private static final sPendingGamepads:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/KeyEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPollTimer:Ljava/util/Timer;

.field private static sStarted:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/AndroidGamepadManager;->sGamepads:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/AndroidGamepadManager;->sPendingGamepads:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/view/InputDevice;)V
    .locals 0

    invoke-static {p0}, Lorg/mozilla/gecko/AndroidGamepadManager;->addGamepad(Landroid/view/InputDevice;)V

    return-void
.end method

.method public static synthetic access$100()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/AndroidGamepadManager;->sPendingGamepads:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static synthetic access$200()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/AndroidGamepadManager;->sGamepads:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static synthetic access$300(I)V
    .locals 0

    invoke-static {p0}, Lorg/mozilla/gecko/AndroidGamepadManager;->removeGamepad(I)V

    return-void
.end method

.method private static addDeviceListener(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lorg/mozilla/gecko/AndroidGamepadManager$4;

    invoke-direct {v0}, Lorg/mozilla/gecko/AndroidGamepadManager$4;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/AndroidGamepadManager;->sListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    const-string v0, "input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    sget-object v0, Lorg/mozilla/gecko/AndroidGamepadManager;->sListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->getUiHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    return-void
.end method

.method private static addGamepad(Landroid/view/InputDevice;)V
    .locals 3

    sget-object v0, Lorg/mozilla/gecko/AndroidGamepadManager;->sPendingGamepads:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/InputDevice;->getId()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/InputDevice;->getId()I

    move-result p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/mozilla/gecko/AndroidGamepadManager;->onGamepadChange(IZ)V

    return-void
.end method

.method private static deadZone(Landroid/view/MotionEvent;I)F
    .locals 1

    invoke-static {p0, p1}, Lorg/mozilla/gecko/util/GamepadUtils;->isValueInDeadZone(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p0

    return p0
.end method

.method public static doStart(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    sget-boolean v0, Lorg/mozilla/gecko/AndroidGamepadManager;->sStarted:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/AndroidGamepadManager;->scanForGamepads()V

    invoke-static {p0}, Lorg/mozilla/gecko/AndroidGamepadManager;->addDeviceListener(Landroid/content/Context;)V

    const/4 p0, 0x1

    sput-boolean p0, Lorg/mozilla/gecko/AndroidGamepadManager;->sStarted:Z

    :cond_0
    return-void
.end method

.method public static doStop(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    sget-boolean v0, Lorg/mozilla/gecko/AndroidGamepadManager;->sStarted:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/mozilla/gecko/AndroidGamepadManager;->removeDeviceListener(Landroid/content/Context;)V

    sget-object p0, Lorg/mozilla/gecko/AndroidGamepadManager;->sPendingGamepads:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    sget-object p0, Lorg/mozilla/gecko/AndroidGamepadManager;->sGamepads:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    const/4 p0, 0x0

    sput-boolean p0, Lorg/mozilla/gecko/AndroidGamepadManager;->sStarted:Z

    :cond_0
    return-void
.end method

.method public static handleGamepadAdded(II)V
    .locals 3

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    sget-boolean v0, Lorg/mozilla/gecko/AndroidGamepadManager;->sStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/mozilla/gecko/AndroidGamepadManager;->sPendingGamepads:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    invoke-static {p0}, Lorg/mozilla/gecko/AndroidGamepadManager;->removeGamepad(I)V

    return-void

    :cond_1
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    sget-object v0, Lorg/mozilla/gecko/AndroidGamepadManager;->sGamepads:Landroid/util/SparseArray;

    new-instance v2, Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;

    invoke-direct {v2, p1, p0}, Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;-><init>(II)V

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    invoke-static {p1}, Lorg/mozilla/gecko/AndroidGamepadManager;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    sget-boolean v0, Lorg/mozilla/gecko/AndroidGamepadManager;->sStarted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    sget-object v2, Lorg/mozilla/gecko/AndroidGamepadManager;->sPendingGamepads:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v4

    :cond_1
    sget-object v3, Lorg/mozilla/gecko/AndroidGamepadManager;->sGamepads:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/InputDevice;->getSources()I

    move-result v5

    const/16 v6, 0x401

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2

    invoke-static {v3}, Lorg/mozilla/gecko/AndroidGamepadManager;->addGamepad(Landroid/view/InputDevice;)V

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v4

    :cond_2
    return v1

    :cond_3
    invoke-static {}, Lorg/mozilla/gecko/AndroidGamepadManager$Button;->values()[Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    move-result-object v2

    array-length v3, v2

    move v5, v1

    :goto_0
    const/4 v6, -0x1

    if-ge v5, v3, :cond_5

    aget-object v7, v2, v5

    iget v8, v7, Lorg/mozilla/gecko/AndroidGamepadManager$Button;->button:I

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    if-ne v8, v9, :cond_4

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    move v2, v6

    :goto_1
    if-ne v2, v6, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_7

    return v4

    :cond_7
    sget-object v3, Lorg/mozilla/gecko/AndroidGamepadManager;->sGamepads:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_8

    move v1, v4

    :cond_8
    iget p0, v0, Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;->id:I

    if-eqz v1, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    :goto_2
    invoke-static {p0, v2, v1, v0}, Lorg/mozilla/gecko/AndroidGamepadManager;->onButtonChange(IIZF)V

    return v4
.end method

.method public static handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    sget-boolean v0, Lorg/mozilla/gecko/AndroidGamepadManager;->sStarted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lorg/mozilla/gecko/AndroidGamepadManager;->sGamepads:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lorg/mozilla/gecko/AndroidGamepadManager$Axis;->values()[Lorg/mozilla/gecko/AndroidGamepadManager$Axis;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Z

    invoke-static {}, Lorg/mozilla/gecko/AndroidGamepadManager$Axis;->values()[Lorg/mozilla/gecko/AndroidGamepadManager$Axis;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [F

    invoke-static {}, Lorg/mozilla/gecko/AndroidGamepadManager$Axis;->values()[Lorg/mozilla/gecko/AndroidGamepadManager$Axis;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    move v7, v6

    :goto_0
    const/4 v8, 0x1

    if-ge v6, v5, :cond_3

    aget-object v9, v4, v6

    iget v10, v9, Lorg/mozilla/gecko/AndroidGamepadManager$Axis;->axis:I

    invoke-static {p0, v10}, Lorg/mozilla/gecko/AndroidGamepadManager;->deadZone(Landroid/view/MotionEvent;I)F

    move-result v10

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    iget-object v11, v0, Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;->axes:[F

    aget v12, v11, v9

    cmpl-float v12, v10, v12

    if-eqz v12, :cond_2

    aput v10, v3, v9

    aput v10, v11, v9

    aput-boolean v8, v2, v9

    move v7, v8

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-eqz v7, :cond_4

    iget v4, v0, Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;->id:I

    invoke-static {v4, v2, v3}, Lorg/mozilla/gecko/AndroidGamepadManager;->onAxisChange(I[Z[F)V

    :cond_4
    iget-object v2, v0, Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;->triggerAxes:[I

    if-eqz v2, :cond_7

    invoke-static {}, Lorg/mozilla/gecko/AndroidGamepadManager$Trigger;->values()[Lorg/mozilla/gecko/AndroidGamepadManager$Trigger;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_7

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    iget-object v7, v0, Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;->triggerAxes:[I

    aget v7, v7, v6

    invoke-static {p0, v7}, Lorg/mozilla/gecko/AndroidGamepadManager;->deadZone(Landroid/view/MotionEvent;I)F

    move-result v7

    iget-object v9, v0, Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;->triggers:[F

    aget v10, v9, v6

    cmpl-float v10, v7, v10

    if-eqz v10, :cond_6

    aput v7, v9, v6

    const/high16 v6, 0x3e800000    # 0.25f

    cmpl-float v6, v7, v6

    if-lez v6, :cond_5

    move v6, v8

    goto :goto_2

    :cond_5
    move v6, v1

    :goto_2
    iget v9, v0, Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;->id:I

    iget v5, v5, Lorg/mozilla/gecko/AndroidGamepadManager$Trigger;->button:I

    invoke-static {v9, v5, v6, v7}, Lorg/mozilla/gecko/AndroidGamepadManager;->onButtonChange(IIZF)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    invoke-static {}, Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;->values()[Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_a

    aget-object v5, v2, v4

    iget v6, v5, Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;->axis:I

    invoke-static {p0, v6}, Lorg/mozilla/gecko/AndroidGamepadManager;->deadZone(Landroid/view/MotionEvent;I)F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v9, v6, v7

    if-gez v9, :cond_8

    move v9, v8

    goto :goto_4

    :cond_8
    move v9, v1

    :goto_4
    iget v10, v5, Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;->negativeButton:I

    invoke-static {v0, v9, v6, v10}, Lorg/mozilla/gecko/AndroidGamepadManager;->mapDpadAxis(Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;ZFI)V

    cmpl-float v7, v6, v7

    if-lez v7, :cond_9

    move v7, v8

    goto :goto_5

    :cond_9
    move v7, v1

    :goto_5
    iget v5, v5, Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;->positiveButton:I

    invoke-static {v0, v7, v6, v5}, Lorg/mozilla/gecko/AndroidGamepadManager;->mapDpadAxis(Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;ZFI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    return v8
.end method

.method private static mapDpadAxis(Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;ZFI)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;->dpad:[Z

    aget-boolean v1, v0, p3

    if-eq p1, v1, :cond_0

    aput-boolean p1, v0, p3

    iget p0, p0, Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;->id:I

    add-int/lit8 p3, p3, 0xc

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p0, p3, p1, p2}, Lorg/mozilla/gecko/AndroidGamepadManager;->onButtonChange(IIZF)V

    :cond_0
    return-void
.end method

.method private static native onAxisChange(I[Z[F)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
    .end annotation
.end method

.method private static native onButtonChange(IIZF)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
    .end annotation
.end method

.method private static onGamepadAdded(II)V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    new-instance v0, Lorg/mozilla/gecko/AndroidGamepadManager$3;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/gecko/AndroidGamepadManager$3;-><init>(II)V

    invoke-static {v0}, Lorg/mozilla/gecko/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static native onGamepadChange(IZ)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
    .end annotation
.end method

.method private static removeDeviceListener(Landroid/content/Context;)V
    .locals 1

    const-string v0, "input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    sget-object v0, Lorg/mozilla/gecko/AndroidGamepadManager;->sListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-virtual {p0, v0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    const/4 p0, 0x0

    sput-object p0, Lorg/mozilla/gecko/AndroidGamepadManager;->sListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    return-void
.end method

.method private static removeGamepad(I)V
    .locals 3

    sget-object v0, Lorg/mozilla/gecko/AndroidGamepadManager;->sGamepads:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;

    iget v1, v1, Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;->id:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/mozilla/gecko/AndroidGamepadManager;->onGamepadChange(IZ)V

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method private static scanForGamepads()V
    .locals 5

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget v2, v0, v1

    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/view/InputDevice;->getSources()I

    move-result v3

    const/16 v4, 0x401

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lorg/mozilla/gecko/AndroidGamepadManager;->addGamepad(Landroid/view/InputDevice;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static start(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    new-instance v0, Lorg/mozilla/gecko/AndroidGamepadManager$1;

    invoke-direct {v0, p0}, Lorg/mozilla/gecko/AndroidGamepadManager$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lorg/mozilla/gecko/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static stop(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    new-instance v0, Lorg/mozilla/gecko/AndroidGamepadManager$2;

    invoke-direct {v0, p0}, Lorg/mozilla/gecko/AndroidGamepadManager$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lorg/mozilla/gecko/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
