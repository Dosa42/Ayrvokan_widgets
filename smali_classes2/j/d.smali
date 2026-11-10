.class public final Lj/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;

.field public c:Landroid/view/ViewParent;

.field public final d:Landroid/view/View;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj/d;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/d;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(FFZ)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lj/d;->a:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lj/d;->f(I)Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lj/d;->d:Landroid/view/View;

    .line 13
    .line 14
    :try_start_0
    invoke-interface {v0, v2, p1, p2, p3}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z

    .line 15
    .line 16
    .line 17
    move-result v1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return v1
.end method

.method public final b(FF)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lj/d;->a:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lj/d;->f(I)Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lj/d;->d:Landroid/view/View;

    .line 13
    .line 14
    :try_start_0
    invoke-interface {v0, v2, p1, p2}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z

    .line 15
    .line 16
    .line 17
    move-result v1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return v1
.end method

.method public final c(III[I[I)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lj/d;->a:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_a

    .line 5
    .line 6
    invoke-virtual {p0, p3}, Lj/d;->f(I)Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    const/4 v2, 0x1

    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    if-eqz p5, :cond_a

    .line 20
    .line 21
    aput v1, p5, v1

    .line 22
    .line 23
    aput v1, p5, v2

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_2
    :goto_0
    iget-object v3, p0, Lj/d;->d:Landroid/view/View;

    .line 27
    .line 28
    if-eqz p5, :cond_3

    .line 29
    .line 30
    invoke-virtual {v3, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 31
    .line 32
    .line 33
    aget v4, p5, v1

    .line 34
    .line 35
    aget v5, p5, v2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    move v4, v1

    .line 39
    move v5, v4

    .line 40
    :goto_1
    if-nez p4, :cond_5

    .line 41
    .line 42
    iget-object p4, p0, Lj/d;->e:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p4, [I

    .line 45
    .line 46
    if-nez p4, :cond_4

    .line 47
    .line 48
    const/4 p4, 0x2

    .line 49
    new-array p4, p4, [I

    .line 50
    .line 51
    iput-object p4, p0, Lj/d;->e:Ljava/lang/Object;

    .line 52
    .line 53
    :cond_4
    iget-object p4, p0, Lj/d;->e:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p4, [I

    .line 56
    .line 57
    :cond_5
    aput v1, p4, v1

    .line 58
    .line 59
    aput v1, p4, v2

    .line 60
    .line 61
    instance-of v6, v0, Lp/c;

    .line 62
    .line 63
    if-eqz v6, :cond_6

    .line 64
    .line 65
    check-cast v0, Lp/c;

    .line 66
    .line 67
    invoke-interface {v0, p1, p2, p4, p3}, Lp/c;->c(II[II)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_6
    if-nez p3, :cond_7

    .line 72
    .line 73
    :try_start_0
    invoke-interface {v0, v3, p1, p2, p4}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catch_0
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    :cond_7
    :goto_2
    if-eqz p5, :cond_8

    .line 81
    .line 82
    invoke-virtual {v3, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 83
    .line 84
    .line 85
    aget p1, p5, v1

    .line 86
    .line 87
    sub-int/2addr p1, v4

    .line 88
    aput p1, p5, v1

    .line 89
    .line 90
    aget p1, p5, v2

    .line 91
    .line 92
    sub-int/2addr p1, v5

    .line 93
    aput p1, p5, v2

    .line 94
    .line 95
    :cond_8
    aget p1, p4, v1

    .line 96
    .line 97
    if-nez p1, :cond_9

    .line 98
    .line 99
    aget p1, p4, v2

    .line 100
    .line 101
    if-eqz p1, :cond_a

    .line 102
    .line 103
    :cond_9
    move v1, v2

    .line 104
    :cond_a
    :goto_3
    return v1
.end method

.method public final d(III[I)V
    .locals 8

    .line 1
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lj/d;->e(IIII[II[I)Z

    return-void
.end method

.method public final e(IIII[II[I)Z
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v6, p4

    .line 3
    .line 4
    move-object/from16 v7, p5

    .line 5
    .line 6
    move/from16 v1, p6

    .line 7
    .line 8
    iget-boolean v2, v0, Lj/d;->a:Z

    .line 9
    .line 10
    const/4 v8, 0x0

    .line 11
    if-eqz v2, :cond_a

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lj/d;->f(I)Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object v9

    .line 17
    if-nez v9, :cond_0

    .line 18
    .line 19
    return v8

    .line 20
    :cond_0
    const/4 v10, 0x1

    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    if-nez p2, :cond_2

    .line 24
    .line 25
    if-nez p3, :cond_2

    .line 26
    .line 27
    if-eqz v6, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    if-eqz v7, :cond_a

    .line 31
    .line 32
    aput v8, v7, v8

    .line 33
    .line 34
    aput v8, v7, v10

    .line 35
    .line 36
    goto/16 :goto_4

    .line 37
    .line 38
    :cond_2
    :goto_0
    iget-object v11, v0, Lj/d;->d:Landroid/view/View;

    .line 39
    .line 40
    if-eqz v7, :cond_3

    .line 41
    .line 42
    invoke-virtual {v11, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 43
    .line 44
    .line 45
    aget v2, v7, v8

    .line 46
    .line 47
    aget v3, v7, v10

    .line 48
    .line 49
    move v12, v2

    .line 50
    move v13, v3

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    move v12, v8

    .line 53
    move v13, v12

    .line 54
    :goto_1
    if-nez p7, :cond_5

    .line 55
    .line 56
    iget-object v2, v0, Lj/d;->e:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v2, [I

    .line 59
    .line 60
    if-nez v2, :cond_4

    .line 61
    .line 62
    const/4 v2, 0x2

    .line 63
    new-array v2, v2, [I

    .line 64
    .line 65
    iput-object v2, v0, Lj/d;->e:Ljava/lang/Object;

    .line 66
    .line 67
    :cond_4
    iget-object v2, v0, Lj/d;->e:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v2, [I

    .line 70
    .line 71
    aput v8, v2, v8

    .line 72
    .line 73
    aput v8, v2, v10

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_5
    move-object/from16 v2, p7

    .line 77
    .line 78
    :goto_2
    instance-of v3, v9, Lp/d;

    .line 79
    .line 80
    if-eqz v3, :cond_6

    .line 81
    .line 82
    check-cast v9, Lp/d;

    .line 83
    .line 84
    check-cast v9, Landroidx/core/widget/NestedScrollView;

    .line 85
    .line 86
    invoke-virtual {v9, v6, v1, v2}, Landroidx/core/widget/NestedScrollView;->o(II[I)V

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_6
    aget v3, v2, v8

    .line 91
    .line 92
    add-int v3, v3, p3

    .line 93
    .line 94
    aput v3, v2, v8

    .line 95
    .line 96
    aget v3, v2, v10

    .line 97
    .line 98
    add-int/2addr v3, v6

    .line 99
    aput v3, v2, v10

    .line 100
    .line 101
    instance-of v2, v9, Lp/c;

    .line 102
    .line 103
    if-eqz v2, :cond_7

    .line 104
    .line 105
    check-cast v9, Lp/c;

    .line 106
    .line 107
    invoke-interface {v9, v6, v1}, Lp/c;->d(II)V

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_7
    if-nez v1, :cond_8

    .line 112
    .line 113
    move-object v1, v9

    .line 114
    move-object v2, v11

    .line 115
    move v3, p1

    .line 116
    move/from16 v4, p2

    .line 117
    .line 118
    move/from16 v5, p3

    .line 119
    .line 120
    move/from16 v6, p4

    .line 121
    .line 122
    :try_start_0
    invoke-interface/range {v1 .. v6}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :catch_0
    invoke-static {v9}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    :cond_8
    :goto_3
    if-eqz v7, :cond_9

    .line 130
    .line 131
    invoke-virtual {v11, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 132
    .line 133
    .line 134
    aget v1, v7, v8

    .line 135
    .line 136
    sub-int/2addr v1, v12

    .line 137
    aput v1, v7, v8

    .line 138
    .line 139
    aget v1, v7, v10

    .line 140
    .line 141
    sub-int/2addr v1, v13

    .line 142
    aput v1, v7, v10

    .line 143
    .line 144
    :cond_9
    return v10

    .line 145
    :cond_a
    :goto_4
    return v8
.end method

.method public final f(I)Landroid/view/ViewParent;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lj/d;->c:Landroid/view/ViewParent;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lj/d;->b:Ljava/lang/Object;

    :goto_0
    check-cast p1, Landroid/view/ViewParent;

    return-object p1
.end method

.method public final g(Lj/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lj/e;

    .line 4
    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lj/d;->b:Ljava/lang/Object;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p1, Lj/e;->i:Lj/d;

    .line 12
    .line 13
    if-eq v0, p0, :cond_0

    .line 14
    .line 15
    iput-object p0, p1, Lj/e;->i:Lj/d;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lj/d;->g(Lj/e;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final h(II)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p2}, Lj/d;->f(I)Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return v2

    .line 15
    :cond_1
    iget-boolean v0, p0, Lj/d;->a:Z

    .line 16
    .line 17
    if-eqz v0, :cond_a

    .line 18
    .line 19
    iget-object v0, p0, Lj/d;->d:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    move-object v4, v0

    .line 26
    :goto_1
    if-eqz v3, :cond_a

    .line 27
    .line 28
    instance-of v5, v3, Lp/c;

    .line 29
    .line 30
    if-eqz v5, :cond_2

    .line 31
    .line 32
    move-object v6, v3

    .line 33
    check-cast v6, Lp/c;

    .line 34
    .line 35
    invoke-interface {v6, p1, p2}, Lp/c;->b(II)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    if-nez p2, :cond_3

    .line 41
    .line 42
    :try_start_0
    invoke-interface {v3, v4, v0, p1}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    .line 43
    .line 44
    .line 45
    move-result v6
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_2

    .line 47
    :catch_0
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    :cond_3
    move v6, v1

    .line 51
    :goto_2
    if-eqz v6, :cond_8

    .line 52
    .line 53
    if-eqz p2, :cond_5

    .line 54
    .line 55
    if-eq p2, v2, :cond_4

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_4
    iput-object v3, p0, Lj/d;->c:Landroid/view/ViewParent;

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_5
    iput-object v3, p0, Lj/d;->b:Ljava/lang/Object;

    .line 62
    .line 63
    :goto_3
    if-eqz v5, :cond_6

    .line 64
    .line 65
    check-cast v3, Lp/c;

    .line 66
    .line 67
    invoke-interface {v3, v4, v0, p1, p2}, Lp/c;->a(Landroid/view/View;Landroid/view/View;II)V

    .line 68
    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_6
    if-nez p2, :cond_7

    .line 72
    .line 73
    :try_start_1
    invoke-interface {v3, v4, v0, p1}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    .line 75
    .line 76
    goto :goto_4

    .line 77
    :catch_1
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    :cond_7
    :goto_4
    return v2

    .line 81
    :cond_8
    instance-of v5, v3, Landroid/view/View;

    .line 82
    .line 83
    if-eqz v5, :cond_9

    .line 84
    .line 85
    move-object v4, v3

    .line 86
    check-cast v4, Landroid/view/View;

    .line 87
    .line 88
    :cond_9
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    goto :goto_1

    .line 93
    :cond_a
    return v1
.end method

.method public final i(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lj/d;->f(I)Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    instance-of v1, v0, Lp/c;

    .line 8
    .line 9
    iget-object v2, p0, Lj/d;->d:Landroid/view/View;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lp/c;

    .line 14
    .line 15
    invoke-interface {v0, p1, v2}, Lp/c;->e(ILandroid/view/View;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-nez p1, :cond_1

    .line 20
    .line 21
    :try_start_0
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    if-eq p1, v1, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iput-object v0, p0, Lj/d;->c:Landroid/view/ViewParent;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    iput-object v0, p0, Lj/d;->b:Ljava/lang/Object;

    .line 39
    .line 40
    :cond_4
    :goto_1
    return-void
.end method
