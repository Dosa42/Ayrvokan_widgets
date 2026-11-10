.class public final Lq1/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:Z

.field public C:Lcom/nomone/vr_desktop/Applications/PromptApplication;

.field public final D:Ljava/util/List;

.field public final a:Lcom/nomone/vr_desktop/LaunchActivity;

.field public b:Lo1/x0;

.field public c:Ljava/lang/ThreadGroup;

.field public d:Lq1/f;

.field public e:Lq1/u;

.field public f:La2/x;

.field public g:La2/x;

.field public h:La2/b0;

.field public i:La2/b0;

.field public j:La2/b0;

.field public k:Lu1/i;

.field public l:Lo1/n0;

.field public m:La2/z;

.field public n:Lcom/nomone/vr_desktop/Applications/LauncherApplication;

.field public o:Ly0/j0;

.field public p:Lcom/nomone/vr_desktop/Input/RootLayout;

.field public q:Z

.field public r:Z

.field public final s:J

.field public t:Z

.field public final u:Lq1/w;

.field public v:Lq1/j;

.field public w:Lcom/nomone/vr_desktop/Applications/PromptApplication;

.field public x:Z

.field public y:Lcom/nomone/vr_desktop/Applications/PromptApplication;

.field public z:Lq1/j;


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/LaunchActivity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lq1/x;->s:J

    new-instance v0, Lq1/w;

    invoke-direct {v0, p0}, Lq1/w;-><init>(Lq1/x;)V

    iput-object v0, p0, Lq1/x;->u:Lq1/w;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq1/x;->B:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq1/x;->D:Ljava/util/List;

    iput-object p1, p0, Lq1/x;->a:Lcom/nomone/vr_desktop/LaunchActivity;

    return-void
.end method

