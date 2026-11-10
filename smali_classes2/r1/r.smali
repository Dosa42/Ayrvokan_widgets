.class public final Lr1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;


# instance fields
.field public final synthetic a:Lcom/nomone/GeckoView/MyGeckoView;

.field public final synthetic b:Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;Lcom/nomone/GeckoView/MyGeckoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr1/r;->b:Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;

    iput-object p2, p0, Lr1/r;->a:Lcom/nomone/GeckoView/MyGeckoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadError(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/WebRequestError;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "onLoadError="

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p2, ", category="

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget p2, p3, Lorg/mozilla/geckoview/WebRequestError;->category:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p2, ", code="

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget p2, p3, Lorg/mozilla/geckoview/WebRequestError;->code:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, "sdf"

    .line 36
    .line 37
    invoke-static {p2, p1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lr1/r;->a:Lcom/nomone/GeckoView/MyGeckoView;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/nomone/GeckoView/MyGeckoView;->j:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Ln1/m;

    .line 59
    .line 60
    const-string v0, "Start drawing content"

    .line 61
    .line 62
    invoke-interface {p2, v0}, Ln1/m;->a(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-eqz p2, :cond_0

    .line 67
    .line 68
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string p2, "data:text/html,"

    .line 71
    .line 72
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Lr1/r;->b:Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;

    .line 76
    .line 77
    iget-object p2, p2, Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;->k:Lq1/f;

    .line 78
    .line 79
    iget-object p2, p2, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 80
    .line 81
    iget v0, p3, Lorg/mozilla/geckoview/WebRequestError;->category:I

    .line 82
    .line 83
    iget p3, p3, Lorg/mozilla/geckoview/WebRequestError;->code:I

    .line 84
    .line 85
    const-string v1, "errorTemplate.html"

    .line 86
    .line 87
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/play_billing/i0;->b0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v2, "UNKNOWN"

    .line 97
    .line 98
    packed-switch v0, :pswitch_data_0

    .line 99
    .line 100
    .line 101
    move-object v0, v2

    .line 102
    goto :goto_0

    .line 103
    :pswitch_0
    const-string v0, "ERROR_CATEGORY_SAFEBROWSING"

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_1
    const-string v0, "ERROR_CATEGORY_PROXY"

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :pswitch_2
    const-string v0, "ERROR_CATEGORY_URI"

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :pswitch_3
    const-string v0, "ERROR_CATEGORY_CONTENT"

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :pswitch_4
    const-string v0, "ERROR_CATEGORY_NETWORK"

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :pswitch_5
    const-string v0, "ERROR_CATEGORY_SECURITY"

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :pswitch_6
    const-string v0, "ERROR_CATEGORY_UNKNOWN"

    .line 122
    .line 123
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v0, "<br>"

    .line 127
    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const/16 v0, 0x11

    .line 132
    .line 133
    if-eq p3, v0, :cond_9

    .line 134
    .line 135
    const/16 v0, 0x47

    .line 136
    .line 137
    if-eq p3, v0, :cond_8

    .line 138
    .line 139
    const/16 v0, 0x57

    .line 140
    .line 141
    if-eq p3, v0, :cond_7

    .line 142
    .line 143
    const/16 v0, 0x63

    .line 144
    .line 145
    if-eq p3, v0, :cond_6

    .line 146
    .line 147
    const/16 v0, 0x65

    .line 148
    .line 149
    if-eq p3, v0, :cond_5

    .line 150
    .line 151
    const/16 v0, 0x73

    .line 152
    .line 153
    if-eq p3, v0, :cond_4

    .line 154
    .line 155
    const/16 v0, 0x83

    .line 156
    .line 157
    if-eq p3, v0, :cond_3

    .line 158
    .line 159
    const/16 v0, 0x93

    .line 160
    .line 161
    if-eq p3, v0, :cond_2

    .line 162
    .line 163
    packed-switch p3, :pswitch_data_1

    .line 164
    .line 165
    .line 166
    packed-switch p3, :pswitch_data_2

    .line 167
    .line 168
    .line 169
    packed-switch p3, :pswitch_data_3

    .line 170
    .line 171
    .line 172
    packed-switch p3, :pswitch_data_4

    .line 173
    .line 174
    .line 175
    goto/16 :goto_1

    .line 176
    .line 177
    :pswitch_7
    const-string v2, "ERROR_SAFEBROWSING_MALWARE_URI"

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :pswitch_8
    const-string v2, "ERROR_PROXY_CONNECTION_REFUSED"

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :pswitch_9
    const-string v2, "ERROR_UNKNOWN_HOST"

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :pswitch_a
    const-string v2, "ERROR_UNSAFE_CONTENT_TYPE"

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :pswitch_b
    const-string v2, "ERROR_NET_INTERRUPT"

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :pswitch_c
    const-string v2, "ERROR_SECURITY_SSL"

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :pswitch_d
    const-string v2, "ERROR_SAFEBROWSING_UNWANTED_URI"

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :pswitch_e
    const-string v2, "ERROR_UNKNOWN_PROXY_HOST"

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :pswitch_f
    const-string v2, "ERROR_MALFORMED_URI"

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :pswitch_10
    const-string v2, "ERROR_CORRUPTED_CONTENT"

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :pswitch_11
    const-string v2, "ERROR_NET_TIMEOUT"

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :pswitch_12
    const-string v2, "ERROR_SECURITY_BAD_CERT"

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :pswitch_13
    const-string v2, "ERROR_UNKNOWN_PROTOCOL"

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :pswitch_14
    const-string v2, "ERROR_CONTENT_CRASHED"

    .line 217
    .line 218
    goto :goto_1

    .line 219
    :pswitch_15
    const-string v2, "ERROR_CONNECTION_REFUSED"

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :pswitch_16
    const-string v2, "ERROR_FILE_NOT_FOUND"

    .line 223
    .line 224
    goto :goto_1

    .line 225
    :pswitch_17
    const-string v2, "ERROR_INVALID_CONTENT_ENCODING"

    .line 226
    .line 227
    goto :goto_1

    .line 228
    :pswitch_18
    const-string v2, "ERROR_UNKNOWN_SOCKET_TYPE"

    .line 229
    .line 230
    goto :goto_1

    .line 231
    :cond_2
    const-string v2, "ERROR_NET_RESET"

    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_3
    const-string v2, "ERROR_PORT_BLOCKED"

    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_4
    const-string v2, "ERROR_OFFLINE"

    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_5
    const-string v2, "ERROR_FILE_ACCESS_DENIED"

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_6
    const-string v2, "ERROR_REDIRECT_LOOP"

    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_7
    const-string v2, "ERROR_SAFEBROWSING_PHISHING_URI"

    .line 247
    .line 248
    goto :goto_1

    .line 249
    :cond_8
    const-string v2, "ERROR_SAFEBROWSING_HARMFUL_URI"

    .line 250
    .line 251
    goto :goto_1

    .line 252
    :cond_9
    const-string v2, "ERROR_UNKNOWN"

    .line 253
    .line 254
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p3

    .line 261
    const-string v0, "$ERROR"

    .line 262
    .line 263
    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    return-object p1

    .line 279
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    :pswitch_data_1
    .packed-switch 0x22
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    :pswitch_data_2
    .packed-switch 0x32
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    :pswitch_data_3
    .packed-switch 0x43
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    :pswitch_data_4
    .packed-switch 0x53
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch
.end method

.method public final onNewSession(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 7

    .line 1
    iget-object p1, p0, Lr1/r;->b:Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->c:La2/b;

    .line 4
    .line 5
    :goto_0
    if-eqz p2, :cond_0

    .line 6
    .line 7
    instance-of v0, p2, La2/x;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p2}, La2/r;->getParent()La2/c0;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    check-cast p2, La2/x;

    .line 17
    .line 18
    invoke-static {}, Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;->h()Lo1/x;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p1, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->c:La2/b;

    .line 23
    .line 24
    iget-object v1, v1, La2/b;->d:La2/c0;

    .line 25
    .line 26
    check-cast v1, La2/b0;

    .line 27
    .line 28
    iget v2, p2, La2/x;->r:F

    .line 29
    .line 30
    neg-float v2, v2

    .line 31
    iget p2, p2, La2/x;->s:F

    .line 32
    .line 33
    neg-float p2, p2

    .line 34
    iget v3, v0, Lo1/x;->a:F

    .line 35
    .line 36
    float-to-int v3, v3

    .line 37
    iget v0, v0, Lo1/x;->b:F

    .line 38
    .line 39
    float-to-int v0, v0

    .line 40
    new-instance v4, Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;

    .line 41
    .line 42
    new-instance v5, Lr1/u;

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    iget-object p1, p1, Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;->k:Lq1/f;

    .line 46
    .line 47
    invoke-direct {v5, p1, v6}, Lr1/u;-><init>(Lq1/f;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iput v2, v5, Lr1/q;->c:F

    .line 51
    .line 52
    iput p2, v5, Lr1/q;->d:F

    .line 53
    .line 54
    iput v3, v5, Lr1/q;->e:I

    .line 55
    .line 56
    iput v0, v5, Lr1/q;->f:I

    .line 57
    .line 58
    invoke-direct {v4, v5}, Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;-><init>(Lr1/u;)V

    .line 59
    .line 60
    .line 61
    iget-object p2, v4, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->c:La2/b;

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    invoke-virtual {v1, p2, v0}, La2/e0;->A(La2/r;Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lq1/f;->d()V

    .line 68
    .line 69
    .line 70
    iget-object p1, v4, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->e:La2/a;

    .line 71
    .line 72
    check-cast p1, La2/i;

    .line 73
    .line 74
    iget-object p1, p1, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/nomone/GeckoView/MyGeckoView;->getSession()Lorg/mozilla/geckoview/GeckoSession;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1
.end method
