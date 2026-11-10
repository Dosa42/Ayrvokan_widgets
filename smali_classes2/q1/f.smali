.class public final Lq1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final K:Z

.field public static L:Lo1/j0;


# instance fields
.field public A:Z

.field public B:Z

.field public final C:Landroidx/fragment/app/h;

.field public final D:Landroidx/fragment/app/h;

.field public final E:Lh/a;

.field public F:Lu1/i;

.field public final G:Lu1/o;

.field public H:Lo1/n0;

.field public I:I

.field public final J:Landroidx/activity/a;

.field public final a:Lq1/c;

.field public final b:Lcom/nomone/vr_desktop/LaunchActivity;

.field public final c:Landroid/view/ViewGroup;

.field public final d:Lcom/nomone/browser_module/OpenGLView;

.field public e:La2/c0;

.field public f:La2/b0;

.field public g:La2/b0;

.field public h:Z

.field public i:F

.field public j:F

.field public final k:Ljava/util/List;

.field public l:J

.field public m:F

.field public final n:Ljava/util/ArrayList;

.field public final o:Ljava/util/ArrayList;

.field public p:Landroidx/fragment/app/h;

.field public final q:Lo1/q;

.field public final r:Lo1/q;

.field public final s:Lq1/i;

.field public t:Lq1/i;

.field public u:Lo1/p;

.field public final v:Landroidx/fragment/app/h;

.field public w:F

.field public x:Ljava/lang/Runnable;

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
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

    sput-boolean v0, Lq1/f;->K:Z

    return-void
.end method