.method public static a(Lq1/x;La2/b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, La2/b;->d:La2/c0;

    .line 5
    .line 6
    invoke-interface {v0, p1}, La2/c0;->x(La2/r;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lq1/x;->f:La2/x;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, p1, v1}, La2/e0;->A(La2/r;Z)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lq1/x;->h:La2/b0;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, La2/e0;->m:Z

    .line 19
    .line 20
    invoke-virtual {p0, v0}, La2/e0;->B(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, La2/b;->o(Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const v0, -0x3fe5a1cb    # -2.412f

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/high16 v0, -0x3dbc0000    # -49.0f

    .line 8
    .line 9
    :goto_0
    sput v0, Lz1/f;->D:F

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const v1, 0x3e76fd22    # 0.2412f

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v1, v0

    .line 19
    :goto_1
    sput v1, Lz1/f;->C:F

    .line 20
    .line 21
    iget-object v1, p0, Lq1/x;->k:Lu1/i;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {v1}, Lu1/i;->f()V

    .line 26
    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lq1/x;->d:Lq1/f;

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    sget-object v0, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g:Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, "Settings_VR_IPD"

    .line 35
    .line 36
    const v2, -0x42333333    # -0.1f

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v2}, Lo1/y;->b(Ljava/lang/String;F)F

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :cond_3
    invoke-virtual {v1, v0}, Lq1/f;->f(F)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lq1/x;->m:La2/z;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    iput-boolean p1, v0, La2/a0;->l:Z

    .line 51
    .line 52
    :cond_4
    return-void
.end method

.method public final c()V
    .locals 6

    .line 1
    const-string v0, "Should ask for rating"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v2, "Interactive time"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v2, v3}, Lo1/y;->c(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v5, "Interactivity units: "

    .line 18
    .line 19
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-string v5, "sdf"

    .line 30
    .line 31
    invoke-static {v5, v4}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/16 v4, 0xf0

    .line 35
    .line 36
    if-lt v2, v4, :cond_0

    .line 37
    .line 38
    move v3, v1

    .line 39
    :cond_0
    and-int/2addr v0, v3

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lq1/x;->i:La2/b0;

    .line 43
    .line 44
    iget-object v2, p0, Lq1/x;->n:Lcom/nomone/vr_desktop/Applications/LauncherApplication;

    .line 45
    .line 46
    iget-object v2, v2, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    new-instance v3, La2/d0;

    .line 52
    .line 53
    invoke-direct {v3, v0, v2, v1}, La2/d0;-><init>(La2/e0;La2/r;I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, v0, La2/e0;->f:Lq1/f;

    .line 57
    .line 58
    invoke-virtual {v0, v3}, Lq1/f;->c(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    new-instance v0, Lr1/y;

    .line 63
    .line 64
    iget-object v1, p0, Lq1/x;->d:Lq1/f;

    .line 65
    .line 66
    invoke-direct {v0, v1}, Lr1/y;-><init>(Lq1/f;)V

    .line 67
    .line 68
    .line 69
    const-string v1, "Please review!"

    .line 70
    .line 71
    iput-object v1, v0, Lr1/y;->d:Ljava/lang/String;

    .line 72
    .line 73
    const-string v1, "Please write a review for our app on Google Play. We\'d love to hear about your experience :)"

    .line 74
    .line 75
    iput-object v1, v0, Lr1/y;->e:Ljava/lang/String;

    .line 76
    .line 77
    const-string v1, "Remind me later"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lr1/y;->a(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v1, "Write review"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lr1/y;->a(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/16 v1, 0x1a4

    .line 88
    .line 89
    const/16 v2, 0xbe

    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Lr1/y;->d(II)V

    .line 92
    .line 93
    .line 94
    const/16 v1, 0xaa

    .line 95
    .line 96
    iput v1, v0, Lr1/y;->i:I

    .line 97
    .line 98
    const/16 v1, 0x1c

    .line 99
    .line 100
    iput v1, v0, Lr1/y;->j:I

    .line 101
    .line 102
    new-instance v1, Lq1/n;

    .line 103
    .line 104
    const/4 v2, 0x4

    .line 105
    invoke-direct {v1, p0, v2}, Lq1/n;-><init>(Lq1/x;I)V

    .line 106
    .line 107
    .line 108
    iput-object v1, v0, Lr1/y;->o:Lr1/w;

    .line 109
    .line 110
    const/4 v1, 0x0

    .line 111
    invoke-static {v0, v1}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public final d()V
    .locals 6

    .line 1
    const-string v0, "<br><br><br>Including your installation id helps us speed up issue resolution.<br>Installation id: "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "Can\'t buy full version"

    .line 5
    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lo1/y;->a:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    iget-object v4, p0, Lq1/x;->a:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    :try_start_1
    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lo1/y;->a:Landroid/content/SharedPreferences;

    .line 22
    .line 23
    :cond_0
    sget-object v0, Lo1/y;->a:Landroid/content/SharedPreferences;

    .line 24
    .line 25
    const-string v5, "Installation ID"

    .line 26
    .line 27
    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v5, v0}, Lo1/y;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v3, "mailto:desktop.support@nomone.com"

    .line 52
    .line 53
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const-string v5, "subject"

    .line 62
    .line 63
    invoke-virtual {v3, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v3, "body"

    .line 68
    .line 69
    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-instance v2, Landroid/content/Intent;

    .line 78
    .line 79
    const-string v3, "android.intent.action.VIEW"

    .line 80
    .line 81
    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    new-instance v0, Lr1/y;

    .line 89
    .line 90
    iget-object v2, p0, Lq1/x;->d:Lq1/f;

    .line 91
    .line 92
    invoke-direct {v0, v2}, Lr1/y;-><init>(Lq1/f;)V

    .line 93
    .line 94
    .line 95
    const-string v2, "Couldn\'t open mail app"

    .line 96
    .line 97
    iput-object v2, v0, Lr1/y;->d:Ljava/lang/String;

    .line 98
    .line 99
    const-string v2, "Please send us an email at <strong>desktop.support@nomone.com</strong>."

    .line 100
    .line 101
    iput-object v2, v0, Lr1/y;->e:Ljava/lang/String;

    .line 102
    .line 103
    const/16 v2, 0x1a4

    .line 104
    .line 105
    const/16 v3, 0xc3

    .line 106
    .line 107
    invoke-virtual {v0, v2, v3}, Lr1/y;->d(II)V

    .line 108
    .line 109
    .line 110
    invoke-static {v0, v1}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    new-instance v1, Lq1/o;

    .line 115
    .line 116
    const/4 v2, 0x0

    .line 117
    invoke-direct {v1, v0, v2}, Lq1/o;-><init>(Lcom/nomone/vr_desktop/Applications/PromptApplication;I)V

    .line 118
    .line 119
    .line 120
    const-string v2, "prompt.bringToFront()"

    .line 121
    .line 122
    const-wide/16 v3, 0x1f4

    .line 123
    .line 124
    invoke-virtual {p0, v1, v2, v3, v4}, Lq1/x;->k(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 125
    .line 126
    .line 127
    new-instance v1, Lq1/o;

    .line 128
    .line 129
    const/4 v3, 0x1

    .line 130
    invoke-direct {v1, v0, v3}, Lq1/o;-><init>(Lcom/nomone/vr_desktop/Applications/PromptApplication;I)V

    .line 131
    .line 132
    .line 133
    const-wide/16 v3, 0xbb8

    .line 134
    .line 135
    invoke-virtual {p0, v1, v2, v3, v4}, Lq1/x;->k(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 136
    .line 137
    .line 138
    :goto_0
    return-void
.end method

.method public final e()Lcom/nomone/giap/GIAP;
    .locals 4

    .line 1
    iget-object v0, p0, Lq1/x;->a:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "buy_app"

    .line 8
    .line 9
    filled-new-array {v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Lcom/nomone/giap/GIAP;->i:Lcom/nomone/giap/GIAP;

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    const-class v2, Lcom/nomone/giap/GIAP;

    .line 18
    .line 19
    monitor-enter v2

    .line 20
    :try_start_0
    sget-object v3, Lcom/nomone/giap/GIAP;->i:Lcom/nomone/giap/GIAP;

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    new-instance v3, Lcom/nomone/giap/GIAP;

    .line 25
    .line 26
    invoke-direct {v3, v0, v1}, Lcom/nomone/giap/GIAP;-><init>(Landroid/app/Application;[Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/nomone/giap/GIAP;->i:Lcom/nomone/giap/GIAP;

    .line 30
    .line 31
    :cond_0
    monitor-exit v2

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw v0

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/nomone/giap/GIAP;->i:Lcom/nomone/giap/GIAP;

    .line 37
    .line 38
    return-object v0
.end method

.method public final f(Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lq1/x;->e()Lcom/nomone/giap/GIAP;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "buy_app"

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Lcom/nomone/giap/GIAP;->b(Ljava/lang/String;)Lp1/a;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const/4 v5, 0x0

    .line 16
    move v6, v5

    .line 17
    :catch_0
    :cond_0
    iget-boolean v7, v2, Lcom/nomone/giap/GIAP;->d:Z

    .line 18
    .line 19
    const-string v8, "Scroll y correction"

    .line 20
    .line 21
    const/16 v9, 0xc

    .line 22
    .line 23
    const/16 v10, 0xb

    .line 24
    .line 25
    const/4 v11, 0x1

    .line 26
    const/16 v12, 0xbb8

    .line 27
    .line 28
    const-wide/16 v13, 0x1f4

    .line 29
    .line 30
    const/4 v15, 0x0

    .line 31
    if-eqz v7, :cond_3

    .line 32
    .line 33
    if-eqz v4, :cond_3

    .line 34
    .line 35
    iget-boolean v7, v4, Lp1/a;->a:Z

    .line 36
    .line 37
    if-eqz v7, :cond_1

    .line 38
    .line 39
    iget-boolean v7, v4, Lp1/a;->b:Z

    .line 40
    .line 41
    if-eqz v7, :cond_1

    .line 42
    .line 43
    move v7, v11

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v7, v5

    .line 46
    :goto_0
    if-nez v7, :cond_3

    .line 47
    .line 48
    :try_start_0
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    .line 49
    .line 50
    .line 51
    add-int/lit16 v6, v6, 0x1f4

    .line 52
    .line 53
    if-lt v6, v12, :cond_0

    .line 54
    .line 55
    invoke-static {v8, v10}, Lo1/y;->c(Ljava/lang/String;I)I

    .line 56
    .line 57
    .line 58
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    if-ne v2, v9, :cond_2

    .line 60
    .line 61
    :goto_1
    move v2, v11

    .line 62
    goto :goto_6

    .line 63
    :cond_2
    move v2, v5

    .line 64
    goto :goto_6

    .line 65
    :cond_3
    iget-boolean v2, v4, Lp1/a;->a:Z

    .line 66
    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    iget-boolean v2, v4, Lp1/a;->b:Z

    .line 70
    .line 71
    if-eqz v2, :cond_4

    .line 72
    .line 73
    move v2, v11

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    move v2, v5

    .line 76
    :goto_2
    const/4 v6, 0x4

    .line 77
    if-eqz v2, :cond_5

    .line 78
    .line 79
    iget v2, v4, Lp1/a;->f:I

    .line 80
    .line 81
    if-ne v2, v6, :cond_5

    .line 82
    .line 83
    move v2, v11

    .line 84
    goto :goto_3

    .line 85
    :cond_5
    move v2, v5

    .line 86
    :goto_3
    iget-object v7, v4, Lp1/a;->d:Lcom/android/billingclient/api/Purchase;

    .line 87
    .line 88
    if-eqz v7, :cond_6

    .line 89
    .line 90
    iget-object v7, v7, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    .line 91
    .line 92
    const-string v9, "orderId"

    .line 93
    .line 94
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    if-eqz v9, :cond_7

    .line 103
    .line 104
    :cond_6
    move-object v7, v15

    .line 105
    :cond_7
    if-eqz v2, :cond_8

    .line 106
    .line 107
    const/16 v9, 0xc

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_8
    move v9, v10

    .line 111
    :goto_4
    invoke-static {v9, v8}, Lo1/y;->g(ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v2, "Border ID"

    .line 115
    .line 116
    invoke-static {v2, v7}, Lo1/y;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-boolean v2, v4, Lp1/a;->a:Z

    .line 120
    .line 121
    if-eqz v2, :cond_9

    .line 122
    .line 123
    iget-boolean v2, v4, Lp1/a;->b:Z

    .line 124
    .line 125
    if-eqz v2, :cond_9

    .line 126
    .line 127
    move v2, v11

    .line 128
    goto :goto_5

    .line 129
    :cond_9
    move v2, v5

    .line 130
    :goto_5
    if-eqz v2, :cond_2

    .line 131
    .line 132
    iget v2, v4, Lp1/a;->f:I

    .line 133
    .line 134
    if-ne v2, v6, :cond_2

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :goto_6
    iget-object v4, v0, Lq1/x;->a:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 138
    .line 139
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/i0;->V(Landroid/content/Context;)Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    const-string v7, "skip"

    .line 144
    .line 145
    const-string v8, "sshaloff"

    .line 146
    .line 147
    if-eqz v2, :cond_e

    .line 148
    .line 149
    if-nez v6, :cond_e

    .line 150
    .line 151
    iget-boolean v2, v0, Lq1/x;->r:Z

    .line 152
    .line 153
    if-eqz v2, :cond_a

    .line 154
    .line 155
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/play_billing/i0;->L(Landroid/content/Context;Z)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    const-string v3, "QXBwUHVyY2hhc2U"

    .line 160
    .line 161
    invoke-static {v8, v3, v2}, Lcom/google/android/gms/internal/play_billing/i0;->f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :cond_a
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/play_billing/i0;->L(Landroid/content/Context;Z)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    const-string v3, "dasfloff"

    .line 169
    .line 170
    const-string v4, "QXBwVW5sb2Nr"

    .line 171
    .line 172
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/i0;->f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iput-boolean v5, v0, Lq1/x;->A:Z

    .line 176
    .line 177
    iget-object v2, v0, Lq1/x;->w:Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 178
    .line 179
    if-eqz v2, :cond_b

    .line 180
    .line 181
    const-string v3, "Skip"

    .line 182
    .line 183
    invoke-virtual {v2, v3}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->f(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :cond_b
    iget-object v2, v0, Lq1/x;->C:Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 187
    .line 188
    if-eqz v2, :cond_c

    .line 189
    .line 190
    invoke-virtual {v2, v7}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->f(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_c
    iget-object v2, v0, Lq1/x;->h:La2/b0;

    .line 194
    .line 195
    iput-boolean v11, v2, La2/e0;->m:Z

    .line 196
    .line 197
    invoke-virtual {v2, v11}, La2/e0;->B(Z)V

    .line 198
    .line 199
    .line 200
    iget-object v2, v0, Lq1/x;->v:Lq1/j;

    .line 201
    .line 202
    iget-object v3, v0, Lq1/x;->b:Lo1/x0;

    .line 203
    .line 204
    invoke-virtual {v3, v2}, Lo1/x0;->d(Ljava/lang/Runnable;)V

    .line 205
    .line 206
    .line 207
    iget-object v2, v0, Lq1/x;->n:Lcom/nomone/vr_desktop/Applications/LauncherApplication;

    .line 208
    .line 209
    iget-object v2, v2, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 210
    .line 211
    const-string v3, ""

    .line 212
    .line 213
    invoke-virtual {v2, v3}, La2/p;->P(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    if-eqz v1, :cond_d

    .line 217
    .line 218
    new-instance v1, Lr1/y;

    .line 219
    .line 220
    iget-object v2, v0, Lq1/x;->d:Lq1/f;

    .line 221
    .line 222
    invoke-direct {v1, v2}, Lr1/y;-><init>(Lq1/f;)V

    .line 223
    .line 224
    .line 225
    const-string v2, "App unlocked"

    .line 226
    .line 227
    iput-object v2, v1, Lr1/y;->d:Ljava/lang/String;

    .line 228
    .line 229
    const-string v2, "Enjoy!"

    .line 230
    .line 231
    iput-object v2, v1, Lr1/y;->e:Ljava/lang/String;

    .line 232
    .line 233
    invoke-static {v1, v15}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 234
    .line 235
    .line 236
    iget-object v1, v0, Lq1/x;->i:La2/b0;

    .line 237
    .line 238
    iget-object v2, v0, Lq1/x;->n:Lcom/nomone/vr_desktop/Applications/LauncherApplication;

    .line 239
    .line 240
    iget-object v2, v2, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 241
    .line 242
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    new-instance v3, La2/d0;

    .line 246
    .line 247
    invoke-direct {v3, v1, v2, v11}, La2/d0;-><init>(La2/e0;La2/r;I)V

    .line 248
    .line 249
    .line 250
    iget-object v1, v1, La2/e0;->f:Lq1/f;

    .line 251
    .line 252
    invoke-virtual {v1, v3}, Lq1/f;->c(Ljava/lang/Runnable;)V

    .line 253
    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lq1/x;->c()V

    .line 257
    .line 258
    .line 259
    :goto_7
    return-void

    .line 260
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lq1/x;->e()Lcom/nomone/giap/GIAP;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-virtual {v2, v3}, Lcom/nomone/giap/GIAP;->b(Ljava/lang/String;)Lp1/a;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    move v9, v5

    .line 269
    :catch_1
    :cond_f
    iget-boolean v10, v2, Lcom/nomone/giap/GIAP;->d:Z

    .line 270
    .line 271
    if-eqz v10, :cond_11

    .line 272
    .line 273
    iget-boolean v10, v3, Lp1/a;->a:Z

    .line 274
    .line 275
    if-eqz v10, :cond_10

    .line 276
    .line 277
    iget-boolean v10, v3, Lp1/a;->b:Z

    .line 278
    .line 279
    if-eqz v10, :cond_10

    .line 280
    .line 281
    move v10, v11

    .line 282
    goto :goto_8

    .line 283
    :cond_10
    move v10, v5

    .line 284
    :goto_8
    if-nez v10, :cond_11

    .line 285
    .line 286
    :try_start_1
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 287
    .line 288
    .line 289
    add-int/lit16 v9, v9, 0x1f4

    .line 290
    .line 291
    if-lt v9, v12, :cond_f

    .line 292
    .line 293
    goto :goto_a

    .line 294
    :cond_11
    iget-boolean v2, v3, Lp1/a;->a:Z

    .line 295
    .line 296
    if-eqz v2, :cond_12

    .line 297
    .line 298
    iget-boolean v2, v3, Lp1/a;->b:Z

    .line 299
    .line 300
    if-eqz v2, :cond_12

    .line 301
    .line 302
    move v2, v11

    .line 303
    goto :goto_9

    .line 304
    :cond_12
    move v2, v5

    .line 305
    :goto_9
    if-eqz v2, :cond_13

    .line 306
    .line 307
    iget v2, v3, Lp1/a;->f:I

    .line 308
    .line 309
    const/4 v3, 0x2

    .line 310
    if-ne v2, v3, :cond_13

    .line 311
    .line 312
    move v2, v11

    .line 313
    goto :goto_b

    .line 314
    :cond_13
    :goto_a
    move v2, v5

    .line 315
    :goto_b
    if-eqz v2, :cond_17

    .line 316
    .line 317
    iput-boolean v11, v0, Lq1/x;->A:Z

    .line 318
    .line 319
    iget-boolean v2, v0, Lq1/x;->B:Z

    .line 320
    .line 321
    const/4 v3, 0x3

    .line 322
    if-eqz v2, :cond_15

    .line 323
    .line 324
    invoke-virtual/range {p0 .. p0}, Lq1/x;->o()Z

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    iput-boolean v2, v0, Lq1/x;->B:Z

    .line 329
    .line 330
    iget-object v2, v0, Lq1/x;->C:Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 331
    .line 332
    if-eqz v2, :cond_14

    .line 333
    .line 334
    goto :goto_c

    .line 335
    :cond_14
    new-instance v2, Lr1/y;

    .line 336
    .line 337
    iget-object v4, v0, Lq1/x;->d:Lq1/f;

    .line 338
    .line 339
    invoke-direct {v2, v4}, Lr1/y;-><init>(Lq1/f;)V

    .line 340
    .line 341
    .line 342
    const-string v4, "Purchase pending"

    .line 343
    .line 344
    iput-object v4, v2, Lr1/y;->d:Ljava/lang/String;

    .line 345
    .line 346
    const-string v4, "<p>Your payment is currently being processed by Google Play. If payment succeeds, this message will be automatically dismissed. If payment fails, the app will remain locked.</p>"

    .line 347
    .line 348
    iput-object v4, v2, Lr1/y;->e:Ljava/lang/String;

    .line 349
    .line 350
    const/16 v4, 0x19a

    .line 351
    .line 352
    const/16 v5, 0xf0

    .line 353
    .line 354
    invoke-virtual {v2, v4, v5}, Lr1/y;->d(II)V

    .line 355
    .line 356
    .line 357
    new-instance v4, Lq1/q;

    .line 358
    .line 359
    invoke-direct {v4, v0, v3}, Lq1/q;-><init>(Lq1/x;I)V

    .line 360
    .line 361
    .line 362
    iput-object v4, v2, Lr1/y;->p:Lr1/x;

    .line 363
    .line 364
    new-instance v4, Lq1/m;

    .line 365
    .line 366
    invoke-direct {v4, v0, v1}, Lq1/m;-><init>(Lq1/x;Z)V

    .line 367
    .line 368
    .line 369
    iput-object v4, v2, Lr1/y;->o:Lr1/w;

    .line 370
    .line 371
    invoke-static {v2, v15}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    :goto_c
    iput-object v2, v0, Lq1/x;->C:Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 376
    .line 377
    :cond_15
    iget-object v1, v0, Lq1/x;->z:Lq1/j;

    .line 378
    .line 379
    if-nez v1, :cond_16

    .line 380
    .line 381
    new-instance v1, Lq1/j;

    .line 382
    .line 383
    invoke-direct {v1, v0, v3}, Lq1/j;-><init>(Lq1/x;I)V

    .line 384
    .line 385
    .line 386
    iput-object v1, v0, Lq1/x;->z:Lq1/j;

    .line 387
    .line 388
    :cond_16
    iget-object v1, v0, Lq1/x;->z:Lq1/j;

    .line 389
    .line 390
    iget-object v2, v0, Lq1/x;->b:Lo1/x0;

    .line 391
    .line 392
    invoke-virtual {v2, v1}, Lo1/x0;->d(Ljava/lang/Runnable;)V

    .line 393
    .line 394
    .line 395
    iget-object v1, v0, Lq1/x;->z:Lq1/j;

    .line 396
    .line 397
    const-string v2, "Retry unlocking"

    .line 398
    .line 399
    const-wide/16 v3, 0x4e20

    .line 400
    .line 401
    invoke-virtual {v0, v1, v2, v3, v4}, Lq1/x;->k(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 402
    .line 403
    .line 404
    return-void

    .line 405
    :cond_17
    iget-boolean v1, v0, Lq1/x;->r:Z

    .line 406
    .line 407
    if-eqz v1, :cond_18

    .line 408
    .line 409
    if-eqz v6, :cond_18

    .line 410
    .line 411
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/play_billing/i0;->L(Landroid/content/Context;Z)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    const-string v2, "QXBwQ3JhY2tlZA"

    .line 416
    .line 417
    invoke-static {v8, v2, v1}, Lcom/google/android/gms/internal/play_billing/i0;->f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    :cond_18
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 421
    .line 422
    const-string v2, "dd/MM/yyyy"

    .line 423
    .line 424
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    :try_start_2
    const-string v2, "04/09/2026"

    .line 428
    .line 429
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 430
    .line 431
    .line 432
    move-result-object v1
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    .line 433
    goto :goto_d

    .line 434
    :catch_2
    move-object v1, v15

    .line 435
    :goto_d
    new-instance v2, Ljava/util/Date;

    .line 436
    .line 437
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v2, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    if-eqz v1, :cond_19

    .line 445
    .line 446
    new-instance v1, Lr1/y;

    .line 447
    .line 448
    iget-object v2, v0, Lq1/x;->d:Lq1/f;

    .line 449
    .line 450
    invoke-direct {v1, v2}, Lr1/y;-><init>(Lq1/f;)V

    .line 451
    .line 452
    .line 453
    const-string v2, "Update required"

    .line 454
    .line 455
    iput-object v2, v1, Lr1/y;->d:Ljava/lang/String;

    .line 456
    .line 457
    const-string v2, "<p>Please update the application.</p>"

    .line 458
    .line 459
    iput-object v2, v1, Lr1/y;->e:Ljava/lang/String;

    .line 460
    .line 461
    const/16 v2, 0x15e

    .line 462
    .line 463
    const/16 v3, 0xe6

    .line 464
    .line 465
    invoke-virtual {v1, v2, v3}, Lr1/y;->d(II)V

    .line 466
    .line 467
    .line 468
    const-string v2, "Google Play"

    .line 469
    .line 470
    invoke-virtual {v1, v2}, Lr1/y;->a(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    const-string v2, "NOMone.com"

    .line 474
    .line 475
    invoke-virtual {v1, v2}, Lr1/y;->a(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    const-string v2, "Exit"

    .line 479
    .line 480
    invoke-virtual {v1, v2}, Lr1/y;->a(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    const/16 v2, 0x82

    .line 484
    .line 485
    iput v2, v1, Lr1/y;->i:I

    .line 486
    .line 487
    const/16 v2, 0x1c

    .line 488
    .line 489
    iput v2, v1, Lr1/y;->j:I

    .line 490
    .line 491
    new-instance v2, Lq1/q;

    .line 492
    .line 493
    invoke-direct {v2, v0, v5}, Lq1/q;-><init>(Lq1/x;I)V

    .line 494
    .line 495
    .line 496
    iput-object v2, v1, Lr1/y;->p:Lr1/x;

    .line 497
    .line 498
    new-instance v2, Lq1/n;

    .line 499
    .line 500
    invoke-direct {v2, v0, v5}, Lq1/n;-><init>(Lq1/x;I)V

    .line 501
    .line 502
    .line 503
    iput-object v2, v1, Lr1/y;->o:Lr1/w;

    .line 504
    .line 505
    invoke-static {v1, v15}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 506
    .line 507
    .line 508
    return-void

    .line 509
    :cond_19
    iget-boolean v1, v0, Lq1/x;->A:Z

    .line 510
    .line 511
    if-eqz v1, :cond_1b

    .line 512
    .line 513
    iput-boolean v5, v0, Lq1/x;->A:Z

    .line 514
    .line 515
    iput-boolean v11, v0, Lq1/x;->B:Z

    .line 516
    .line 517
    iget-object v1, v0, Lq1/x;->C:Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 518
    .line 519
    if-eqz v1, :cond_1a

    .line 520
    .line 521
    invoke-virtual {v1, v7}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->f(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    :cond_1a
    new-instance v1, Lr1/y;

    .line 525
    .line 526
    iget-object v2, v0, Lq1/x;->d:Lq1/f;

    .line 527
    .line 528
    invoke-direct {v1, v2}, Lr1/y;-><init>(Lq1/f;)V

    .line 529
    .line 530
    .line 531
    const-string v2, "Payment failed"

    .line 532
    .line 533
    iput-object v2, v1, Lr1/y;->d:Ljava/lang/String;

    .line 534
    .line 535
    const-string v2, "<p>It seems Google was unable to process your purchase. Sorry for the inconvenience.</p>"

    .line 536
    .line 537
    iput-object v2, v1, Lr1/y;->e:Ljava/lang/String;

    .line 538
    .line 539
    const/16 v2, 0x190

    .line 540
    .line 541
    const/16 v3, 0xbe

    .line 542
    .line 543
    invoke-virtual {v1, v2, v3}, Lr1/y;->d(II)V

    .line 544
    .line 545
    .line 546
    new-instance v2, Lq1/q;

    .line 547
    .line 548
    invoke-direct {v2, v0, v11}, Lq1/q;-><init>(Lq1/x;I)V

    .line 549
    .line 550
    .line 551
    iput-object v2, v1, Lr1/y;->p:Lr1/x;

    .line 552
    .line 553
    new-instance v2, Lq1/n;

    .line 554
    .line 555
    invoke-direct {v2, v0, v11}, Lq1/n;-><init>(Lq1/x;I)V

    .line 556
    .line 557
    .line 558
    iput-object v2, v1, Lr1/y;->o:Lr1/w;

    .line 559
    .line 560
    invoke-static {v1, v15}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 561
    .line 562
    .line 563
    return-void

    .line 564
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lq1/x;->i()V

    .line 565
    .line 566
    .line 567
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lq1/x;->x:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lq1/x;->l()V

    .line 5
    .line 6
    .line 7
    const-string v0, "Keystroked"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Lo1/y;->c(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const v1, 0xea60

    .line 15
    .line 16
    .line 17
    div-int/2addr v0, v1

    .line 18
    if-gtz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lq1/x;->n:Lcom/nomone/vr_desktop/Applications/LauncherApplication;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 23
    .line 24
    const-string v1, "Trial: 0 min"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, La2/p;->P(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lq1/x;->n()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v1, p0, Lq1/x;->n:Lcom/nomone/vr_desktop/Applications/LauncherApplication;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v3, "Trial: "

    .line 40
    .line 41
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, " min"

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, La2/p;->P(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lq1/x;->w:Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    const-string v2, "Skip"

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->f(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    const/4 v1, 0x5

    .line 69
    if-ne v0, v1, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Lq1/x;->d:Lq1/f;

    .line 72
    .line 73
    iget-object v0, v0, Lq1/f;->H:Lo1/n0;

    .line 74
    .line 75
    const-string v1, "5 minutes to daily trial end"

    .line 76
    .line 77
    const/16 v2, 0x1388

    .line 78
    .line 79
    invoke-virtual {v0, v2, v1}, Lo1/n0;->c(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    :goto_0
    iget-object v0, p0, Lq1/x;->v:Lq1/j;

    .line 83
    .line 84
    if-nez v0, :cond_3

    .line 85
    .line 86
    new-instance v0, Lq1/j;

    .line 87
    .line 88
    const/4 v1, 0x2

    .line 89
    invoke-direct {v0, p0, v1}, Lq1/j;-><init>(Lq1/x;I)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lq1/x;->v:Lq1/j;

    .line 93
    .line 94
    :cond_3
    iget-object v0, p0, Lq1/x;->v:Lq1/j;

    .line 95
    .line 96
    iget-object v1, p0, Lq1/x;->b:Lo1/x0;

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Lo1/x0;->d(Ljava/lang/Runnable;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lq1/x;->v:Lq1/j;

    .line 102
    .line 103
    const-string v1, "Fix window alignment"

    .line 104
    .line 105
    const-wide/32 v2, 0xea60

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v0, v1, v2, v3}, Lq1/x;->k(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final h()Z
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lq1/x;->q:Z

    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Lq1/x;->e()Lcom/nomone/giap/GIAP;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const-string v3, "buy_app"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Lcom/nomone/giap/GIAP;->b(Ljava/lang/String;)Lp1/a;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v4, 0x0

    .line 17
    iput-boolean v4, v2, Lp1/a;->b:Z

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Lq1/x;->e()Lcom/nomone/giap/GIAP;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v5, v0, Lq1/x;->a:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Lcom/nomone/giap/GIAP;->b(Ljava/lang/String;)Lp1/a;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_46

    .line 30
    .line 31
    iget-object v3, v3, Lp1/a;->c:Lcom/android/billingclient/api/SkuDetails;

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    goto/16 :goto_20

    .line 36
    .line 37
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    iget-object v3, v2, Lcom/nomone/giap/GIAP;->c:Lf0/b;

    .line 46
    .line 47
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    xor-int/2addr v7, v1

    .line 52
    if-eqz v7, :cond_45

    .line 53
    .line 54
    const/4 v8, 0x0

    .line 55
    if-eqz v7, :cond_44

    .line 56
    .line 57
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    if-nez v9, :cond_43

    .line 62
    .line 63
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    const-string v10, "packageName"

    .line 68
    .line 69
    if-le v9, v1, :cond_6

    .line 70
    .line 71
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    check-cast v9, Lcom/android/billingclient/api/SkuDetails;

    .line 76
    .line 77
    invoke-virtual {v9}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v12

    .line 85
    move v13, v4

    .line 86
    :goto_0
    const-string v14, "play_pass_subs"

    .line 87
    .line 88
    if-ge v13, v12, :cond_3

    .line 89
    .line 90
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v15

    .line 94
    check-cast v15, Lcom/android/billingclient/api/SkuDetails;

    .line 95
    .line 96
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v16

    .line 100
    if-nez v16, :cond_2

    .line 101
    .line 102
    invoke-virtual {v15}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_2

    .line 111
    .line 112
    invoke-virtual {v15}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 124
    .line 125
    const-string v2, "SKUs should have the same type."

    .line 126
    .line 127
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v1

    .line 131
    :cond_2
    :goto_1
    add-int/lit8 v13, v13, 0x1

    .line 132
    .line 133
    const/4 v1, 0x1

    .line 134
    goto :goto_0

    .line 135
    :cond_3
    iget-object v1, v9, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    .line 136
    .line 137
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    move v12, v4

    .line 146
    :goto_2
    if-ge v12, v9, :cond_6

    .line 147
    .line 148
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v13

    .line 152
    check-cast v13, Lcom/android/billingclient/api/SkuDetails;

    .line 153
    .line 154
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v15

    .line 158
    if-nez v15, :cond_5

    .line 159
    .line 160
    invoke-virtual {v13}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v15

    .line 164
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v15

    .line 168
    if-nez v15, :cond_5

    .line 169
    .line 170
    iget-object v13, v13, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    .line 171
    .line 172
    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v13

    .line 176
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v13

    .line 180
    if-eqz v13, :cond_4

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 184
    .line 185
    const-string v2, "All SKUs must have the same package name."

    .line 186
    .line 187
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw v1

    .line 191
    :cond_5
    :goto_3
    add-int/lit8 v12, v12, 0x1

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_6
    new-instance v12, Lf0/f;

    .line 195
    .line 196
    invoke-direct {v12}, Lf0/f;-><init>()V

    .line 197
    .line 198
    .line 199
    if-eqz v7, :cond_8

    .line 200
    .line 201
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    check-cast v1, Lcom/android/billingclient/api/SkuDetails;

    .line 206
    .line 207
    iget-object v1, v1, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    .line 208
    .line 209
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-eqz v1, :cond_7

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_7
    const/4 v1, 0x1

    .line 221
    goto :goto_5

    .line 222
    :cond_8
    :goto_4
    move v1, v4

    .line 223
    :goto_5
    iput-boolean v1, v12, Lf0/f;->a:Z

    .line 224
    .line 225
    iput-object v8, v12, Lf0/f;->b:Ljava/lang/String;

    .line 226
    .line 227
    iput-object v8, v12, Lf0/f;->c:Ljava/lang/String;

    .line 228
    .line 229
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-eqz v1, :cond_a

    .line 234
    .line 235
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-nez v1, :cond_9

    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_9
    move v1, v4

    .line 243
    goto :goto_7

    .line 244
    :cond_a
    :goto_6
    const/4 v1, 0x1

    .line 245
    :goto_7
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    const/4 v9, 0x1

    .line 250
    xor-int/2addr v7, v9

    .line 251
    if-eqz v1, :cond_c

    .line 252
    .line 253
    if-nez v7, :cond_b

    .line 254
    .line 255
    goto :goto_8

    .line 256
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 257
    .line 258
    const-string v2, "Please provide Old SKU purchase information(token/id) or original external transaction id, not both."

    .line 259
    .line 260
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw v1

    .line 264
    :cond_c
    :goto_8
    new-instance v1, Lf0/e;

    .line 265
    .line 266
    invoke-direct {v1, v4}, Lf0/e;-><init>(I)V

    .line 267
    .line 268
    .line 269
    iput-object v8, v1, Lf0/e;->b:Ljava/io/Serializable;

    .line 270
    .line 271
    iput v4, v1, Lf0/e;->a:I

    .line 272
    .line 273
    iput-object v8, v1, Lf0/e;->c:Ljava/lang/Object;

    .line 274
    .line 275
    iput-object v1, v12, Lf0/f;->d:Lf0/e;

    .line 276
    .line 277
    new-instance v1, Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 280
    .line 281
    .line 282
    iput-object v1, v12, Lf0/f;->f:Ljava/util/ArrayList;

    .line 283
    .line 284
    iput-boolean v4, v12, Lf0/f;->g:Z

    .line 285
    .line 286
    sget-object v1, Lcom/google/android/gms/internal/play_billing/f;->b:Lcom/google/android/gms/internal/play_billing/d;

    .line 287
    .line 288
    sget-object v1, Lcom/google/android/gms/internal/play_billing/j;->e:Lcom/google/android/gms/internal/play_billing/j;

    .line 289
    .line 290
    iput-object v1, v12, Lf0/f;->e:Lcom/google/android/gms/internal/play_billing/f;

    .line 291
    .line 292
    const-string v1, "proxyPackageVersion"

    .line 293
    .line 294
    const-string v6, "BUY_INTENT"

    .line 295
    .line 296
    const-string v14, "BillingClient"

    .line 297
    .line 298
    iget-object v7, v3, Lf0/b;->d:Lf0/w;

    .line 299
    .line 300
    const/4 v15, 0x2

    .line 301
    if-eqz v7, :cond_41

    .line 302
    .line 303
    iget-object v7, v3, Lf0/b;->d:Lf0/w;

    .line 304
    .line 305
    iget-object v7, v7, Lf0/w;->c:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v7, Lf0/i;

    .line 308
    .line 309
    if-eqz v7, :cond_41

    .line 310
    .line 311
    invoke-virtual {v3}, Lf0/b;->a()Z

    .line 312
    .line 313
    .line 314
    move-result v7

    .line 315
    if-nez v7, :cond_d

    .line 316
    .line 317
    sget-object v1, Lf0/t;->k:Lf0/g;

    .line 318
    .line 319
    invoke-static {v15, v15, v1}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    goto/16 :goto_11

    .line 324
    .line 325
    :cond_d
    new-instance v7, Ljava/util/ArrayList;

    .line 326
    .line 327
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .line 329
    .line 330
    iget-object v9, v12, Lf0/f;->f:Ljava/util/ArrayList;

    .line 331
    .line 332
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 333
    .line 334
    .line 335
    iget-object v9, v12, Lf0/f;->e:Lcom/google/android/gms/internal/play_billing/f;

    .line 336
    .line 337
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 338
    .line 339
    .line 340
    move-result-object v11

    .line 341
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 342
    .line 343
    .line 344
    move-result v13

    .line 345
    if-eqz v13, :cond_e

    .line 346
    .line 347
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v11

    .line 351
    goto :goto_9

    .line 352
    :cond_e
    move-object v11, v8

    .line 353
    :goto_9
    check-cast v11, Lcom/android/billingclient/api/SkuDetails;

    .line 354
    .line 355
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 356
    .line 357
    .line 358
    move-result-object v13

    .line 359
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 360
    .line 361
    .line 362
    move-result v17

    .line 363
    if-eqz v17, :cond_f

    .line 364
    .line 365
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v13

    .line 369
    goto :goto_a

    .line 370
    :cond_f
    move-object v13, v8

    .line 371
    :goto_a
    invoke-static {v13}, La1/b;->j(Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    .line 376
    .line 377
    iget-object v13, v11, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    .line 378
    .line 379
    const-string v4, "productId"

    .line 380
    .line 381
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v13

    .line 385
    invoke-virtual {v11}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v8

    .line 389
    const-string v15, "subs"

    .line 390
    .line 391
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v15

    .line 395
    const/16 v0, 0x9

    .line 396
    .line 397
    if-eqz v15, :cond_11

    .line 398
    .line 399
    iget-boolean v15, v3, Lf0/b;->i:Z

    .line 400
    .line 401
    if-eqz v15, :cond_10

    .line 402
    .line 403
    goto :goto_c

    .line 404
    :cond_10
    sget v1, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 405
    .line 406
    sget-object v1, Lf0/t;->m:Lf0/g;

    .line 407
    .line 408
    :goto_b
    const/4 v4, 0x2

    .line 409
    invoke-static {v0, v4, v1}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    goto :goto_11

    .line 414
    :cond_11
    :goto_c
    iget-object v15, v12, Lf0/f;->b:Ljava/lang/String;

    .line 415
    .line 416
    if-nez v15, :cond_12

    .line 417
    .line 418
    iget-object v15, v12, Lf0/f;->c:Ljava/lang/String;

    .line 419
    .line 420
    if-nez v15, :cond_12

    .line 421
    .line 422
    iget-object v15, v12, Lf0/f;->d:Lf0/e;

    .line 423
    .line 424
    iget-object v0, v15, Lf0/e;->c:Ljava/lang/Object;

    .line 425
    .line 426
    check-cast v0, Ljava/lang/String;

    .line 427
    .line 428
    if-nez v0, :cond_12

    .line 429
    .line 430
    iget v0, v15, Lf0/e;->a:I

    .line 431
    .line 432
    if-nez v0, :cond_12

    .line 433
    .line 434
    iget-boolean v0, v12, Lf0/f;->a:Z

    .line 435
    .line 436
    if-nez v0, :cond_12

    .line 437
    .line 438
    iget-boolean v0, v12, Lf0/f;->g:Z

    .line 439
    .line 440
    if-nez v0, :cond_12

    .line 441
    .line 442
    const/4 v0, 0x0

    .line 443
    goto :goto_d

    .line 444
    :cond_12
    const/4 v0, 0x1

    .line 445
    :goto_d
    if-eqz v0, :cond_14

    .line 446
    .line 447
    iget-boolean v0, v3, Lf0/b;->k:Z

    .line 448
    .line 449
    if-eqz v0, :cond_13

    .line 450
    .line 451
    goto :goto_f

    .line 452
    :cond_13
    sget v0, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 453
    .line 454
    sget-object v0, Lf0/t;->g:Lf0/g;

    .line 455
    .line 456
    const/16 v1, 0x12

    .line 457
    .line 458
    :goto_e
    move/from16 v35, v1

    .line 459
    .line 460
    move-object v1, v0

    .line 461
    move/from16 v0, v35

    .line 462
    .line 463
    goto :goto_b

    .line 464
    :cond_14
    :goto_f
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 465
    .line 466
    .line 467
    move-result v0

    .line 468
    const/4 v15, 0x1

    .line 469
    if-le v0, v15, :cond_16

    .line 470
    .line 471
    iget-boolean v0, v3, Lf0/b;->p:Z

    .line 472
    .line 473
    if-eqz v0, :cond_15

    .line 474
    .line 475
    goto :goto_10

    .line 476
    :cond_15
    sget v0, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 477
    .line 478
    sget-object v0, Lf0/t;->n:Lf0/g;

    .line 479
    .line 480
    const/16 v1, 0x13

    .line 481
    .line 482
    goto :goto_e

    .line 483
    :cond_16
    :goto_10
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    if-nez v0, :cond_18

    .line 488
    .line 489
    iget-boolean v0, v3, Lf0/b;->q:Z

    .line 490
    .line 491
    if-eqz v0, :cond_17

    .line 492
    .line 493
    goto :goto_12

    .line 494
    :cond_17
    sget v0, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 495
    .line 496
    sget-object v0, Lf0/t;->p:Lf0/g;

    .line 497
    .line 498
    const/16 v1, 0x14

    .line 499
    .line 500
    goto :goto_e

    .line 501
    :goto_11
    invoke-virtual {v3, v5}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v3, v1}, Lf0/b;->d(Lf0/g;)V

    .line 505
    .line 506
    .line 507
    move-object/from16 v19, v2

    .line 508
    .line 509
    const/4 v3, 0x0

    .line 510
    goto/16 :goto_1f

    .line 511
    .line 512
    :cond_18
    :goto_12
    iget-boolean v0, v3, Lf0/b;->k:Z

    .line 513
    .line 514
    if-eqz v0, :cond_3d

    .line 515
    .line 516
    iget-boolean v0, v3, Lf0/b;->l:Z

    .line 517
    .line 518
    iget-boolean v15, v3, Lf0/b;->r:Z

    .line 519
    .line 520
    move-object/from16 v18, v8

    .line 521
    .line 522
    iget-object v8, v3, Lf0/b;->t:Lf0/h;

    .line 523
    .line 524
    move-object/from16 v19, v2

    .line 525
    .line 526
    iget-boolean v2, v8, Lf0/h;->b:Z

    .line 527
    .line 528
    iget-boolean v8, v8, Lf0/h;->c:Z

    .line 529
    .line 530
    move-object/from16 v20, v6

    .line 531
    .line 532
    iget-boolean v6, v3, Lf0/b;->u:Z

    .line 533
    .line 534
    move-object/from16 v21, v14

    .line 535
    .line 536
    iget-object v14, v3, Lf0/b;->b:Ljava/lang/String;

    .line 537
    .line 538
    move-object/from16 v22, v13

    .line 539
    .line 540
    new-instance v13, Landroid/os/Bundle;

    .line 541
    .line 542
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 543
    .line 544
    .line 545
    move-object/from16 v23, v1

    .line 546
    .line 547
    const-string v1, "playBillingLibraryVersion"

    .line 548
    .line 549
    invoke-virtual {v13, v1, v14}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    iget-object v1, v12, Lf0/f;->d:Lf0/e;

    .line 553
    .line 554
    iget v1, v1, Lf0/e;->a:I

    .line 555
    .line 556
    if-eqz v1, :cond_19

    .line 557
    .line 558
    const-string v14, "prorationMode"

    .line 559
    .line 560
    invoke-virtual {v13, v14, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 561
    .line 562
    .line 563
    :cond_19
    iget-object v1, v12, Lf0/f;->b:Ljava/lang/String;

    .line 564
    .line 565
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 566
    .line 567
    .line 568
    move-result v1

    .line 569
    if-nez v1, :cond_1a

    .line 570
    .line 571
    iget-object v1, v12, Lf0/f;->b:Ljava/lang/String;

    .line 572
    .line 573
    const-string v14, "accountId"

    .line 574
    .line 575
    invoke-virtual {v13, v14, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    :cond_1a
    iget-object v1, v12, Lf0/f;->c:Ljava/lang/String;

    .line 579
    .line 580
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 581
    .line 582
    .line 583
    move-result v1

    .line 584
    if-nez v1, :cond_1b

    .line 585
    .line 586
    iget-object v1, v12, Lf0/f;->c:Ljava/lang/String;

    .line 587
    .line 588
    const-string v14, "obfuscatedProfileId"

    .line 589
    .line 590
    invoke-virtual {v13, v14, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    :cond_1b
    iget-boolean v1, v12, Lf0/f;->g:Z

    .line 594
    .line 595
    if-eqz v1, :cond_1c

    .line 596
    .line 597
    const-string v1, "isOfferPersonalizedByDeveloper"

    .line 598
    .line 599
    const/4 v14, 0x1

    .line 600
    invoke-virtual {v13, v1, v14}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 601
    .line 602
    .line 603
    :cond_1c
    const/4 v1, 0x0

    .line 604
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 605
    .line 606
    .line 607
    move-result v14

    .line 608
    if-nez v14, :cond_1d

    .line 609
    .line 610
    new-instance v14, Ljava/util/ArrayList;

    .line 611
    .line 612
    filled-new-array {v1}, [Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v24

    .line 616
    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 617
    .line 618
    .line 619
    move-result-object v1

    .line 620
    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 621
    .line 622
    .line 623
    const-string v1, "skusToReplace"

    .line 624
    .line 625
    invoke-virtual {v13, v1, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 626
    .line 627
    .line 628
    :cond_1d
    iget-object v1, v12, Lf0/f;->d:Lf0/e;

    .line 629
    .line 630
    iget-object v1, v1, Lf0/e;->b:Ljava/io/Serializable;

    .line 631
    .line 632
    check-cast v1, Ljava/lang/String;

    .line 633
    .line 634
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 635
    .line 636
    .line 637
    move-result v1

    .line 638
    if-nez v1, :cond_1e

    .line 639
    .line 640
    iget-object v1, v12, Lf0/f;->d:Lf0/e;

    .line 641
    .line 642
    iget-object v1, v1, Lf0/e;->b:Ljava/io/Serializable;

    .line 643
    .line 644
    check-cast v1, Ljava/lang/String;

    .line 645
    .line 646
    const-string v14, "oldSkuPurchaseToken"

    .line 647
    .line 648
    invoke-virtual {v13, v14, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    :cond_1e
    const/4 v1, 0x0

    .line 652
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 653
    .line 654
    .line 655
    move-result v14

    .line 656
    if-nez v14, :cond_1f

    .line 657
    .line 658
    const-string v14, "oldSkuPurchaseId"

    .line 659
    .line 660
    invoke-virtual {v13, v14, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    :cond_1f
    iget-object v1, v12, Lf0/f;->d:Lf0/e;

    .line 664
    .line 665
    iget-object v1, v1, Lf0/e;->c:Ljava/lang/Object;

    .line 666
    .line 667
    check-cast v1, Ljava/lang/String;

    .line 668
    .line 669
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 670
    .line 671
    .line 672
    move-result v1

    .line 673
    if-nez v1, :cond_20

    .line 674
    .line 675
    iget-object v1, v12, Lf0/f;->d:Lf0/e;

    .line 676
    .line 677
    iget-object v1, v1, Lf0/e;->c:Ljava/lang/Object;

    .line 678
    .line 679
    check-cast v1, Ljava/lang/String;

    .line 680
    .line 681
    const-string v14, "originalExternalTransactionId"

    .line 682
    .line 683
    invoke-virtual {v13, v14, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    :cond_20
    const/4 v1, 0x0

    .line 687
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 688
    .line 689
    .line 690
    move-result v14

    .line 691
    if-nez v14, :cond_21

    .line 692
    .line 693
    const-string v14, "paymentsPurchaseParams"

    .line 694
    .line 695
    invoke-virtual {v13, v14, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    :cond_21
    if-eqz v0, :cond_22

    .line 699
    .line 700
    if-eqz v2, :cond_22

    .line 701
    .line 702
    const-string v0, "enablePendingPurchases"

    .line 703
    .line 704
    const/4 v1, 0x1

    .line 705
    invoke-virtual {v13, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 706
    .line 707
    .line 708
    goto :goto_13

    .line 709
    :cond_22
    const/4 v1, 0x1

    .line 710
    :goto_13
    if-eqz v15, :cond_23

    .line 711
    .line 712
    if-eqz v8, :cond_23

    .line 713
    .line 714
    const-string v0, "enablePendingPurchaseForSubscriptions"

    .line 715
    .line 716
    invoke-virtual {v13, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 717
    .line 718
    .line 719
    :cond_23
    if-eqz v6, :cond_24

    .line 720
    .line 721
    const-string v0, "enableAlternativeBilling"

    .line 722
    .line 723
    invoke-virtual {v13, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 724
    .line 725
    .line 726
    :cond_24
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 727
    .line 728
    .line 729
    move-result v0

    .line 730
    const-string v1, "SKU_SERIALIZED_DOCID_LIST"

    .line 731
    .line 732
    const-string v2, "skuDetailsTokens"

    .line 733
    .line 734
    const-string v6, "SKU_OFFER_ID_TOKEN_LIST"

    .line 735
    .line 736
    if-nez v0, :cond_2e

    .line 737
    .line 738
    new-instance v0, Ljava/util/ArrayList;

    .line 739
    .line 740
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 741
    .line 742
    .line 743
    new-instance v8, Ljava/util/ArrayList;

    .line 744
    .line 745
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .line 747
    .line 748
    new-instance v14, Ljava/util/ArrayList;

    .line 749
    .line 750
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 751
    .line 752
    .line 753
    new-instance v15, Ljava/util/ArrayList;

    .line 754
    .line 755
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 756
    .line 757
    .line 758
    move-object/from16 v24, v12

    .line 759
    .line 760
    new-instance v12, Ljava/util/ArrayList;

    .line 761
    .line 762
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 763
    .line 764
    .line 765
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 766
    .line 767
    .line 768
    move-result-object v25

    .line 769
    const/16 v26, 0x0

    .line 770
    .line 771
    const/16 v27, 0x0

    .line 772
    .line 773
    const/16 v28, 0x0

    .line 774
    .line 775
    const/16 v29, 0x0

    .line 776
    .line 777
    :goto_14
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    .line 778
    .line 779
    .line 780
    move-result v30

    .line 781
    if-eqz v30, :cond_28

    .line 782
    .line 783
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move-result-object v30

    .line 787
    move-object/from16 v31, v5

    .line 788
    .line 789
    move-object/from16 v5, v30

    .line 790
    .line 791
    check-cast v5, Lcom/android/billingclient/api/SkuDetails;

    .line 792
    .line 793
    move-object/from16 v30, v10

    .line 794
    .line 795
    iget-object v10, v5, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    .line 796
    .line 797
    move-object/from16 v32, v11

    .line 798
    .line 799
    const-string v11, "skuDetailsToken"

    .line 800
    .line 801
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v10

    .line 805
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 806
    .line 807
    .line 808
    move-result v10

    .line 809
    if-nez v10, :cond_25

    .line 810
    .line 811
    iget-object v10, v5, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    .line 812
    .line 813
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v10

    .line 817
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    .line 819
    .line 820
    :cond_25
    iget-object v10, v5, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    .line 821
    .line 822
    const-string v11, "offerIdToken"

    .line 823
    .line 824
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v11

    .line 828
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 829
    .line 830
    .line 831
    move-result v33

    .line 832
    if-eqz v33, :cond_26

    .line 833
    .line 834
    const-string v11, "offer_id_token"

    .line 835
    .line 836
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v11

    .line 840
    :cond_26
    iget-object v10, v5, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    .line 841
    .line 842
    move-object/from16 v33, v3

    .line 843
    .line 844
    const-string v3, "offer_id"

    .line 845
    .line 846
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v3

    .line 850
    iget-object v10, v5, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    .line 851
    .line 852
    move-object/from16 v34, v9

    .line 853
    .line 854
    const-string v9, "offer_type"

    .line 855
    .line 856
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 857
    .line 858
    .line 859
    move-result v9

    .line 860
    iget-object v5, v5, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    .line 861
    .line 862
    const-string v10, "serializedDocid"

    .line 863
    .line 864
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v5

    .line 868
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    .line 870
    .line 871
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 872
    .line 873
    .line 874
    move-result v10

    .line 875
    const/16 v16, 0x1

    .line 876
    .line 877
    xor-int/lit8 v10, v10, 0x1

    .line 878
    .line 879
    or-int v26, v26, v10

    .line 880
    .line 881
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    .line 883
    .line 884
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 885
    .line 886
    .line 887
    move-result v3

    .line 888
    xor-int/lit8 v3, v3, 0x1

    .line 889
    .line 890
    or-int v27, v27, v3

    .line 891
    .line 892
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 893
    .line 894
    .line 895
    move-result-object v3

    .line 896
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    if-eqz v9, :cond_27

    .line 900
    .line 901
    move/from16 v3, v16

    .line 902
    .line 903
    goto :goto_15

    .line 904
    :cond_27
    const/4 v3, 0x0

    .line 905
    :goto_15
    or-int v28, v28, v3

    .line 906
    .line 907
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 908
    .line 909
    .line 910
    move-result v3

    .line 911
    xor-int/lit8 v3, v3, 0x1

    .line 912
    .line 913
    or-int v29, v29, v3

    .line 914
    .line 915
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    .line 917
    .line 918
    move-object/from16 v10, v30

    .line 919
    .line 920
    move-object/from16 v5, v31

    .line 921
    .line 922
    move-object/from16 v11, v32

    .line 923
    .line 924
    move-object/from16 v3, v33

    .line 925
    .line 926
    move-object/from16 v9, v34

    .line 927
    .line 928
    goto/16 :goto_14

    .line 929
    .line 930
    :cond_28
    move-object/from16 v33, v3

    .line 931
    .line 932
    move-object/from16 v31, v5

    .line 933
    .line 934
    move-object/from16 v34, v9

    .line 935
    .line 936
    move-object/from16 v30, v10

    .line 937
    .line 938
    move-object/from16 v32, v11

    .line 939
    .line 940
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 941
    .line 942
    .line 943
    move-result v3

    .line 944
    if-nez v3, :cond_29

    .line 945
    .line 946
    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 947
    .line 948
    .line 949
    :cond_29
    if-eqz v26, :cond_2a

    .line 950
    .line 951
    invoke-virtual {v13, v6, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 952
    .line 953
    .line 954
    :cond_2a
    if-eqz v27, :cond_2b

    .line 955
    .line 956
    const-string v0, "SKU_OFFER_ID_LIST"

    .line 957
    .line 958
    invoke-virtual {v13, v0, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 959
    .line 960
    .line 961
    :cond_2b
    if-eqz v28, :cond_2c

    .line 962
    .line 963
    const-string v0, "SKU_OFFER_TYPE_LIST"

    .line 964
    .line 965
    invoke-virtual {v13, v0, v15}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 966
    .line 967
    .line 968
    :cond_2c
    if-eqz v29, :cond_2d

    .line 969
    .line 970
    invoke-virtual {v13, v1, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 971
    .line 972
    .line 973
    :cond_2d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 974
    .line 975
    .line 976
    move-result v0

    .line 977
    const/4 v1, 0x1

    .line 978
    if-le v0, v1, :cond_32

    .line 979
    .line 980
    new-instance v0, Ljava/util/ArrayList;

    .line 981
    .line 982
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 983
    .line 984
    .line 985
    move-result v1

    .line 986
    add-int/lit8 v1, v1, -0x1

    .line 987
    .line 988
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 989
    .line 990
    .line 991
    new-instance v1, Ljava/util/ArrayList;

    .line 992
    .line 993
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 994
    .line 995
    .line 996
    move-result v2

    .line 997
    add-int/lit8 v2, v2, -0x1

    .line 998
    .line 999
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1000
    .line 1001
    .line 1002
    const/4 v2, 0x1

    .line 1003
    :goto_16
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1004
    .line 1005
    .line 1006
    move-result v3

    .line 1007
    if-ge v2, v3, :cond_31

    .line 1008
    .line 1009
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v3

    .line 1013
    check-cast v3, Lcom/android/billingclient/api/SkuDetails;

    .line 1014
    .line 1015
    iget-object v3, v3, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    .line 1016
    .line 1017
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v3

    .line 1021
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v3

    .line 1028
    check-cast v3, Lcom/android/billingclient/api/SkuDetails;

    .line 1029
    .line 1030
    invoke-virtual {v3}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v3

    .line 1034
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    .line 1036
    .line 1037
    add-int/lit8 v2, v2, 0x1

    .line 1038
    .line 1039
    goto :goto_16

    .line 1040
    :cond_2e
    move-object/from16 v33, v3

    .line 1041
    .line 1042
    move-object/from16 v31, v5

    .line 1043
    .line 1044
    move-object/from16 v34, v9

    .line 1045
    .line 1046
    move-object/from16 v30, v10

    .line 1047
    .line 1048
    move-object/from16 v32, v11

    .line 1049
    .line 1050
    move-object/from16 v24, v12

    .line 1051
    .line 1052
    new-instance v0, Ljava/util/ArrayList;

    .line 1053
    .line 1054
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    .line 1055
    .line 1056
    .line 1057
    move-result v3

    .line 1058
    add-int/lit8 v3, v3, -0x1

    .line 1059
    .line 1060
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1061
    .line 1062
    .line 1063
    new-instance v3, Ljava/util/ArrayList;

    .line 1064
    .line 1065
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    .line 1066
    .line 1067
    .line 1068
    move-result v4

    .line 1069
    add-int/lit8 v4, v4, -0x1

    .line 1070
    .line 1071
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1072
    .line 1073
    .line 1074
    new-instance v4, Ljava/util/ArrayList;

    .line 1075
    .line 1076
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1077
    .line 1078
    .line 1079
    new-instance v5, Ljava/util/ArrayList;

    .line 1080
    .line 1081
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    .line 1083
    .line 1084
    new-instance v7, Ljava/util/ArrayList;

    .line 1085
    .line 1086
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    .line 1088
    .line 1089
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    .line 1090
    .line 1091
    .line 1092
    move-result v8

    .line 1093
    if-gtz v8, :cond_3c

    .line 1094
    .line 1095
    invoke-virtual {v13, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1099
    .line 1100
    .line 1101
    move-result v5

    .line 1102
    if-nez v5, :cond_2f

    .line 1103
    .line 1104
    invoke-virtual {v13, v2, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1105
    .line 1106
    .line 1107
    :cond_2f
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1108
    .line 1109
    .line 1110
    move-result v2

    .line 1111
    if-nez v2, :cond_30

    .line 1112
    .line 1113
    invoke-virtual {v13, v1, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1114
    .line 1115
    .line 1116
    :cond_30
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1117
    .line 1118
    .line 1119
    move-result v1

    .line 1120
    if-nez v1, :cond_32

    .line 1121
    .line 1122
    move-object v1, v3

    .line 1123
    :cond_31
    const-string v2, "additionalSkus"

    .line 1124
    .line 1125
    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1126
    .line 1127
    .line 1128
    const-string v0, "additionalSkuTypes"

    .line 1129
    .line 1130
    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1131
    .line 1132
    .line 1133
    :cond_32
    invoke-virtual {v13, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 1134
    .line 1135
    .line 1136
    move-result v0

    .line 1137
    if-eqz v0, :cond_34

    .line 1138
    .line 1139
    move-object/from16 v0, v33

    .line 1140
    .line 1141
    iget-boolean v1, v0, Lf0/b;->n:Z

    .line 1142
    .line 1143
    if-eqz v1, :cond_33

    .line 1144
    .line 1145
    goto :goto_17

    .line 1146
    :cond_33
    sget-object v1, Lf0/t;->o:Lf0/g;

    .line 1147
    .line 1148
    const/16 v2, 0x15

    .line 1149
    .line 1150
    const/4 v3, 0x0

    .line 1151
    goto/16 :goto_1e

    .line 1152
    .line 1153
    :cond_34
    move-object/from16 v0, v33

    .line 1154
    .line 1155
    :goto_17
    move-object/from16 v11, v32

    .line 1156
    .line 1157
    iget-object v1, v11, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    .line 1158
    .line 1159
    move-object/from16 v2, v30

    .line 1160
    .line 1161
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v1

    .line 1165
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1166
    .line 1167
    .line 1168
    move-result v1

    .line 1169
    if-nez v1, :cond_35

    .line 1170
    .line 1171
    iget-object v1, v11, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    .line 1172
    .line 1173
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v1

    .line 1177
    const-string v2, "skuPackageName"

    .line 1178
    .line 1179
    invoke-virtual {v13, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    .line 1181
    .line 1182
    const/4 v1, 0x1

    .line 1183
    goto :goto_18

    .line 1184
    :cond_35
    const/4 v1, 0x0

    .line 1185
    :goto_18
    const/4 v2, 0x0

    .line 1186
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1187
    .line 1188
    .line 1189
    move-result v3

    .line 1190
    if-nez v3, :cond_36

    .line 1191
    .line 1192
    const-string v3, "accountName"

    .line 1193
    .line 1194
    invoke-virtual {v13, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    .line 1196
    .line 1197
    :cond_36
    invoke-virtual/range {v31 .. v31}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v2

    .line 1201
    if-nez v2, :cond_37

    .line 1202
    .line 1203
    sget v2, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 1204
    .line 1205
    goto :goto_19

    .line 1206
    :cond_37
    const-string v3, "PROXY_PACKAGE"

    .line 1207
    .line 1208
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v4

    .line 1212
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1213
    .line 1214
    .line 1215
    move-result v4

    .line 1216
    if-nez v4, :cond_38

    .line 1217
    .line 1218
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v2

    .line 1222
    const-string v3, "proxyPackage"

    .line 1223
    .line 1224
    invoke-virtual {v13, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    .line 1226
    .line 1227
    :try_start_0
    iget-object v3, v0, Lf0/b;->e:Landroid/content/Context;

    .line 1228
    .line 1229
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v3

    .line 1233
    const/4 v4, 0x0

    .line 1234
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v2

    .line 1238
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    .line 1240
    move-object/from16 v3, v23

    .line 1241
    .line 1242
    :try_start_1
    invoke-virtual {v13, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1243
    .line 1244
    .line 1245
    goto :goto_19

    .line 1246
    :catch_0
    move-object/from16 v3, v23

    .line 1247
    .line 1248
    :catch_1
    const-string v2, "package not found"

    .line 1249
    .line 1250
    invoke-virtual {v13, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    .line 1252
    .line 1253
    :cond_38
    :goto_19
    iget-boolean v2, v0, Lf0/b;->q:Z

    .line 1254
    .line 1255
    if-eqz v2, :cond_39

    .line 1256
    .line 1257
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->isEmpty()Z

    .line 1258
    .line 1259
    .line 1260
    move-result v2

    .line 1261
    if-nez v2, :cond_39

    .line 1262
    .line 1263
    const/16 v1, 0x11

    .line 1264
    .line 1265
    goto :goto_1a

    .line 1266
    :cond_39
    iget-boolean v2, v0, Lf0/b;->o:Z

    .line 1267
    .line 1268
    if-eqz v2, :cond_3a

    .line 1269
    .line 1270
    if-eqz v1, :cond_3a

    .line 1271
    .line 1272
    const/16 v1, 0xf

    .line 1273
    .line 1274
    goto :goto_1a

    .line 1275
    :cond_3a
    iget-boolean v1, v0, Lf0/b;->l:Z

    .line 1276
    .line 1277
    if-eqz v1, :cond_3b

    .line 1278
    .line 1279
    const/16 v9, 0x9

    .line 1280
    .line 1281
    goto :goto_1b

    .line 1282
    :cond_3b
    const/4 v1, 0x6

    .line 1283
    :goto_1a
    move v9, v1

    .line 1284
    :goto_1b
    new-instance v1, Lf0/n;

    .line 1285
    .line 1286
    move-object v7, v1

    .line 1287
    move-object/from16 v2, v18

    .line 1288
    .line 1289
    move-object v8, v0

    .line 1290
    move-object/from16 v10, v22

    .line 1291
    .line 1292
    move-object v11, v2

    .line 1293
    move-object/from16 v12, v24

    .line 1294
    .line 1295
    invoke-direct/range {v7 .. v13}, Lf0/n;-><init>(Lf0/b;ILjava/lang/String;Ljava/lang/String;Lf0/f;Landroid/os/Bundle;)V

    .line 1296
    .line 1297
    .line 1298
    const-wide/16 v9, 0x1388

    .line 1299
    .line 1300
    const/4 v11, 0x0

    .line 1301
    iget-object v12, v0, Lf0/b;->c:Landroid/os/Handler;

    .line 1302
    .line 1303
    move-object v7, v0

    .line 1304
    move-object v8, v1

    .line 1305
    invoke-virtual/range {v7 .. v12}, Lf0/b;->g(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v1

    .line 1309
    const/16 v2, 0x4e

    .line 1310
    .line 1311
    const/4 v3, 0x0

    .line 1312
    goto :goto_1c

    .line 1313
    :cond_3c
    move-object/from16 v1, v34

    .line 1314
    .line 1315
    const/4 v3, 0x0

    .line 1316
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v0

    .line 1320
    invoke-static {v0}, La1/b;->j(Ljava/lang/Object;)V

    .line 1321
    .line 1322
    .line 1323
    const/4 v0, 0x0

    .line 1324
    throw v0

    .line 1325
    :cond_3d
    move-object/from16 v19, v2

    .line 1326
    .line 1327
    move-object v0, v3

    .line 1328
    move-object/from16 v31, v5

    .line 1329
    .line 1330
    move-object/from16 v20, v6

    .line 1331
    .line 1332
    move-object v2, v8

    .line 1333
    move-object/from16 v22, v13

    .line 1334
    .line 1335
    move-object/from16 v21, v14

    .line 1336
    .line 1337
    const/4 v3, 0x0

    .line 1338
    new-instance v8, Lf0/o;

    .line 1339
    .line 1340
    move-object/from16 v1, v22

    .line 1341
    .line 1342
    const/4 v4, 0x1

    .line 1343
    invoke-direct {v8, v0, v1, v2, v4}, Lf0/o;-><init>(Lf0/b;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1344
    .line 1345
    .line 1346
    const-wide/16 v9, 0x1388

    .line 1347
    .line 1348
    const/4 v11, 0x0

    .line 1349
    iget-object v12, v0, Lf0/b;->c:Landroid/os/Handler;

    .line 1350
    .line 1351
    move-object v7, v0

    .line 1352
    invoke-virtual/range {v7 .. v12}, Lf0/b;->g(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v1

    .line 1356
    const/16 v2, 0x50

    .line 1357
    .line 1358
    :goto_1c
    if-nez v1, :cond_3e

    .line 1359
    .line 1360
    :try_start_2
    sget-object v1, Lf0/t;->k:Lf0/g;

    .line 1361
    .line 1362
    const/16 v2, 0x19

    .line 1363
    .line 1364
    const/4 v4, 0x2

    .line 1365
    invoke-static {v2, v4, v1}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v2

    .line 1369
    goto :goto_1d

    .line 1370
    :cond_3e
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1371
    .line 1372
    const-wide/16 v5, 0x1388

    .line 1373
    .line 1374
    invoke-interface {v1, v5, v6, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v1

    .line 1378
    check-cast v1, Landroid/os/Bundle;

    .line 1379
    .line 1380
    move-object/from16 v4, v21

    .line 1381
    .line 1382
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/play_billing/s;->a(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 1383
    .line 1384
    .line 1385
    move-result v5

    .line 1386
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/play_billing/s;->c(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v4

    .line 1390
    if-eqz v5, :cond_40

    .line 1391
    .line 1392
    invoke-static {v5, v4}, Lf0/t;->a(ILjava/lang/String;)Lf0/g;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v4

    .line 1396
    if-eqz v1, :cond_3f

    .line 1397
    .line 1398
    const/16 v2, 0x17

    .line 1399
    .line 1400
    :cond_3f
    const/4 v1, 0x2

    .line 1401
    invoke-static {v2, v1, v4}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v2

    .line 1405
    move-object v1, v4

    .line 1406
    :goto_1d
    invoke-virtual {v0, v2}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 1407
    .line 1408
    .line 1409
    invoke-virtual {v0, v1}, Lf0/b;->d(Lf0/g;)V

    .line 1410
    .line 1411
    .line 1412
    goto :goto_1f

    .line 1413
    :cond_40
    new-instance v2, Landroid/content/Intent;

    .line 1414
    .line 1415
    const-class v4, Lcom/android/billingclient/api/ProxyBillingActivity;

    .line 1416
    .line 1417
    move-object/from16 v5, v31

    .line 1418
    .line 1419
    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1420
    .line 1421
    .line 1422
    move-object/from16 v4, v20

    .line 1423
    .line 1424
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v1

    .line 1428
    check-cast v1, Landroid/app/PendingIntent;

    .line 1429
    .line 1430
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1431
    .line 1432
    .line 1433
    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1434
    .line 1435
    .line 1436
    sget-object v1, Lf0/t;->j:Lf0/g;

    .line 1437
    .line 1438
    goto :goto_1f

    .line 1439
    :catch_2
    sget v1, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 1440
    .line 1441
    sget-object v1, Lf0/t;->k:Lf0/g;

    .line 1442
    .line 1443
    const/4 v2, 0x5

    .line 1444
    goto :goto_1e

    .line 1445
    :catch_3
    sget v1, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 1446
    .line 1447
    sget-object v1, Lf0/t;->l:Lf0/g;

    .line 1448
    .line 1449
    const/4 v2, 0x4

    .line 1450
    :goto_1e
    const/4 v4, 0x2

    .line 1451
    invoke-static {v2, v4, v1}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 1452
    .line 1453
    .line 1454
    move-result-object v2

    .line 1455
    invoke-virtual {v0, v2}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 1456
    .line 1457
    .line 1458
    invoke-virtual {v0, v1}, Lf0/b;->d(Lf0/g;)V

    .line 1459
    .line 1460
    .line 1461
    goto :goto_1f

    .line 1462
    :cond_41
    move-object/from16 v19, v2

    .line 1463
    .line 1464
    move-object v0, v3

    .line 1465
    move v3, v4

    .line 1466
    move v4, v15

    .line 1467
    sget-object v1, Lf0/t;->r:Lf0/g;

    .line 1468
    .line 1469
    const/16 v2, 0xc

    .line 1470
    .line 1471
    invoke-static {v2, v4, v1}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v2

    .line 1475
    invoke-virtual {v0, v2}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 1476
    .line 1477
    .line 1478
    :goto_1f
    iget v0, v1, Lf0/g;->b:I

    .line 1479
    .line 1480
    if-nez v0, :cond_42

    .line 1481
    .line 1482
    move-object/from16 v0, v19

    .line 1483
    .line 1484
    const/4 v2, 0x1

    .line 1485
    iput-boolean v2, v0, Lcom/nomone/giap/GIAP;->f:Z

    .line 1486
    .line 1487
    move v1, v2

    .line 1488
    goto :goto_22

    .line 1489
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1490
    .line 1491
    const-string v2, "Billing failed: + "

    .line 1492
    .line 1493
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1494
    .line 1495
    .line 1496
    iget-object v1, v1, Lf0/g;->c:Ljava/lang/String;

    .line 1497
    .line 1498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    .line 1500
    .line 1501
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v0

    .line 1505
    goto :goto_21

    .line 1506
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1507
    .line 1508
    const-string v1, "SKU cannot be null."

    .line 1509
    .line 1510
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1511
    .line 1512
    .line 1513
    throw v0

    .line 1514
    :cond_44
    move-object v0, v8

    .line 1515
    throw v0

    .line 1516
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1517
    .line 1518
    const-string v1, "Details of the products must be provided."

    .line 1519
    .line 1520
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1521
    .line 1522
    .line 1523
    throw v0

    .line 1524
    :cond_46
    :goto_20
    move v3, v4

    .line 1525
    const-string v0, "Unknown SKU: buy_app. Make sure you\'ve added this sku (if it\'s valid) while initializing billing."

    .line 1526
    .line 1527
    :goto_21
    const-string v1, "IAP"

    .line 1528
    .line 1529
    invoke-static {v1, v0}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    .line 1531
    .line 1532
    move v1, v3

    .line 1533
    :goto_22
    return v1
.end method

.method public final i()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lq1/x;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lq1/x;->c()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lq1/x;->g()V

    .line 11
    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lq1/x;->e()Lcom/nomone/giap/GIAP;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-boolean v0, v0, Lcom/nomone/giap/GIAP;->d:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-boolean v0, p0, Lq1/x;->A:Z

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    iget-object v1, p0, Lq1/x;->y:Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    goto :goto_4

    .line 35
    :cond_2
    new-instance v1, Lr1/y;

    .line 36
    .line 37
    iget-object v2, p0, Lq1/x;->d:Lq1/f;

    .line 38
    .line 39
    invoke-direct {v1, v2}, Lr1/y;-><init>(Lq1/f;)V

    .line 40
    .line 41
    .line 42
    const-string v2, "Trial period"

    .line 43
    .line 44
    iput-object v2, v1, Lr1/y;->d:Ljava/lang/String;

    .line 45
    .line 46
    const-string v2, ".button-text { line-height: 18px; } ul { margin-top: 5px; }"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lr1/y;->b(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v3, "The app is running in trial mode. When the trial period is over, the app locks. However, you can:<ul><li>Continue to use the app for <strong>1 hour everyday</strong>,"

    .line 54
    .line 55
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    const-string v3, "<li><strong>Pay</strong> to unlock the app,</li>"

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    const-string v3, ""

    .line 64
    .line 65
    :goto_1
    const-string v4, "<li>Contact the developers to unlock the app for you.</li></ul>"

    .line 66
    .line 67
    invoke-static {v2, v3, v4}, La1/b;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iput-object v2, v1, Lr1/y;->e:Ljava/lang/String;

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    const-string v3, "Buy full version"

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    move-object v3, v2

    .line 80
    :goto_2
    invoke-virtual {v1, v3}, Lr1/y;->a(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v3, "Contact developers"

    .line 84
    .line 85
    invoke-virtual {v1, v3}, Lr1/y;->a(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v3, "Continue<br>trial"

    .line 89
    .line 90
    invoke-virtual {v1, v3}, Lr1/y;->a(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    const/16 v0, 0x127

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_5
    const/16 v0, 0x113

    .line 99
    .line 100
    :goto_3
    const/16 v3, 0x1b8

    .line 101
    .line 102
    invoke-virtual {v1, v3, v0}, Lr1/y;->d(II)V

    .line 103
    .line 104
    .line 105
    const/16 v0, 0x64

    .line 106
    .line 107
    iput v0, v1, Lr1/y;->i:I

    .line 108
    .line 109
    const/16 v0, 0x28

    .line 110
    .line 111
    iput v0, v1, Lr1/y;->j:I

    .line 112
    .line 113
    new-instance v0, Lq1/n;

    .line 114
    .line 115
    const/4 v3, 0x3

    .line 116
    invoke-direct {v0, p0, v3}, Lq1/n;-><init>(Lq1/x;I)V

    .line 117
    .line 118
    .line 119
    iput-object v0, v1, Lr1/y;->o:Lr1/w;

    .line 120
    .line 121
    invoke-static {v1, v2}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    :goto_4
    iput-object v1, p0, Lq1/x;->y:Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 126
    .line 127
    :goto_5
    return-void
.end method

.method public final j(FFZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq1/x;->d:Lq1/f;

    .line 2
    .line 3
    iget v0, v0, Lq1/f;->i:F

    .line 4
    .line 5
    neg-float v0, v0

    .line 6
    mul-float/2addr p1, v0

    .line 7
    mul-float/2addr p2, v0

    .line 8
    if-nez p3, :cond_1

    .line 9
    .line 10
    iget-object p3, p0, Lq1/x;->u:Lq1/w;

    .line 11
    .line 12
    iget-boolean p3, p3, Lq1/w;->f:Z

    .line 13
    .line 14
    if-nez p3, :cond_1

    .line 15
    .line 16
    iget-boolean p3, p0, Lq1/x;->t:Z

    .line 17
    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p3, p0, Lq1/x;->g:La2/x;

    .line 22
    .line 23
    iput p1, p3, La2/x;->r:F

    .line 24
    .line 25
    iput p2, p3, La2/x;->s:F

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 p3, 0x0

    .line 29
    iput-boolean p3, p0, Lq1/x;->t:Z

    .line 30
    .line 31
    iget-object p3, p0, Lq1/x;->u:Lq1/w;

    .line 32
    .line 33
    monitor-enter p3

    .line 34
    :try_start_0
    iget-object v1, p0, Lq1/x;->u:Lq1/w;

    .line 35
    .line 36
    iput p1, v1, Lq1/w;->g:F

    .line 37
    .line 38
    iput p2, v1, Lq1/w;->h:F

    .line 39
    .line 40
    iget-boolean p1, v1, Lq1/w;->f:Z

    .line 41
    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    sget-object p1, Lq1/f;->L:Lo1/j0;

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :goto_1
    const/4 p1, 0x0

    .line 51
    cmpl-float p1, v0, p1

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    iget-object p1, p0, Lq1/x;->d:Lq1/f;

    .line 56
    .line 57
    invoke-virtual {p1}, Lq1/f;->d()V

    .line 58
    .line 59
    .line 60
    :cond_3
    return-void

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p1
.end method

.method public final k(Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq1/x;->b:Lo1/x0;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo1/x0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    return-void
.end method

.method public final l()V
    .locals 11

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/util/Date;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 15
    .line 16
    .line 17
    sget-object v2, Lo1/y;->a:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    const-string v3, "Dynamic touch flags"

    .line 20
    .line 21
    const-wide/16 v4, 0x0

    .line 22
    .line 23
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x6

    .line 31
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v9, 0x0

    .line 40
    if-ne v8, v2, :cond_0

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    if-ne v8, v10, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move v2, v9

    .line 55
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    if-nez v2, :cond_3

    .line 62
    .line 63
    cmp-long v1, v6, v4

    .line 64
    .line 65
    const v2, 0x149ad4a

    .line 66
    .line 67
    .line 68
    const-string v4, "Keystroked"

    .line 69
    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    invoke-static {v2, v4}, Lo1/y;->g(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    invoke-static {v4, v9}, Lo1/y;->c(Ljava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    const v5, 0x376825

    .line 81
    .line 82
    .line 83
    if-le v1, v2, :cond_2

    .line 84
    .line 85
    move v1, v5

    .line 86
    :cond_2
    if-le v5, v1, :cond_3

    .line 87
    .line 88
    iget-object v1, p0, Lq1/x;->a:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 89
    .line 90
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/play_billing/i0;->L(Landroid/content/Context;Z)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v2, "zlatloff"

    .line 95
    .line 96
    const-string v6, "VHJpYWxFbmQ"

    .line 97
    .line 98
    invoke-static {v2, v6, v1}, Lcom/google/android/gms/internal/play_billing/i0;->f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v5, v4}, Lo1/y;->g(ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    sget-object v2, Lo1/y;->a:Landroid/content/SharedPreferences;

    .line 109
    .line 110
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 115
    .line 116
    .line 117
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 118
    .line 119
    .line 120
    sget-object v0, Lo1/y;->b:Landroidx/lifecycle/r;

    .line 121
    .line 122
    invoke-virtual {v0, v3}, Landroidx/lifecycle/r;->b(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public final m(Lq1/j;)V
    .locals 3

    .line 1
    new-instance v0, Lr1/y;

    .line 2
    .line 3
    iget-object v1, p0, Lq1/x;->d:Lq1/f;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lr1/y;-><init>(Lq1/f;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "Billing Problem"

    .line 9
    .line 10
    iput-object v1, v0, Lr1/y;->d:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "Couldn\'t contact Google Play Billing."

    .line 13
    .line 14
    iput-object v1, v0, Lr1/y;->e:Ljava/lang/String;

    .line 15
    .line 16
    const/16 v1, 0x12c

    .line 17
    .line 18
    const/16 v2, 0xbe

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lr1/y;->d(II)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lq1/r;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lq1/r;-><init>(Lq1/x;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Lr1/y;->p:Lr1/x;

    .line 29
    .line 30
    new-instance v1, Ls1/f;

    .line 31
    .line 32
    invoke-direct {v1, p1}, Ls1/f;-><init>(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, v0, Lr1/y;->o:Lr1/w;

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    invoke-static {v0, p1}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final n()V
    .locals 5

    .line 1
    iget-object v0, p0, Lq1/x;->w:Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lq1/x;->e()Lcom/nomone/giap/GIAP;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-boolean v0, v0, Lcom/nomone/giap/GIAP;->d:Z

    .line 11
    .line 12
    new-instance v1, Lr1/y;

    .line 13
    .line 14
    iget-object v2, p0, Lq1/x;->d:Lq1/f;

    .line 15
    .line 16
    invoke-direct {v1, v2}, Lr1/y;-><init>(Lq1/f;)V

    .line 17
    .line 18
    .line 19
    const-string v2, "App locked"

    .line 20
    .line 21
    iput-object v2, v1, Lr1/y;->d:Ljava/lang/String;

    .line 22
    .line 23
    const-string v2, "ul { margin-top: 5px; }"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lr1/y;->b(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, "Your daily trial period is over. You can:<ul><li>Wait till tomorrow,</li>"

    .line 31
    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const-string v3, "<li>Pay to unlock,</li>"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string v3, ""

    .line 41
    .line 42
    :goto_0
    const-string v4, "<li>Contact the developers to unlock the app for you.</li></ul>"

    .line 43
    .line 44
    invoke-static {v2, v3, v4}, La1/b;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iput-object v2, v1, Lr1/y;->e:Ljava/lang/String;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    const/16 v2, 0xf0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/16 v2, 0xdc

    .line 56
    .line 57
    :goto_1
    const/16 v3, 0x1f4

    .line 58
    .line 59
    invoke-virtual {v1, v3, v2}, Lr1/y;->d(II)V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    iput-boolean v2, v1, Lr1/y;->m:Z

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    const-string v0, "Pay to unlock"

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    move-object v0, v3

    .line 72
    :goto_2
    invoke-virtual {v1, v0}, Lr1/y;->a(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v0, "Contact developers"

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Lr1/y;->a(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/16 v0, 0xb4

    .line 81
    .line 82
    iput v0, v1, Lr1/y;->i:I

    .line 83
    .line 84
    const/16 v0, 0x1c

    .line 85
    .line 86
    iput v0, v1, Lr1/y;->j:I

    .line 87
    .line 88
    iput-boolean v2, v1, Lr1/y;->m:Z

    .line 89
    .line 90
    new-instance v0, Lq1/q;

    .line 91
    .line 92
    const/4 v2, 0x2

    .line 93
    invoke-direct {v0, p0, v2}, Lq1/q;-><init>(Lq1/x;I)V

    .line 94
    .line 95
    .line 96
    iput-object v0, v1, Lr1/y;->p:Lr1/x;

    .line 97
    .line 98
    new-instance v0, Lq1/n;

    .line 99
    .line 100
    invoke-direct {v0, p0, v2}, Lq1/n;-><init>(Lq1/x;I)V

    .line 101
    .line 102
    .line 103
    iput-object v0, v1, Lr1/y;->o:Lr1/w;

    .line 104
    .line 105
    invoke-static {v1, v3}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-object v0, p0, Lq1/x;->w:Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 110
    .line 111
    return-void
.end method

.method public final o()Z
    .locals 8

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    sget-object v2, Lo1/y;->a:Landroid/content/SharedPreferences;

    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    const-string v5, "Server signature"

    .line 15
    .line 16
    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    cmp-long v2, v2, v0

    .line 21
    .line 22
    if-lez v2, :cond_0

    .line 23
    .line 24
    sget-object v2, Lo1/y;->a:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    const-wide/16 v3, -0x1

    .line 27
    .line 28
    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    cmp-long v2, v6, v3

    .line 33
    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    sget-object v2, Lo1/y;->a:Landroid/content/SharedPreferences;

    .line 37
    .line 38
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v2, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 43
    .line 44
    .line 45
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    .line 47
    .line 48
    sget-object v0, Lo1/y;->b:Landroidx/lifecycle/r;

    .line 49
    .line 50
    invoke-virtual {v0, v5}, Landroidx/lifecycle/r;->b(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p0}, Lq1/x;->l()V

    .line 54
    .line 55
    .line 56
    const-string v0, "Keystroked"

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-static {v0, v1}, Lo1/y;->c(Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const v2, 0xe975

    .line 64
    .line 65
    .line 66
    if-ge v0, v2, :cond_1

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    :cond_1
    return v1
.end method

.method public final p()V
    .locals 4

    .line 1
    iget-object v0, p0, Lq1/x;->d:Lq1/f;

    .line 2
    .line 3
    iget-boolean v0, v0, Lq1/f;->h:Z

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "Settings_VR_LookingAround"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object v0, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Settings_General_LookingAround"

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v0, v2}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    :goto_0
    iget-object v2, p0, Lq1/x;->d:Lq1/f;

    .line 27
    .line 28
    iget v3, v2, Lq1/f;->i:F

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const v0, 0x3f333333    # 0.7f

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_1
    iput v0, v2, Lq1/f;->i:F

    .line 38
    .line 39
    invoke-virtual {v2}, Lq1/f;->d()V

    .line 40
    .line 41
    .line 42
    cmpl-float v0, v3, v0

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iput-boolean v1, p0, Lq1/x;->t:Z

    .line 47
    .line 48
    :cond_2
    return-void
.end method
