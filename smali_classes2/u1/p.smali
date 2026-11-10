.class public abstract Lu1/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/view/MotionEvent$PointerCoords;

.field public static final b:[Landroid/view/MotionEvent$PointerCoords;

.field public static final c:Landroid/view/MotionEvent$PointerProperties;

.field public static final d:[Landroid/view/MotionEvent$PointerProperties;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    sput-object v0, Lu1/p;->a:Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    sput-object v2, Lu1/p;->b:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v0, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    sput-object v0, Lu1/p;->c:Landroid/view/MotionEvent$PointerProperties;

    new-array v1, v1, [Landroid/view/MotionEvent$PointerProperties;

    aput-object v0, v1, v3

    sput-object v1, Lu1/p;->d:[Landroid/view/MotionEvent$PointerProperties;

    return-void
.end method