.method public constructor <init>(Lcom/nomone/vr_desktop/LaunchActivity;Lcom/nomone/vr_desktop/Input/RootLayout;Lo1/j0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lq1/f;->h:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lq1/f;->i:F

    .line 9
    .line 10
    iput v1, p0, Lq1/f;->j:F

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lq1/f;->k:Ljava/util/List;

    .line 22
    .line 23
    const/high16 v1, 0x42080000    # 34.0f

    .line 24
    .line 25
    iput v1, p0, Lq1/f;->m:F

    .line 26
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lq1/f;->n:Ljava/util/ArrayList;

    .line 33
    .line 34
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lq1/f;->o:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance v1, Lo1/q;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Lo1/q;-><init>(Z)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lq1/f;->q:Lo1/q;

    .line 47
    .line 48
    new-instance v1, Lo1/q;

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-direct {v1, v2}, Lo1/q;-><init>(Z)V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lq1/f;->r:Lo1/q;

    .line 55
    .line 56
    new-instance v1, Landroidx/fragment/app/h;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-direct {v1, v2}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/g;)V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lq1/f;->v:Landroidx/fragment/app/h;

    .line 63
    .line 64
    new-instance v1, Landroidx/fragment/app/h;

    .line 65
    .line 66
    invoke-direct {v1, v2}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/g;)V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Lq1/f;->C:Landroidx/fragment/app/h;

    .line 70
    .line 71
    new-instance v1, Landroidx/fragment/app/h;

    .line 72
    .line 73
    invoke-direct {v1, v2}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/g;)V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lq1/f;->D:Landroidx/fragment/app/h;

    .line 77
    .line 78
    new-instance v1, Lh/a;

    .line 79
    .line 80
    const/16 v2, 0xc

    .line 81
    .line 82
    invoke-direct {v1, v2}, Lh/a;-><init>(I)V

    .line 83
    .line 84
    .line 85
    iput-object v1, p0, Lq1/f;->E:Lh/a;

    .line 86
    .line 87
    new-instance v1, Landroidx/activity/a;

    .line 88
    .line 89
    const/16 v2, 0xd

    .line 90
    .line 91
    invoke-direct {v1, p0, v2}, Landroidx/activity/a;-><init>(Ljava/lang/Object;I)V

    .line 92
    .line 93
    .line 94
    iput-object v1, p0, Lq1/f;->J:Landroidx/activity/a;

    .line 95
    .line 96
    iput-object p1, p0, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 97
    .line 98
    iput-object p2, p0, Lq1/f;->c:Landroid/view/ViewGroup;

    .line 99
    .line 100
    sput-object p3, Lq1/f;->L:Lo1/j0;

    .line 101
    .line 102
    new-instance v1, Lq1/c;

    .line 103
    .line 104
    iget-object p3, p3, Lo1/j0;->b:Landroid/os/Handler;

    .line 105
    .line 106
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    invoke-direct {v1, p0, p3}, Lq1/c;-><init>(Lq1/f;Landroid/os/Looper;)V

    .line 111
    .line 112
    .line 113
    iput-object v1, p0, Lq1/f;->a:Lq1/c;

    .line 114
    .line 115
    new-instance p3, Landroid/util/DisplayMetrics;

    .line 116
    .line 117
    invoke-direct {p3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1, p3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 129
    .line 130
    .line 131
    iget v1, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 132
    .line 133
    iput v1, p0, Lq1/f;->y:I

    .line 134
    .line 135
    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 136
    .line 137
    iput p3, p0, Lq1/f;->z:I

    .line 138
    .line 139
    new-instance p3, Lcom/nomone/browser_module/OpenGLView;

    .line 140
    .line 141
    invoke-direct {p3, p1}, Lcom/nomone/browser_module/OpenGLView;-><init>(Landroid/content/Context;)V

    .line 142
    .line 143
    .line 144
    iput-object p3, p0, Lq1/f;->d:Lcom/nomone/browser_module/OpenGLView;

    .line 145
    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Lcom/nomone/vr_desktop/MyApplication;

    .line 151
    .line 152
    iget-object v1, v1, Lcom/nomone/vr_desktop/MyApplication;->b:Ljava/lang/ThreadGroup;

    .line 153
    .line 154
    iput-object v1, p3, Lcom/nomone/browser_module/OpenGLView;->f:Ljava/lang/ThreadGroup;

    .line 155
    .line 156
    invoke-virtual {p3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    new-instance v2, Lo1/w;

    .line 161
    .line 162
    invoke-direct {v2, p3}, Lo1/w;-><init>(Lcom/nomone/browser_module/OpenGLView;)V

    .line 163
    .line 164
    .line 165
    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 166
    .line 167
    .line 168
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, p3, Lcom/nomone/browser_module/OpenGLView;->d:Landroid/view/Choreographer;

    .line 173
    .line 174
    new-instance v2, Lo1/s;

    .line 175
    .line 176
    invoke-direct {v2, p3}, Lo1/s;-><init>(Lcom/nomone/browser_module/OpenGLView;)V

    .line 177
    .line 178
    .line 179
    iput-object v2, p3, Lcom/nomone/browser_module/OpenGLView;->e:Lo1/s;

    .line 180
    .line 181
    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 182
    .line 183
    .line 184
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 185
    .line 186
    const/4 v2, -0x1

    .line 187
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    .line 192
    .line 193
    new-instance v1, Lq1/e;

    .line 194
    .line 195
    invoke-direct {v1, p0}, Lq1/e;-><init>(Lq1/f;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p3, v1}, Lcom/nomone/browser_module/OpenGLView;->setListener(Lo1/u;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 202
    .line 203
    .line 204
    new-instance p2, Lu1/o;

    .line 205
    .line 206
    invoke-direct {p2, p0}, Lu1/o;-><init>(Lq1/f;)V

    .line 207
    .line 208
    .line 209
    iput-object p2, p0, Lq1/f;->G:Lu1/o;

    .line 210
    .line 211
    new-instance p2, Lq1/i;

    .line 212
    .line 213
    const-string p3, "loadingShader.txt"

    .line 214
    .line 215
    invoke-direct {p2, p1, p3, v0}, Lq1/i;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 216
    .line 217
    .line 218
    iput-object p2, p0, Lq1/f;->s:Lq1/i;

    .line 219
    .line 220
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq1/f;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lq1/f;->y:I

    .line 6
    .line 7
    div-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Lq1/f;->y:I

    .line 11
    .line 12
    :goto_0
    return v0
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget v0, p0, Lq1/f;->i:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq1/f;->d:Lcom/nomone/browser_module/OpenGLView;

    invoke-virtual {v0, p1}, Lcom/nomone/browser_module/OpenGLView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lq1/f;->d:Lcom/nomone/browser_module/OpenGLView;

    .line 3
    .line 4
    iput-boolean v0, v1, Lcom/nomone/browser_module/OpenGLView;->j:Z

    .line 5
    .line 6
    return-void
.end method

.method public final e(ZZ)V
    .locals 3

    .line 1
    const v0, 0x8d40

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lq1/f;->a()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v2, p0, Lq1/f;->z:I

    .line 13
    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    iget-boolean p1, p0, Lq1/f;->h:Z

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    move p1, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move p1, v1

    .line 23
    :goto_0
    invoke-static {p1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 24
    .line 25
    .line 26
    iget-boolean p1, p0, Lq1/f;->h:Z

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    move p1, v0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move p1, v1

    .line 33
    :goto_1
    invoke-static {p1, v1, v0, v2}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 41
    .line 42
    .line 43
    :goto_2
    const/16 p1, 0xc11

    .line 44
    .line 45
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 46
    .line 47
    .line 48
    if-eqz p2, :cond_3

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    const p2, 0x3f333333    # 0.7f

    .line 52
    .line 53
    .line 54
    invoke-static {p2, p2, p2, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 55
    .line 56
    .line 57
    const/16 p1, 0x4000

    .line 58
    .line 59
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 60
    .line 61
    .line 62
    :cond_3
    const/16 p1, 0xbe2

    .line 63
    .line 64
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 65
    .line 66
    .line 67
    const/16 p1, 0x302

    .line 68
    .line 69
    const/16 p2, 0x303

    .line 70
    .line 71
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lq1/f;->q:Lo1/q;

    .line 75
    .line 76
    invoke-virtual {p1}, Lo1/q;->d()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final f(F)V
    .locals 4

    .line 1
    iput p1, p0, Lq1/f;->j:F

    .line 2
    .line 3
    iget-object v0, p0, Lq1/f;->C:Landroidx/fragment/app/h;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [F

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lq1/f;->D:Landroidx/fragment/app/h;

    .line 14
    .line 15
    iget-object v3, v1, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, [F

    .line 18
    .line 19
    invoke-static {v3, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, p1, v2}, Landroidx/fragment/app/h;->r(FF)V

    .line 24
    .line 25
    .line 26
    neg-float p1, p1

    .line 27
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/h;->r(FF)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lq1/f;->d()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final g(IZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/i0;->j0(Lcom/nomone/vr_desktop/LaunchActivity;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lq1/f;->d()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lq1/f;->L:Lo1/j0;

    .line 10
    .line 11
    new-instance v2, Lo0/n;

    .line 12
    .line 13
    const/16 v3, 0xc

    .line 14
    .line 15
    invoke-direct {v2, p0, v3}, Lo0/n;-><init>(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    const-string v3, "requestRender() after changing orientation"

    .line 19
    .line 20
    const-wide/16 v4, 0xfa

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3, v4, v5}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 23
    .line 24
    .line 25
    sget v1, Lcom/google/android/gms/internal/play_billing/i0;->h:I

    .line 26
    .line 27
    const/4 v2, -0x1

    .line 28
    if-ne v1, v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    sput v0, Lcom/google/android/gms/internal/play_billing/i0;->h:I

    .line 35
    .line 36
    :cond_0
    sget v0, Lcom/google/android/gms/internal/play_billing/i0;->h:I

    .line 37
    .line 38
    if-ne v0, p1, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    if-eqz p2, :cond_3

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    move p2, p1

    .line 45
    :goto_0
    iget-object v0, p0, Lq1/f;->k:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-ge p2, v1, :cond_2

    .line 52
    .line 53
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lq1/d;

    .line 58
    .line 59
    invoke-interface {v0}, Lq1/d;->a()V

    .line 60
    .line 61
    .line 62
    add-int/lit8 p2, p2, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-ge p1, p2, :cond_3

    .line 70
    .line 71
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Lq1/d;

    .line 76
    .line 77
    iget-boolean v1, p0, Lq1/f;->h:Z

    .line 78
    .line 79
    invoke-interface {p2, v1}, Lq1/d;->c(Z)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 p1, p1, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    return-void
.end method

.method public final h(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lq1/f;->h:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_0
    iget-object v2, p0, Lq1/f;->k:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v1, v3, :cond_1

    .line 15
    .line 16
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lq1/d;

    .line 21
    .line 22
    invoke-interface {v2}, Lq1/d;->a()V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iput-boolean p1, p0, Lq1/f;->h:Z

    .line 29
    .line 30
    sget-object v1, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    const-string v1, "Settings_General_ScreenOrientationVR"

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const-string v1, "Settings_General_ScreenOrientation"

    .line 38
    .line 39
    :goto_1
    invoke-static {v1, v0}, Lo1/y;->c(Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {p0, v1, v0}, Lq1/f;->g(IZ)V

    .line 44
    .line 45
    .line 46
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-ge v0, v1, :cond_3

    .line 51
    .line 52
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lq1/d;

    .line 57
    .line 58
    invoke-interface {v1, p1}, Lq1/d;->c(Z)V

    .line 59
    .line 60
    .line 61
    add-int/lit8 v0, v0, 0x1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    return-void
.end method
