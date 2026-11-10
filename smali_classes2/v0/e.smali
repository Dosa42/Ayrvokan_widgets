.class public abstract Lv0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lv0/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const v0, 0xbdfcb8

    sput v0, Lv0/e;->a:I

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "com.google.android.gms"

    .line 3
    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 p2, 0x3

    .line 10
    const/4 p3, 0x0

    .line 11
    if-eq p1, p2, :cond_0

    .line 12
    .line 13
    return-object p3

    .line 14
    :cond_0
    const-string p1, "package"

    .line 15
    .line 16
    invoke-static {p1, v1, p3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance p2, Landroid/content/Intent;

    .line 21
    .line 22
    const-string p3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 23
    .line 24
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    return-object p2

    .line 31
    :cond_1
    if-eqz p2, :cond_3

    .line 32
    .line 33
    invoke-static {p2}, Lc1/b;->l(Landroid/content/Context;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    new-instance p1, Landroid/content/Intent;

    .line 41
    .line 42
    const-string p2, "com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string p2, "com.google.android.wearable.app"

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v0, "gcore_"

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sget v0, Lv0/e;->a:I

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, "-"

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_4

    .line 75
    .line 76
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    if-eqz p2, :cond_5

    .line 83
    .line 84
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    if-eqz p2, :cond_6

    .line 95
    .line 96
    :try_start_0
    invoke-static {p2}, Lc1/c;->a(Landroid/content/Context;)Lv0/h;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    iget-object p3, p3, Lv0/h;->a:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    const/4 v0, 0x0

    .line 111
    invoke-virtual {p3, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    :catch_0
    :cond_6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    new-instance p2, Landroid/content/Intent;

    .line 125
    .line 126
    const-string p3, "android.intent.action.VIEW"

    .line 127
    .line 128
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string p3, "market://details"

    .line 132
    .line 133
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    const-string v0, "id"

    .line 142
    .line 143
    invoke-virtual {p3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-nez v0, :cond_7

    .line 152
    .line 153
    const-string v0, "pcampaignid"

    .line 154
    .line 155
    invoke-virtual {p3, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 156
    .line 157
    .line 158
    :cond_7
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    const-string p1, "com.android.vending"

    .line 166
    .line 167
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    .line 169
    .line 170
    const/high16 p1, 0x80000

    .line 171
    .line 172
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    return-object p2
.end method

.method public b(Landroid/content/Context;I)I
    .locals 10

    .line 1
    sget-object v0, Lv0/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lv0/i;->common_google_play_services_unknown_issue:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    :catchall_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "com.google.android.gms"

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-nez v0, :cond_5

    .line 24
    .line 25
    sget-object v0, Lv0/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_0
    sget-object v0, Ly0/y;->a:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v0

    .line 37
    :try_start_1
    sget-boolean v2, Ly0/y;->b:Z

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sput-boolean v1, Ly0/y;->b:Z

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {p1}, Lc1/c;->a(Landroid/content/Context;)Lv0/h;

    .line 49
    .line 50
    .line 51
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    :try_start_2
    iget-object v3, v3, Lv0/h;->a:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    const/16 v4, 0x80

    .line 59
    .line 60
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 65
    .line 66
    if-nez v2, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const-string v3, "com.google.app.id"

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    const-string v3, "com.google.android.gms.version"

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    sput v2, Ly0/y;->c:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_1
    move-exception p1

    .line 84
    goto :goto_1

    .line 85
    :catch_0
    move-exception v2

    .line 86
    :try_start_3
    const-string v3, "MetadataValueReader"

    .line 87
    .line 88
    const-string v4, "This should never happen."

    .line 89
    .line 90
    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .line 92
    .line 93
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    sget v0, Ly0/y;->c:I

    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    const v2, 0xbdfcb8

    .line 99
    .line 100
    .line 101
    if-ne v0, v2, :cond_3

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    new-instance p1, Lcom/google/android/gms/common/GooglePlayServicesIncorrectManifestValueException;

    .line 105
    .line 106
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/GooglePlayServicesIncorrectManifestValueException;-><init>(I)V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :cond_4
    new-instance p1, Lcom/google/android/gms/common/GooglePlayServicesMissingManifestValueException;

    .line 111
    .line 112
    invoke-direct {p1}, Lcom/google/android/gms/common/GooglePlayServicesMissingManifestValueException;-><init>()V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 117
    throw p1

    .line 118
    :cond_5
    :goto_2
    invoke-static {p1}, Lc1/b;->l(Landroid/content/Context;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    const/4 v2, 0x0

    .line 123
    if-nez v0, :cond_9

    .line 124
    .line 125
    sget-object v0, Lc1/b;->A:Ljava/lang/Boolean;

    .line 126
    .line 127
    if-nez v0, :cond_8

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const-string v3, "android.hardware.type.iot"

    .line 134
    .line 135
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-nez v0, :cond_7

    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const-string v3, "android.hardware.type.embedded"

    .line 146
    .line 147
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_6

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_6
    move v0, v2

    .line 155
    goto :goto_4

    .line 156
    :cond_7
    :goto_3
    move v0, v1

    .line 157
    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    sput-object v0, Lc1/b;->A:Ljava/lang/Boolean;

    .line 162
    .line 163
    :cond_8
    sget-object v0, Lc1/b;->A:Ljava/lang/Boolean;

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-nez v0, :cond_9

    .line 170
    .line 171
    move v0, v1

    .line 172
    goto :goto_5

    .line 173
    :cond_9
    move v0, v2

    .line 174
    :goto_5
    if-ltz p2, :cond_a

    .line 175
    .line 176
    move v3, v1

    .line 177
    goto :goto_6

    .line 178
    :cond_a
    move v3, v2

    .line 179
    :goto_6
    if-eqz v3, :cond_19

    .line 180
    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    if-eqz v0, :cond_b

    .line 190
    .line 191
    :try_start_5
    const-string v5, "com.android.vending"

    .line 192
    .line 193
    const/16 v6, 0x2040

    .line 194
    .line 195
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 196
    .line 197
    .line 198
    move-result-object v5
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    .line 199
    goto :goto_7

    .line 200
    :catch_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    const-string v0, " requires the Google Play Store, but it is missing."

    .line 205
    .line 206
    goto :goto_9

    .line 207
    :cond_b
    const/4 v5, 0x0

    .line 208
    :goto_7
    :try_start_6
    const-string v6, "com.google.android.gms"

    .line 209
    .line 210
    const/16 v7, 0x40

    .line 211
    .line 212
    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 213
    .line 214
    .line 215
    move-result-object v6
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    .line 216
    const-class v7, Lv0/h;

    .line 217
    .line 218
    monitor-enter v7

    .line 219
    :try_start_7
    sget-object v8, Lv0/h;->b:Lv0/h;

    .line 220
    .line 221
    if-nez v8, :cond_d

    .line 222
    .line 223
    sget-object v8, Lv0/r;->a:Lv0/m;

    .line 224
    .line 225
    const-class v8, Lv0/r;

    .line 226
    .line 227
    monitor-enter v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 228
    :try_start_8
    sget-object v9, Lv0/r;->c:Landroid/content/Context;

    .line 229
    .line 230
    if-nez v9, :cond_c

    .line 231
    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    sput-object v9, Lv0/r;->c:Landroid/content/Context;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 237
    .line 238
    :cond_c
    :try_start_9
    monitor-exit v8

    .line 239
    new-instance v8, Lv0/h;

    .line 240
    .line 241
    invoke-direct {v8, p1, v2}, Lv0/h;-><init>(Landroid/content/Context;I)V

    .line 242
    .line 243
    .line 244
    sput-object v8, Lv0/h;->b:Lv0/h;

    .line 245
    .line 246
    goto :goto_8

    .line 247
    :catchall_2
    move-exception p1

    .line 248
    monitor-exit v8

    .line 249
    throw p1

    .line 250
    :cond_d
    :goto_8
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 251
    invoke-static {v6}, Lv0/h;->b(Landroid/content/pm/PackageInfo;)Z

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    if-nez v7, :cond_e

    .line 256
    .line 257
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    const-string v0, " requires Google Play services, but their signature is invalid."

    .line 262
    .line 263
    goto :goto_9

    .line 264
    :cond_e
    if-eqz v0, :cond_f

    .line 265
    .line 266
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/i0;->l(Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    invoke-static {v5}, Lv0/h;->b(Landroid/content/pm/PackageInfo;)Z

    .line 270
    .line 271
    .line 272
    move-result v7

    .line 273
    if-nez v7, :cond_f

    .line 274
    .line 275
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    const-string v0, " requires Google Play Store, but its signature is invalid."

    .line 280
    .line 281
    goto :goto_9

    .line 282
    :cond_f
    if-eqz v0, :cond_10

    .line 283
    .line 284
    if-eqz v5, :cond_10

    .line 285
    .line 286
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 287
    .line 288
    aget-object v0, v0, v2

    .line 289
    .line 290
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 291
    .line 292
    aget-object v5, v5, v2

    .line 293
    .line 294
    invoke-virtual {v0, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-nez v0, :cond_10

    .line 299
    .line 300
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p2

    .line 304
    const-string v0, " requires Google Play Store, but its signature doesn\'t match that of Google Play services."

    .line 305
    .line 306
    :goto_9
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    const/16 p2, 0x9

    .line 310
    .line 311
    goto :goto_e

    .line 312
    :cond_10
    iget v0, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 313
    .line 314
    const/4 v5, -0x1

    .line 315
    if-ne v0, v5, :cond_11

    .line 316
    .line 317
    move v0, v5

    .line 318
    goto :goto_a

    .line 319
    :cond_11
    div-int/lit16 v0, v0, 0x3e8

    .line 320
    .line 321
    :goto_a
    if-ne p2, v5, :cond_12

    .line 322
    .line 323
    goto :goto_b

    .line 324
    :cond_12
    div-int/lit16 v5, p2, 0x3e8

    .line 325
    .line 326
    :goto_b
    if-ge v0, v5, :cond_13

    .line 327
    .line 328
    const/4 p2, 0x2

    .line 329
    goto :goto_e

    .line 330
    :cond_13
    iget-object p2, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 331
    .line 332
    if-nez p2, :cond_14

    .line 333
    .line 334
    :try_start_a
    const-string p2, "com.google.android.gms"

    .line 335
    .line 336
    invoke-virtual {v4, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 337
    .line 338
    .line 339
    move-result-object p2
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_2

    .line 340
    goto :goto_c

    .line 341
    :catch_2
    move-exception p2

    .line 342
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    const-string v3, " requires Google Play services, but they\'re missing when getting application info."

    .line 347
    .line 348
    const-string v4, "GooglePlayServicesUtil"

    .line 349
    .line 350
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-static {v4, v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    .line 356
    .line 357
    goto :goto_d

    .line 358
    :cond_14
    :goto_c
    iget-boolean p2, p2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 359
    .line 360
    if-nez p2, :cond_15

    .line 361
    .line 362
    const/4 p2, 0x3

    .line 363
    goto :goto_e

    .line 364
    :cond_15
    move p2, v2

    .line 365
    goto :goto_e

    .line 366
    :catchall_3
    move-exception p1

    .line 367
    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 368
    throw p1

    .line 369
    :catch_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p2

    .line 373
    const-string v0, " requires Google Play services, but they are missing."

    .line 374
    .line 375
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    :goto_d
    move p2, v1

    .line 379
    :goto_e
    const/16 v0, 0x12

    .line 380
    .line 381
    if-ne p2, v0, :cond_16

    .line 382
    .line 383
    goto :goto_f

    .line 384
    :cond_16
    if-ne p2, v1, :cond_17

    .line 385
    .line 386
    invoke-static {p1}, Lv0/g;->a(Landroid/content/Context;)Z

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    goto :goto_f

    .line 391
    :cond_17
    move v1, v2

    .line 392
    :goto_f
    if-eqz v1, :cond_18

    .line 393
    .line 394
    return v0

    .line 395
    :cond_18
    return p2

    .line 396
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 397
    .line 398
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 399
    .line 400
    .line 401
    throw p1
.end method
