.class public final Lr/b;
.super Lp/b;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lr/b;->d:I

    .line 2
    .line 3
    invoke-direct {p0}, Lp/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget v0, p0, Lr/b;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lp/b;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0, p1, p2}, Lp/b;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 11
    .line 12
    .line 13
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    .line 14
    .line 15
    const-class v0, Landroid/widget/ScrollView;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/view/View;Lq/c;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p2, Lq/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    .line 4
    iget v2, p0, Lr/b;->d:I

    .line 5
    .line 6
    iget-object v3, p0, Lp/b;->a:Landroid/view/View$AccessibilityDelegate;

    .line 7
    .line 8
    packed-switch v2, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_0
    invoke-virtual {v3, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    .line 16
    .line 17
    const-class v2, Landroid/widget/ScrollView;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p2, v2}, Lq/c;->b(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-lez p2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-lez v0, :cond_0

    .line 46
    .line 47
    sget-object v0, Lq/b;->e:Lq/b;

    .line 48
    .line 49
    iget-object v0, v0, Lq/b;->a:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 54
    .line 55
    .line 56
    sget-object v0, Lq/b;->f:Lq/b;

    .line 57
    .line 58
    iget-object v0, v0, Lq/b;->a:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-ge p1, p2, :cond_1

    .line 70
    .line 71
    sget-object p1, Lq/b;->d:Lq/b;

    .line 72
    .line 73
    iget-object p1, p1, Lq/b;->a:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 76
    .line 77
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 78
    .line 79
    .line 80
    sget-object p1, Lq/b;->g:Lq/b;

    .line 81
    .line 82
    iget-object p1, p1, Lq/b;->a:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 85
    .line 86
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    return-void

    .line 90
    :goto_0
    invoke-virtual {v3, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 91
    .line 92
    .line 93
    sget-object v2, Landroidx/drawerlayout/widget/DrawerLayout;->C:[I

    .line 94
    .line 95
    sget-object v2, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    const/4 v3, 0x4

    .line 102
    if-eq v2, v3, :cond_2

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    const/4 v2, 0x2

    .line 109
    if-eq p1, v2, :cond_2

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    const/4 v0, 0x0

    .line 113
    :goto_1
    if-nez v0, :cond_3

    .line 114
    .line 115
    const/4 p1, -0x1

    .line 116
    iput p1, p2, Lq/c;->b:I

    .line 117
    .line 118
    const/4 p1, 0x0

    .line 119
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    return-void

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget v0, p0, Lr/b;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lp/b;->e(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lp/b;->e(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    const/4 v0, 0x0

    .line 25
    if-nez p3, :cond_1

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    const/16 p3, 0x1000

    .line 29
    .line 30
    if-eq p2, p3, :cond_3

    .line 31
    .line 32
    const/16 p3, 0x2000

    .line 33
    .line 34
    if-eq p2, p3, :cond_2

    .line 35
    .line 36
    const p3, 0x1020038

    .line 37
    .line 38
    .line 39
    if-eq p2, p3, :cond_2

    .line 40
    .line 41
    const p3, 0x102003a

    .line 42
    .line 43
    .line 44
    if-eq p2, p3, :cond_3

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    sub-int/2addr p2, p3

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    sub-int/2addr p2, p3

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    sub-int/2addr p3, p2

    .line 66
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    if-eq p2, p3, :cond_4

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    sub-int/2addr p2, p3

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 87
    .line 88
    .line 89
    move-result p3

    .line 90
    sub-int/2addr p2, p3

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    add-int/2addr p3, p2

    .line 96
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 105
    .line 106
    .line 107
    move-result p3

    .line 108
    if-eq p2, p3, :cond_4

    .line 109
    .line 110
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->t(I)V

    .line 111
    .line 112
    .line 113
    :goto_1
    const/4 v0, 0x1

    .line 114
    :cond_4
    :goto_2
    return v0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
