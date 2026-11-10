.class public final Lv0/d;
.super Lv0/e;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/Object;

.field public static final c:Lv0/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lv0/d;->b:Ljava/lang/Object;

    new-instance v0, Lv0/d;

    invoke-direct {v0}, Lv0/d;-><init>()V

    sput-object v0, Lv0/d;->c:Lv0/d;

    return-void
.end method

.method public static e(Landroid/content/Context;ILy0/p;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const v3, 0x1010309

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "Theme.Dialog.Alert"

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 40
    .line 41
    const/4 v1, 0x5

    .line 42
    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    if-nez v0, :cond_2

    .line 46
    .line 47
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-static {p0, p1}, Ly0/m;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 57
    .line 58
    .line 59
    if-eqz p3, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    if-eq p1, v4, :cond_6

    .line 69
    .line 70
    const/4 v1, 0x2

    .line 71
    if-eq p1, v1, :cond_5

    .line 72
    .line 73
    const/4 v1, 0x3

    .line 74
    if-eq p1, v1, :cond_4

    .line 75
    .line 76
    const v1, 0x104000a

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    sget v1, Lu0/c;->common_google_play_services_enable_button:I

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    sget v1, Lu0/c;->common_google_play_services_update_button:I

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_6
    sget v1, Lu0/c;->common_google_play_services_install_button:I

    .line 87
    .line 88
    :goto_0
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    if-eqz p3, :cond_7

    .line 93
    .line 94
    invoke-virtual {v0, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    .line 96
    .line 97
    :cond_7
    invoke-static {p0, p1}, Ly0/m;->c(Landroid/content/Context;I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    if-eqz p0, :cond_8

    .line 102
    .line 103
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 104
    .line 105
    .line 106
    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    const-string p1, "Creating dialog for Google Play services availability issue. ConnectionResult=%s"

    .line 115
    .line 116
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0
.end method

.method public static f(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lv0/b;

    .line 6
    .line 7
    invoke-direct {v0}, Lv0/b;-><init>()V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, v0, Lv0/b;->a:Landroid/app/Dialog;

    .line 20
    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    iput-object p3, v0, Lv0/b;->b:Landroid/content/DialogInterface$OnCancelListener;

    .line 24
    .line 25
    :cond_0
    invoke-virtual {v0, p0, p2}, Lv0/b;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 30
    .line 31
    const-string p1, "Cannot display null dialog"

    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method


# virtual methods
.method public final a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lv0/e;->a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/content/Context;I)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lv0/e;->b(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public final c(Landroid/content/Context;)I
    .locals 1

    .line 1
    sget v0, Lv0/e;->a:I

    .line 2
    .line 3
    invoke-super {p0, p1, v0}, Lv0/e;->b(Landroid/content/Context;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final d(Landroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    .line 1
    const-string v0, "d"

    .line 2
    .line 3
    invoke-super {p0, p2, p1, v0}, Lv0/e;->a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ly0/n;

    .line 8
    .line 9
    invoke-direct {v1, p1, v0}, Ly0/n;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2, v1, p3}, Lv0/d;->e(Landroid/content/Context;ILy0/p;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string v0, "GooglePlayServicesErrorDialog"

    .line 20
    .line 21
    invoke-static {p1, p2, v0, p3}, Lv0/d;->f(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final g(Landroid/content/Context;ILandroid/app/PendingIntent;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x0

    .line 12
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const-string v5, "GMS core API Availability. ConnectionResult=%s, tag=%s"

    .line 17
    .line 18
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 24
    .line 25
    .line 26
    const/16 v3, 0x12

    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    if-ne v1, v3, :cond_0

    .line 30
    .line 31
    new-instance v1, Lv0/k;

    .line 32
    .line 33
    move-object/from16 v3, p0

    .line 34
    .line 35
    invoke-direct {v1, v3, v0}, Lv0/k;-><init>(Lv0/d;Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    const-wide/32 v6, 0x1d4c0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    move-object/from16 v3, p0

    .line 46
    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    const/4 v6, 0x6

    .line 51
    if-ne v1, v6, :cond_2

    .line 52
    .line 53
    const-string v7, "common_google_play_services_resolution_required_title"

    .line 54
    .line 55
    invoke-static {v0, v7}, Ly0/m;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-static/range {p1 .. p2}, Ly0/m;->c(Landroid/content/Context;I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    :goto_0
    if-nez v7, :cond_3

    .line 65
    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    sget v8, Lu0/c;->common_google_play_services_notification_ticker:I

    .line 71
    .line 72
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    :cond_3
    if-eq v1, v6, :cond_5

    .line 77
    .line 78
    const/16 v6, 0x13

    .line 79
    .line 80
    if-ne v1, v6, :cond_4

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    invoke-static/range {p1 .. p2}, Ly0/m;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    goto :goto_2

    .line 88
    :cond_5
    :goto_1
    invoke-static/range {p1 .. p1}, Ly0/m;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    const-string v8, "common_google_play_services_resolution_required_text"

    .line 93
    .line 94
    invoke-static {v0, v8, v6}, Ly0/m;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    const-string v9, "notification"

    .line 103
    .line 104
    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/i0;->l(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    check-cast v9, Landroid/app/NotificationManager;

    .line 112
    .line 113
    new-instance v10, Lj/e;

    .line 114
    .line 115
    invoke-direct {v10, v0}, Lj/e;-><init>(Landroid/content/Context;)V

    .line 116
    .line 117
    .line 118
    iput-boolean v5, v10, Lj/e;->j:Z

    .line 119
    .line 120
    iget-object v11, v10, Lj/e;->n:Landroid/app/Notification;

    .line 121
    .line 122
    iget v12, v11, Landroid/app/Notification;->flags:I

    .line 123
    .line 124
    or-int/lit8 v12, v12, 0x10

    .line 125
    .line 126
    iput v12, v11, Landroid/app/Notification;->flags:I

    .line 127
    .line 128
    invoke-static {v7}, Lj/e;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    iput-object v7, v10, Lj/e;->d:Ljava/lang/CharSequence;

    .line 133
    .line 134
    new-instance v7, Lj/d;

    .line 135
    .line 136
    invoke-direct {v7}, Lj/d;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-static {v6}, Lj/e;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    iput-object v11, v7, Lj/d;->e:Ljava/lang/Object;

    .line 144
    .line 145
    iget-object v11, v10, Lj/e;->i:Lj/d;

    .line 146
    .line 147
    if-eq v11, v7, :cond_6

    .line 148
    .line 149
    iput-object v7, v10, Lj/e;->i:Lj/d;

    .line 150
    .line 151
    invoke-virtual {v7, v10}, Lj/d;->g(Lj/e;)V

    .line 152
    .line 153
    .line 154
    :cond_6
    invoke-static/range {p1 .. p1}, Lc1/b;->k(Landroid/content/Context;)Z

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    const/4 v11, 0x2

    .line 159
    if-eqz v7, :cond_8

    .line 160
    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 166
    .line 167
    iget-object v7, v10, Lj/e;->n:Landroid/app/Notification;

    .line 168
    .line 169
    iput v6, v7, Landroid/app/Notification;->icon:I

    .line 170
    .line 171
    iput v11, v10, Lj/e;->g:I

    .line 172
    .line 173
    invoke-static/range {p1 .. p1}, Lc1/b;->l(Landroid/content/Context;)Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-eqz v6, :cond_7

    .line 178
    .line 179
    sget v6, Lu0/b;->common_full_open_on_phone:I

    .line 180
    .line 181
    sget v7, Lu0/c;->common_open_on_phone:I

    .line 182
    .line 183
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    iget-object v8, v10, Lj/e;->b:Ljava/util/ArrayList;

    .line 188
    .line 189
    new-instance v12, Lj/c;

    .line 190
    .line 191
    invoke-direct {v12, v6, v7, v2}, Lj/c;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_7
    iput-object v2, v10, Lj/e;->f:Landroid/app/PendingIntent;

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_8
    iget-object v7, v10, Lj/e;->n:Landroid/app/Notification;

    .line 202
    .line 203
    const v12, 0x108008a

    .line 204
    .line 205
    .line 206
    iput v12, v7, Landroid/app/Notification;->icon:I

    .line 207
    .line 208
    sget v7, Lu0/c;->common_google_play_services_notification_ticker:I

    .line 209
    .line 210
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    iget-object v8, v10, Lj/e;->n:Landroid/app/Notification;

    .line 215
    .line 216
    invoke-static {v7}, Lj/e;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    iput-object v7, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 221
    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 223
    .line 224
    .line 225
    move-result-wide v7

    .line 226
    iget-object v12, v10, Lj/e;->n:Landroid/app/Notification;

    .line 227
    .line 228
    iput-wide v7, v12, Landroid/app/Notification;->when:J

    .line 229
    .line 230
    iput-object v2, v10, Lj/e;->f:Landroid/app/PendingIntent;

    .line 231
    .line 232
    invoke-static {v6}, Lj/e;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    iput-object v2, v10, Lj/e;->e:Ljava/lang/CharSequence;

    .line 237
    .line 238
    :goto_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 239
    .line 240
    const/16 v6, 0x1a

    .line 241
    .line 242
    const/4 v7, 0x0

    .line 243
    if-lt v2, v6, :cond_9

    .line 244
    .line 245
    move v8, v5

    .line 246
    goto :goto_4

    .line 247
    :cond_9
    move v8, v7

    .line 248
    :goto_4
    if-nez v8, :cond_a

    .line 249
    .line 250
    goto :goto_7

    .line 251
    :cond_a
    if-lt v2, v6, :cond_b

    .line 252
    .line 253
    move v8, v5

    .line 254
    goto :goto_5

    .line 255
    :cond_b
    move v8, v7

    .line 256
    :goto_5
    if-eqz v8, :cond_25

    .line 257
    .line 258
    sget-object v8, Lv0/d;->b:Ljava/lang/Object;

    .line 259
    .line 260
    monitor-enter v8

    .line 261
    :try_start_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    const-string v8, "com.google.android.gms.availability"

    .line 263
    .line 264
    invoke-static {v9}, Lorg/mozilla/geckoview/b;->a(Landroid/app/NotificationManager;)Landroid/app/NotificationChannel;

    .line 265
    .line 266
    .line 267
    move-result-object v12

    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    sget v13, Lu0/c;->common_google_play_services_notification_channel_name:I

    .line 273
    .line 274
    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    if-nez v12, :cond_c

    .line 279
    .line 280
    invoke-static {v0}, Lorg/mozilla/geckoview/b;->b(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-static {v9, v0}, Lorg/mozilla/geckoview/b;->f(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 285
    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_c
    invoke-static {v12}, Lorg/mozilla/geckoview/b;->d(Landroid/app/NotificationChannel;)Ljava/lang/CharSequence;

    .line 289
    .line 290
    .line 291
    move-result-object v13

    .line 292
    invoke-virtual {v0, v13}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 293
    .line 294
    .line 295
    move-result v13

    .line 296
    if-nez v13, :cond_d

    .line 297
    .line 298
    invoke-static {v12, v0}, Lorg/mozilla/geckoview/b;->e(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-static {v9, v12}, Lorg/mozilla/geckoview/b;->f(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 302
    .line 303
    .line 304
    :cond_d
    :goto_6
    iput-object v8, v10, Lj/e;->l:Ljava/lang/String;

    .line 305
    .line 306
    :goto_7
    new-instance v0, Ljava/util/ArrayList;

    .line 307
    .line 308
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .line 310
    .line 311
    new-instance v0, Landroid/os/Bundle;

    .line 312
    .line 313
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 314
    .line 315
    .line 316
    iget-object v8, v10, Lj/e;->a:Landroid/content/Context;

    .line 317
    .line 318
    if-lt v2, v6, :cond_e

    .line 319
    .line 320
    invoke-static {}, La1/b;->h()V

    .line 321
    .line 322
    .line 323
    iget-object v2, v10, Lj/e;->l:Ljava/lang/String;

    .line 324
    .line 325
    invoke-static {v8, v2}, Lc1/a;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    goto :goto_8

    .line 330
    :cond_e
    new-instance v2, Landroid/app/Notification$Builder;

    .line 331
    .line 332
    invoke-direct {v2, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 333
    .line 334
    .line 335
    :goto_8
    iget-object v8, v10, Lj/e;->n:Landroid/app/Notification;

    .line 336
    .line 337
    iget-wide v12, v8, Landroid/app/Notification;->when:J

    .line 338
    .line 339
    invoke-virtual {v2, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 340
    .line 341
    .line 342
    move-result-object v12

    .line 343
    iget v13, v8, Landroid/app/Notification;->icon:I

    .line 344
    .line 345
    iget v14, v8, Landroid/app/Notification;->iconLevel:I

    .line 346
    .line 347
    invoke-virtual {v12, v13, v14}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    .line 348
    .line 349
    .line 350
    move-result-object v12

    .line 351
    iget-object v13, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 352
    .line 353
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 354
    .line 355
    .line 356
    move-result-object v12

    .line 357
    iget-object v13, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 358
    .line 359
    invoke-virtual {v12, v13, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 360
    .line 361
    .line 362
    move-result-object v12

    .line 363
    iget-object v13, v8, Landroid/app/Notification;->vibrate:[J

    .line 364
    .line 365
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 366
    .line 367
    .line 368
    move-result-object v12

    .line 369
    iget v13, v8, Landroid/app/Notification;->ledARGB:I

    .line 370
    .line 371
    iget v14, v8, Landroid/app/Notification;->ledOnMS:I

    .line 372
    .line 373
    iget v15, v8, Landroid/app/Notification;->ledOffMS:I

    .line 374
    .line 375
    invoke-virtual {v12, v13, v14, v15}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 376
    .line 377
    .line 378
    move-result-object v12

    .line 379
    iget v13, v8, Landroid/app/Notification;->flags:I

    .line 380
    .line 381
    and-int/2addr v13, v11

    .line 382
    if-eqz v13, :cond_f

    .line 383
    .line 384
    move v13, v5

    .line 385
    goto :goto_9

    .line 386
    :cond_f
    move v13, v7

    .line 387
    :goto_9
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 388
    .line 389
    .line 390
    move-result-object v12

    .line 391
    iget v13, v8, Landroid/app/Notification;->flags:I

    .line 392
    .line 393
    and-int/lit8 v13, v13, 0x8

    .line 394
    .line 395
    if-eqz v13, :cond_10

    .line 396
    .line 397
    move v13, v5

    .line 398
    goto :goto_a

    .line 399
    :cond_10
    move v13, v7

    .line 400
    :goto_a
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 401
    .line 402
    .line 403
    move-result-object v12

    .line 404
    iget v13, v8, Landroid/app/Notification;->flags:I

    .line 405
    .line 406
    and-int/lit8 v13, v13, 0x10

    .line 407
    .line 408
    if-eqz v13, :cond_11

    .line 409
    .line 410
    move v13, v5

    .line 411
    goto :goto_b

    .line 412
    :cond_11
    move v13, v7

    .line 413
    :goto_b
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 414
    .line 415
    .line 416
    move-result-object v12

    .line 417
    iget v13, v8, Landroid/app/Notification;->defaults:I

    .line 418
    .line 419
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 420
    .line 421
    .line 422
    move-result-object v12

    .line 423
    iget-object v13, v10, Lj/e;->d:Ljava/lang/CharSequence;

    .line 424
    .line 425
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 426
    .line 427
    .line 428
    move-result-object v12

    .line 429
    iget-object v13, v10, Lj/e;->e:Ljava/lang/CharSequence;

    .line 430
    .line 431
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 432
    .line 433
    .line 434
    move-result-object v12

    .line 435
    invoke-virtual {v12, v4}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 436
    .line 437
    .line 438
    move-result-object v12

    .line 439
    iget-object v13, v10, Lj/e;->f:Landroid/app/PendingIntent;

    .line 440
    .line 441
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 442
    .line 443
    .line 444
    move-result-object v12

    .line 445
    iget-object v13, v8, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 446
    .line 447
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 448
    .line 449
    .line 450
    move-result-object v12

    .line 451
    iget v13, v8, Landroid/app/Notification;->flags:I

    .line 452
    .line 453
    and-int/lit16 v13, v13, 0x80

    .line 454
    .line 455
    if-eqz v13, :cond_12

    .line 456
    .line 457
    move v13, v5

    .line 458
    goto :goto_c

    .line 459
    :cond_12
    move v13, v7

    .line 460
    :goto_c
    invoke-virtual {v12, v4, v13}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 461
    .line 462
    .line 463
    move-result-object v12

    .line 464
    invoke-virtual {v12, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 465
    .line 466
    .line 467
    move-result-object v12

    .line 468
    invoke-virtual {v12, v7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 469
    .line 470
    .line 471
    move-result-object v12

    .line 472
    invoke-virtual {v12, v7, v7, v7}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 476
    .line 477
    .line 478
    move-result-object v12

    .line 479
    invoke-virtual {v12, v7}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 480
    .line 481
    .line 482
    move-result-object v12

    .line 483
    iget v13, v10, Lj/e;->g:I

    .line 484
    .line 485
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 486
    .line 487
    .line 488
    iget-object v12, v10, Lj/e;->b:Ljava/util/ArrayList;

    .line 489
    .line 490
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 491
    .line 492
    .line 493
    move-result-object v12

    .line 494
    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 495
    .line 496
    .line 497
    move-result v13

    .line 498
    const-string v14, "android.support.allowGeneratedReplies"

    .line 499
    .line 500
    const/16 v15, 0x1d

    .line 501
    .line 502
    if-eqz v13, :cond_18

    .line 503
    .line 504
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v13

    .line 508
    check-cast v13, Lj/c;

    .line 509
    .line 510
    iget-object v11, v13, Lj/c;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 511
    .line 512
    if-nez v11, :cond_13

    .line 513
    .line 514
    iget v11, v13, Lj/c;->e:I

    .line 515
    .line 516
    if-eqz v11, :cond_13

    .line 517
    .line 518
    invoke-static {v11}, Landroidx/core/graphics/drawable/IconCompat;->a(I)Landroidx/core/graphics/drawable/IconCompat;

    .line 519
    .line 520
    .line 521
    move-result-object v11

    .line 522
    iput-object v11, v13, Lj/c;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 523
    .line 524
    :cond_13
    iget-object v11, v13, Lj/c;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 525
    .line 526
    new-instance v5, Landroid/app/Notification$Action$Builder;

    .line 527
    .line 528
    if-nez v11, :cond_14

    .line 529
    .line 530
    move-object v11, v4

    .line 531
    goto :goto_e

    .line 532
    :cond_14
    invoke-virtual {v11}, Landroidx/core/graphics/drawable/IconCompat;->d()Landroid/graphics/drawable/Icon;

    .line 533
    .line 534
    .line 535
    move-result-object v11

    .line 536
    :goto_e
    iget-object v6, v13, Lj/c;->f:Ljava/lang/CharSequence;

    .line 537
    .line 538
    iget-object v4, v13, Lj/c;->g:Landroid/app/PendingIntent;

    .line 539
    .line 540
    invoke-direct {v5, v11, v6, v4}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 541
    .line 542
    .line 543
    new-instance v4, Landroid/os/Bundle;

    .line 544
    .line 545
    iget-object v6, v13, Lj/c;->a:Landroid/os/Bundle;

    .line 546
    .line 547
    if-eqz v6, :cond_15

    .line 548
    .line 549
    invoke-direct {v4, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 550
    .line 551
    .line 552
    goto :goto_f

    .line 553
    :cond_15
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 554
    .line 555
    .line 556
    :goto_f
    iget-boolean v6, v13, Lj/c;->c:Z

    .line 557
    .line 558
    invoke-virtual {v4, v14, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 559
    .line 560
    .line 561
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 562
    .line 563
    invoke-virtual {v5, v6}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 564
    .line 565
    .line 566
    const-string v6, "android.support.action.semanticAction"

    .line 567
    .line 568
    invoke-virtual {v4, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 569
    .line 570
    .line 571
    const/16 v6, 0x1c

    .line 572
    .line 573
    if-lt v11, v6, :cond_16

    .line 574
    .line 575
    invoke-static {v5, v7}, Lj/f;->h(Landroid/app/Notification$Action$Builder;I)V

    .line 576
    .line 577
    .line 578
    :cond_16
    if-lt v11, v15, :cond_17

    .line 579
    .line 580
    invoke-static {v5, v7}, Landroidx/lifecycle/v;->d(Landroid/app/Notification$Action$Builder;Z)V

    .line 581
    .line 582
    .line 583
    :cond_17
    const-string v6, "android.support.action.showsUserInterface"

    .line 584
    .line 585
    iget-boolean v11, v13, Lj/c;->d:Z

    .line 586
    .line 587
    invoke-virtual {v4, v6, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v5, v4}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 591
    .line 592
    .line 593
    invoke-virtual {v5}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 594
    .line 595
    .line 596
    move-result-object v4

    .line 597
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 598
    .line 599
    .line 600
    const/4 v4, 0x0

    .line 601
    const/4 v5, 0x1

    .line 602
    const/16 v6, 0x1a

    .line 603
    .line 604
    const/4 v11, 0x2

    .line 605
    goto :goto_d

    .line 606
    :cond_18
    iget-object v4, v10, Lj/e;->k:Landroid/os/Bundle;

    .line 607
    .line 608
    if-eqz v4, :cond_19

    .line 609
    .line 610
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 611
    .line 612
    .line 613
    :cond_19
    iget-boolean v4, v10, Lj/e;->h:Z

    .line 614
    .line 615
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 616
    .line 617
    .line 618
    iget-boolean v4, v10, Lj/e;->j:Z

    .line 619
    .line 620
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 621
    .line 622
    .line 623
    move-result-object v4

    .line 624
    const/4 v5, 0x0

    .line 625
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 626
    .line 627
    .line 628
    move-result-object v4

    .line 629
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 630
    .line 631
    .line 632
    move-result-object v4

    .line 633
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 637
    .line 638
    .line 639
    move-result-object v4

    .line 640
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 641
    .line 642
    .line 643
    move-result-object v4

    .line 644
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 645
    .line 646
    .line 647
    move-result-object v4

    .line 648
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 649
    .line 650
    .line 651
    move-result-object v4

    .line 652
    iget-object v5, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 653
    .line 654
    iget-object v6, v8, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 655
    .line 656
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 657
    .line 658
    .line 659
    iget-object v4, v10, Lj/e;->o:Ljava/util/ArrayList;

    .line 660
    .line 661
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 662
    .line 663
    .line 664
    move-result-object v4

    .line 665
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 666
    .line 667
    .line 668
    move-result v5

    .line 669
    if-eqz v5, :cond_1a

    .line 670
    .line 671
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v5

    .line 675
    check-cast v5, Ljava/lang/String;

    .line 676
    .line 677
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 678
    .line 679
    .line 680
    goto :goto_10

    .line 681
    :cond_1a
    iget-object v4, v10, Lj/e;->c:Ljava/util/ArrayList;

    .line 682
    .line 683
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 684
    .line 685
    .line 686
    move-result v5

    .line 687
    if-lez v5, :cond_1e

    .line 688
    .line 689
    invoke-virtual {v10}, Lj/e;->a()Landroid/os/Bundle;

    .line 690
    .line 691
    .line 692
    move-result-object v5

    .line 693
    const-string v6, "android.car.EXTENSIONS"

    .line 694
    .line 695
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 696
    .line 697
    .line 698
    move-result-object v5

    .line 699
    if-nez v5, :cond_1b

    .line 700
    .line 701
    new-instance v5, Landroid/os/Bundle;

    .line 702
    .line 703
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 704
    .line 705
    .line 706
    :cond_1b
    new-instance v8, Landroid/os/Bundle;

    .line 707
    .line 708
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 709
    .line 710
    .line 711
    move v11, v7

    .line 712
    :goto_11
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 713
    .line 714
    .line 715
    move-result v12

    .line 716
    if-ge v11, v12, :cond_1d

    .line 717
    .line 718
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v12

    .line 722
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v13

    .line 726
    check-cast v13, Lj/c;

    .line 727
    .line 728
    sget-object v16, Lj/g;->a:Ljava/lang/Object;

    .line 729
    .line 730
    new-instance v15, Landroid/os/Bundle;

    .line 731
    .line 732
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 733
    .line 734
    .line 735
    iget v7, v13, Lj/c;->e:I

    .line 736
    .line 737
    const-string v3, "icon"

    .line 738
    .line 739
    invoke-virtual {v15, v3, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 740
    .line 741
    .line 742
    const-string v3, "title"

    .line 743
    .line 744
    iget-object v7, v13, Lj/c;->f:Ljava/lang/CharSequence;

    .line 745
    .line 746
    invoke-virtual {v15, v3, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 747
    .line 748
    .line 749
    const-string v3, "actionIntent"

    .line 750
    .line 751
    iget-object v7, v13, Lj/c;->g:Landroid/app/PendingIntent;

    .line 752
    .line 753
    invoke-virtual {v15, v3, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 754
    .line 755
    .line 756
    new-instance v3, Landroid/os/Bundle;

    .line 757
    .line 758
    iget-object v7, v13, Lj/c;->a:Landroid/os/Bundle;

    .line 759
    .line 760
    if-eqz v7, :cond_1c

    .line 761
    .line 762
    invoke-direct {v3, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 763
    .line 764
    .line 765
    goto :goto_12

    .line 766
    :cond_1c
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 767
    .line 768
    .line 769
    :goto_12
    iget-boolean v7, v13, Lj/c;->c:Z

    .line 770
    .line 771
    invoke-virtual {v3, v14, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 772
    .line 773
    .line 774
    const-string v7, "extras"

    .line 775
    .line 776
    invoke-virtual {v15, v7, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 777
    .line 778
    .line 779
    const-string v3, "remoteInputs"

    .line 780
    .line 781
    const/4 v7, 0x0

    .line 782
    invoke-virtual {v15, v3, v7}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 783
    .line 784
    .line 785
    const-string v3, "showsUserInterface"

    .line 786
    .line 787
    iget-boolean v7, v13, Lj/c;->d:Z

    .line 788
    .line 789
    invoke-virtual {v15, v3, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 790
    .line 791
    .line 792
    const-string v3, "semanticAction"

    .line 793
    .line 794
    const/4 v7, 0x0

    .line 795
    invoke-virtual {v15, v3, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v8, v12, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 799
    .line 800
    .line 801
    add-int/lit8 v11, v11, 0x1

    .line 802
    .line 803
    move-object/from16 v3, p0

    .line 804
    .line 805
    const/4 v7, 0x0

    .line 806
    const/16 v15, 0x1d

    .line 807
    .line 808
    goto :goto_11

    .line 809
    :cond_1d
    const-string v3, "invisible_actions"

    .line 810
    .line 811
    invoke-virtual {v5, v3, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 812
    .line 813
    .line 814
    invoke-virtual {v10}, Lj/e;->a()Landroid/os/Bundle;

    .line 815
    .line 816
    .line 817
    move-result-object v3

    .line 818
    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 822
    .line 823
    .line 824
    :cond_1e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 825
    .line 826
    iget-object v3, v10, Lj/e;->k:Landroid/os/Bundle;

    .line 827
    .line 828
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 829
    .line 830
    .line 831
    move-result-object v3

    .line 832
    const/4 v4, 0x0

    .line 833
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 834
    .line 835
    .line 836
    const/16 v3, 0x1a

    .line 837
    .line 838
    if-lt v0, v3, :cond_1f

    .line 839
    .line 840
    invoke-static {v2}, Lc1/a;->b(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    .line 841
    .line 842
    .line 843
    move-result-object v3

    .line 844
    invoke-static {v3}, Lc1/a;->z(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    .line 845
    .line 846
    .line 847
    move-result-object v3

    .line 848
    invoke-static {v3}, Lc1/a;->D(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    .line 849
    .line 850
    .line 851
    move-result-object v3

    .line 852
    invoke-static {v3}, Lc1/a;->l(Landroid/app/Notification$Builder;)V

    .line 853
    .line 854
    .line 855
    iget-object v3, v10, Lj/e;->l:Ljava/lang/String;

    .line 856
    .line 857
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 858
    .line 859
    .line 860
    move-result v3

    .line 861
    if-nez v3, :cond_1f

    .line 862
    .line 863
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 864
    .line 865
    .line 866
    move-result-object v3

    .line 867
    const/4 v5, 0x0

    .line 868
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 869
    .line 870
    .line 871
    move-result-object v3

    .line 872
    invoke-virtual {v3, v5, v5, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 873
    .line 874
    .line 875
    move-result-object v3

    .line 876
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 877
    .line 878
    .line 879
    :cond_1f
    const/16 v3, 0x1d

    .line 880
    .line 881
    if-lt v0, v3, :cond_20

    .line 882
    .line 883
    iget-boolean v0, v10, Lj/e;->m:Z

    .line 884
    .line 885
    invoke-static {v2, v0}, Landroidx/lifecycle/v;->f(Landroid/app/Notification$Builder;Z)V

    .line 886
    .line 887
    .line 888
    invoke-static {v2}, Landroidx/lifecycle/v;->e(Landroid/app/Notification$Builder;)V

    .line 889
    .line 890
    .line 891
    :cond_20
    iget-object v0, v10, Lj/e;->i:Lj/d;

    .line 892
    .line 893
    if-eqz v0, :cond_21

    .line 894
    .line 895
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    .line 896
    .line 897
    invoke-direct {v3, v2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 898
    .line 899
    .line 900
    iget-object v4, v0, Lj/d;->c:Landroid/view/ViewParent;

    .line 901
    .line 902
    check-cast v4, Ljava/lang/CharSequence;

    .line 903
    .line 904
    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 905
    .line 906
    .line 907
    move-result-object v3

    .line 908
    iget-object v4, v0, Lj/d;->e:Ljava/lang/Object;

    .line 909
    .line 910
    check-cast v4, Ljava/lang/CharSequence;

    .line 911
    .line 912
    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 913
    .line 914
    .line 915
    move-result-object v3

    .line 916
    iget-boolean v4, v0, Lj/d;->a:Z

    .line 917
    .line 918
    if-eqz v4, :cond_21

    .line 919
    .line 920
    iget-object v4, v0, Lj/d;->d:Landroid/view/View;

    .line 921
    .line 922
    check-cast v4, Ljava/lang/CharSequence;

    .line 923
    .line 924
    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 925
    .line 926
    .line 927
    :cond_21
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 928
    .line 929
    .line 930
    move-result-object v2

    .line 931
    if-eqz v0, :cond_22

    .line 932
    .line 933
    iget-object v3, v10, Lj/e;->i:Lj/d;

    .line 934
    .line 935
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 936
    .line 937
    .line 938
    :cond_22
    if-eqz v0, :cond_23

    .line 939
    .line 940
    iget-object v0, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 941
    .line 942
    :cond_23
    const/4 v0, 0x1

    .line 943
    if-eq v1, v0, :cond_24

    .line 944
    .line 945
    const/4 v0, 0x2

    .line 946
    if-eq v1, v0, :cond_24

    .line 947
    .line 948
    const/4 v0, 0x3

    .line 949
    if-eq v1, v0, :cond_24

    .line 950
    .line 951
    const v0, 0x9b6d

    .line 952
    .line 953
    .line 954
    goto :goto_13

    .line 955
    :cond_24
    sget-object v0, Lv0/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 956
    .line 957
    const/4 v1, 0x0

    .line 958
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 959
    .line 960
    .line 961
    const/16 v0, 0x28c4

    .line 962
    .line 963
    :goto_13
    invoke-virtual {v9, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 964
    .line 965
    .line 966
    return-void

    .line 967
    :catchall_0
    move-exception v0

    .line 968
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 969
    throw v0

    .line 970
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 971
    .line 972
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 973
    .line 974
    .line 975
    throw v0
.end method

.method public final h(Landroid/app/Activity;Lx0/f;ILx0/j;)V
    .locals 2

    .line 1
    const-string v0, "d"

    .line 2
    .line 3
    invoke-super {p0, p3, p1, v0}, Lv0/e;->a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ly0/o;

    .line 8
    .line 9
    invoke-direct {v1, v0, p2}, Ly0/o;-><init>(Landroid/content/Intent;Lx0/f;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p3, v1, p4}, Lv0/d;->e(Landroid/content/Context;ILy0/p;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string p3, "GooglePlayServicesErrorDialog"

    .line 20
    .line 21
    invoke-static {p1, p2, p3, p4}, Lv0/d;->f(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
