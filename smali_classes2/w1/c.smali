.class public final synthetic Lw1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lw1/c;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lw1/c;->g:Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lw1/c;->f:I

    .line 2
    .line 3
    const/16 v1, 0x15b3

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    iget-object v6, p0, Lw1/c;->g:Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :pswitch_0
    sget-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 17
    .line 18
    invoke-virtual {v6}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->a()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const v0, 0x7f06008d

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const v0, 0x7f060060

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v6, v0}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->f(I)Z

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_1
    sget-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 36
    .line 37
    invoke-virtual {v6, v3, v5, v4}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c(IZLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_2
    iget-boolean v0, v6, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->a:Z

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iput-boolean v2, v6, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->a:Z

    .line 47
    .line 48
    const-string v0, "ppkt connection port"

    .line 49
    .line 50
    invoke-static {v1, v0}, Lo1/y;->g(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->h()V

    .line 54
    .line 55
    .line 56
    :goto_1
    return-void

    .line 57
    :pswitch_3
    sget-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 58
    .line 59
    const v0, 0x7f060075

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v0}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->f(I)Z

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_4
    sget-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 67
    .line 68
    invoke-virtual {v6}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_5
    sget-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 73
    .line 74
    const v0, 0x7f060081

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v0}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->f(I)Z

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_6
    sget-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 82
    .line 83
    invoke-virtual {v6}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->a()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    const-string v0, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    .line 90
    .line 91
    invoke-virtual {v6, v0}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->i(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    const v0, 0x7f060051

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6, v0}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->f(I)Z

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_2
    const v0, 0x7f060078

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6, v0}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->f(I)Z

    .line 108
    .line 109
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/play_billing/i0;->L(Landroid/content/Context;Z)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v1, "<pre><br>Failure reason: No developer options.<br></pre>"

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_3
    const-string v0, "android.settings.DEVICE_INFO_SETTINGS"

    .line 126
    .line 127
    invoke-virtual {v6, v0}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->i(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_4

    .line 132
    .line 133
    invoke-virtual {v6}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->g()V

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_4
    const v0, 0x7f06007b

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6, v0}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->f(I)Z

    .line 141
    .line 142
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/play_billing/i0;->L(Landroid/content/Context;Z)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v1, "<pre><br>Failure reason: No device info.<br></pre>"

    .line 156
    .line 157
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-string v1, "UFBLVEZhaWxlZA"

    .line 165
    .line 166
    invoke-static {v1, v0, v5, v5, v4}, Lcom/google/android/gms/internal/play_billing/i0;->e0(Ljava/lang/String;Ljava/lang/String;ZZLq1/z;)V

    .line 167
    .line 168
    .line 169
    :goto_3
    return-void

    .line 170
    :pswitch_7
    sget-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 171
    .line 172
    invoke-virtual {v6}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j()V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :pswitch_8
    iget-boolean v0, v6, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->a:Z

    .line 177
    .line 178
    if-nez v0, :cond_5

    .line 179
    .line 180
    invoke-virtual {v6}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->h()V

    .line 181
    .line 182
    .line 183
    :cond_5
    return-void

    .line 184
    :pswitch_9
    sget-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 185
    .line 186
    invoke-virtual {v6, v3, v5, v4}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c(IZLjava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :pswitch_a
    sget-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 191
    .line 192
    invoke-virtual {v6}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->g()V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :pswitch_b
    sget-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 197
    .line 198
    invoke-virtual {v6}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j()V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :pswitch_c
    sget-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 203
    .line 204
    invoke-virtual {v6, v3, v5, v4}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c(IZLjava/lang/String;)V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :pswitch_d
    sget-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 209
    .line 210
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    new-instance v0, Ljava/lang/Thread;

    .line 214
    .line 215
    sget-object v1, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->k:Ljava/lang/ThreadGroup;

    .line 216
    .line 217
    new-instance v2, Lw1/c;

    .line 218
    .line 219
    const/16 v3, 0x12

    .line 220
    .line 221
    invoke-direct {v2, v6, v3}, Lw1/c;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;I)V

    .line 222
    .line 223
    .line 224
    const-string v3, "isPort5555OpenThread"

    .line 225
    .line 226
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :pswitch_e
    sget-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 234
    .line 235
    const/4 v0, 0x3

    .line 236
    const-string v1, "<pre><br>Introduction page skip button.</pre>"

    .line 237
    .line 238
    invoke-virtual {v6, v0, v2, v1}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c(IZLjava/lang/String;)V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :pswitch_f
    sget-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 243
    .line 244
    invoke-virtual {v6, v2, v5, v4}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c(IZLjava/lang/String;)V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :pswitch_10
    sget-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 249
    .line 250
    invoke-virtual {v6}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j()V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :pswitch_11
    sget-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 255
    .line 256
    invoke-virtual {v6}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j()V

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :goto_4
    sget-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 261
    .line 262
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    const-string v0, "localhost"

    .line 266
    .line 267
    :try_start_0
    new-instance v3, Ljava/net/Socket;

    .line 268
    .line 269
    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    .line 270
    .line 271
    .line 272
    new-instance v4, Ljava/net/InetSocketAddress;

    .line 273
    .line 274
    invoke-direct {v4, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 275
    .line 276
    .line 277
    const/16 v0, 0x3e8

    .line 278
    .line 279
    invoke-virtual {v3, v4, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .line 284
    .line 285
    goto :goto_5

    .line 286
    :catch_0
    move-exception v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 288
    .line 289
    .line 290
    move v2, v5

    .line 291
    :goto_5
    new-instance v0, Lw1/d;

    .line 292
    .line 293
    invoke-direct {v0, v6, v2, v5}, Lw1/d;-><init>(Ljava/lang/Object;ZI)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :catch_1
    move-exception v0

    .line 301
    throw v0

    .line 302
    nop

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
