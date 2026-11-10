.class public final Lo1/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/FrameLayout;

.field public final b:Landroidx/fragment/app/h;

.field public c:Landroid/widget/TextView;

.field public d:I

.field public e:I

.field public f:Z

.field public g:I

.field public final h:Ljava/util/ArrayList;

.field public i:Lo1/m0;

.field public final j:Lo1/l0;

.field public k:Z

.field public final l:Landroidx/activity/a;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Landroidx/fragment/app/h;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lo1/n0;->h:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lo1/l0;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lo1/l0;-><init>(Lo1/n0;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lo1/n0;->j:Lo1/l0;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lo1/n0;->k:Z

    .line 20
    .line 21
    new-instance v1, Landroidx/activity/a;

    .line 22
    .line 23
    const/16 v2, 0xc

    .line 24
    .line 25
    invoke-direct {v1, p0, v2}, Landroidx/activity/a;-><init>(Ljava/lang/Object;I)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lo1/n0;->l:Landroidx/activity/a;

    .line 29
    .line 30
    iget-object v1, p0, Lo1/n0;->c:Landroid/widget/TextView;

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    new-instance v1, Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lo1/n0;->c:Landroid/widget/TextView;

    .line 44
    .line 45
    const/16 v2, 0x8

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lo1/n0;->c:Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 56
    .line 57
    const/4 v2, -0x2

    .line 58
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    sget v3, Lo1/z;->toast_margins:I

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    float-to-int v3, v3

    .line 76
    iput v3, p0, Lo1/n0;->d:I

    .line 77
    .line 78
    sget v3, Lo1/z;->toast_vertical_offset:I

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    float-to-int v3, v3

    .line 85
    iput v3, p0, Lo1/n0;->e:I

    .line 86
    .line 87
    sget v3, Lo1/z;->toast_padding:I

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    float-to-int v3, v3

    .line 94
    iget-object v4, p0, Lo1/n0;->c:Landroid/widget/TextView;

    .line 95
    .line 96
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lo1/n0;->c:Landroid/widget/TextView;

    .line 100
    .line 101
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lo1/n0;->c:Landroid/widget/TextView;

    .line 105
    .line 106
    sget v3, Lo1/a0;->border:I

    .line 107
    .line 108
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lo1/n0;->c:Landroid/widget/TextView;

    .line 112
    .line 113
    const v3, -0x333334

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lo1/n0;->c:Landroid/widget/TextView;

    .line 120
    .line 121
    sget v3, Lo1/z;->toast_text_size:I

    .line 122
    .line 123
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lo1/n0;->c:Landroid/widget/TextView;

    .line 131
    .line 132
    new-instance v1, Lo1/k0;

    .line 133
    .line 134
    invoke-direct {v1, p0}, Lo1/k0;-><init>(Lo1/n0;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lo1/n0;->a:Landroid/widget/FrameLayout;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lo1/n0;->c:Landroid/widget/TextView;

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 149
    .line 150
    .line 151
    :goto_0
    iput-object p1, p0, Lo1/n0;->a:Landroid/widget/FrameLayout;

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const/4 v1, 0x3

    .line 158
    const-wide/16 v2, 0x0

    .line 159
    .line 160
    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    const/4 v4, 0x2

    .line 168
    invoke-virtual {v0, v4, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const-wide/16 v2, 0xc8

    .line 176
    .line 177
    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p1, v4, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 185
    .line 186
    .line 187
    iput-object p2, p0, Lo1/n0;->b:Landroidx/fragment/app/h;

    .line 188
    .line 189
    return-void
.end method

.method public static a(Lo1/n0;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo1/n0;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lo1/n0;->c:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lo1/n0;->b:Landroidx/fragment/app/h;

    .line 13
    .line 14
    iget-object p1, p1, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Landroid/widget/FrameLayout;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget v0, p0, Lo1/n0;->d:I

    .line 23
    .line 24
    mul-int/lit8 v0, v0, 0x2

    .line 25
    .line 26
    sub-int/2addr p1, v0

    .line 27
    int-to-float p1, p1

    .line 28
    const v0, 0x3f33836b

    .line 29
    .line 30
    .line 31
    mul-float/2addr p1, v0

    .line 32
    iget-object v0, p0, Lo1/n0;->c:Landroid/widget/TextView;

    .line 33
    .line 34
    float-to-int p1, p1

    .line 35
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lo1/n0;->b()V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 9

    .line 1
    iget-object v0, p0, Lo1/n0;->b:Landroidx/fragment/app/h;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lq1/x;

    .line 6
    .line 7
    iget-object v1, v1, Lq1/x;->d:Lq1/f;

    .line 8
    .line 9
    iget v2, v1, Lq1/f;->j:F

    .line 10
    .line 11
    const/high16 v3, 0x3f800000    # 1.0f

    .line 12
    .line 13
    sub-float/2addr v3, v2

    .line 14
    invoke-virtual {v1}, Lq1/f;->a()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    int-to-float v1, v1

    .line 19
    mul-float/2addr v3, v1

    .line 20
    const/high16 v1, 0x3f000000    # 0.5f

    .line 21
    .line 22
    mul-float/2addr v3, v1

    .line 23
    iget-object v0, v0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lq1/x;

    .line 26
    .line 27
    iget-object v0, v0, Lq1/x;->d:Lq1/f;

    .line 28
    .line 29
    iget v0, v0, Lq1/f;->z:I

    .line 30
    .line 31
    int-to-float v0, v0

    .line 32
    const v2, 0x3f333333    # 0.7f

    .line 33
    .line 34
    .line 35
    mul-float/2addr v0, v2

    .line 36
    iget-object v2, p0, Lo1/n0;->c:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    int-to-float v2, v2

    .line 43
    iget-object v4, p0, Lo1/n0;->c:Landroid/widget/TextView;

    .line 44
    .line 45
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    int-to-float v4, v4

    .line 50
    iget-object v5, p0, Lo1/n0;->a:Landroid/widget/FrameLayout;

    .line 51
    .line 52
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    int-to-float v5, v5

    .line 57
    iget-object v6, p0, Lo1/n0;->a:Landroid/widget/FrameLayout;

    .line 58
    .line 59
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    int-to-float v6, v6

    .line 64
    iget-object v7, p0, Lo1/n0;->c:Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    int-to-float v7, v7

    .line 71
    mul-float/2addr v7, v1

    .line 72
    sub-float/2addr v3, v7

    .line 73
    iget v1, p0, Lo1/n0;->e:I

    .line 74
    .line 75
    int-to-float v1, v1

    .line 76
    add-float/2addr v0, v1

    .line 77
    iget v1, p0, Lo1/n0;->d:I

    .line 78
    .line 79
    int-to-float v7, v1

    .line 80
    cmpg-float v7, v3, v7

    .line 81
    .line 82
    if-gez v7, :cond_0

    .line 83
    .line 84
    int-to-float v3, v1

    .line 85
    :cond_0
    add-float v7, v3, v2

    .line 86
    .line 87
    int-to-float v8, v1

    .line 88
    sub-float v8, v5, v8

    .line 89
    .line 90
    cmpl-float v7, v7, v8

    .line 91
    .line 92
    if-lez v7, :cond_1

    .line 93
    .line 94
    int-to-float v3, v1

    .line 95
    sub-float/2addr v5, v3

    .line 96
    sub-float v3, v5, v2

    .line 97
    .line 98
    :cond_1
    int-to-float v2, v1

    .line 99
    cmpg-float v2, v0, v2

    .line 100
    .line 101
    if-gez v2, :cond_2

    .line 102
    .line 103
    int-to-float v0, v1

    .line 104
    :cond_2
    add-float v2, v0, v4

    .line 105
    .line 106
    int-to-float v5, v1

    .line 107
    sub-float v5, v6, v5

    .line 108
    .line 109
    cmpl-float v2, v2, v5

    .line 110
    .line 111
    if-lez v2, :cond_3

    .line 112
    .line 113
    int-to-float v0, v1

    .line 114
    sub-float/2addr v6, v0

    .line 115
    sub-float v0, v6, v4

    .line 116
    .line 117
    :cond_3
    iget-object v1, p0, Lo1/n0;->c:Landroid/widget/TextView;

    .line 118
    .line 119
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lo1/n0;->c:Landroid/widget/TextView;

    .line 123
    .line 124
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public final c(ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lo1/m0;

    invoke-direct {v0, p2, p1}, Lo1/m0;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lo1/n0;->d(Lo1/m0;Z)V

    return-void
.end method

.method public final d(Lo1/m0;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/n0;->h:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p2, :cond_1

    :try_start_0
    iget-object p2, p0, Lo1/n0;->i:Lo1/m0;

    if-eq p2, p1, :cond_0

    iget-object p2, p0, Lo1/n0;->h:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    iget-object p2, p0, Lo1/n0;->h:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lo1/n0;->k:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lo1/n0;->a:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lo1/n0;->l:Landroidx/activity/a;

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo1/n0;->k:Z

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
