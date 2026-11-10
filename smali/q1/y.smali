.class public final synthetic Lq1/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Z

.field public final synthetic i:Lq1/z;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLq1/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq1/y;->f:Ljava/lang/String;

    iput-object p2, p0, Lq1/y;->g:Ljava/lang/String;

    iput-boolean p3, p0, Lq1/y;->h:Z

    iput-object p4, p0, Lq1/y;->i:Lq1/z;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    return-void

    .line 1
    .line 2
    iget-object v0, p0, Lq1/y;->f:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string v2, "aHR0cHM6Ly8"

    .line 14
    .line 15
    .line 16
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i0;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "bm9tb25lLmNvbS9WUkRlc2t0b3Avdg"

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i0;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const/4 v2, 0x2

    .line 31
    .line 32
    const-string v3, "1.9.3-GooglePlay"

    .line 33
    .line 34
    const-string v4, "-"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x0

    .line 40
    .line 41
    aget-object v2, v2, v3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "/"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    iget-object v2, p0, Lq1/y;->g:Ljava/lang/String;

    .line 59
    .line 60
    if-nez v2, :cond_0

    .line 61
    .line 62
    const-string v4, ""

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v5, "data="

    .line 68
    .line 69
    .line 70
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i0;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v5

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v4

    .line 82
    .line 83
    :goto_0
    iget-boolean v5, p0, Lq1/y;->h:Z

    .line 84
    const/4 v6, 0x1

    .line 85
    .line 86
    if-eqz v5, :cond_2

    .line 87
    .line 88
    if-eqz v2, :cond_1

    .line 89
    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v1, "?"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    .line 111
    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->X(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 113
    .line 114
    goto/16 :goto_5

    .line 115
    .line 116
    :cond_2
    const-string v2, "/index.php"

    .line 117
    .line 118
    .line 119
    invoke-static {v1, v2}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 121
    const/4 v2, 0x0

    .line 122
    .line 123
    :try_start_0
    new-instance v5, Ljava/net/URL;

    .line 124
    .line 125
    .line 126
    invoke-direct {v5, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 130
    move-result-object v1

    .line 131
    .line 132
    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 133
    .line 134
    :try_start_1
    const-string v5, "POST"

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 138
    .line 139
    const-string v5, "Content-Type"

    .line 140
    .line 141
    const-string v7, "application/x-www-form-urlencoded"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v5, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v6}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 151
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 152
    .line 153
    :try_start_2
    const-string v7, "UTF-8"

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 157
    move-result-object v4

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    .line 165
    .line 166
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 167
    .line 168
    new-instance v4, Ljava/io/BufferedReader;

    .line 169
    .line 170
    new-instance v5, Ljava/io/InputStreamReader;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 174
    move-result-object v7

    .line 175
    .line 176
    .line 177
    invoke-direct {v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 178
    .line 179
    .line 180
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 181
    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 189
    move-result-object v7

    .line 190
    .line 191
    if-eqz v7, :cond_3

    .line 192
    .line 193
    .line 194
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    goto :goto_1

    .line 196
    .line 197
    .line 198
    :cond_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 203
    goto :goto_4

    .line 204
    :catchall_0
    move-exception v4

    .line 205
    .line 206
    if-eqz v5, :cond_4

    .line 207
    .line 208
    .line 209
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 210
    goto :goto_2

    .line 211
    :catchall_1
    move-exception v5

    .line 212
    .line 213
    .line 214
    :try_start_5
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 215
    :cond_4
    :goto_2
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 216
    :catch_0
    move-exception v4

    .line 217
    goto :goto_3

    .line 218
    :catchall_2
    move-exception v0

    .line 219
    goto :goto_6

    .line 220
    :catch_1
    move-exception v1

    .line 221
    move-object v4, v1

    .line 222
    move-object v1, v2

    .line 223
    .line 224
    .line 225
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 226
    .line 227
    if-eqz v1, :cond_5

    .line 228
    .line 229
    .line 230
    :goto_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 231
    :cond_5
    move-object v1, v2

    .line 232
    .line 233
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v0, ": "

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    move-result-object v0

    .line 252
    .line 253
    const-string v2, "sdf"

    .line 254
    .line 255
    .line 256
    invoke-static {v2, v0}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    iget-object v0, p0, Lq1/y;->i:Lq1/z;

    .line 259
    .line 260
    if-eqz v0, :cond_7

    .line 261
    .line 262
    if-eqz v1, :cond_6

    .line 263
    .line 264
    const-string v2, "NOMone"

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 268
    move-result v1

    .line 269
    .line 270
    if-eqz v1, :cond_6

    .line 271
    move v3, v6

    .line 272
    .line 273
    .line 274
    :cond_6
    invoke-interface {v0, v3}, Lq1/z;->a(Z)V

    .line 275
    :cond_7
    return-void

    .line 276
    :catchall_3
    move-exception v0

    .line 277
    move-object v2, v1

    .line 278
    .line 279
    :goto_6
    if-eqz v2, :cond_8

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 283
    :cond_8
    throw v0
.end method
