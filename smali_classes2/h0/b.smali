.class public final synthetic Lh0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/b;
.implements Lp0/i;
.implements Lorg/mozilla/geckoview/GeckoResult$OnValueListener;
.implements Lo1/c;
.implements Lr1/w;
.implements Lq1/z;
.implements Lu1/y;
.implements Lf2/b;
.implements Ld3/w0;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lh0/b;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lh0/b;->g:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh0/b;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-static {v0, p1}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lh0/b;->f:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Lh0/b;->g:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto/16 :goto_7

    .line 12
    .line 13
    :pswitch_0
    check-cast v3, Lh0/f;

    .line 14
    .line 15
    check-cast p1, Lh0/d;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v0, p1, Lh0/d;->a:Ljava/net/URL;

    .line 21
    .line 22
    const-string v5, "CctTransportBackend"

    .line 23
    .line 24
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/i0;->Q(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    const/4 v7, 0x4

    .line 29
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_0

    .line 34
    .line 35
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v6, "Making request to: %s"

    .line 40
    .line 41
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v0, p1, Lh0/d;->a:Ljava/net/URL;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 51
    .line 52
    const/16 v6, 0x7530

    .line 53
    .line 54
    invoke-virtual {v0, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 55
    .line 56
    .line 57
    iget v6, v3, Lh0/f;->g:I

    .line 58
    .line 59
    invoke-virtual {v0, v6}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 66
    .line 67
    .line 68
    const-string v1, "POST"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v1, "3.1.8"

    .line 74
    .line 75
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v2, "datatransport/%s android/"

    .line 80
    .line 81
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const-string v2, "User-Agent"

    .line 86
    .line 87
    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v1, "Content-Encoding"

    .line 91
    .line 92
    const-string v2, "gzip"

    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v6, "application/json"

    .line 98
    .line 99
    const-string v8, "Content-Type"

    .line 100
    .line 101
    invoke-virtual {v0, v8, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v6, "Accept-Encoding"

    .line 105
    .line 106
    invoke-virtual {v0, v6, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v6, p1, Lh0/d;->c:Ljava/lang/String;

    .line 110
    .line 111
    if-eqz v6, :cond_1

    .line 112
    .line 113
    const-string v9, "X-Goog-Api-Key"

    .line 114
    .line 115
    invoke-virtual {v0, v9, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_1
    const-wide/16 v9, 0x0

    .line 119
    .line 120
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 121
    .line 122
    .line 123
    move-result-object v6
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lj1/b; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :try_start_1
    new-instance v11, Ljava/util/zip/GZIPOutputStream;

    .line 125
    .line 126
    invoke-direct {v11, v6}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 127
    .line 128
    .line 129
    :try_start_2
    iget-object v3, v3, Lh0/f;->a:Lh/a;

    .line 130
    .line 131
    iget-object p1, p1, Lh0/d;->b:Li0/p;

    .line 132
    .line 133
    new-instance v12, Ljava/io/BufferedWriter;

    .line 134
    .line 135
    new-instance v13, Ljava/io/OutputStreamWriter;

    .line 136
    .line 137
    invoke-direct {v13, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 138
    .line 139
    .line 140
    invoke-direct {v12, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, p1, v12}, Lh/a;->B(Li0/p;Ljava/io/BufferedWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 144
    .line 145
    .line 146
    :try_start_3
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 147
    .line 148
    .line 149
    if-eqz v6, :cond_2

    .line 150
    .line 151
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lj1/b; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 152
    .line 153
    .line 154
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/i0;->Q(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-eqz v6, :cond_3

    .line 171
    .line 172
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    const-string v6, "Status Code: %d"

    .line 177
    .line 178
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    :cond_3
    const-string v3, "Content-Type: %s"

    .line 182
    .line 183
    invoke-virtual {v0, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-static {v5, v3, v6}, Lcom/google/android/gms/internal/play_billing/i0;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    const-string v3, "Content-Encoding: %s"

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    invoke-static {v5, v3, v6}, Lcom/google/android/gms/internal/play_billing/i0;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    const/16 v3, 0x12e

    .line 200
    .line 201
    if-eq p1, v3, :cond_b

    .line 202
    .line 203
    const/16 v3, 0x12d

    .line 204
    .line 205
    if-eq p1, v3, :cond_b

    .line 206
    .line 207
    const/16 v3, 0x133

    .line 208
    .line 209
    if-ne p1, v3, :cond_4

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_4
    const/16 v3, 0xc8

    .line 213
    .line 214
    if-eq p1, v3, :cond_5

    .line 215
    .line 216
    new-instance v0, Lh0/e;

    .line 217
    .line 218
    invoke-direct {v0, p1, v4, v9, v10}, Lh0/e;-><init>(ILjava/net/URL;J)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_6

    .line 222
    .line 223
    :cond_5
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    :try_start_5
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_6

    .line 236
    .line 237
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 238
    .line 239
    invoke-direct {v0, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 240
    .line 241
    .line 242
    goto :goto_0

    .line 243
    :cond_6
    move-object v0, v3

    .line 244
    :goto_0
    :try_start_6
    new-instance v1, Ljava/io/BufferedReader;

    .line 245
    .line 246
    new-instance v2, Ljava/io/InputStreamReader;

    .line 247
    .line 248
    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 249
    .line 250
    .line 251
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 252
    .line 253
    .line 254
    invoke-static {v1}, Li0/n;->a(Ljava/io/BufferedReader;)Li0/n;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    iget-wide v1, v1, Li0/n;->a:J

    .line 259
    .line 260
    new-instance v5, Lh0/e;

    .line 261
    .line 262
    invoke-direct {v5, p1, v4, v1, v2}, Lh0/e;-><init>(ILjava/net/URL;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 263
    .line 264
    .line 265
    if-eqz v0, :cond_7

    .line 266
    .line 267
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 268
    .line 269
    .line 270
    :cond_7
    if-eqz v3, :cond_8

    .line 271
    .line 272
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 273
    .line 274
    .line 275
    :cond_8
    move-object v0, v5

    .line 276
    goto :goto_6

    .line 277
    :catchall_0
    move-exception p1

    .line 278
    if-eqz v0, :cond_9

    .line 279
    .line 280
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 281
    .line 282
    .line 283
    goto :goto_1

    .line 284
    :catchall_1
    move-exception v0

    .line 285
    :try_start_9
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 286
    .line 287
    .line 288
    :cond_9
    :goto_1
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 289
    :catchall_2
    move-exception p1

    .line 290
    if-eqz v3, :cond_a

    .line 291
    .line 292
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 293
    .line 294
    .line 295
    goto :goto_2

    .line 296
    :catchall_3
    move-exception v0

    .line 297
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 298
    .line 299
    .line 300
    :cond_a
    :goto_2
    throw p1

    .line 301
    :cond_b
    :goto_3
    const-string v1, "Location"

    .line 302
    .line 303
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    new-instance v1, Lh0/e;

    .line 308
    .line 309
    new-instance v2, Ljava/net/URL;

    .line 310
    .line 311
    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-direct {v1, p1, v2, v9, v10}, Lh0/e;-><init>(ILjava/net/URL;J)V

    .line 315
    .line 316
    .line 317
    move-object v0, v1

    .line 318
    goto :goto_6

    .line 319
    :catchall_4
    move-exception p1

    .line 320
    :try_start_b
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 321
    .line 322
    .line 323
    goto :goto_4

    .line 324
    :catchall_5
    move-exception v0

    .line 325
    :try_start_c
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 326
    .line 327
    .line 328
    :goto_4
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 329
    :catchall_6
    move-exception p1

    .line 330
    if-eqz v6, :cond_c

    .line 331
    .line 332
    :try_start_d
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 333
    .line 334
    .line 335
    goto :goto_5

    .line 336
    :catchall_7
    move-exception v0

    .line 337
    :try_start_e
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 338
    .line 339
    .line 340
    :cond_c
    :goto_5
    throw p1
    :try_end_e
    .catch Ljava/net/ConnectException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_1
    .catch Lj1/b; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    .line 341
    :catch_0
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/i0;->Q(Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    new-instance v0, Lh0/e;

    .line 345
    .line 346
    const/16 p1, 0x190

    .line 347
    .line 348
    invoke-direct {v0, p1, v4, v9, v10}, Lh0/e;-><init>(ILjava/net/URL;J)V

    .line 349
    .line 350
    .line 351
    goto :goto_6

    .line 352
    :catch_1
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/i0;->Q(Ljava/lang/String;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    new-instance v0, Lh0/e;

    .line 356
    .line 357
    const/16 p1, 0x1f4

    .line 358
    .line 359
    invoke-direct {v0, p1, v4, v9, v10}, Lh0/e;-><init>(ILjava/net/URL;J)V

    .line 360
    .line 361
    .line 362
    :goto_6
    return-object v0

    .line 363
    :goto_7
    check-cast v3, Ljava/util/Map;

    .line 364
    .line 365
    check-cast p1, Landroid/database/Cursor;

    .line 366
    .line 367
    sget-object v0, Lp0/k;->f:Lg0/b;

    .line 368
    .line 369
    :goto_8
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    if-eqz v0, :cond_e

    .line 374
    .line 375
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 376
    .line 377
    .line 378
    move-result-wide v5

    .line 379
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    check-cast v0, Ljava/util/Set;

    .line 388
    .line 389
    if-nez v0, :cond_d

    .line 390
    .line 391
    new-instance v0, Ljava/util/HashSet;

    .line 392
    .line 393
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 394
    .line 395
    .line 396
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 397
    .line 398
    .line 399
    move-result-object v5

    .line 400
    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    :cond_d
    new-instance v5, Lp0/j;

    .line 404
    .line 405
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v6

    .line 409
    const/4 v7, 0x2

    .line 410
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v7

    .line 414
    invoke-direct {v5, v6, v7}, Lp0/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    goto :goto_8

    .line 421
    :cond_e
    return-object v4

    .line 422
    nop

    .line 423
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lf2/c0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh0/b;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf2/b0;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Lf2/c0;->onPlaybackParametersChanged(Lf2/b0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh0/b;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/fragment/app/h;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "DON\'T REMIND ME"

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string p1, "Should show connect input device dialog"

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {p1, v1}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p1, v0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Lq1/x;

    .line 25
    .line 26
    iget-object p1, p1, Lq1/x;->d:Lq1/f;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {p1, v1}, Lq1/f;->h(Z)V

    .line 30
    .line 31
    .line 32
    iget-object p1, v0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Lq1/x;

    .line 35
    .line 36
    invoke-virtual {p1}, Lq1/x;->p()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final d()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lh0/b;->f:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object v4, p0, Lh0/b;->g:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_0
    check-cast v4, Lp0/c;

    .line 13
    .line 14
    check-cast v4, Lp0/k;

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget v0, Lm0/a;->e:I

    .line 20
    .line 21
    new-instance v0, Lh/g;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lh/g;-><init>(I)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "SELECT log_source, reason, events_dropped_count FROM log_event_dropped"

    .line 32
    .line 33
    invoke-virtual {v4}, Lp0/k;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 38
    .line 39
    .line 40
    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v5, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    new-instance v3, Ln0/b;

    .line 47
    .line 48
    const/4 v6, 0x4

    .line 49
    invoke-direct {v3, v4, v1, v0, v6}, Ln0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 50
    .line 51
    .line 52
    invoke-static {v2, v3}, Lp0/k;->g(Landroid/database/Cursor;Lp0/i;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lm0/a;

    .line 57
    .line 58
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :pswitch_1
    check-cast v4, Lo0/l;

    .line 71
    .line 72
    iget-object v0, v4, Lo0/l;->i:Lp0/c;

    .line 73
    .line 74
    check-cast v0, Lp0/k;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    new-instance v1, Lp0/g;

    .line 80
    .line 81
    invoke-direct {v1, v0, v3}, Lp0/g;-><init>(Lp0/k;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lp0/k;->c(Lp0/i;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    return-object v2

    .line 88
    :pswitch_2
    check-cast v4, Lp0/d;

    .line 89
    .line 90
    check-cast v4, Lp0/k;

    .line 91
    .line 92
    iget-object v0, v4, Lp0/k;->b:Lr0/a;

    .line 93
    .line 94
    check-cast v0, Lr0/b;

    .line 95
    .line 96
    invoke-virtual {v0}, Lr0/b;->a()J

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    iget-object v2, v4, Lp0/k;->d:Lp0/a;

    .line 101
    .line 102
    iget-wide v2, v2, Lp0/a;->d:J

    .line 103
    .line 104
    sub-long/2addr v0, v2

    .line 105
    new-instance v2, Lp0/e;

    .line 106
    .line 107
    invoke-direct {v2, v4, v0, v1}, Lp0/e;-><init>(Lp0/k;J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v2}, Lp0/k;->c(Lp0/i;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Ljava/lang/Integer;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    return-object v0

    .line 125
    :goto_0
    check-cast v4, Lo0/o;

    .line 126
    .line 127
    iget-object v0, v4, Lo0/o;->b:Lp0/d;

    .line 128
    .line 129
    check-cast v0, Lp0/k;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    new-instance v5, Lh0/c;

    .line 135
    .line 136
    const/4 v6, 0x2

    .line 137
    invoke-direct {v5, v6}, Lh0/c;-><init>(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v5}, Lp0/k;->c(Lp0/i;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Ljava/lang/Iterable;

    .line 145
    .line 146
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-eqz v5, :cond_0

    .line 155
    .line 156
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    check-cast v5, Lj0/k;

    .line 161
    .line 162
    iget-object v6, v4, Lo0/o;->c:Lo0/p;

    .line 163
    .line 164
    check-cast v6, Lo0/d;

    .line 165
    .line 166
    invoke-virtual {v6, v5, v1, v3}, Lo0/d;->a(Lj0/k;IZ)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_0
    return-object v2

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lu1/w;)Z
    .locals 10

    .line 1
    iget v0, p0, Lh0/b;->f:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lh0/b;->g:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    invoke-static {v2}, La1/b;->j(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    throw v1

    .line 14
    :pswitch_1
    invoke-static {v2}, La1/b;->j(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    throw v1

    .line 18
    :goto_0
    move-object v0, v2

    .line 19
    check-cast v0, Lc2/e;

    .line 20
    .line 21
    sget-boolean v1, Lc2/e;->S:Z

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget v1, p1, Lu1/w;->a:I

    .line 27
    .line 28
    invoke-static {v1}, Lk0/c;->b(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v2, 0x1

    .line 34
    const/4 v9, 0x1

    .line 35
    iget-object v3, v0, Lc2/e;->N:Lq1/s;

    .line 36
    .line 37
    packed-switch v1, :pswitch_data_1

    .line 38
    .line 39
    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    :pswitch_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    sget-object p1, Lq1/f;->L:Lo1/j0;

    .line 46
    .line 47
    iget-object v0, v3, Lq1/s;->d:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Ljava/lang/Runnable;

    .line 50
    .line 51
    const-string v1, "removeToggleFullScreenTask"

    .line 52
    .line 53
    const-wide/16 v2, 0x1f4

    .line 54
    .line 55
    invoke-virtual {p1, v0, v1, v2, v3}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :pswitch_3
    invoke-virtual {v3}, Lq1/s;->b()V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_4

    .line 64
    .line 65
    :pswitch_4
    const/4 v4, 0x7

    .line 66
    const/4 v5, 0x0

    .line 67
    goto :goto_1

    .line 68
    :pswitch_5
    const/4 v5, 0x3

    .line 69
    :goto_1
    const/4 v6, 0x0

    .line 70
    const/4 v7, 0x0

    .line 71
    const/4 v8, 0x0

    .line 72
    goto :goto_2

    .line 73
    :pswitch_6
    const/4 v5, 0x3

    .line 74
    const/4 v6, 0x0

    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v8, 0x0

    .line 77
    move-object v3, v0

    .line 78
    move v4, v2

    .line 79
    goto :goto_3

    .line 80
    :pswitch_7
    const/4 v5, 0x1

    .line 81
    const/4 v6, 0x0

    .line 82
    const/4 v7, 0x0

    .line 83
    const/4 v8, 0x0

    .line 84
    const/4 v4, 0x2

    .line 85
    goto :goto_2

    .line 86
    :pswitch_8
    const/4 v5, 0x1

    .line 87
    const/4 v6, 0x0

    .line 88
    const/4 v7, 0x0

    .line 89
    const/4 v8, 0x0

    .line 90
    const/4 v4, 0x1

    .line 91
    :goto_2
    move-object v3, v0

    .line 92
    :goto_3
    invoke-virtual/range {v3 .. v8}, Lc2/e;->C(IIIII)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_4

    .line 96
    .line 97
    :pswitch_9
    iget-object v1, v0, Lc2/e;->t:Lc2/c;

    .line 98
    .line 99
    invoke-interface {v1}, Lc2/c;->c()F

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    iget-object v2, v0, Lc2/e;->t:Lc2/c;

    .line 104
    .line 105
    invoke-interface {v2}, Lc2/c;->e()F

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    iget v3, v0, Lc2/e;->D:F

    .line 110
    .line 111
    iget v4, p1, Lu1/w;->c:F

    .line 112
    .line 113
    mul-float/2addr v4, v1

    .line 114
    add-float/2addr v4, v3

    .line 115
    iget v3, v0, Lc2/e;->E:F

    .line 116
    .line 117
    iget v5, p1, Lu1/w;->d:F

    .line 118
    .line 119
    mul-float/2addr v5, v2

    .line 120
    add-float/2addr v5, v3

    .line 121
    float-to-int v7, v4

    .line 122
    float-to-int v8, v5

    .line 123
    int-to-float v3, v7

    .line 124
    sub-float/2addr v4, v3

    .line 125
    iput v4, v0, Lc2/e;->D:F

    .line 126
    .line 127
    int-to-float v3, v8

    .line 128
    sub-float/2addr v5, v3

    .line 129
    iput v5, v0, Lc2/e;->E:F

    .line 130
    .line 131
    iget-object v3, v0, Lc2/e;->s:Lq1/f;

    .line 132
    .line 133
    iget-object v3, v3, Lq1/f;->F:Lu1/i;

    .line 134
    .line 135
    iget-object v3, v3, Lu1/i;->m:Lo1/v0;

    .line 136
    .line 137
    iget-boolean v3, v3, Lo1/v0;->k:Z

    .line 138
    .line 139
    if-nez v3, :cond_0

    .line 140
    .line 141
    iget-boolean v3, v0, Lc2/e;->B:Z

    .line 142
    .line 143
    if-eqz v3, :cond_0

    .line 144
    .line 145
    if-nez v7, :cond_0

    .line 146
    .line 147
    if-eqz v8, :cond_6

    .line 148
    .line 149
    :cond_0
    iget-object p1, p1, Lu1/w;->b:Lz1/b;

    .line 150
    .line 151
    check-cast p1, Lz1/a;

    .line 152
    .line 153
    const/4 v4, 0x3

    .line 154
    iget v3, p1, Lz1/a;->a:F

    .line 155
    .line 156
    mul-float/2addr v3, v1

    .line 157
    float-to-int v5, v3

    .line 158
    iget p1, p1, Lz1/a;->b:F

    .line 159
    .line 160
    mul-float/2addr p1, v2

    .line 161
    float-to-int v6, p1

    .line 162
    goto :goto_2

    .line 163
    :pswitch_a
    iget p1, p1, Lu1/w;->i:F

    .line 164
    .line 165
    iget v1, v0, Lc2/e;->H:F

    .line 166
    .line 167
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    add-float/2addr v2, v1

    .line 172
    iput v2, v0, Lc2/e;->H:F

    .line 173
    .line 174
    iget-object v1, v0, Lc2/e;->K:Lc2/a;

    .line 175
    .line 176
    if-nez v1, :cond_1

    .line 177
    .line 178
    new-instance v1, Lc2/a;

    .line 179
    .line 180
    invoke-direct {v1, v0, v9}, Lc2/a;-><init>(Lc2/e;I)V

    .line 181
    .line 182
    .line 183
    iput-object v1, v0, Lc2/e;->K:Lc2/a;

    .line 184
    .line 185
    :cond_1
    sget-object v1, Lq1/f;->L:Lo1/j0;

    .line 186
    .line 187
    iget-object v2, v0, Lc2/e;->K:Lc2/a;

    .line 188
    .line 189
    invoke-virtual {v1, v2}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    .line 190
    .line 191
    .line 192
    sget-object v1, Lq1/f;->L:Lo1/j0;

    .line 193
    .line 194
    iget-object v2, v0, Lc2/e;->K:Lc2/a;

    .line 195
    .line 196
    const-string v3, "calculateMouseVerticalScrollFactor"

    .line 197
    .line 198
    const-wide/16 v4, 0xfa

    .line 199
    .line 200
    invoke-virtual {v1, v2, v3, v4, v5}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 201
    .line 202
    .line 203
    iget v1, v0, Lc2/e;->F:F

    .line 204
    .line 205
    const/high16 v2, 0x41200000    # 10.0f

    .line 206
    .line 207
    cmpl-float v1, v1, v2

    .line 208
    .line 209
    if-lez v1, :cond_2

    .line 210
    .line 211
    const/high16 v1, 0x3f800000    # 1.0f

    .line 212
    .line 213
    iput v1, v0, Lc2/e;->F:F

    .line 214
    .line 215
    const-string v2, "LinuxApplicationWindow verticalScrollFactor"

    .line 216
    .line 217
    invoke-static {v2, v1}, Lo1/y;->f(Ljava/lang/String;F)V

    .line 218
    .line 219
    .line 220
    :cond_2
    iget v1, v0, Lc2/e;->G:F

    .line 221
    .line 222
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    cmpl-float v1, v1, v2

    .line 231
    .line 232
    if-eqz v1, :cond_3

    .line 233
    .line 234
    const/4 v1, 0x0

    .line 235
    iput v1, v0, Lc2/e;->G:F

    .line 236
    .line 237
    :cond_3
    iget-boolean v1, v0, Lc2/e;->I:Z

    .line 238
    .line 239
    xor-int/2addr v1, v9

    .line 240
    iget-boolean v2, v0, Lc2/e;->J:Z

    .line 241
    .line 242
    and-int/2addr v1, v2

    .line 243
    if-eqz v1, :cond_4

    .line 244
    .line 245
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    iput v1, v0, Lc2/e;->G:F

    .line 250
    .line 251
    iput-boolean v9, v0, Lc2/e;->I:Z

    .line 252
    .line 253
    const/4 v1, 0x0

    .line 254
    iput-boolean v1, v0, Lc2/e;->J:Z

    .line 255
    .line 256
    :cond_4
    iget v1, v0, Lc2/e;->G:F

    .line 257
    .line 258
    iget v2, v0, Lc2/e;->F:F

    .line 259
    .line 260
    mul-float/2addr p1, v2

    .line 261
    add-float/2addr p1, v1

    .line 262
    iput p1, v0, Lc2/e;->G:F

    .line 263
    .line 264
    float-to-int p1, p1

    .line 265
    if-eqz p1, :cond_6

    .line 266
    .line 267
    const/4 v4, 0x4

    .line 268
    const/4 v6, 0x0

    .line 269
    const/4 v7, 0x0

    .line 270
    const/4 v8, 0x0

    .line 271
    move-object v3, v0

    .line 272
    move v5, p1

    .line 273
    invoke-virtual/range {v3 .. v8}, Lc2/e;->C(IIIII)V

    .line 274
    .line 275
    .line 276
    iget v1, v0, Lc2/e;->G:F

    .line 277
    .line 278
    int-to-float p1, p1

    .line 279
    sub-float/2addr v1, p1

    .line 280
    iput v1, v0, Lc2/e;->G:F

    .line 281
    .line 282
    iget-object p1, v0, Lc2/e;->L:Lc2/a;

    .line 283
    .line 284
    if-nez p1, :cond_5

    .line 285
    .line 286
    new-instance p1, Lc2/a;

    .line 287
    .line 288
    const/4 v1, 0x2

    .line 289
    invoke-direct {p1, v0, v1}, Lc2/a;-><init>(Lc2/e;I)V

    .line 290
    .line 291
    .line 292
    iput-object p1, v0, Lc2/e;->L:Lc2/a;

    .line 293
    .line 294
    :cond_5
    sget-object p1, Lq1/f;->L:Lo1/j0;

    .line 295
    .line 296
    iget-object v1, v0, Lc2/e;->L:Lc2/a;

    .line 297
    .line 298
    invoke-virtual {p1, v1}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    .line 299
    .line 300
    .line 301
    sget-object p1, Lq1/f;->L:Lo1/j0;

    .line 302
    .line 303
    iget-object v0, v0, Lc2/e;->L:Lc2/a;

    .line 304
    .line 305
    const-string v1, "scrollingBrakes"

    .line 306
    .line 307
    const-wide/16 v2, 0x96

    .line 308
    .line 309
    invoke-virtual {p1, v0, v1, v2, v3}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 310
    .line 311
    .line 312
    :cond_6
    :goto_4
    return v9

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final f(Lf0/g;Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh0/b;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/nomone/giap/GIAP;

    .line 4
    .line 5
    sget-object v1, Lcom/nomone/giap/GIAP;->h:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget v1, p1, Lf0/g;->b:I

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v0, "Problem getting purchases: "

    .line 17
    .line 18
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p1, Lf0/g;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "IAP"

    .line 31
    .line 32
    invoke-static {p2, p1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, v0, Lcom/nomone/giap/GIAP;->b:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v0, p2, p1}, Lcom/nomone/giap/GIAP;->e(Ljava/util/List;Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public final l()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lh0/b;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/fragment/app/h;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Lq1/g;

    .line 9
    .line 10
    invoke-direct {v0}, Lq1/g;-><init>()V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final onValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 4

    .line 1
    iget-object v0, p0, Lh0/b;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntime;

    .line 4
    .line 5
    check-cast p1, Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lorg/mozilla/geckoview/WebExtension;

    .line 22
    .line 23
    iget-object v2, v1, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    .line 24
    .line 25
    const-string v3, "messaging@example.com"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    iget-object v2, v1, Lorg/mozilla/geckoview/WebExtension;->metaData:Lorg/mozilla/geckoview/WebExtension$MetaData;

    .line 34
    .line 35
    iget-object v2, v2, Lorg/mozilla/geckoview/WebExtension$MetaData;->version:Ljava/lang/String;

    .line 36
    .line 37
    const-string v3, "1.0"

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    const-string p1, "sdf"

    .line 46
    .line 47
    const-string v0, "Extension FOUND!!!!!!!!!!!"

    .line 48
    .line 49
    invoke-static {p1, v0}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoRuntime;->getWebExtensionController()Lorg/mozilla/geckoview/WebExtensionController;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v0, "resource://android/assets/messaging/"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/WebExtensionController;->installBuiltIn(Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :goto_0
    return-object p1
.end method
