.class public final synthetic Lo0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;ILandroid/widget/TextView;Lw1/m;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lo0/g;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/g;->h:Ljava/lang/Object;

    iput p2, p0, Lo0/g;->g:I

    iput-object p3, p0, Lo0/g;->i:Ljava/lang/Object;

    iput-object p4, p0, Lo0/g;->j:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lo0/l;Lj0/k;ILjava/lang/Runnable;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lo0/g;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/g;->h:Ljava/lang/Object;

    iput-object p2, p0, Lo0/g;->i:Ljava/lang/Object;

    iput p3, p0, Lo0/g;->g:I

    iput-object p4, p0, Lo0/g;->j:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    iget v0, v1, Lo0/g;->f:I

    .line 6
    .line 7
    iget-object v4, v1, Lo0/g;->j:Ljava/lang/Object;

    .line 8
    .line 9
    iget v5, v1, Lo0/g;->g:I

    .line 10
    .line 11
    iget-object v6, v1, Lo0/g;->i:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v7, v1, Lo0/g;->h:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    goto/16 :goto_8

    .line 19
    .line 20
    :pswitch_0
    check-cast v7, Lo0/l;

    .line 21
    .line 22
    check-cast v6, Lj0/k;

    .line 23
    .line 24
    check-cast v4, Ljava/lang/Runnable;

    .line 25
    .line 26
    iget-object v8, v7, Lo0/l;->d:Lo0/p;

    .line 27
    .line 28
    iget-object v0, v7, Lo0/l;->f:Lq0/c;

    .line 29
    .line 30
    :try_start_0
    iget-object v9, v7, Lo0/l;->c:Lp0/d;

    .line 31
    .line 32
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    new-instance v10, Lh0/b;

    .line 36
    .line 37
    invoke-direct {v10, v9, v3}, Lh0/b;-><init>(Ljava/lang/Object;I)V

    .line 38
    .line 39
    .line 40
    move-object v9, v0

    .line 41
    check-cast v9, Lp0/k;

    .line 42
    .line 43
    invoke-virtual {v9, v10}, Lp0/k;->e(Lq0/b;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    iget-object v9, v7, Lo0/l;->a:Landroid/content/Context;

    .line 47
    .line 48
    const-string v10, "connectivity"

    .line 49
    .line 50
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    check-cast v9, Landroid/net/ConnectivityManager;

    .line 55
    .line 56
    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    if-eqz v9, :cond_0

    .line 61
    .line 62
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-eqz v9, :cond_0

    .line 67
    .line 68
    move v9, v3

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    move v9, v2

    .line 71
    :goto_0
    if-nez v9, :cond_2

    .line 72
    .line 73
    move-object v7, v0

    .line 74
    check-cast v7, Lp0/k;

    .line 75
    .line 76
    invoke-virtual {v7}, Lp0/k;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    new-instance v10, Lh0/c;

    .line 81
    .line 82
    const/4 v0, 0x5

    .line 83
    invoke-direct {v10, v0}, Lh0/c;-><init>(I)V
    :try_end_0
    .catch Lq0/a; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 84
    .line 85
    .line 86
    :try_start_1
    iget-object v0, v7, Lp0/k;->c:Lr0/a;

    .line 87
    .line 88
    move-object v11, v0

    .line 89
    check-cast v11, Lr0/b;

    .line 90
    .line 91
    invoke-virtual {v11}, Lr0/b;->a()J

    .line 92
    .line 93
    .line 94
    move-result-wide v12
    :try_end_1
    .catch Lq0/a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 95
    :goto_1
    :try_start_2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lq0/a; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 96
    .line 97
    .line 98
    move-object/from16 v17, v4

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :goto_2
    move-object/from16 v17, v4

    .line 102
    .line 103
    goto :goto_7

    .line 104
    :catch_0
    move-object/from16 v17, v4

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :catch_1
    move-exception v0

    .line 108
    move-object v14, v0

    .line 109
    :try_start_3
    invoke-virtual {v11}, Lr0/b;->a()J

    .line 110
    .line 111
    .line 112
    move-result-wide v15

    .line 113
    iget-object v0, v7, Lp0/k;->d:Lp0/a;

    .line 114
    .line 115
    iget v0, v0, Lp0/a;->c:I
    :try_end_3
    .catch Lq0/a; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 116
    .line 117
    move-object/from16 v17, v4

    .line 118
    .line 119
    int-to-long v3, v0

    .line 120
    add-long/2addr v3, v12

    .line 121
    cmp-long v0, v15, v3

    .line 122
    .line 123
    if-ltz v0, :cond_1

    .line 124
    .line 125
    :try_start_4
    invoke-virtual {v10, v14}, Lh0/c;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lq0/a; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 126
    .line 127
    .line 128
    :goto_3
    add-int/lit8 v0, v5, 0x1

    .line 129
    .line 130
    :try_start_5
    move-object v3, v8

    .line 131
    check-cast v3, Lo0/d;

    .line 132
    .line 133
    invoke-virtual {v3, v6, v0, v2}, Lo0/d;->a(Lj0/k;IZ)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 137
    .line 138
    .line 139
    :try_start_6
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 140
    .line 141
    .line 142
    goto :goto_6

    .line 143
    :catchall_0
    move-exception v0

    .line 144
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 145
    .line 146
    .line 147
    throw v0

    .line 148
    :catchall_1
    move-exception v0

    .line 149
    goto :goto_7

    .line 150
    :cond_1
    const-wide/16 v3, 0x32

    .line 151
    .line 152
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 153
    .line 154
    .line 155
    move-object/from16 v4, v17

    .line 156
    .line 157
    const/4 v3, 0x1

    .line 158
    goto :goto_1

    .line 159
    :catchall_2
    move-exception v0

    .line 160
    goto :goto_2

    .line 161
    :cond_2
    move-object/from16 v17, v4

    .line 162
    .line 163
    invoke-virtual {v7, v6, v5}, Lo0/l;->a(Lj0/k;I)V
    :try_end_6
    .catch Lq0/a; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 164
    .line 165
    .line 166
    goto :goto_6

    .line 167
    :catch_2
    :goto_4
    const/4 v3, 0x1

    .line 168
    goto :goto_5

    .line 169
    :catch_3
    move-object/from16 v17, v4

    .line 170
    .line 171
    :goto_5
    add-int/2addr v5, v3

    .line 172
    :try_start_7
    check-cast v8, Lo0/d;

    .line 173
    .line 174
    invoke-virtual {v8, v6, v5, v2}, Lo0/d;->a(Lj0/k;IZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 175
    .line 176
    .line 177
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/lang/Runnable;->run()V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/lang/Runnable;->run()V

    .line 182
    .line 183
    .line 184
    throw v0

    .line 185
    :goto_8
    check-cast v7, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;

    .line 186
    .line 187
    check-cast v6, Landroid/widget/TextView;

    .line 188
    .line 189
    check-cast v4, Lw1/s;

    .line 190
    .line 191
    sget-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 192
    .line 193
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    const-string v0, "localhost"

    .line 197
    .line 198
    :try_start_8
    new-instance v8, Ljava/net/Socket;

    .line 199
    .line 200
    invoke-direct {v8}, Ljava/net/Socket;-><init>()V

    .line 201
    .line 202
    .line 203
    new-instance v9, Ljava/net/InetSocketAddress;

    .line 204
    .line 205
    invoke-direct {v9, v0, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 206
    .line 207
    .line 208
    const/16 v0, 0x3e8

    .line 209
    .line 210
    invoke-virtual {v8, v9, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 214
    .line 215
    .line 216
    move v2, v3

    .line 217
    goto :goto_9

    .line 218
    :catch_4
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 220
    .line 221
    .line 222
    :goto_9
    if-nez v2, :cond_3

    .line 223
    .line 224
    const v0, 0x7f0b0019

    .line 225
    .line 226
    .line 227
    invoke-virtual {v7, v0, v6}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->m(ILandroid/widget/TextView;)V

    .line 228
    .line 229
    .line 230
    :cond_3
    new-instance v0, Lw1/e;

    .line 231
    .line 232
    invoke-direct {v0, v4, v5, v2}, Lw1/e;-><init>(Lw1/s;IZ)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :catch_5
    move-exception v0

    .line 240
    throw v0

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
