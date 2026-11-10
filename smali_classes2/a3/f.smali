.class public final La3/f;
.super La3/e;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public e:Landroid/net/Uri;

.field public f:Landroid/content/res/AssetFileDescriptor;

.field public g:J

.field public h:Z

.field public final i:Ljava/lang/Object;

.field public j:Ljava/io/FileInputStream;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 1
    iput p2, p0, La3/f;->d:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eq p2, v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, v1}, La3/e;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, La3/f;->i:Ljava/lang/Object;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-direct {p0, v1}, La3/e;-><init>(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, La3/f;->i:Ljava/lang/Object;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final b(La3/l;)J
    .locals 12

    .line 1
    iget v0, p0, La3/f;->d:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-wide/16 v2, -0x1

    .line 5
    .line 6
    iget-object v4, p0, La3/f;->i:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :pswitch_0
    const-string v0, "Could not open file descriptor for: "

    .line 14
    .line 15
    :try_start_0
    iget-object v5, p1, La3/l;->a:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    iget-wide v6, p1, La3/l;->f:J

    .line 18
    .line 19
    :try_start_1
    iput-object v5, p0, La3/f;->e:Landroid/net/Uri;

    .line 20
    .line 21
    invoke-virtual {p0}, La3/e;->g()V

    .line 22
    .line 23
    .line 24
    check-cast v4, Landroid/content/ContentResolver;

    .line 25
    .line 26
    const-string v8, "r"

    .line 27
    .line 28
    invoke-virtual {v4, v5, v8}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iput-object v4, p0, La3/f;->f:Landroid/content/res/AssetFileDescriptor;

    .line 33
    .line 34
    if-eqz v4, :cond_4

    .line 35
    .line 36
    new-instance v0, Ljava/io/FileInputStream;

    .line 37
    .line 38
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, La3/f;->j:Ljava/io/FileInputStream;

    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 48
    .line 49
    .line 50
    move-result-wide v8

    .line 51
    add-long v10, v8, v6

    .line 52
    .line 53
    invoke-virtual {v0, v10, v11}, Ljava/io/FileInputStream;->skip(J)J

    .line 54
    .line 55
    .line 56
    move-result-wide v10

    .line 57
    sub-long/2addr v10, v8

    .line 58
    cmp-long v5, v10, v6

    .line 59
    .line 60
    if-nez v5, :cond_3

    .line 61
    .line 62
    iget-wide v5, p1, La3/l;->g:J

    .line 63
    .line 64
    cmp-long v7, v5, v2

    .line 65
    .line 66
    if-eqz v7, :cond_0

    .line 67
    .line 68
    iput-wide v5, p0, La3/f;->g:J

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 72
    .line 73
    .line 74
    move-result-wide v4

    .line 75
    cmp-long v6, v4, v2

    .line 76
    .line 77
    if-nez v6, :cond_2

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    .line 84
    .line 85
    .line 86
    move-result-wide v4

    .line 87
    const-wide/16 v6, 0x0

    .line 88
    .line 89
    cmp-long v6, v4, v6

    .line 90
    .line 91
    if-nez v6, :cond_1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    .line 95
    .line 96
    .line 97
    move-result-wide v2

    .line 98
    sub-long v2, v4, v2

    .line 99
    .line 100
    :goto_0
    iput-wide v2, p0, La3/f;->g:J

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    sub-long/2addr v4, v10

    .line 104
    iput-wide v4, p0, La3/f;->g:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    .line 106
    :goto_1
    iput-boolean v1, p0, La3/f;->h:Z

    .line 107
    .line 108
    invoke-virtual {p0, p1}, La3/e;->h(La3/l;)V

    .line 109
    .line 110
    .line 111
    iget-wide v0, p0, La3/f;->g:J

    .line 112
    .line 113
    return-wide v0

    .line 114
    :cond_3
    :try_start_2
    new-instance p1, Ljava/io/EOFException;

    .line 115
    .line 116
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 117
    .line 118
    .line 119
    throw p1

    .line 120
    :cond_4
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 121
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 138
    :catch_0
    move-exception p1

    .line 139
    new-instance v0, Lcom/google/android/gms/internal/play_billing/c0;

    .line 140
    .line 141
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/io/IOException;)V

    .line 142
    .line 143
    .line 144
    throw v0

    .line 145
    :goto_2
    const-string v0, "Resource is compressed: "

    .line 146
    .line 147
    :try_start_3
    iget-object v5, p1, La3/l;->a:Landroid/net/Uri;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 148
    .line 149
    iget-wide v6, p1, La3/l;->f:J

    .line 150
    .line 151
    :try_start_4
    iput-object v5, p0, La3/f;->e:Landroid/net/Uri;

    .line 152
    .line 153
    const-string v8, "rawresource"

    .line 154
    .line 155
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v9

    .line 159
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 160
    .line 161
    .line 162
    move-result v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 163
    const/4 v9, 0x6

    .line 164
    if-eqz v8, :cond_9

    .line 165
    .line 166
    :try_start_5
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    move-result v8
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 177
    :try_start_6
    invoke-virtual {p0}, La3/e;->g()V

    .line 178
    .line 179
    .line 180
    check-cast v4, Landroid/content/res/Resources;

    .line 181
    .line 182
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    iput-object v4, p0, La3/f;->f:Landroid/content/res/AssetFileDescriptor;

    .line 187
    .line 188
    if-eqz v4, :cond_8

    .line 189
    .line 190
    new-instance v0, Ljava/io/FileInputStream;

    .line 191
    .line 192
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 197
    .line 198
    .line 199
    iput-object v0, p0, La3/f;->j:Ljava/io/FileInputStream;

    .line 200
    .line 201
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 202
    .line 203
    .line 204
    move-result-wide v8

    .line 205
    invoke-virtual {v0, v8, v9}, Ljava/io/FileInputStream;->skip(J)J

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v6, v7}, Ljava/io/FileInputStream;->skip(J)J

    .line 209
    .line 210
    .line 211
    move-result-wide v8

    .line 212
    cmp-long v0, v8, v6

    .line 213
    .line 214
    if-ltz v0, :cond_7

    .line 215
    .line 216
    iget-wide v8, p1, La3/l;->g:J

    .line 217
    .line 218
    cmp-long v0, v8, v2

    .line 219
    .line 220
    if-eqz v0, :cond_5

    .line 221
    .line 222
    iput-wide v8, p0, La3/f;->g:J

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_5
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 226
    .line 227
    .line 228
    move-result-wide v4

    .line 229
    cmp-long v0, v4, v2

    .line 230
    .line 231
    if-nez v0, :cond_6

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_6
    sub-long v2, v4, v6

    .line 235
    .line 236
    :goto_3
    iput-wide v2, p0, La3/f;->g:J
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 237
    .line 238
    :goto_4
    iput-boolean v1, p0, La3/f;->h:Z

    .line 239
    .line 240
    invoke-virtual {p0, p1}, La3/e;->h(La3/l;)V

    .line 241
    .line 242
    .line 243
    iget-wide v0, p0, La3/f;->g:J

    .line 244
    .line 245
    return-wide v0

    .line 246
    :cond_7
    :try_start_7
    new-instance p1, Ljava/io/EOFException;

    .line 247
    .line 248
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 249
    .line 250
    .line 251
    throw p1

    .line 252
    :cond_8
    new-instance p1, Lcom/google/android/gms/internal/play_billing/c0;

    .line 253
    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-direct {p1, v0, v9}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/lang/String;I)V

    .line 267
    .line 268
    .line 269
    throw p1

    .line 270
    :catch_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/c0;

    .line 271
    .line 272
    const-string v0, "Resource identifier must be an integer."

    .line 273
    .line 274
    invoke-direct {p1, v0, v9}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/lang/String;I)V

    .line 275
    .line 276
    .line 277
    throw p1

    .line 278
    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/play_billing/c0;

    .line 279
    .line 280
    const-string v0, "URI must use scheme rawresource"

    .line 281
    .line 282
    invoke-direct {p1, v0, v9}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/lang/String;I)V

    .line 283
    .line 284
    .line 285
    throw p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 286
    :catch_2
    move-exception p1

    .line 287
    new-instance v0, Lcom/google/android/gms/internal/play_billing/c0;

    .line 288
    .line 289
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/io/IOException;)V

    .line 290
    .line 291
    .line 292
    throw v0

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 4

    .line 1
    iget v0, p0, La3/f;->d:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_3

    .line 9
    :pswitch_0
    iput-object v2, p0, La3/f;->e:Landroid/net/Uri;

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, La3/f;->j:Ljava/io/FileInputStream;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    .line 17
    .line 18
    :cond_0
    iput-object v2, p0, La3/f;->j:Ljava/io/FileInputStream;

    .line 19
    .line 20
    :try_start_1
    iget-object v0, p0, La3/f;->f:Landroid/content/res/AssetFileDescriptor;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    :cond_1
    iput-object v2, p0, La3/f;->f:Landroid/content/res/AssetFileDescriptor;

    .line 28
    .line 29
    iget-boolean v0, p0, La3/f;->h:Z

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iput-boolean v1, p0, La3/f;->h:Z

    .line 34
    .line 35
    invoke-virtual {p0}, La3/e;->f()V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    :try_start_2
    new-instance v3, Lcom/google/android/gms/internal/play_billing/c0;

    .line 43
    .line 44
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/io/IOException;)V

    .line 45
    .line 46
    .line 47
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    :goto_0
    iput-object v2, p0, La3/f;->f:Landroid/content/res/AssetFileDescriptor;

    .line 49
    .line 50
    iget-boolean v2, p0, La3/f;->h:Z

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    iput-boolean v1, p0, La3/f;->h:Z

    .line 55
    .line 56
    invoke-virtual {p0}, La3/e;->f()V

    .line 57
    .line 58
    .line 59
    :cond_3
    throw v0

    .line 60
    :catchall_1
    move-exception v0

    .line 61
    goto :goto_1

    .line 62
    :catch_1
    move-exception v0

    .line 63
    :try_start_3
    new-instance v3, Lcom/google/android/gms/internal/play_billing/c0;

    .line 64
    .line 65
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/io/IOException;)V

    .line 66
    .line 67
    .line 68
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    :goto_1
    iput-object v2, p0, La3/f;->j:Ljava/io/FileInputStream;

    .line 70
    .line 71
    :try_start_4
    iget-object v3, p0, La3/f;->f:Landroid/content/res/AssetFileDescriptor;

    .line 72
    .line 73
    if-eqz v3, :cond_4

    .line 74
    .line 75
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 76
    .line 77
    .line 78
    :cond_4
    iput-object v2, p0, La3/f;->f:Landroid/content/res/AssetFileDescriptor;

    .line 79
    .line 80
    iget-boolean v2, p0, La3/f;->h:Z

    .line 81
    .line 82
    if-eqz v2, :cond_5

    .line 83
    .line 84
    iput-boolean v1, p0, La3/f;->h:Z

    .line 85
    .line 86
    invoke-virtual {p0}, La3/e;->f()V

    .line 87
    .line 88
    .line 89
    :cond_5
    throw v0

    .line 90
    :catchall_2
    move-exception v0

    .line 91
    goto :goto_2

    .line 92
    :catch_2
    move-exception v0

    .line 93
    :try_start_5
    new-instance v3, Lcom/google/android/gms/internal/play_billing/c0;

    .line 94
    .line 95
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/io/IOException;)V

    .line 96
    .line 97
    .line 98
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 99
    :goto_2
    iput-object v2, p0, La3/f;->f:Landroid/content/res/AssetFileDescriptor;

    .line 100
    .line 101
    iget-boolean v2, p0, La3/f;->h:Z

    .line 102
    .line 103
    if-eqz v2, :cond_6

    .line 104
    .line 105
    iput-boolean v1, p0, La3/f;->h:Z

    .line 106
    .line 107
    invoke-virtual {p0}, La3/e;->f()V

    .line 108
    .line 109
    .line 110
    :cond_6
    throw v0

    .line 111
    :goto_3
    iput-object v2, p0, La3/f;->e:Landroid/net/Uri;

    .line 112
    .line 113
    :try_start_6
    iget-object v0, p0, La3/f;->j:Ljava/io/FileInputStream;

    .line 114
    .line 115
    if-eqz v0, :cond_7

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 118
    .line 119
    .line 120
    :cond_7
    iput-object v2, p0, La3/f;->j:Ljava/io/FileInputStream;

    .line 121
    .line 122
    :try_start_7
    iget-object v0, p0, La3/f;->f:Landroid/content/res/AssetFileDescriptor;

    .line 123
    .line 124
    if-eqz v0, :cond_8

    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 127
    .line 128
    .line 129
    :cond_8
    iput-object v2, p0, La3/f;->f:Landroid/content/res/AssetFileDescriptor;

    .line 130
    .line 131
    iget-boolean v0, p0, La3/f;->h:Z

    .line 132
    .line 133
    if-eqz v0, :cond_9

    .line 134
    .line 135
    iput-boolean v1, p0, La3/f;->h:Z

    .line 136
    .line 137
    invoke-virtual {p0}, La3/e;->f()V

    .line 138
    .line 139
    .line 140
    :cond_9
    return-void

    .line 141
    :catchall_3
    move-exception v0

    .line 142
    goto :goto_4

    .line 143
    :catch_3
    move-exception v0

    .line 144
    :try_start_8
    new-instance v3, Lcom/google/android/gms/internal/play_billing/c0;

    .line 145
    .line 146
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/io/IOException;)V

    .line 147
    .line 148
    .line 149
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 150
    :goto_4
    iput-object v2, p0, La3/f;->f:Landroid/content/res/AssetFileDescriptor;

    .line 151
    .line 152
    iget-boolean v2, p0, La3/f;->h:Z

    .line 153
    .line 154
    if-eqz v2, :cond_a

    .line 155
    .line 156
    iput-boolean v1, p0, La3/f;->h:Z

    .line 157
    .line 158
    invoke-virtual {p0}, La3/e;->f()V

    .line 159
    .line 160
    .line 161
    :cond_a
    throw v0

    .line 162
    :catchall_4
    move-exception v0

    .line 163
    goto :goto_5

    .line 164
    :catch_4
    move-exception v0

    .line 165
    :try_start_9
    new-instance v3, Lcom/google/android/gms/internal/play_billing/c0;

    .line 166
    .line 167
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/io/IOException;)V

    .line 168
    .line 169
    .line 170
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 171
    :goto_5
    iput-object v2, p0, La3/f;->j:Ljava/io/FileInputStream;

    .line 172
    .line 173
    :try_start_a
    iget-object v3, p0, La3/f;->f:Landroid/content/res/AssetFileDescriptor;

    .line 174
    .line 175
    if-eqz v3, :cond_b

    .line 176
    .line 177
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 178
    .line 179
    .line 180
    :cond_b
    iput-object v2, p0, La3/f;->f:Landroid/content/res/AssetFileDescriptor;

    .line 181
    .line 182
    iget-boolean v2, p0, La3/f;->h:Z

    .line 183
    .line 184
    if-eqz v2, :cond_c

    .line 185
    .line 186
    iput-boolean v1, p0, La3/f;->h:Z

    .line 187
    .line 188
    invoke-virtual {p0}, La3/e;->f()V

    .line 189
    .line 190
    .line 191
    :cond_c
    throw v0

    .line 192
    :catchall_5
    move-exception v0

    .line 193
    goto :goto_6

    .line 194
    :catch_5
    move-exception v0

    .line 195
    :try_start_b
    new-instance v3, Lcom/google/android/gms/internal/play_billing/c0;

    .line 196
    .line 197
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/io/IOException;)V

    .line 198
    .line 199
    .line 200
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 201
    :goto_6
    iput-object v2, p0, La3/f;->f:Landroid/content/res/AssetFileDescriptor;

    .line 202
    .line 203
    iget-boolean v2, p0, La3/f;->h:Z

    .line 204
    .line 205
    if-eqz v2, :cond_d

    .line 206
    .line 207
    iput-boolean v1, p0, La3/f;->h:Z

    .line 208
    .line 209
    invoke-virtual {p0}, La3/e;->f()V

    .line 210
    .line 211
    .line 212
    :cond_d
    throw v0

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d([BII)I
    .locals 9

    .line 1
    iget v0, p0, La3/f;->d:I

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, -0x1

    .line 7
    const-wide/16 v5, 0x0

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_3

    .line 13
    :pswitch_0
    if-nez p3, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    iget-wide v7, p0, La3/f;->g:J

    .line 17
    .line 18
    cmp-long v0, v7, v5

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    cmp-long v0, v7, v1

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    int-to-long v5, p3

    .line 29
    :try_start_0
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide v5

    .line 33
    long-to-int p3, v5

    .line 34
    :goto_0
    iget-object v0, p0, La3/f;->j:Ljava/io/FileInputStream;

    .line 35
    .line 36
    sget v3, Lb3/n;->a:I

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    .line 39
    .line 40
    .line 41
    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    iget-wide p1, p0, La3/f;->g:J

    .line 43
    .line 44
    if-ne v3, v4, :cond_4

    .line 45
    .line 46
    cmp-long p1, p1, v1

    .line 47
    .line 48
    if-nez p1, :cond_3

    .line 49
    .line 50
    :goto_1
    move v3, v4

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/play_billing/c0;

    .line 53
    .line 54
    new-instance p2, Ljava/io/EOFException;

    .line 55
    .line 56
    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/io/IOException;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_4
    cmp-long p3, p1, v1

    .line 64
    .line 65
    if-eqz p3, :cond_5

    .line 66
    .line 67
    int-to-long v0, v3

    .line 68
    sub-long/2addr p1, v0

    .line 69
    iput-wide p1, p0, La3/f;->g:J

    .line 70
    .line 71
    :cond_5
    invoke-virtual {p0, v3}, La3/e;->e(I)V

    .line 72
    .line 73
    .line 74
    :goto_2
    return v3

    .line 75
    :catch_0
    move-exception p1

    .line 76
    new-instance p2, Lcom/google/android/gms/internal/play_billing/c0;

    .line 77
    .line 78
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/io/IOException;)V

    .line 79
    .line 80
    .line 81
    throw p2

    .line 82
    :goto_3
    if-nez p3, :cond_6

    .line 83
    .line 84
    goto :goto_6

    .line 85
    :cond_6
    iget-wide v7, p0, La3/f;->g:J

    .line 86
    .line 87
    cmp-long v0, v7, v5

    .line 88
    .line 89
    if-nez v0, :cond_7

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_7
    cmp-long v0, v7, v1

    .line 93
    .line 94
    if-nez v0, :cond_8

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_8
    int-to-long v5, p3

    .line 98
    :try_start_1
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 99
    .line 100
    .line 101
    move-result-wide v5

    .line 102
    long-to-int p3, v5

    .line 103
    :goto_4
    iget-object v0, p0, La3/f;->j:Ljava/io/FileInputStream;

    .line 104
    .line 105
    sget v3, Lb3/n;->a:I

    .line 106
    .line 107
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 108
    .line 109
    .line 110
    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    iget-wide p1, p0, La3/f;->g:J

    .line 112
    .line 113
    if-ne v3, v4, :cond_a

    .line 114
    .line 115
    cmp-long p1, p1, v1

    .line 116
    .line 117
    if-nez p1, :cond_9

    .line 118
    .line 119
    :goto_5
    move v3, v4

    .line 120
    goto :goto_6

    .line 121
    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/play_billing/c0;

    .line 122
    .line 123
    new-instance p2, Ljava/io/EOFException;

    .line 124
    .line 125
    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/io/IOException;)V

    .line 129
    .line 130
    .line 131
    throw p1

    .line 132
    :cond_a
    cmp-long p3, p1, v1

    .line 133
    .line 134
    if-eqz p3, :cond_b

    .line 135
    .line 136
    int-to-long v0, v3

    .line 137
    sub-long/2addr p1, v0

    .line 138
    iput-wide p1, p0, La3/f;->g:J

    .line 139
    .line 140
    :cond_b
    invoke-virtual {p0, v3}, La3/e;->e(I)V

    .line 141
    .line 142
    .line 143
    :goto_6
    return v3

    .line 144
    :catch_1
    move-exception p1

    .line 145
    new-instance p2, Lcom/google/android/gms/internal/play_billing/c0;

    .line 146
    .line 147
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/io/IOException;)V

    .line 148
    .line 149
    .line 150
    throw p2

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget v0, p0, La3/f;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, La3/f;->e:Landroid/net/Uri;

    .line 8
    .line 9
    return-object v0

    .line 10
    :goto_0
    iget-object v0, p0, La3/f;->e:Landroid/net/Uri;

    .line 11
    .line 12
    return-object v0

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
