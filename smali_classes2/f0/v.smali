.class public final Lf0/v;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Z

.field public final synthetic c:Lf0/w;


# direct methods
.method public constructor <init>(Lf0/w;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf0/v;->c:Lf0/w;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-boolean p2, p0, Lf0/v;->b:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 3

    .line 1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lf0/v;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Lf0/v;->b:Z

    if-eq v2, v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-static {p1, p0, p2, v0}, Lc1/a;->A(Landroid/content/Context;Lf0/v;Landroid/content/IntentFilter;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_1
    iput-boolean v2, p0, Lf0/v;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Landroid/os/Bundle;Lf0/g;I)V
    .locals 1

    .line 1
    const-string v0, "FAILURE_LOGGING_PAYLOAD"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    :try_start_0
    iget-object p2, p0, Lf0/v;->c:Lf0/w;

    .line 10
    .line 11
    iget-object p2, p2, Lf0/w;->f:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p2, Lf0/s;

    .line 14
    .line 15
    const-string p3, "FAILURE_LOGGING_PAYLOAD"

    .line 16
    .line 17
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object p3, Lcom/google/android/gms/internal/play_billing/e0;->a:Lcom/google/android/gms/internal/play_billing/e0;

    .line 22
    .line 23
    if-eqz p3, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const-class p3, Lcom/google/android/gms/internal/play_billing/e0;

    .line 27
    .line 28
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/e0;->a:Lcom/google/android/gms/internal/play_billing/e0;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/i0;->y0()Lcom/google/android/gms/internal/play_billing/e0;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lcom/google/android/gms/internal/play_billing/e0;->a:Lcom/google/android/gms/internal/play_billing/e0;

    .line 39
    .line 40
    :goto_0
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    move-object p3, v0

    .line 42
    :goto_1
    :try_start_2
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/j2;->n([BLcom/google/android/gms/internal/play_billing/e0;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p2, Landroidx/fragment/app/h;

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Landroidx/fragment/app/h;->v(Lcom/google/android/gms/internal/play_billing/j2;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 55
    :catchall_1
    sget p1, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    iget-object p1, p0, Lf0/v;->c:Lf0/w;

    .line 59
    .line 60
    iget-object p1, p1, Lf0/w;->f:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Lf0/s;

    .line 63
    .line 64
    const/16 v0, 0x17

    .line 65
    .line 66
    invoke-static {v0, p3, p2}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    check-cast p1, Landroidx/fragment/app/h;

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroidx/fragment/app/h;->v(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    iget-object v2, p0, Lf0/v;->c:Lf0/w;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    sget p1, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 12
    .line 13
    iget-object p1, v2, Lf0/w;->f:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lf0/s;

    .line 16
    .line 17
    sget-object p2, Lf0/t;->i:Lf0/g;

    .line 18
    .line 19
    const/16 v3, 0xb

    .line 20
    .line 21
    invoke-static {v3, v1, p2}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast p1, Landroidx/fragment/app/h;

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroidx/fragment/app/h;->v(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, v2, Lf0/w;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Lf0/i;

    .line 33
    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    check-cast p1, Lcom/nomone/giap/GIAP;

    .line 37
    .line 38
    invoke-virtual {p1, p2, v0}, Lcom/nomone/giap/GIAP;->c(Lf0/g;Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    const-string v3, "BillingBroadcastManager"

    .line 43
    .line 44
    invoke-static {p2, v3}, Lcom/google/android/gms/internal/play_billing/s;->b(Landroid/content/Intent;Ljava/lang/String;)Lf0/g;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const-string v4, "INTENT_SOURCE"

    .line 53
    .line 54
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const-string v5, "LAUNCH_BILLING_FLOW"

    .line 59
    .line 60
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eq v1, v4, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v1, 0x2

    .line 68
    :goto_0
    const-string v4, "com.android.vending.billing.PURCHASES_UPDATED"

    .line 69
    .line 70
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-nez v4, :cond_5

    .line 75
    .line 76
    const-string v4, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    .line 77
    .line 78
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_2

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const-string v0, "com.android.vending.billing.ALTERNATIVE_BILLING"

    .line 86
    .line 87
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-eqz p2, :cond_4

    .line 92
    .line 93
    iget p2, v3, Lf0/g;->b:I

    .line 94
    .line 95
    if-eqz p2, :cond_3

    .line 96
    .line 97
    invoke-virtual {p0, p1, v3, v1}, Lf0/v;->b(Landroid/os/Bundle;Lf0/g;I)V

    .line 98
    .line 99
    .line 100
    iget-object p1, v2, Lf0/w;->c:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p1, Lf0/i;

    .line 103
    .line 104
    sget-object p2, Lcom/google/android/gms/internal/play_billing/f;->b:Lcom/google/android/gms/internal/play_billing/d;

    .line 105
    .line 106
    sget-object p2, Lcom/google/android/gms/internal/play_billing/j;->e:Lcom/google/android/gms/internal/play_billing/j;

    .line 107
    .line 108
    check-cast p1, Lcom/nomone/giap/GIAP;

    .line 109
    .line 110
    invoke-virtual {p1, v3, p2}, Lcom/nomone/giap/GIAP;->c(Lf0/g;Ljava/util/List;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_3
    iget-object p1, v2, Lf0/w;->d:Ljava/lang/Object;

    .line 115
    .line 116
    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, v2, Lf0/w;->e:Ljava/lang/Object;

    .line 120
    .line 121
    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, v2, Lf0/w;->f:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast p1, Lf0/s;

    .line 127
    .line 128
    sget-object p2, Lf0/t;->i:Lf0/g;

    .line 129
    .line 130
    const/16 v0, 0x4d

    .line 131
    .line 132
    invoke-static {v0, v1, p2}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast p1, Landroidx/fragment/app/h;

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Landroidx/fragment/app/h;->v(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, v2, Lf0/w;->c:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast p1, Lf0/i;

    .line 144
    .line 145
    sget-object v0, Lcom/google/android/gms/internal/play_billing/f;->b:Lcom/google/android/gms/internal/play_billing/d;

    .line 146
    .line 147
    sget-object v0, Lcom/google/android/gms/internal/play_billing/j;->e:Lcom/google/android/gms/internal/play_billing/j;

    .line 148
    .line 149
    check-cast p1, Lcom/nomone/giap/GIAP;

    .line 150
    .line 151
    invoke-virtual {p1, p2, v0}, Lcom/nomone/giap/GIAP;->c(Lf0/g;Ljava/util/List;)V

    .line 152
    .line 153
    .line 154
    :cond_4
    return-void

    .line 155
    :cond_5
    :goto_1
    const-string p2, "INAPP_PURCHASE_DATA_LIST"

    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    const-string v4, "INAPP_DATA_SIGNATURE_LIST"

    .line 162
    .line 163
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    new-instance v5, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v6, "BillingHelper"

    .line 173
    .line 174
    if-eqz p2, :cond_8

    .line 175
    .line 176
    if-nez v4, :cond_6

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    new-instance v7, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string v8, "Found purchase list of "

    .line 186
    .line 187
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v0, " items"

    .line 194
    .line 195
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-static {v6, v0}, Lcom/google/android/gms/internal/play_billing/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const/4 v0, 0x0

    .line 206
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-ge v0, v6, :cond_a

    .line 211
    .line 212
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    if-ge v0, v6, :cond_a

    .line 217
    .line 218
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    check-cast v6, Ljava/lang/String;

    .line 223
    .line 224
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    check-cast v7, Ljava/lang/String;

    .line 229
    .line 230
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/play_billing/s;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    if-eqz v6, :cond_7

    .line 235
    .line 236
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_8
    :goto_3
    const-string p2, "INAPP_PURCHASE_DATA"

    .line 243
    .line 244
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    const-string v4, "INAPP_DATA_SIGNATURE"

    .line 249
    .line 250
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    invoke-static {p2, v4}, Lcom/google/android/gms/internal/play_billing/s;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    if-nez p2, :cond_9

    .line 259
    .line 260
    const-string p2, "Couldn\'t find single purchase data as well."

    .line 261
    .line 262
    invoke-static {v6, p2}, Lcom/google/android/gms/internal/play_billing/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_9
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    :cond_a
    move-object v0, v5

    .line 270
    :goto_4
    iget p2, v3, Lf0/g;->b:I

    .line 271
    .line 272
    if-nez p2, :cond_b

    .line 273
    .line 274
    iget-object p1, v2, Lf0/w;->f:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast p1, Lf0/s;

    .line 277
    .line 278
    invoke-static {v1}, Lf0/r;->b(I)Lcom/google/android/gms/internal/play_billing/m2;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    check-cast p1, Landroidx/fragment/app/h;

    .line 283
    .line 284
    invoke-virtual {p1, p2}, Landroidx/fragment/app/h;->x(Lcom/google/android/gms/internal/play_billing/m2;)V

    .line 285
    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_b
    invoke-virtual {p0, p1, v3, v1}, Lf0/v;->b(Landroid/os/Bundle;Lf0/g;I)V

    .line 289
    .line 290
    .line 291
    :goto_5
    iget-object p1, v2, Lf0/w;->c:Ljava/lang/Object;

    .line 292
    .line 293
    check-cast p1, Lf0/i;

    .line 294
    .line 295
    check-cast p1, Lcom/nomone/giap/GIAP;

    .line 296
    .line 297
    invoke-virtual {p1, v3, v0}, Lcom/nomone/giap/GIAP;->c(Lf0/g;Ljava/util/List;)V

    .line 298
    .line 299
    .line 300
    return-void
.end method
