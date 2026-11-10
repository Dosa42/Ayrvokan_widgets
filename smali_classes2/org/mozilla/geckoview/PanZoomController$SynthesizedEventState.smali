.class Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/PanZoomController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SynthesizedEventState"
.end annotation


# instance fields
.field public downTime:J

.field public final pointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mozilla/geckoview/PanZoomController$PointerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->pointers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addPointer(II)I
    .locals 2

    new-instance v0, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;-><init>(Lorg/mozilla/geckoview/PanZoomController$1;)V

    iput p1, v0, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;->pointerId:I

    iput p2, v0, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;->source:I

    iget-object p1, p0, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->pointers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->pointers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public getPointerCoords(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 5

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->getPointerCount(I)I

    move-result v0

    new-array v0, v0, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->pointers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->pointers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;

    iget v3, v3, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;->source:I

    if-ne v3, p1, :cond_0

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->pointers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;

    invoke-virtual {v4}, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;->getCoords()Landroid/view/MotionEvent$PointerCoords;

    move-result-object v4

    aput-object v4, v0, v2

    move v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPointerCount(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->pointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->pointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;

    iget v2, v2, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;->source:I

    if-ne v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getPointerIndex(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->pointers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->pointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;

    iget v1, v1, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;->pointerId:I

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getPointerProperties(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 5

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->getPointerCount(I)I

    move-result v0

    new-array v0, v0, [Landroid/view/MotionEvent$PointerProperties;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->pointers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->pointers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;

    iget v3, v3, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;->source:I

    if-ne v3, p1, :cond_2

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    iget-object v4, p0, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->pointers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;

    iget v4, v4, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;->pointerId:I

    iput v4, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/16 v4, 0x1002

    if-eq p1, v4, :cond_1

    const/16 v4, 0x2002

    if-eq p1, v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x3

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    iput v4, v3, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    :goto_2
    add-int/lit8 v4, v2, 0x1

    aput-object v3, v0, v2

    move v2, v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method
