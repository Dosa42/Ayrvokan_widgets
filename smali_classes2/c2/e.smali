.class public abstract Lc2/e;
.super La2/v;
.source "SourceFile"


# static fields
.field public static final S:Z


# instance fields
.field public A:I

.field public B:Z

.field public C:J

.field public D:F

.field public E:F

.field public F:F

.field public G:F

.field public H:F

.field public I:Z

.field public J:Z

.field public K:Lc2/a;

.field public L:Lc2/a;

.field public M:Lc2/a;

.field public final N:Lq1/s;

.field public final O:Lc2/b;

.field public final P:Lc2/b;

.field public Q:Z

.field public R:Z

.field public final r:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

.field public final s:Lq1/f;

.field public t:Lc2/c;

.field public u:Z

.field public final v:Lu1/z;

.field public final w:Ljava/util/ArrayList;

.field public final x:Ljava/util/ArrayList;

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "-"

    const/4 v1, 0x2

    const-string v2, "1.9.3-GooglePlay"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "dev"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lc2/e;->S:Z

    return-void
.end method

.method public constructor <init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;Lq1/f;Lz1/c;)V
    .locals 5

    .line 1
    invoke-direct {p0, p3}, La2/v;-><init>(Lz1/c;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc2/e;->u:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc2/e;->w:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc2/e;->x:Ljava/util/ArrayList;

    const-string v1, "LinuxApplicationWindow verticalScrollFactor"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lo1/y;->b(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lc2/e;->F:F

    new-instance v1, Lq1/s;

    new-instance v2, Lc2/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lc2/a;-><init>(Lc2/e;I)V

    invoke-direct {v1, v2}, Lq1/s;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lc2/e;->N:Lq1/s;

    new-instance v1, Lc2/b;

    invoke-direct {v1, p0, v3}, Lc2/b;-><init>(Lc2/e;I)V

    iput-object v1, p0, Lc2/e;->O:Lc2/b;

    new-instance v2, Lc2/b;

    invoke-direct {v2, p0, v0}, Lc2/b;-><init>(Lc2/e;I)V

    iput-object v2, p0, Lc2/e;->P:Lc2/b;

    iput-object p1, p0, Lc2/e;->r:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    iput-object p2, p0, Lc2/e;->s:Lq1/f;

    const/4 p1, 0x0

    iput-object p1, p0, Lc2/e;->t:Lc2/c;

    new-instance p1, Lu1/z;

    new-instance v0, Lh0/b;

    const/16 v3, 0xf

    invoke-direct {v0, p0, v3}, Lh0/b;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p2, p0, p3, v0}, Lu1/z;-><init>(Lq1/f;La2/r;Lz1/c;Lu1/y;)V

    iput-object p1, p0, Lc2/e;->v:Lu1/z;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v3, 0x2710

    add-long/2addr p1, v3

    iput-wide p1, p0, Lc2/e;->C:J

    const-string p1, "DesktopMode_Fullscreen"

    invoke-static {p1, v1}, Lo1/y;->d(Ljava/lang/String;Lo1/b;)V

    const-string p1, "Is pointer captured"

    invoke-static {p1, v2}, Lo1/y;->d(Ljava/lang/String;Lo1/b;)V

    return-void
.end method


# virtual methods
.method public A(Lo1/q;Z)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lc2/e;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lc2/e;->s:Lq1/f;

    .line 6
    .line 7
    iget-object p1, p1, Lq1/f;->s:Lq1/i;

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    long-to-double v0, v0

    .line 14
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    div-double/2addr v0, v2

    .line 20
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    .line 21
    .line 22
    rem-double/2addr v0, v2

    .line 23
    double-to-float p2, v0

    .line 24
    iget v0, p0, La2/v;->l:I

    .line 25
    .line 26
    int-to-float v0, v0

    .line 27
    iget v1, p0, La2/v;->m:I

    .line 28
    .line 29
    int-to-float v1, v1

    .line 30
    invoke-virtual {p1}, Lo1/q;->d()V

    .line 31
    .line 32
    .line 33
    iget v2, p1, Lq1/i;->p:I

    .line 34
    .line 35
    invoke-static {v2, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 36
    .line 37
    .line 38
    iget p2, p1, Lq1/i;->q:I

    .line 39
    .line 40
    invoke-static {p2, v0, v1}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, La2/v;->k:Lz1/g;

    .line 44
    .line 45
    invoke-interface {p2}, Lz1/g;->j()Lo1/p;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {p2}, Lz1/g;->f()Landroidx/fragment/app/h;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {p2}, Lz1/g;->b()Landroidx/fragment/app/h;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-static {v0, v1, p2, p1, v2}, Lo1/r;->b(Lo1/p;Landroidx/fragment/app/h;Landroidx/fragment/app/h;Lo1/q;Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lo1/q;->b()V

    .line 62
    .line 63
    .line 64
    const/4 p1, 0x1

    .line 65
    return p1

    .line 66
    :cond_0
    invoke-super {p0, p1, p2}, La2/v;->A(Lo1/q;Z)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    return p1
.end method

.method public final B(Z)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lc2/e;->s:Lq1/f;

    .line 5
    .line 6
    iget-object p1, p1, Lq1/f;->c:Landroid/view/ViewGroup;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 9
    .line 10
    .line 11
    sget-object p1, Lq1/f;->L:Lo1/j0;

    .line 12
    .line 13
    new-instance v1, Lc2/a;

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-direct {v1, p0, v2}, Lc2/a;-><init>(Lc2/e;I)V

    .line 17
    .line 18
    .line 19
    const-string v2, "toggleFullScreenTask haptic feedback"

    .line 20
    .line 21
    const-wide/16 v3, 0x64

    .line 22
    .line 23
    invoke-virtual {p1, v1, v2, v3, v4}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lc2/e;->B:Z

    .line 28
    .line 29
    const-wide/16 v1, -0x1

    .line 30
    .line 31
    iput-wide v1, p0, Lc2/e;->C:J

    .line 32
    .line 33
    iget-object p1, p0, Lc2/e;->r:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 36
    .line 37
    iget-boolean p1, p1, La2/p;->n0:Z

    .line 38
    .line 39
    xor-int/2addr p1, v0

    .line 40
    invoke-virtual {p0, p1}, Lc2/e;->D(Z)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final C(IIIII)V
    .locals 10

    .line 1
    iget-object v0, p0, Lc2/e;->w:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lc2/e;->y:I

    .line 5
    .line 6
    iget-object v2, p0, Lc2/e;->w:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lc2/e;->w:Ljava/util/ArrayList;

    .line 15
    .line 16
    iget v2, p0, Lc2/e;->y:I

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lc2/d;

    .line 23
    .line 24
    iput p1, v1, Lc2/d;->a:I

    .line 25
    .line 26
    iput p2, v1, Lc2/d;->b:I

    .line 27
    .line 28
    iput p3, v1, Lc2/d;->c:I

    .line 29
    .line 30
    iput p4, v1, Lc2/d;->d:I

    .line 31
    .line 32
    iput p5, v1, Lc2/d;->e:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, p0, Lc2/e;->w:Ljava/util/ArrayList;

    .line 36
    .line 37
    new-instance v9, Lc2/d;

    .line 38
    .line 39
    move-object v2, v9

    .line 40
    move-object v3, p0

    .line 41
    move v4, p1

    .line 42
    move v5, p2

    .line 43
    move v6, p3

    .line 44
    move v7, p4

    .line 45
    move v8, p5

    .line 46
    invoke-direct/range {v2 .. v8}, Lc2/d;-><init>(Lc2/e;IIIII)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    :goto_0
    iget p1, p0, Lc2/e;->y:I

    .line 53
    .line 54
    add-int/lit8 p1, p1, 0x1

    .line 55
    .line 56
    iput p1, p0, Lc2/e;->y:I

    .line 57
    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p1
.end method

.method public final D(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc2/e;->s:Lq1/f;

    .line 2
    .line 3
    iget-object v0, v0, Lq1/f;->F:Lu1/i;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x3

    .line 10
    :goto_0
    iput p1, v0, Lu1/i;->N:I

    .line 11
    .line 12
    invoke-virtual {v0}, Lu1/i;->l()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final b(Lu1/x;)Z
    .locals 11

    .line 1
    iget-object v0, p1, Lu1/x;->a:Landroid/view/KeyEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    const v2, 0x22006

    .line 17
    .line 18
    .line 19
    and-int/2addr v0, v2

    .line 20
    const/4 v2, 0x1

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    move v0, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v0, v1

    .line 26
    :goto_1
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget v0, p1, Lu1/x;->b:I

    .line 29
    .line 30
    const/4 v3, 0x4

    .line 31
    if-ne v0, v3, :cond_2

    .line 32
    .line 33
    return v2

    .line 34
    :cond_2
    iget v0, p1, Lu1/x;->e:I

    .line 35
    .line 36
    if-lez v0, :cond_3

    .line 37
    .line 38
    goto/16 :goto_7

    .line 39
    .line 40
    :cond_3
    iget v0, p1, Lu1/x;->d:I

    .line 41
    .line 42
    iget v3, p1, Lu1/x;->b:I

    .line 43
    .line 44
    iget p1, p1, Lu1/x;->c:I

    .line 45
    .line 46
    const/4 v4, 0x2

    .line 47
    const/16 v5, 0x2c

    .line 48
    .line 49
    sget-boolean v6, Lc2/e;->S:Z

    .line 50
    .line 51
    const/16 v7, 0x52

    .line 52
    .line 53
    const/16 v8, 0x2d

    .line 54
    .line 55
    const/16 v9, 0x2a

    .line 56
    .line 57
    const/16 v10, 0x1d

    .line 58
    .line 59
    if-eqz v0, :cond_9

    .line 60
    .line 61
    if-eq v0, v2, :cond_4

    .line 62
    .line 63
    goto :goto_7

    .line 64
    :cond_4
    if-ne p1, v10, :cond_5

    .line 65
    .line 66
    iput-boolean v1, p0, Lc2/e;->Q:Z

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_5
    if-ne p1, v9, :cond_6

    .line 70
    .line 71
    iput-boolean v1, p0, Lc2/e;->R:Z

    .line 72
    .line 73
    :cond_6
    :goto_2
    if-ne p1, v8, :cond_7

    .line 74
    .line 75
    iget-boolean v0, p0, Lc2/e;->Q:Z

    .line 76
    .line 77
    if-eqz v0, :cond_7

    .line 78
    .line 79
    iget-boolean v0, p0, Lc2/e;->R:Z

    .line 80
    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    if-eqz v6, :cond_7

    .line 84
    .line 85
    move p1, v5

    .line 86
    :cond_7
    if-nez p1, :cond_8

    .line 87
    .line 88
    if-ne v3, v7, :cond_8

    .line 89
    .line 90
    move p1, v4

    .line 91
    goto :goto_4

    .line 92
    :cond_8
    const/4 v0, 0x6

    .line 93
    goto :goto_5

    .line 94
    :cond_9
    if-ne p1, v10, :cond_a

    .line 95
    .line 96
    iput-boolean v2, p0, Lc2/e;->Q:Z

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_a
    if-ne p1, v9, :cond_b

    .line 100
    .line 101
    iput-boolean v2, p0, Lc2/e;->R:Z

    .line 102
    .line 103
    :cond_b
    :goto_3
    if-ne p1, v8, :cond_c

    .line 104
    .line 105
    iget-boolean v0, p0, Lc2/e;->Q:Z

    .line 106
    .line 107
    if-eqz v0, :cond_c

    .line 108
    .line 109
    iget-boolean v0, p0, Lc2/e;->R:Z

    .line 110
    .line 111
    if-eqz v0, :cond_c

    .line 112
    .line 113
    if-eqz v6, :cond_c

    .line 114
    .line 115
    move p1, v5

    .line 116
    :cond_c
    if-nez p1, :cond_d

    .line 117
    .line 118
    if-ne v3, v7, :cond_d

    .line 119
    .line 120
    move p1, v2

    .line 121
    :goto_4
    move v6, p1

    .line 122
    move v8, v1

    .line 123
    goto :goto_6

    .line 124
    :cond_d
    const/4 v0, 0x5

    .line 125
    :goto_5
    move v4, p1

    .line 126
    move v6, v0

    .line 127
    move v8, v3

    .line 128
    :goto_6
    move v7, v4

    .line 129
    const/4 v9, 0x0

    .line 130
    const/4 v10, 0x0

    .line 131
    move-object v5, p0

    .line 132
    invoke-virtual/range {v5 .. v10}, Lc2/e;->C(IIIII)V

    .line 133
    .line 134
    .line 135
    :goto_7
    iget-object p1, p0, Lc2/e;->s:Lq1/f;

    .line 136
    .line 137
    iget-object p1, p1, Lq1/f;->c:Landroid/view/ViewGroup;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 140
    .line 141
    .line 142
    return v2
.end method

.method public u(Lu1/w;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc2/e;->v:Lu1/z;

    invoke-virtual {v0, p1}, Lu1/z;->a(Lu1/w;)Z

    move-result p1

    return p1
.end method

.method public final y()V
    .locals 2

    .line 1
    invoke-super {p0}, La2/s;->y()V

    iget-object v0, p0, Lc2/e;->t:Lc2/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc2/c;->f()V

    :cond_0
    iget-object v0, p0, Lc2/e;->O:Lc2/b;

    const-string v1, "DesktopMode_Fullscreen"

    invoke-static {v1, v0}, Lo1/y;->i(Ljava/lang/String;Lo1/b;)V

    iget-object v0, p0, Lc2/e;->P:Lc2/b;

    const-string v1, "Is pointer captured"

    invoke-static {v1, v0}, Lo1/y;->i(Ljava/lang/String;Lo1/b;)V

    return-void
.end method
