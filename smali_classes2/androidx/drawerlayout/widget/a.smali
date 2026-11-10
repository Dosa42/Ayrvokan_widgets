.class public final Landroidx/drawerlayout/widget/a;
.super Lc1/b;
.source "SourceFile"


# instance fields
.field public final C:I

.field public D:Lt/b;

.field public final E:Landroidx/activity/a;

.field public final synthetic F:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method public constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V
    .locals 1

    iput-object p1, p0, Landroidx/drawerlayout/widget/a;->F:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-direct {p0}, Lc1/b;-><init>()V

    new-instance p1, Landroidx/activity/a;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Landroidx/activity/a;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/drawerlayout/widget/a;->E:Landroidx/activity/a;

    iput p2, p0, Landroidx/drawerlayout/widget/a;->C:I

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/drawerlayout/widget/a;->F:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(ILandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    neg-int p1, p1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int p1, v0, p1

    :goto_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final e(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1
.end method

.method public final i(Landroid/view/View;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/drawerlayout/widget/a;->F:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final p(II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    iget-object v0, p0, Landroidx/drawerlayout/widget/a;->F:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/drawerlayout/widget/a;->D:Lt/b;

    invoke-virtual {v0, p2, p1}, Lt/b;->c(ILandroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final q()V
    .locals 4

    .line 1
    const-wide/16 v0, 0xa0

    iget-object v2, p0, Landroidx/drawerlayout/widget/a;->F:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v3, p0, Landroidx/drawerlayout/widget/a;->E:Landroidx/activity/a;

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final s(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->c:Z

    .line 9
    .line 10
    iget p1, p0, Landroidx/drawerlayout/widget/a;->C:I

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    :cond_0
    iget-object p1, p0, Landroidx/drawerlayout/widget/a;->F:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final t(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/drawerlayout/widget/a;->D:Lt/b;

    .line 2
    .line 3
    iget-object v0, v0, Lt/b;->s:Landroid/view/View;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/drawerlayout/widget/a;->F:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 6
    .line 7
    iget-object v2, v1, Landroidx/drawerlayout/widget/DrawerLayout;->f:Lt/b;

    .line 8
    .line 9
    iget v2, v2, Lt/b;->a:I

    .line 10
    .line 11
    iget-object v3, v1, Landroidx/drawerlayout/widget/DrawerLayout;->g:Lt/b;

    .line 12
    .line 13
    iget v3, v3, Lt/b;->a:I

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x1

    .line 17
    if-eq v2, v5, :cond_2

    .line 18
    .line 19
    if-ne v3, v5, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v6, 0x2

    .line 23
    if-eq v2, v6, :cond_3

    .line 24
    .line 25
    if-ne v3, v6, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v6, v4

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :goto_0
    move v6, v5

    .line 31
    :cond_3
    :goto_1
    const/4 v2, 0x0

    .line 32
    if-eqz v0, :cond_9

    .line 33
    .line 34
    if-nez p1, :cond_9

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 41
    .line 42
    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->b:F

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    cmpl-float v3, p1, v3

    .line 46
    .line 47
    const/16 v7, 0x20

    .line 48
    .line 49
    if-nez v3, :cond_6

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 56
    .line 57
    iget v3, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->d:I

    .line 58
    .line 59
    and-int/2addr v3, v5

    .line 60
    if-ne v3, v5, :cond_9

    .line 61
    .line 62
    iput v4, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->d:I

    .line 63
    .line 64
    iget-object p1, v1, Landroidx/drawerlayout/widget/DrawerLayout;->r:Ljava/util/ArrayList;

    .line 65
    .line 66
    if-eqz p1, :cond_5

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    sub-int/2addr p1, v5

    .line 73
    if-gez p1, :cond_4

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    iget-object v0, v1, Landroidx/drawerlayout/widget/DrawerLayout;->r:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    throw v2

    .line 86
    :cond_5
    :goto_2
    invoke-virtual {v1, v0, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->m(Landroid/view/View;Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_9

    .line 94
    .line 95
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_9

    .line 100
    .line 101
    invoke-virtual {p1, v7}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 102
    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_6
    const/high16 v3, 0x3f800000    # 1.0f

    .line 106
    .line 107
    cmpl-float p1, p1, v3

    .line 108
    .line 109
    if-nez p1, :cond_9

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 116
    .line 117
    iget v3, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->d:I

    .line 118
    .line 119
    and-int/2addr v3, v5

    .line 120
    if-nez v3, :cond_9

    .line 121
    .line 122
    iput v5, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->d:I

    .line 123
    .line 124
    iget-object p1, v1, Landroidx/drawerlayout/widget/DrawerLayout;->r:Ljava/util/ArrayList;

    .line 125
    .line 126
    if-eqz p1, :cond_8

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    sub-int/2addr p1, v5

    .line 133
    if-gez p1, :cond_7

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_7
    iget-object v0, v1, Landroidx/drawerlayout/widget/DrawerLayout;->r:Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    throw v2

    .line 146
    :cond_8
    :goto_3
    invoke-virtual {v1, v0, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->m(Landroid/view/View;Z)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_9

    .line 154
    .line 155
    invoke-virtual {v1, v7}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 156
    .line 157
    .line 158
    :cond_9
    :goto_4
    iget p1, v1, Landroidx/drawerlayout/widget/DrawerLayout;->j:I

    .line 159
    .line 160
    if-eq v6, p1, :cond_b

    .line 161
    .line 162
    iput v6, v1, Landroidx/drawerlayout/widget/DrawerLayout;->j:I

    .line 163
    .line 164
    iget-object p1, v1, Landroidx/drawerlayout/widget/DrawerLayout;->r:Ljava/util/ArrayList;

    .line 165
    .line 166
    if-eqz p1, :cond_b

    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    sub-int/2addr p1, v5

    .line 173
    if-gez p1, :cond_a

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_a
    iget-object v0, v1, Landroidx/drawerlayout/widget/DrawerLayout;->r:Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    throw v2

    .line 186
    :cond_b
    :goto_5
    return-void
.end method

.method public final u(Landroid/view/View;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/drawerlayout/widget/a;->F:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(ILandroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/2addr p2, v0

    int-to-float p2, p2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, p2

    int-to-float p2, v2

    :goto_0
    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->l(Landroid/view/View;F)V

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final v(Landroid/view/View;F)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/drawerlayout/widget/a;->F:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 11
    .line 12
    iget v1, v1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->b:F

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x3

    .line 19
    invoke-virtual {v0, v3, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(ILandroid/view/View;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/high16 v4, 0x3f000000    # 0.5f

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    cmpl-float p2, p2, v5

    .line 29
    .line 30
    if-gtz p2, :cond_1

    .line 31
    .line 32
    if-nez p2, :cond_0

    .line 33
    .line 34
    cmpl-float p2, v1, v4

    .line 35
    .line 36
    if-lez p2, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    neg-int p2, v2

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    cmpg-float v6, p2, v5

    .line 48
    .line 49
    if-ltz v6, :cond_3

    .line 50
    .line 51
    cmpl-float p2, p2, v5

    .line 52
    .line 53
    if-nez p2, :cond_4

    .line 54
    .line 55
    cmpl-float p2, v1, v4

    .line 56
    .line 57
    if-lez p2, :cond_4

    .line 58
    .line 59
    :cond_3
    sub-int/2addr v3, v2

    .line 60
    :cond_4
    move p2, v3

    .line 61
    :goto_1
    iget-object v1, p0, Landroidx/drawerlayout/widget/a;->D:Lt/b;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {v1, p2, p1}, Lt/b;->s(II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final y(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/drawerlayout/widget/a;->F:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/drawerlayout/widget/a;->C:I

    invoke-virtual {v0, v1, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(ILandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
