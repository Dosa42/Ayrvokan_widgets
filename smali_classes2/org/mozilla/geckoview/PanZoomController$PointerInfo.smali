.class Lorg/mozilla/geckoview/PanZoomController$PointerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/PanZoomController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointerInfo"
.end annotation


# static fields
.field public static final RESERVED_MOUSE_POINTER_ID:I = 0x186a0


# instance fields
.field public orientation:I

.field public pointerId:I

.field public pressure:D

.field public source:I

.field public surfaceX:I

.field public surfaceY:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/geckoview/PanZoomController$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoords()Landroid/view/MotionEvent$PointerCoords;
    .locals 3

    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iget v1, p0, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;->orientation:I

    int-to-float v1, v1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iget-wide v1, p0, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;->pressure:D

    double-to-float v1, v1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iget v1, p0, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;->surfaceX:I

    int-to-float v1, v1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v1, p0, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;->surfaceY:I

    int-to-float v1, v1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    return-object v0
.end method
