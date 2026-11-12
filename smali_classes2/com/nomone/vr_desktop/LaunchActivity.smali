.class public Lcom/nomone/vr_desktop/LaunchActivity;
.super Landroid/app/Activity;
.source "SourceFile"


.field public static final synthetic b:I


.field public a:Lq1/x;


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


.method public final a()Lq1/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nomone/vr_desktop/LaunchActivity;->a:Lq1/x;

    if-nez v0, :cond_0

    new-instance v0, Lq1/x;

    invoke-direct {v0, p0}, Lq1/x;-><init>(Lcom/nomone/vr_desktop/LaunchActivity;)V

    iput-object v0, p0, Lcom/nomone/vr_desktop/LaunchActivity;->a:Lq1/x;

    :cond_0
    iget-object v0, p0, Lcom/nomone/vr_desktop/LaunchActivity;->a:Lq1/x;

    return-object v0
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/nomone/vr_desktop/LaunchActivity;->a()Lq1/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lq1/x;->k:Lu1/i;

    .line 6
    .line 7
    invoke-virtual {v0}, Lu1/i;->m()V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lu1/i;->a:Lq1/f;

    .line 11
    .line 12
    iget-object v2, v1, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 13
    .line 14
    invoke-static {v2}, Lnom/vrd/Launch;->a(Lcom/nomone/vr_desktop/LaunchActivity;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v3, v0, Lu1/i;->p:Lu1/k;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    const/4 v9, 0x1

    .line 44
    invoke-virtual/range {v3 .. v9}, Lu1/k;->a(IIIZZZ)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    iget-object v7, v0, Lu1/i;->H:Lh/a;

    .line 61
    .line 62
    iget-object v7, v7, Lh/a;->g:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v7, Lu1/x;

    .line 65
    .line 66
    iput-object p1, v7, Lu1/x;->a:Landroid/view/KeyEvent;

    .line 67
    .line 68
    iput v2, v7, Lu1/x;->b:I

    .line 69
    .line 70
    iput v4, v7, Lu1/x;->c:I

    .line 71
    .line 72
    iput v5, v7, Lu1/x;->d:I

    .line 73
    .line 74
    iput v6, v7, Lu1/x;->e:I

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    const/4 v4, 0x1

    .line 78
    if-nez v3, :cond_1

    .line 79
    .line 80
    iget-object v1, v1, Lq1/f;->e:La2/c0;

    .line 81
    .line 82
    iget-object v0, v0, Lu1/i;->I:Lu1/x;

    .line 83
    .line 84
    invoke-interface {v1, v0}, La2/r;->b(Lu1/x;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    move v0, v2

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    :goto_0
    move v0, v4

    .line 94
    :goto_1
    if-nez v0, :cond_2

    .line 95
    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    :cond_2
    move v2, v4

    .line 103
    :cond_3
    return v2
.end method

.method public final getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    invoke-virtual {p0}, Lcom/nomone/vr_desktop/LaunchActivity;->a()Lq1/x;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0}, Landroid/content/ContextWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/nomone/vr_desktop/LaunchActivity;->a()Lq1/x;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 p3, 0x2

    .line 9
    if-ne p1, p3, :cond_1

    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    const-string p3, "sdf"

    .line 13
    .line 14
    if-eq p2, p1, :cond_0

    .line 15
    .line 16
    const-string p1, "User cancelled"

    .line 17
    .line 18
    invoke-static {p3, p1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string p1, "Starting screen capture"

    .line 23
    .line 24
    invoke-static {p3, p1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    throw p1

    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/nomone/vr_desktop/LaunchActivity;->a()Lq1/x;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/nomone/vr_desktop/LaunchActivity;->a()Lq1/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "Settings_VR_Stereo"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v1, v2}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-string v1, "Settings_General_ScreenOrientationVR"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v1, "Settings_General_ScreenOrientation"

    .line 23
    .line 24
    :goto_0
    invoke-static {v1, v2}, Lo1/y;->c(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v2, v0, Lq1/x;->d:Lq1/f;

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    iget-object v0, v0, Lq1/x;->a:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/i0;->j0(Lcom/nomone/vr_desktop/LaunchActivity;I)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v0, 0x1

    .line 39
    invoke-virtual {v2, v1, v0}, Lq1/f;->g(IZ)V

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/nomone/vr_desktop/LaunchActivity;->a()Lq1/x;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Lo1/x0;

    .line 9
    .line 10
    iget-object v1, p1, Lq1/x;->a:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v0, v2}, Lo1/x0;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p1, Lq1/x;->b:Lo1/x0;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/nomone/vr_desktop/MyApplication;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/nomone/vr_desktop/MyApplication;->b:Ljava/lang/ThreadGroup;

    .line 28
    .line 29
    iput-object v0, p1, Lq1/x;->c:Ljava/lang/ThreadGroup;

    .line 30
    .line 31
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->c:Ljava/lang/ThreadGroup;

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "Locale: "

    .line 36
    .line 37
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->O(Lcom/nomone/vr_desktop/LaunchActivity;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v2, "sdf"

    .line 52
    .line 53
    invoke-static {v2, v0}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const v0, 0x7f080001

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 60
    .line 61
    .line 62
    sget-object v0, Lo1/y;->a:Landroid/content/SharedPreferences;

    .line 63
    .line 64
    if-nez v0, :cond_0

    .line 65
    .line 66
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sput-object v0, Lo1/y;->a:Landroid/content/SharedPreferences;

    .line 71
    .line 72
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/play_billing/i0;->a:Lh/a;

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    new-instance v0, Lh/a;

    .line 78
    .line 79
    const-string v2, "AdServers.txt"

    .line 80
    .line 81
    invoke-direct {v0, v1, v2}, Lh/a;-><init>(Lcom/nomone/vr_desktop/LaunchActivity;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->a:Lh/a;

    .line 85
    .line 86
    new-instance v0, Lh/a;

    .line 87
    .line 88
    const-string v2, "PornBlocking/PornDomains.txt"

    .line 89
    .line 90
    invoke-direct {v0, v1, v2}, Lh/a;-><init>(Lcom/nomone/vr_desktop/LaunchActivity;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->b:Lh/a;

    .line 94
    .line 95
    const-string v2, "PornBlocking/PornSubdomains.txt"

    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Lh/a;->z(Lcom/nomone/vr_desktop/LaunchActivity;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    sget-object v0, Lcom/google/android/gms/internal/play_billing/i0;->b:Lh/a;

    .line 101
    .line 102
    const-string v2, "PornBlocking/PornTumblr.txt"

    .line 103
    .line 104
    invoke-virtual {v0, v1, v2}, Lh/a;->z(Lcom/nomone/vr_desktop/LaunchActivity;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sget-object v0, Lcom/google/android/gms/internal/play_billing/i0;->b:Lh/a;

    .line 108
    .line 109
    const-string v2, "PornBlocking/PornPages.txt"

    .line 110
    .line 111
    invoke-virtual {v0, v1, v2}, Lh/a;->z(Lcom/nomone/vr_desktop/LaunchActivity;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :goto_0
    sget-object v0, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g:Ljava/lang/String;

    .line 115
    .line 116
    const-string v0, "Settings_General_IgnoreCutouts"

    .line 117
    .line 118
    const/4 v2, 0x1

    .line 119
    invoke-static {v0, v2}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 124
    .line 125
    const/16 v4, 0x1c

    .line 126
    .line 127
    if-lt v3, v4, :cond_3

    .line 128
    .line 129
    iget-object v3, p1, Lq1/x;->a:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 130
    .line 131
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    if-eqz v0, :cond_2

    .line 140
    .line 141
    move v0, v2

    .line 142
    goto :goto_1

    .line 143
    :cond_2
    const/4 v0, 0x2

    .line 144
    :goto_1
    invoke-static {v3, v0}, Lj/f;->i(Landroid/view/WindowManager$LayoutParams;I)V

    .line 145
    .line 146
    .line 147
    :cond_3
    const-string v0, "Settings_VR_Stereo"

    .line 148
    .line 149
    const/4 v3, 0x0

    .line 150
    invoke-static {v0, v3}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_4

    .line 155
    .line 156
    const-string v0, "Settings_General_ScreenOrientationVR"

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_4
    const-string v0, "Settings_General_ScreenOrientation"

    .line 160
    .line 161
    :goto_2
    invoke-static {v0, v3}, Lo1/y;->c(Ljava/lang/String;I)I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    iget-object v4, p1, Lq1/x;->d:Lq1/f;

    .line 166
    .line 167
    if-nez v4, :cond_5

    .line 168
    .line 169
    iget-object v4, p1, Lq1/x;->a:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 170
    .line 171
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/i0;->j0(Lcom/nomone/vr_desktop/LaunchActivity;I)V

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_5
    invoke-virtual {v4, v0, v2}, Lq1/f;->g(IZ)V

    .line 176
    .line 177
    .line 178
    :goto_3
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    const/16 v4, 0x1b06

    .line 187
    .line 188
    invoke-virtual {v0, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 189
    .line 190
    .line 191
    new-instance v4, Lq1/l;

    .line 192
    .line 193
    invoke-direct {v4, v0}, Lq1/l;-><init>(Landroid/view/View;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    const/high16 v4, 0x20000

    .line 204
    .line 205
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 206
    .line 207
    .line 208
    const v0, 0x7f060095

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Lcom/nomone/vr_desktop/Input/RootLayout;

    .line 216
    .line 217
    iput-object v0, p1, Lq1/x;->p:Lcom/nomone/vr_desktop/Input/RootLayout;

    .line 218
    .line 219
    new-instance v0, Lq1/f;

    .line 220
    .line 221
    iget-object v4, p1, Lq1/x;->p:Lcom/nomone/vr_desktop/Input/RootLayout;

    .line 222
    .line 223
    iget-object v5, p1, Lq1/x;->b:Lo1/x0;

    .line 224
    .line 225
    invoke-direct {v0, v1, v4, v5}, Lq1/f;-><init>(Lcom/nomone/vr_desktop/LaunchActivity;Lcom/nomone/vr_desktop/Input/RootLayout;Lo1/j0;)V

    .line 226
    .line 227
    .line 228
    iput-object v0, p1, Lq1/x;->d:Lq1/f;

    .line 229
    .line 230
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    check-cast v0, Lcom/nomone/vr_desktop/MyApplication;

    .line 235
    .line 236
    iget-object v4, p1, Lq1/x;->d:Lq1/f;

    .line 237
    .line 238
    iput-object v4, v0, Lcom/nomone/vr_desktop/MyApplication;->a:Lq1/f;

    .line 239
    .line 240
    new-instance v0, Landroidx/fragment/app/h;

    .line 241
    .line 242
    const/16 v5, 0x1b

    .line 243
    .line 244
    invoke-direct {v0, p1, v5, v3}, Landroidx/fragment/app/h;-><init>(Ljava/lang/Object;II)V

    .line 245
    .line 246
    .line 247
    iput-object v0, v4, Lq1/f;->p:Landroidx/fragment/app/h;

    .line 248
    .line 249
    const-string v0, "Settings_VR_Stereo"

    .line 250
    .line 251
    invoke-static {v0, v3}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    invoke-virtual {v4, v0}, Lq1/f;->h(Z)V

    .line 256
    .line 257
    .line 258
    iget-object v0, p1, Lq1/x;->d:Lq1/f;

    .line 259
    .line 260
    iget-boolean v0, v0, Lq1/f;->h:Z

    .line 261
    .line 262
    invoke-virtual {p1, v0}, Lq1/x;->b(Z)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1}, Lq1/x;->p()V

    .line 266
    .line 267
    .line 268
    iget-object v0, p1, Lq1/x;->d:Lq1/f;

    .line 269
    .line 270
    new-instance v4, Lq1/t;

    .line 271
    .line 272
    invoke-direct {v4, p1}, Lq1/t;-><init>(Lq1/x;)V

    .line 273
    .line 274
    .line 275
    iget-object v0, v0, Lq1/f;->k:Ljava/util/List;

    .line 276
    .line 277
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    new-instance v0, Lq1/u;

    .line 281
    .line 282
    iget-object v4, p1, Lq1/x;->d:Lq1/f;

    .line 283
    .line 284
    invoke-direct {v0, p1, v4, v3}, Lq1/u;-><init>(Ljava/lang/Object;Lq1/f;I)V

    .line 285
    .line 286
    .line 287
    iput-object v0, p1, Lq1/x;->e:Lq1/u;

    .line 288
    .line 289
    iget-object v4, p1, Lq1/x;->d:Lq1/f;

    .line 290
    .line 291
    iput-object v0, v4, Lq1/f;->e:La2/c0;

    .line 292
    .line 293
    invoke-virtual {v4}, Lq1/f;->a()I

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    iget v4, v4, Lq1/f;->z:I

    .line 298
    .line 299
    invoke-virtual {v0, v5, v4}, La2/e0;->c(II)V

    .line 300
    .line 301
    .line 302
    new-instance v0, Lq1/j;

    .line 303
    .line 304
    invoke-direct {v0, p1, v3}, Lq1/j;-><init>(Lq1/x;I)V

    .line 305
    .line 306
    .line 307
    monitor-enter p1

    .line 308
    :try_start_0
    iget-object v4, p1, Lq1/x;->D:Ljava/util/List;

    .line 309
    .line 310
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 311
    .line 312
    .line 313
    monitor-exit p1

    .line 314
    new-instance v0, La2/x;

    .line 315
    .line 316
    iget-object v4, p1, Lq1/x;->d:Lq1/f;

    .line 317
    .line 318
    invoke-direct {v0, v4}, La2/x;-><init>(Lq1/f;)V

    .line 319
    .line 320
    .line 321
    iput-object v0, p1, Lq1/x;->g:La2/x;

    .line 322
    .line 323
    iget-object v4, p1, Lq1/x;->e:Lq1/u;

    .line 324
    .line 325
    invoke-virtual {v4, v0, v2}, La2/e0;->A(La2/r;Z)V

    .line 326
    .line 327
    .line 328
    new-instance v0, La2/x;

    .line 329
    .line 330
    iget-object v4, p1, Lq1/x;->d:Lq1/f;

    .line 331
    .line 332
    invoke-direct {v0, v4}, La2/x;-><init>(Lq1/f;)V

    .line 333
    .line 334
    .line 335
    iput-object v0, p1, Lq1/x;->f:La2/x;

    .line 336
    .line 337
    const/high16 v4, 0x43340000    # 180.0f

    .line 338
    .line 339
    iput v4, v0, La2/x;->r:F

    .line 340
    .line 341
    const/4 v4, 0x0

    .line 342
    iput v4, v0, La2/x;->s:F

    .line 343
    .line 344
    iget-object v4, p1, Lq1/x;->g:La2/x;

    .line 345
    .line 346
    invoke-virtual {v4, v0, v2}, La2/e0;->A(La2/r;Z)V

    .line 347
    .line 348
    .line 349
    new-instance v0, La2/b0;

    .line 350
    .line 351
    iget-object v4, p1, Lq1/x;->d:Lq1/f;

    .line 352
    .line 353
    invoke-direct {v0, v4}, La2/b0;-><init>(Lq1/f;)V

    .line 354
    .line 355
    .line 356
    iput-object v0, p1, Lq1/x;->i:La2/b0;

    .line 357
    .line 358
    new-instance v0, La2/b0;

    .line 359
    .line 360
    iget-object v4, p1, Lq1/x;->d:Lq1/f;

    .line 361
    .line 362
    invoke-direct {v0, v4}, La2/b0;-><init>(Lq1/f;)V

    .line 363
    .line 364
    .line 365
    iput-object v0, p1, Lq1/x;->j:La2/b0;

    .line 366
    .line 367
    new-instance v0, La2/b0;

    .line 368
    .line 369
    iget-object v4, p1, Lq1/x;->d:Lq1/f;

    .line 370
    .line 371
    invoke-direct {v0, v4}, La2/b0;-><init>(Lq1/f;)V

    .line 372
    .line 373
    .line 374
    iput-object v0, p1, Lq1/x;->h:La2/b0;

    .line 375
    .line 376
    iget-object v4, p1, Lq1/x;->i:La2/b0;

    .line 377
    .line 378
    invoke-virtual {v0, v4, v2}, La2/e0;->A(La2/r;Z)V

    .line 379
    .line 380
    .line 381
    iget-object v0, p1, Lq1/x;->h:La2/b0;

    .line 382
    .line 383
    iget-object v4, p1, Lq1/x;->j:La2/b0;

    .line 384
    .line 385
    invoke-virtual {v0, v4, v2}, La2/e0;->A(La2/r;Z)V

    .line 386
    .line 387
    .line 388
    iget-object v0, p1, Lq1/x;->f:La2/x;

    .line 389
    .line 390
    iget-object v4, p1, Lq1/x;->h:La2/b0;

    .line 391
    .line 392
    invoke-virtual {v0, v4, v2}, La2/e0;->A(La2/r;Z)V

    .line 393
    .line 394
    .line 395
    iget-object v0, p1, Lq1/x;->d:Lq1/f;

    .line 396
    .line 397
    iget-object v4, p1, Lq1/x;->i:La2/b0;

    .line 398
    .line 399
    iput-object v4, v0, Lq1/f;->f:La2/b0;

    .line 400
    .line 401
    iget-object v4, p1, Lq1/x;->j:La2/b0;

    .line 402
    .line 403
    iput-object v4, v0, Lq1/f;->g:La2/b0;

    .line 404
    .line 405
    iget-object v0, p1, Lq1/x;->p:Lcom/nomone/vr_desktop/Input/RootLayout;

    .line 406
    .line 407
    const v4, 0x7f0600a5

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    check-cast v0, Landroid/widget/FrameLayout;

    .line 415
    .line 416
    new-instance v4, Lo1/n0;

    .line 417
    .line 418
    new-instance v5, Landroidx/fragment/app/h;

    .line 419
    .line 420
    const/16 v6, 0x19

    .line 421
    .line 422
    invoke-direct {v5, v6, p1, v0}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    invoke-direct {v4, v0, v5}, Lo1/n0;-><init>(Landroid/widget/FrameLayout;Landroidx/fragment/app/h;)V

    .line 426
    .line 427
    .line 428
    iput-object v4, p1, Lq1/x;->l:Lo1/n0;

    .line 429
    .line 430
    iget-object v0, p1, Lq1/x;->d:Lq1/f;

    .line 431
    .line 432
    iput-object v4, v0, Lq1/f;->H:Lo1/n0;

    .line 433
    .line 434
    new-instance v4, Lu1/i;

    .line 435
    .line 436
    iget-object v5, p1, Lq1/x;->f:La2/x;

    .line 437
    .line 438
    iget-object v6, p1, Lq1/x;->g:La2/x;

    .line 439
    .line 440
    new-instance v7, Lq1/r;

    .line 441
    .line 442
    invoke-direct {v7, p1}, Lq1/r;-><init>(Lq1/x;)V

    .line 443
    .line 444
    .line 445
    invoke-direct {v4, v0, v5, v6, v7}, Lu1/i;-><init>(Lq1/f;La2/x;La2/x;Lq1/r;)V

    .line 446
    .line 447
    .line 448
    iput-object v4, p1, Lq1/x;->k:Lu1/i;

    .line 449
    .line 450
    iget-object v0, p1, Lq1/x;->p:Lcom/nomone/vr_desktop/Input/RootLayout;

    .line 451
    .line 452
    invoke-virtual {v0, v4}, Lcom/nomone/vr_desktop/Input/RootLayout;->setInputManager(Lu1/i;)V

    .line 453
    .line 454
    .line 455
    const v0, 0x7f06004e

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    check-cast v0, Lcom/nomone/vr_desktop/Input/PointerEventsHandlingView;

    .line 463
    .line 464
    iget-object v4, p1, Lq1/x;->k:Lu1/i;

    .line 465
    .line 466
    invoke-virtual {v0, v4}, Lcom/nomone/vr_desktop/Input/PointerEventsHandlingView;->setInputManager(Lu1/i;)V

    .line 467
    .line 468
    .line 469
    iget-object v0, p1, Lq1/x;->k:Lu1/i;

    .line 470
    .line 471
    const-string v4, "Settings_General_CursorSpeed"

    .line 472
    .line 473
    const/high16 v5, 0x3f800000    # 1.0f

    .line 474
    .line 475
    invoke-static {v4, v5}, Lo1/y;->b(Ljava/lang/String;F)F

    .line 476
    .line 477
    .line 478
    move-result v4

    .line 479
    iput v4, v0, Lu1/i;->g:F

    .line 480
    .line 481
    iget-object v0, p1, Lq1/x;->k:Lu1/i;

    .line 482
    .line 483
    const-string v4, "Settings_General_ScrollingSpeed"

    .line 484
    .line 485
    invoke-static {v4, v5}, Lo1/y;->b(Ljava/lang/String;F)F

    .line 486
    .line 487
    .line 488
    move-result v4

    .line 489
    iput v4, v0, Lu1/i;->h:F

    .line 490
    .line 491
    iget-object v0, p1, Lq1/x;->k:Lu1/i;

    .line 492
    .line 493
    iget-object v4, p1, Lq1/x;->d:Lq1/f;

    .line 494
    .line 495
    iget-boolean v4, v4, Lq1/f;->B:Z

    .line 496
    .line 497
    const-string v5, "Settings_General_ReleaseMouse"

    .line 498
    .line 499
    invoke-static {v5, v4}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 500
    .line 501
    .line 502
    move-result v4

    .line 503
    iput-boolean v4, v0, Lu1/i;->D:Z

    .line 504
    .line 505
    iget-object v0, p1, Lq1/x;->d:Lq1/f;

    .line 506
    .line 507
    iget-boolean v0, v0, Lq1/f;->h:Z

    .line 508
    .line 509
    if-eqz v0, :cond_6

    .line 510
    .line 511
    iget-object v0, p1, Lq1/x;->k:Lu1/i;

    .line 512
    .line 513
    invoke-virtual {v0, v3}, Lu1/i;->j(Z)V

    .line 514
    .line 515
    .line 516
    :cond_6
    new-instance v0, Lq1/v;

    .line 517
    .line 518
    invoke-direct {v0, p1, v3}, Lq1/v;-><init>(Lq1/x;I)V

    .line 519
    .line 520
    .line 521
    const-string v4, "Measure interactive time"

    .line 522
    .line 523
    const-wide/32 v5, 0xea60

    .line 524
    .line 525
    .line 526
    invoke-virtual {p1, v0, v4, v5, v6}, Lq1/x;->k(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 527
    .line 528
    .line 529
    new-instance v0, La2/z;

    .line 530
    .line 531
    iget-object v4, p1, Lq1/x;->d:Lq1/f;

    .line 532
    .line 533
    iget-object v5, p1, Lq1/x;->f:La2/x;

    .line 534
    .line 535
    new-instance v6, Lq1/r;

    .line 536
    .line 537
    invoke-direct {v6, p1}, Lq1/r;-><init>(Lq1/x;)V

    .line 538
    .line 539
    .line 540
    invoke-direct {v0, v4, v5, v6}, La2/z;-><init>(Lq1/f;La2/x;Lq1/r;)V

    .line 541
    .line 542
    .line 543
    iput-object v0, p1, Lq1/x;->m:La2/z;

    .line 544
    .line 545
    iget-object v4, p1, Lq1/x;->d:Lq1/f;

    .line 546
    .line 547
    iget-boolean v4, v4, Lq1/f;->h:Z

    .line 548
    .line 549
    iput-boolean v4, v0, La2/a0;->l:Z

    .line 550
    .line 551
    iget-object v4, p1, Lq1/x;->f:La2/x;

    .line 552
    .line 553
    invoke-virtual {v4, v0, v3}, La2/e0;->A(La2/r;Z)V

    .line 554
    .line 555
    .line 556
    new-instance v0, Ly0/j0;

    .line 557
    .line 558
    iget-object v3, p1, Lq1/x;->c:Ljava/lang/ThreadGroup;

    .line 559
    .line 560
    invoke-direct {v0, v3}, Ly0/j0;-><init>(Ljava/lang/ThreadGroup;)V

    .line 561
    .line 562
    .line 563
    iput-object v0, p1, Lq1/x;->o:Ly0/j0;

    .line 564
    .line 565
    new-instance v0, Lq1/j;

    .line 566
    .line 567
    const/4 v3, 0x4

    .line 568
    invoke-direct {v0, p1, v3}, Lq1/j;-><init>(Lq1/x;I)V

    .line 569
    .line 570
    .line 571
    monitor-enter p1

    .line 572
    :try_start_1
    iget-object v3, p1, Lq1/x;->D:Ljava/util/List;

    .line 573
    .line 574
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 575
    .line 576
    .line 577
    monitor-exit p1

    .line 578
    iget-object v0, p1, Lq1/x;->o:Ly0/j0;

    .line 579
    .line 580
    new-instance v3, Lt1/a;

    .line 581
    .line 582
    iget-object v4, p1, Lq1/x;->d:Lq1/f;

    .line 583
    .line 584
    iget-object v4, v4, Lq1/f;->E:Lh/a;

    .line 585
    .line 586
    new-instance v5, Lq1/r;

    .line 587
    .line 588
    invoke-direct {v5, p1}, Lq1/r;-><init>(Lq1/x;)V

    .line 589
    .line 590
    .line 591
    invoke-direct {v3, v1, v4, v5}, Lt1/a;-><init>(Lcom/nomone/vr_desktop/LaunchActivity;Lh/a;Lq1/r;)V

    .line 592
    .line 593
    .line 594
    iput-object v3, v0, Ly0/j0;->h:Ljava/lang/Object;

    .line 595
    .line 596
    new-instance v0, Lq1/v;

    .line 597
    .line 598
    invoke-direct {v0, p1, v2}, Lq1/v;-><init>(Lq1/x;I)V

    .line 599
    .line 600
    .line 601
    sget-object v1, Lq1/f;->L:Lo1/j0;

    .line 602
    .line 603
    new-instance v2, Lo0/e;

    .line 604
    .line 605
    const/4 v3, 0x5

    .line 606
    invoke-direct {v2, v3, p1, v0}, Lo0/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v1, v2}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    .line 610
    .line 611
    .line 612
    return-void

    .line 613
    :catchall_0
    move-exception v0

    .line 614
    monitor-exit p1

    .line 615
    throw v0

    .line 616
    :catchall_1
    move-exception v0

    .line 617
    monitor-exit p1

    .line 618
    throw v0
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/nomone/vr_desktop/LaunchActivity;->a()Lq1/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "sdf"

    .line 9
    .line 10
    const-string v2, "================================="

    .line 11
    .line 12
    invoke-static {v1, v2}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v3, "Destroy called ------------------"

    .line 16
    .line 17
    invoke-static {v1, v3}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, Lq1/x;->D:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/Runnable;

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/nomone/vr_desktop/LaunchActivity;->a:Lq1/x;

    .line 50
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final onPause()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/nomone/vr_desktop/LaunchActivity;->a()Lq1/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "MainActivity pausing..."

    .line 9
    .line 10
    const-string v2, "sdf"

    .line 11
    .line 12
    invoke-static {v2, v1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lq1/x;->e:Lq1/u;

    .line 16
    .line 17
    invoke-virtual {v1}, La2/e0;->r()V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lq1/x;->v:Lq1/j;

    .line 21
    .line 22
    iget-object v3, v0, Lq1/x;->b:Lo1/x0;

    .line 23
    .line 24
    invoke-virtual {v3, v1}, Lo1/x0;->d(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lq1/x;->d:Lq1/f;

    .line 28
    .line 29
    iget-object v1, v1, Lq1/f;->d:Lcom/nomone/browser_module/OpenGLView;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const-string v3, "onPause() called!"

    .line 35
    .line 36
    invoke-static {v2, v3}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    iput-boolean v2, v1, Lcom/nomone/browser_module/OpenGLView;->m:Z

    .line 41
    .line 42
    iget-object v1, v0, Lq1/x;->k:Lu1/i;

    .line 43
    .line 44
    iget-object v3, v1, Lu1/i;->n:Lo1/h0;

    .line 45
    .line 46
    iget-boolean v4, v3, Lo1/e0;->c:Z

    .line 47
    .line 48
    if-eqz v4, :cond_0

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-virtual {v3, v4}, Lo1/e0;->i(Z)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iput-boolean v2, v3, Lo1/e0;->e:Z

    .line 55
    .line 56
    iget-object v3, v1, Lu1/i;->o:Lo1/g0;

    .line 57
    .line 58
    invoke-virtual {v3}, Lo1/g0;->l()V

    .line 59
    .line 60
    .line 61
    iget-object v1, v1, Lu1/i;->r:Lu1/v;

    .line 62
    .line 63
    iget-object v1, v1, Lu1/v;->m:Lu1/u;

    .line 64
    .line 65
    invoke-virtual {v1}, Lu1/u;->b()Z

    .line 66
    .line 67
    .line 68
    iget-object v0, v0, Lq1/x;->l:Lo1/n0;

    .line 69
    .line 70
    iput-boolean v2, v0, Lo1/n0;->f:Z

    .line 71
    .line 72
    iget-object v1, v0, Lo1/n0;->a:Landroid/widget/FrameLayout;

    .line 73
    .line 74
    iget-object v2, v0, Lo1/n0;->l:Landroidx/activity/a;

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 77
    .line 78
    .line 79
    iget-object v1, v0, Lo1/n0;->j:Lo1/l0;

    .line 80
    .line 81
    iget-boolean v2, v1, Lo1/l0;->g:Z

    .line 82
    .line 83
    if-eqz v2, :cond_1

    .line 84
    .line 85
    invoke-virtual {v1}, Lo1/l0;->run()V

    .line 86
    .line 87
    .line 88
    iget-object v0, v0, Lo1/n0;->a:Landroid/widget/FrameLayout;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public final onResume()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/nomone/vr_desktop/LaunchActivity;->a()Lq1/x;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v1, "MainActivity resuming..."

    .line 12
    .line 13
    const-string v2, "sdf"

    .line 14
    .line 15
    invoke-static {v2, v1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lq1/x;->l:Lo1/n0;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    iput-boolean v3, v1, Lo1/n0;->f:Z

    .line 22
    .line 23
    iget-boolean v4, v1, Lo1/n0;->k:Z

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    iget-object v4, v1, Lo1/n0;->a:Landroid/widget/FrameLayout;

    .line 28
    .line 29
    iget v5, v1, Lo1/n0;->g:I

    .line 30
    .line 31
    int-to-long v5, v5

    .line 32
    iget-object v1, v1, Lo1/n0;->l:Landroidx/activity/a;

    .line 33
    .line 34
    invoke-virtual {v4, v1, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v1, v0, Lq1/x;->k:Lu1/i;

    .line 38
    .line 39
    iget-object v4, v1, Lu1/i;->r:Lu1/v;

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    iget-object v4, v1, Lu1/i;->n:Lo1/h0;

    .line 45
    .line 46
    iget-boolean v5, v4, Lo1/e0;->c:Z

    .line 47
    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    invoke-virtual {v4}, Lo1/e0;->h()V

    .line 51
    .line 52
    .line 53
    :cond_1
    iput-boolean v3, v4, Lo1/e0;->e:Z

    .line 54
    .line 55
    iget-object v1, v1, Lu1/i;->o:Lo1/g0;

    .line 56
    .line 57
    invoke-virtual {v1}, Lo1/g0;->m()V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lq1/x;->d:Lq1/f;

    .line 61
    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v5, "onResume() called! Was paused: "

    .line 65
    .line 66
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v1, Lq1/f;->d:Lcom/nomone/browser_module/OpenGLView;

    .line 70
    .line 71
    iget-boolean v5, v1, Lcom/nomone/browser_module/OpenGLView;->m:Z

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-static {v2, v4}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-boolean v4, v1, Lcom/nomone/browser_module/OpenGLView;->m:Z

    .line 84
    .line 85
    if-eqz v4, :cond_2

    .line 86
    .line 87
    iput-boolean v3, v1, Lcom/nomone/browser_module/OpenGLView;->m:Z

    .line 88
    .line 89
    iget-object v4, v1, Lcom/nomone/browser_module/OpenGLView;->d:Landroid/view/Choreographer;

    .line 90
    .line 91
    iget-object v5, v1, Lcom/nomone/browser_module/OpenGLView;->e:Lo1/s;

    .line 92
    .line 93
    invoke-virtual {v4, v5}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 94
    .line 95
    .line 96
    iget-object v4, v1, Lcom/nomone/browser_module/OpenGLView;->d:Landroid/view/Choreographer;

    .line 97
    .line 98
    iget-object v5, v1, Lcom/nomone/browser_module/OpenGLView;->e:Lo1/s;

    .line 99
    .line 100
    invoke-virtual {v4, v5}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 101
    .line 102
    .line 103
    new-instance v4, Lx0/m;

    .line 104
    .line 105
    invoke-direct {v4, v1}, Lx0/m;-><init>(Lcom/nomone/browser_module/OpenGLView;)V

    .line 106
    .line 107
    .line 108
    const-wide/16 v5, 0x11

    .line 109
    .line 110
    invoke-virtual {v1, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    .line 112
    .line 113
    :cond_2
    iget-object v1, v0, Lq1/x;->e:Lq1/u;

    .line 114
    .line 115
    invoke-virtual {v1}, La2/e0;->f()V

    .line 116
    .line 117
    .line 118
    iget-boolean v1, v0, Lq1/x;->q:Z

    .line 119
    .line 120
    if-eqz v1, :cond_3

    .line 121
    .line 122
    const-string v1, "Billing in progress..."

    .line 123
    .line 124
    invoke-static {v2, v1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iput-boolean v3, v0, Lq1/x;->q:Z

    .line 128
    .line 129
    const/4 v1, 0x1

    .line 130
    iput-boolean v1, v0, Lq1/x;->r:Z

    .line 131
    .line 132
    new-instance v2, Ljava/lang/Thread;

    .line 133
    .line 134
    iget-object v3, v0, Lq1/x;->c:Ljava/lang/ThreadGroup;

    .line 135
    .line 136
    new-instance v4, Lq1/j;

    .line 137
    .line 138
    invoke-direct {v4, v0, v1}, Lq1/j;-><init>(Lq1/x;I)V

    .line 139
    .line 140
    .line 141
    const-string v1, "nomThread2"

    .line 142
    .line 143
    invoke-direct {v2, v3, v4, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_3
    iget-boolean v1, v0, Lq1/x;->x:Z

    .line 151
    .line 152
    if-eqz v1, :cond_4

    .line 153
    .line 154
    invoke-virtual {v0}, Lq1/x;->g()V

    .line 155
    .line 156
    .line 157
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lq1/x;->e()Lcom/nomone/giap/GIAP;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/nomone/giap/GIAP;->resume()V

    .line 162
    .line 163
    .line 164
    return-void
.end method
