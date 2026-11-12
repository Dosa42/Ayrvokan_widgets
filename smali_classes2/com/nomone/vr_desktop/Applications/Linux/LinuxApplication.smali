.class public Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;
.super Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;
.source "SourceFile"


.field public static A:Z

.field public static B:Z

.field public static y:Ljava/lang/ThreadGroup;

.field public static z:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;


.field public final k:Z

.field public l:I

.field public m:I

.field public n:Z

.field public final o:Z

.field public final p:I

.field public final q:I

.field public r:Ljava/lang/Process;

.field public s:Z

.field public t:Z

.field public u:Ls1/m;

.field public v:Ls1/m;

.field public w:Ls1/m;

.field public x:[I


.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "LinuxAppTextureUpdate"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "FakeEvents"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lq1/f;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lq1/f;->a()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, La2/p;->H(Lq1/f;)F

    move-result v1

    mul-float/2addr v1, v0

    const/high16 v0, 0x40000000

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 2
    iget v2, p1, Lq1/f;->z:I

    int-to-float v2, v2

    .line 3
    iget-boolean v3, p1, Lq1/f;->h:Z

    .line 4
    invoke-virtual {p1}, Lq1/f;->b()Z

    move-result v4

    if-eqz v3, :cond_0

    if-eqz v4, :cond_1

    sget-object v3, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g:Ljava/lang/String;

    const-string v3, "Settings_VR_FullscreenHeight"

    const v4, 0x3f99999a

    .line 5
    invoke-static {v3, v4}, Lo1/y;->b(Ljava/lang/String;F)F

    move-result v3

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 6
    sget-object v3, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g:Ljava/lang/String;

    const-string v3, "Settings_FullscreenHeight"

    const v4, 0x3fa66666

    .line 7
    invoke-static {v3, v4}, Lo1/y;->b(Ljava/lang/String;F)F

    move-result v3

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f800000

    :goto_0
    mul-float/2addr v3, v2

    div-float/2addr v3, v0

    float-to-int v2, v3

    .line 8
    invoke-static {}, Lcom/nomone/GeckoView/MyGeckoView;->getGlobalDisplayDensity()F

    move-result v3

    div-float/2addr v0, v3

    int-to-float v3, v2

    mul-float v4, v3, v0

    float-to-int v4, v4

    const/16 v5, 0x1e0

    if-ge v4, v5, :cond_2

    const/high16 v0, 0x43f00000

    div-float/2addr v0, v3

    :cond_2
    new-instance v3, Ls1/n;

    invoke-direct {v3, p1}, Ls1/n;-><init>(Lq1/f;)V

    .line 9
    iput v1, v3, Lr1/q;->e:I

    iput v2, v3, Lr1/q;->f:I

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, v3, Lr1/q;->g:Z

    .line 11
    iput v0, v3, Ls1/n;->p:F

    .line 12
    iget-object p1, p1, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    invoke-static {p1}, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->i(Lcom/nomone/vr_desktop/LaunchActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Ubuntu 22.04"

    goto :goto_1

    :cond_3
    const-string p1, "Debian 12.7"

    .line 13
    :goto_1
    iput-object p1, v3, Ls1/n;->o:Ljava/lang/String;

    .line 14
    invoke-direct {p0, v3}, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;-><init>(Ls1/n;)V

    return-void
.end method

.method public constructor <init>(Ls1/n;)V
    .locals 12

    invoke-direct {p0}, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;-><init>()V

    sget-object v0, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g:Ljava/lang/String;

    const-string v0, "Settings_Linux_SafeMode"

    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 16
    iput-boolean v0, p0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->k:Z

    iget-object v2, p1, Lr1/q;->k:Lq1/f;

    iput-object v2, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 17
    iget-object v2, v2, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 18
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/nomone/vr_desktop/MyApplication;

    .line 19
    iget-object v2, v2, Lcom/nomone/vr_desktop/MyApplication;->b:Ljava/lang/ThreadGroup;

    .line 20
    sput-object v2, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->y:Ljava/lang/ThreadGroup;

    const-string v2, "Settings_Linux_16bitColor"

    .line 21
    invoke-static {v2, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    move-result v9

    .line 22
    iput-boolean v9, p0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->o:Z

    iget-object v2, p1, Lr1/q;->l:Lc/a;

    iget v3, p1, Lr1/q;->h:F

    iget v4, p1, Lr1/q;->e:I

    if-gtz v4, :cond_0

    const/16 v4, 0x320

    iput v4, p1, Lr1/q;->e:I

    :cond_0
    iget v4, p1, Lr1/q;->f:I

    if-gtz v4, :cond_1

    const/16 v4, 0x1e0

    iput v4, p1, Lr1/q;->f:I

    :cond_1
    iget v4, p1, Lr1/q;->e:I

    iput v4, p0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->p:I

    iget v5, p1, Lr1/q;->f:I

    iput v5, p0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->q:I

    iget-boolean v6, p1, Lr1/q;->g:Z

    if-nez v6, :cond_2

    iget v6, p1, Lr1/q;->i:F

    invoke-interface {v2, v6}, Ly1/a;->u(F)I

    move-result v6

    iget v7, p1, Lr1/q;->i:F

    invoke-interface {v2, v7}, Ly1/a;->g(F)I

    move-result v7

    add-int/2addr v7, v6

    sub-int/2addr v4, v7

    iput v4, p0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->p:I

    iget v4, p1, Lr1/q;->i:F

    invoke-interface {v2, v4, v3}, Ly1/a;->w(FF)I

    move-result v3

    iget v4, p1, Lr1/q;->i:F

    invoke-interface {v2, v4}, Ly1/a;->l(F)I

    move-result v2

    add-int/2addr v2, v3

    sub-int/2addr v5, v2

    iput v5, p0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->q:I

    :cond_2
    iget v2, p0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->p:I

    int-to-float v2, v2

    iget v3, p1, Ls1/n;->p:F

    mul-float/2addr v2, v3

    float-to-int v7, v2

    iput v7, p0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->p:I

    iget v2, p0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->q:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v8, v2

    iput v8, p0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->q:I

    new-instance v2, Lz1/c;

    const/4 v11, 0x1

    .line 23
    invoke-direct {v2, v11, v11}, Lz1/c;-><init>(II)V

    .line 24
    iput-object v2, p1, Lr1/q;->b:Lz1/c;

    new-instance v2, Ls1/e;

    invoke-direct {v2, p0, v1}, Ls1/e;-><init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;I)V

    if-eqz v0, :cond_3

    new-instance v0, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;

    iget-object v5, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    iget-object v6, p1, Lr1/q;->b:Lz1/c;

    new-instance v10, Ls1/f;

    invoke-direct {v10, v2}, Ls1/f;-><init>(Ljava/lang/Runnable;)V

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;-><init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;Lq1/f;Lz1/c;IIZLs1/f;)V

    iput-object v0, p1, Lr1/q;->a:La2/a;

    iget-boolean v0, p0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->t:Z

    if-nez v0, :cond_4

    .line 25
    new-instance v0, Ljava/lang/Thread;

    sget-object v2, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->y:Ljava/lang/ThreadGroup;

    new-instance v3, Ls1/e;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Ls1/e;-><init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;I)V

    const-string v4, "startLinuxThread"

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 26
    :cond_3
    new-instance v0, Ls1/r;

    iget-object v3, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    iget-object v4, p1, Lr1/q;->b:Lz1/c;

    new-instance v5, Landroidx/fragment/app/h;

    const/16 v6, 0x13

    invoke-direct {v5, v6, p0, v2}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, p0, v3, v4, v5}, Ls1/r;-><init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;Lq1/f;Lz1/c;Landroidx/fragment/app/h;)V

    iput-object v0, p1, Lr1/q;->a:La2/a;

    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->c(Lr1/q;)V

    .line 27
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 28
    iget-object p1, p1, Ls1/n;->o:Ljava/lang/String;

    invoke-virtual {v0, p1}, La2/p;->P(Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->e:La2/a;

    .line 30
    check-cast p1, Lc2/e;

    .line 31
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->c:La2/b;

    .line 32
    iget-object v2, v0, La2/b;->s:Lz1/g;

    .line 33
    iget-object v3, p1, Lc2/e;->v:Lu1/z;

    .line 34
    iput-object v2, v3, Lu1/z;->d:Lz1/g;

    .line 35
    instance-of v2, p1, Ls1/r;

    if-eqz v2, :cond_5

    check-cast p1, Ls1/r;

    .line 36
    iget-object v0, v0, La2/b;->g:Lv1/b;

    .line 37
    iput-object v0, p1, Ls1/r;->V:Lv1/b;

    :cond_5
    const-string p1, "Settings_Linux_StartFullscreen"

    .line 38
    invoke-static {p1, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 39
    sget-object p1, Lq1/f;->L:Lo1/j0;

    new-instance v0, Ls1/e;

    invoke-direct {v0, p0, v11}, Ls1/e;-><init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;I)V

    invoke-virtual {p1, v0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method

.method public static getInstance(Lq1/f;)Lr1/c;
    .locals 8

    .line 1
    sget-boolean v0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->A:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    sget-object v0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->z:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    iget-object v0, p0, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/i0;->T(Landroid/content/Context;Z)V

    invoke-static {v0, p0}, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;->ensureInstalled(Landroid/app/Activity;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :ubuntu_ready

    return-object v1

    :ubuntu_ready
    iget-object v0, p0, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    invoke-static {v0}, Lcom/nomone/vr_desktop/runtime/UbuntuRuntime;->startIfBare(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :ubuntu_legacy

    return-object v1

    :ubuntu_legacy
    const-string v0, "Linux image deployed"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v0, v2}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    return-object v1

    .line 26
    :cond_2
    new-instance v0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;-><init>(Lq1/f;)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->z:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    .line 32
    .line 33
    new-instance v0, Lr1/i;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lr1/i;-><init>(Lq1/f;)V

    .line 36
    .line 37
    .line 38
    sget-object v3, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 39
    .line 40
    const-string v3, "Should show phantom process killing dialog"

    .line 41
    .line 42
    const/4 v4, 0x1

    .line 43
    invoke-static {v3, v4}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-static {}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->p()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-nez v4, :cond_6

    .line 52
    .line 53
    if-nez v3, :cond_3

    .line 54
    .line 55
    goto/16 :goto_2

    .line 56
    .line 57
    :cond_3
    iget-object v3, p0, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 58
    .line 59
    const-string v5, "Last linux launch crashed"

    .line 60
    .line 61
    invoke-static {v5, v2}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    sput-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 66
    .line 67
    new-instance v5, Lr1/y;

    .line 68
    .line 69
    invoke-direct {v5, p0}, Lr1/y;-><init>(Lq1/f;)V

    .line 70
    .line 71
    .line 72
    const v6, 0x7f0b0055

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    iput-object v6, v5, Lr1/y;->d:Ljava/lang/String;

    .line 84
    .line 85
    if-eqz v2, :cond_4

    .line 86
    .line 87
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    const v7, 0x7f0b0053

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    const v7, 0x7f0b0054

    .line 100
    .line 101
    .line 102
    :goto_0
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    iput-object v6, v5, Lr1/y;->e:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    const v7, 0x7f0b0050

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {v5, v6}, Lr1/y;->a(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    const v7, 0x7f0b0051

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-virtual {v5, v6}, Lr1/y;->a(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    const v7, 0x7f0b0052

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-virtual {v5, v6}, Lr1/y;->a(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string v6, ".button-text { line-height: 18px; } ul { margin-top: 5px; }"

    .line 151
    .line 152
    invoke-virtual {v5, v6}, Lr1/y;->b(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    const v7, 0x7f04001b

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    float-to-int v6, v6

    .line 167
    if-eqz v2, :cond_5

    .line 168
    .line 169
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    const v7, 0x7f04001a

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_5
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    const v7, 0x7f040019

    .line 182
    .line 183
    .line 184
    :goto_1
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    float-to-int v2, v2

    .line 189
    invoke-virtual {v5, v6, v2}, Lr1/y;->d(II)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    const v6, 0x7f040018

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    float-to-int v2, v2

    .line 204
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    const v7, 0x7f040017

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    float-to-int v6, v6

    .line 216
    iput v2, v5, Lr1/y;->i:I

    .line 217
    .line 218
    iput v6, v5, Lr1/y;->j:I

    .line 219
    .line 220
    new-instance v2, Lw1/k;

    .line 221
    .line 222
    invoke-direct {v2, v3, p0, v0, v4}, Lw1/k;-><init>(Lcom/nomone/vr_desktop/LaunchActivity;Lq1/f;Lr1/i;Z)V

    .line 223
    .line 224
    .line 225
    iput-object v2, v5, Lr1/y;->o:Lr1/w;

    .line 226
    .line 227
    invoke-static {v5, v1}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_6
    :goto_2
    invoke-virtual {v0}, Lr1/i;->a()V

    .line 232
    .line 233
    .line 234
    :goto_3
    sget-object p0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->z:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    .line 235
    .line 236
    return-object p0
.end method

.method public static i(Lcom/nomone/vr_desktop/LaunchActivity;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/play_billing/i0;->T(Landroid/content/Context;Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public static native nativeGetMouseX()I
.end method

.method public static native nativeGetMouseY()I
.end method

.method public static native nativeKeyDown(II)V
.end method

.method public static native nativeKeyUp(II)V
.end method

.method public static native nativeMouseDisplace(II)V
.end method

.method public static native nativeMouseDown(I)V
.end method

.method public static native nativeMouseMove(II)V
.end method

.method public static native nativeMouseScroll(I)V
.end method

.method public static native nativeMouseUp(I)V
.end method

.method public static native nativeResetFrameBufferFile()V
.end method

.method public static native nativeResetXTest()V
.end method

.method public static native nativeSetFrameBufferFile(Ljava/lang/String;)V
.end method

.method public static native nativeUpdateMouseLocation()V
.end method


.method public final h(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 2
    .line 3
    iget-object v0, v0, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->M(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "arm64-v8a"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string v2, "/lib/aarch64-linux-gnu/libc.so.6"

    .line 16
    .line 17
    const-string v3, "/etc/manrs"

    .line 18
    .line 19
    const-string v4, "/etc/hosts"

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-object v1, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v1, "armeabi-v7a"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, "/lib/arm-linux-gnueabihf/libc.so.6"

    .line 50
    .line 51
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0, v4, v3}, Lcom/nomone/vr_desktop/NativeUtils;->nativeReplaceInFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const-string v0, "sdf"

    .line 63
    .line 64
    const-string v1, "Critical! blockPorn()failed, unsupported architecture"

    .line 65
    .line 66
    invoke-static {v0, v1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-static {p1, v4}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const/4 v5, 0x0

    .line 79
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    .line 80
    .line 81
    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    new-array v1, v1, [B

    .line 89
    .line 90
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :catch_0
    move-exception v1

    .line 98
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    move-object v1, v5

    .line 102
    :goto_2
    if-nez v1, :cond_2

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_2
    new-instance v5, Ljava/lang/String;

    .line 106
    .line 107
    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    .line 108
    .line 109
    .line 110
    :goto_3
    if-eqz v5, :cond_3

    .line 111
    .line 112
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v1, "\n"

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    :cond_3
    const-string v1, "127.0.0.1 localhost\n"

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    new-instance v1, Lh/a;

    .line 126
    .line 127
    iget-object v5, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 128
    .line 129
    iget-object v5, v5, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 130
    .line 131
    const-string v6, "PornBlocking/PornDomains.txt"

    .line 132
    .line 133
    invoke-direct {v1, v5, v6}, Lh/a;-><init>(Lcom/nomone/vr_desktop/LaunchActivity;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v5, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 137
    .line 138
    iget-object v5, v5, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 139
    .line 140
    const-string v6, "PornBlocking/PornSubdomains.txt"

    .line 141
    .line 142
    invoke-virtual {v1, v5, v6}, Lh/a;->z(Lcom/nomone/vr_desktop/LaunchActivity;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v1, Lh/a;->g:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v1, Ljava/util/HashSet;

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-eqz v5, :cond_4

    .line 158
    .line 159
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    check-cast v5, Ljava/lang/String;

    .line 164
    .line 165
    const-string v6, "0.0.0.0 "

    .line 166
    .line 167
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v6, "\n0.0.0.0 www."

    .line 174
    .line 175
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v6, "\n0.0.0.0 m."

    .line 182
    .line 183
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v6, "\n0.0.0.0 members."

    .line 190
    .line 191
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const/16 v5, 0xa

    .line 198
    .line 199
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_4
    new-instance v1, Ljava/io/File;

    .line 204
    .line 205
    invoke-static {p1, v3}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/i0;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    new-instance v0, Ls1/m;

    .line 238
    .line 239
    invoke-static {p1, v4}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-direct {v0, p0, v1, p1}, Ls1/m;-><init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iput-object v0, p0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->u:Ls1/m;

    .line 247
    .line 248
    new-instance v0, Ls1/m;

    .line 249
    .line 250
    invoke-static {p1, v3}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-direct {v0, p0, v1, p1}, Ls1/m;-><init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iput-object v0, p0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->v:Ls1/m;

    .line 258
    .line 259
    new-instance v0, Ls1/m;

    .line 260
    .line 261
    invoke-static {p1, v2}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-direct {v0, p0, v1, p1}, Ls1/m;-><init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    iput-object v0, p0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->w:Ls1/m;

    .line 269
    .line 270
    return-void
.end method

.method public final j()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "<pre>Linux process crashed.</pre>"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 9
    .line 10
    iget-object v1, v1, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/i0;->L(Landroid/content/Context;Z)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "<pre>Logs:<br>===========<br>"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lo1/m;->e()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, "</pre>"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lr1/y;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 44
    .line 45
    invoke-direct {v1, v2}, Lr1/y;-><init>(Lq1/f;)V

    .line 46
    .line 47
    .line 48
    const-string v2, "Error Report"

    .line 49
    .line 50
    iput-object v2, v1, Lr1/y;->d:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v0, v1, Lr1/y;->e:Ljava/lang/String;

    .line 53
    .line 54
    const-string v2, "Skip"

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lr1/y;->a(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v2, "Send"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Lr1/y;->a(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/16 v2, 0x258

    .line 65
    .line 66
    const/16 v3, 0x168

    .line 67
    .line 68
    invoke-virtual {v1, v2, v3}, Lr1/y;->d(II)V

    .line 69
    .line 70
    .line 71
    const/16 v2, 0xaa

    .line 72
    .line 73
    iput v2, v1, Lr1/y;->i:I

    .line 74
    .line 75
    const/16 v2, 0x1c

    .line 76
    .line 77
    iput v2, v1, Lr1/y;->j:I

    .line 78
    .line 79
    new-instance v2, Lo0/j;

    .line 80
    .line 81
    const/4 v3, 0x4

    .line 82
    invoke-direct {v2, v3, p0, v0}, Lo0/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iput-object v2, v1, Lr1/y;->o:Lr1/w;

    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    invoke-static {v1, v0}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 89
    .line 90
    .line 91
    return-void
.end method
