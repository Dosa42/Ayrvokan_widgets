.class public Lcom/nomone/vr_desktop/Input/PointerEventsHandlingView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public a:Lu1/i;

.field public b:Z

.field public c:Landroid/view/PointerIcon;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nomone/vr_desktop/Input/PointerEventsHandlingView;->b:Z

    return-void
.end method


# virtual methods
.method public final dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nomone/vr_desktop/Input/PointerEventsHandlingView;->a:Lu1/i;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lu1/i;->g(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-super {p0, p1}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1

    .line 22
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nomone/vr_desktop/Input/PointerEventsHandlingView;->a:Lu1/i;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lu1/i;->g(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1

    .line 22
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public final dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nomone/vr_desktop/Input/PointerEventsHandlingView;->a:Lu1/i;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lu1/i;->g(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1

    .line 22
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/nomone/vr_desktop/Input/PointerEventsHandlingView;->a:Lu1/i;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lu1/i;->g(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lo1/l;->c(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const v3, 0x100008

    .line 14
    .line 15
    .line 16
    and-int/2addr v0, v3

    .line 17
    if-ne v0, v3, :cond_0

    .line 18
    .line 19
    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    if-nez v0, :cond_1

    .line 23
    .line 24
    iput-boolean v2, p0, Lcom/nomone/vr_desktop/Input/PointerEventsHandlingView;->b:Z

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/nomone/vr_desktop/Input/PointerEventsHandlingView;->a:Lu1/i;

    .line 27
    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lu1/i;->g(Landroid/view/MotionEvent;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    :cond_2
    move v1, v2

    .line 43
    :cond_3
    return v1

    .line 44
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    return p1
.end method

.method public final onPointerCaptureChange(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onPointerCaptureChange(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/nomone/vr_desktop/Input/PointerEventsHandlingView;->a:Lu1/i;

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v1, v0, Lu1/i;->i:Lo1/l;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iput-boolean p1, v1, Lo1/l;->d:Z

    .line 13
    .line 14
    :cond_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    iput-wide v1, v0, Lu1/i;->F:J

    .line 19
    .line 20
    :cond_1
    iget-object v0, v0, Lu1/i;->a:Lq1/f;

    .line 21
    .line 22
    iget-object v0, v0, Lq1/f;->H:Lo1/n0;

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    const-string v1, "captured..."

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const-string v1, " released..."

    .line 30
    .line 31
    :goto_0
    const-string v2, "Mouse "

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/16 v2, 0x1f4

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Lo1/n0;->c(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v0, "Is pointer captured"

    .line 43
    .line 44
    invoke-static {v0, p1}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    :cond_3
    return-void
.end method

.method public final onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/nomone/vr_desktop/Input/PointerEventsHandlingView;->a:Lu1/i;

    .line 2
    .line 3
    iget-object v1, v0, Lu1/i;->r:Lu1/v;

    .line 4
    .line 5
    iget-object v1, v1, Lu1/v;->c:Lz1/a;

    .line 6
    .line 7
    iget v1, v1, Lz1/a;->b:F

    .line 8
    .line 9
    iget-object v2, v0, Lu1/i;->a:Lq1/f;

    .line 10
    .line 11
    iget v3, v2, Lq1/f;->z:I

    .line 12
    .line 13
    int-to-float v3, v3

    .line 14
    sub-float/2addr v3, v1

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    iget-wide v6, v0, Lu1/i;->F:J

    .line 20
    .line 21
    sub-long/2addr v4, v6

    .line 22
    const-wide/16 v6, 0x1388

    .line 23
    .line 24
    cmp-long v4, v4, v6

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    const/4 v6, 0x0

    .line 28
    if-gez v4, :cond_0

    .line 29
    .line 30
    move v4, v5

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v4, v6

    .line 33
    :goto_0
    iget-object v7, v0, Lu1/i;->i:Lo1/l;

    .line 34
    .line 35
    iget-boolean v7, v7, Lo1/l;->d:Z

    .line 36
    .line 37
    if-nez v7, :cond_2

    .line 38
    .line 39
    iget-boolean v7, v2, Lq1/f;->A:Z

    .line 40
    .line 41
    if-eqz v7, :cond_2

    .line 42
    .line 43
    iget-boolean v0, v0, Lu1/i;->D:Z

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    const/high16 v0, 0x42480000    # 50.0f

    .line 48
    .line 49
    cmpg-float v3, v3, v0

    .line 50
    .line 51
    if-ltz v3, :cond_1

    .line 52
    .line 53
    cmpg-float v0, v1, v0

    .line 54
    .line 55
    if-gez v0, :cond_2

    .line 56
    .line 57
    :cond_1
    iget-boolean v0, v2, Lq1/f;->h:Z

    .line 58
    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    move v0, v5

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move v0, v6

    .line 64
    :goto_1
    if-eqz v4, :cond_3

    .line 65
    .line 66
    iget-boolean v1, v2, Lq1/f;->A:Z

    .line 67
    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    move v1, v5

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    move v1, v6

    .line 73
    :goto_2
    or-int/2addr v0, v1

    .line 74
    or-int/2addr v0, v6

    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    :cond_4
    iget-boolean p1, p0, Lcom/nomone/vr_desktop/Input/PointerEventsHandlingView;->b:Z

    .line 83
    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    filled-new-array {v6}, [I

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 91
    .line 92
    invoke-static {p1, v5, v5, p2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const/4 p2, 0x0

    .line 97
    invoke-static {p1, p2, p2}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iput-object p1, p0, Lcom/nomone/vr_desktop/Input/PointerEventsHandlingView;->c:Landroid/view/PointerIcon;

    .line 102
    .line 103
    iput-boolean v6, p0, Lcom/nomone/vr_desktop/Input/PointerEventsHandlingView;->b:Z

    .line 104
    .line 105
    :cond_5
    iget-object p1, p0, Lcom/nomone/vr_desktop/Input/PointerEventsHandlingView;->c:Landroid/view/PointerIcon;

    .line 106
    .line 107
    return-object p1
.end method

.method public setInputManager(Lu1/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nomone/vr_desktop/Input/PointerEventsHandlingView;->a:Lu1/i;

    return-void
.end method
