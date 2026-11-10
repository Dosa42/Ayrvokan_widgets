.class Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/AndroidGamepadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Gamepad"
.end annotation


# instance fields
.field public axes:[F

.field public dpad:[Z

.field public id:I

.field public triggerAxes:[I

.field public triggers:[F


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;->id:I

    invoke-static {}, Lorg/mozilla/gecko/AndroidGamepadManager$Axis;->values()[Lorg/mozilla/gecko/AndroidGamepadManager$Axis;

    move-result-object p1

    array-length p1, p1

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;->axes:[F

    const/4 p1, 0x4

    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;->dpad:[Z

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;->triggers:[F

    invoke-static {p2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    if-eqz v1, :cond_0

    filled-new-array {p2, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;->triggerAxes:[I

    goto :goto_0

    :cond_0
    const/16 p2, 0x17

    invoke-virtual {p1, p2}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object p1

    if-eqz p1, :cond_1

    filled-new-array {p2, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;->triggerAxes:[I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/gecko/AndroidGamepadManager$Gamepad;->triggerAxes:[I

    :cond_2
    :goto_0
    return-void
.end method
