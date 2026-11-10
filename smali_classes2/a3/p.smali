.class public final La3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/i;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public final c:La3/i;

.field public d:La3/s;

.field public e:La3/c;

.field public f:La3/f;

.field public g:La3/i;

.field public h:La3/h0;

.field public i:La3/g;

.field public j:La3/f;

.field public k:La3/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;La3/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, La3/p;->a:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, La3/p;->c:La3/i;

    .line 14
    .line 15
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, La3/p;->b:Ljava/util/ArrayList;

    .line 21
    .line 22
    return-void
.end method

.method public static g(La3/i;La3/g0;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, La3/i;->a(La3/g0;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(La3/g0;)V
    .locals 1

    .line 1
    iget-object v0, p0, La3/p;->c:La3/i;

    invoke-interface {v0, p1}, La3/i;->a(La3/g0;)V

    iget-object v0, p0, La3/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La3/p;->d:La3/s;

    invoke-static {v0, p1}, La3/p;->g(La3/i;La3/g0;)V

    iget-object v0, p0, La3/p;->e:La3/c;

    invoke-static {v0, p1}, La3/p;->g(La3/i;La3/g0;)V

    iget-object v0, p0, La3/p;->f:La3/f;

    invoke-static {v0, p1}, La3/p;->g(La3/i;La3/g0;)V

    iget-object v0, p0, La3/p;->g:La3/i;

    invoke-static {v0, p1}, La3/p;->g(La3/i;La3/g0;)V

    iget-object v0, p0, La3/p;->h:La3/h0;

    invoke-static {v0, p1}, La3/p;->g(La3/i;La3/g0;)V

    iget-object v0, p0, La3/p;->i:La3/g;

    invoke-static {v0, p1}, La3/p;->g(La3/i;La3/g0;)V

    iget-object v0, p0, La3/p;->j:La3/f;

    invoke-static {v0, p1}, La3/p;->g(La3/i;La3/g0;)V

    return-void
.end method

.method public final b(La3/l;)J
    .locals 6

    .line 1
    iget-object v0, p0, La3/p;->k:La3/i;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v2

    .line 10
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, La3/l;->a:Landroid/net/Uri;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget v3, Lb3/n;->a:I

    .line 20
    .line 21
    iget-object v3, p1, La3/l;->a:Landroid/net/Uri;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-nez v5, :cond_2

    .line 32
    .line 33
    const-string v5, "file"

    .line 34
    .line 35
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v4, v2

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    :goto_1
    move v4, v1

    .line 45
    :goto_2
    if-eqz v4, :cond_5

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    const-string v1, "/android_asset/"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    iget-object v0, p0, La3/p;->d:La3/s;

    .line 63
    .line 64
    if-nez v0, :cond_4

    .line 65
    .line 66
    new-instance v0, La3/s;

    .line 67
    .line 68
    invoke-direct {v0}, La3/s;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, La3/p;->d:La3/s;

    .line 72
    .line 73
    invoke-virtual {p0, v0}, La3/p;->e(La3/i;)V

    .line 74
    .line 75
    .line 76
    :cond_4
    iget-object v0, p0, La3/p;->d:La3/s;

    .line 77
    .line 78
    goto/16 :goto_5

    .line 79
    .line 80
    :cond_5
    const-string v3, "asset"

    .line 81
    .line 82
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_6

    .line 87
    .line 88
    :goto_3
    invoke-virtual {p0}, La3/p;->f()La3/i;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    goto/16 :goto_5

    .line 93
    .line 94
    :cond_6
    const-string v3, "content"

    .line 95
    .line 96
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    iget-object v4, p0, La3/p;->a:Landroid/content/Context;

    .line 101
    .line 102
    if-eqz v3, :cond_8

    .line 103
    .line 104
    iget-object v0, p0, La3/p;->f:La3/f;

    .line 105
    .line 106
    if-nez v0, :cond_7

    .line 107
    .line 108
    new-instance v0, La3/f;

    .line 109
    .line 110
    invoke-direct {v0, v4, v2}, La3/f;-><init>(Landroid/content/Context;I)V

    .line 111
    .line 112
    .line 113
    iput-object v0, p0, La3/p;->f:La3/f;

    .line 114
    .line 115
    invoke-virtual {p0, v0}, La3/p;->e(La3/i;)V

    .line 116
    .line 117
    .line 118
    :cond_7
    iget-object v0, p0, La3/p;->f:La3/f;

    .line 119
    .line 120
    goto/16 :goto_5

    .line 121
    .line 122
    :cond_8
    const-string v3, "rtmp"

    .line 123
    .line 124
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    iget-object v5, p0, La3/p;->c:La3/i;

    .line 129
    .line 130
    if-eqz v3, :cond_a

    .line 131
    .line 132
    iget-object v0, p0, La3/p;->g:La3/i;

    .line 133
    .line 134
    if-nez v0, :cond_9

    .line 135
    .line 136
    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.rtmp.RtmpDataSource"

    .line 137
    .line 138
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    new-array v1, v2, [Ljava/lang/Class;

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    new-array v1, v2, [Ljava/lang/Object;

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, La3/i;

    .line 155
    .line 156
    iput-object v0, p0, La3/p;->g:La3/i;

    .line 157
    .line 158
    invoke-virtual {p0, v0}, La3/p;->e(La3/i;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :catch_0
    move-exception p1

    .line 163
    new-instance v0, Ljava/lang/RuntimeException;

    .line 164
    .line 165
    const-string v1, "Error instantiating RTMP extension"

    .line 166
    .line 167
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    .line 169
    .line 170
    throw v0

    .line 171
    :catch_1
    :goto_4
    iget-object v0, p0, La3/p;->g:La3/i;

    .line 172
    .line 173
    if-nez v0, :cond_9

    .line 174
    .line 175
    iput-object v5, p0, La3/p;->g:La3/i;

    .line 176
    .line 177
    :cond_9
    iget-object v0, p0, La3/p;->g:La3/i;

    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_a
    const-string v2, "udp"

    .line 181
    .line 182
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-eqz v2, :cond_c

    .line 187
    .line 188
    iget-object v0, p0, La3/p;->h:La3/h0;

    .line 189
    .line 190
    if-nez v0, :cond_b

    .line 191
    .line 192
    new-instance v0, La3/h0;

    .line 193
    .line 194
    invoke-direct {v0}, La3/h0;-><init>()V

    .line 195
    .line 196
    .line 197
    iput-object v0, p0, La3/p;->h:La3/h0;

    .line 198
    .line 199
    invoke-virtual {p0, v0}, La3/p;->e(La3/i;)V

    .line 200
    .line 201
    .line 202
    :cond_b
    iget-object v0, p0, La3/p;->h:La3/h0;

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_c
    const-string v2, "data"

    .line 206
    .line 207
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-eqz v2, :cond_e

    .line 212
    .line 213
    iget-object v0, p0, La3/p;->i:La3/g;

    .line 214
    .line 215
    if-nez v0, :cond_d

    .line 216
    .line 217
    new-instance v0, La3/g;

    .line 218
    .line 219
    invoke-direct {v0}, La3/g;-><init>()V

    .line 220
    .line 221
    .line 222
    iput-object v0, p0, La3/p;->i:La3/g;

    .line 223
    .line 224
    invoke-virtual {p0, v0}, La3/p;->e(La3/i;)V

    .line 225
    .line 226
    .line 227
    :cond_d
    iget-object v0, p0, La3/p;->i:La3/g;

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_e
    const-string v2, "rawresource"

    .line 231
    .line 232
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-eqz v0, :cond_10

    .line 237
    .line 238
    iget-object v0, p0, La3/p;->j:La3/f;

    .line 239
    .line 240
    if-nez v0, :cond_f

    .line 241
    .line 242
    new-instance v0, La3/f;

    .line 243
    .line 244
    invoke-direct {v0, v4, v1}, La3/f;-><init>(Landroid/content/Context;I)V

    .line 245
    .line 246
    .line 247
    iput-object v0, p0, La3/p;->j:La3/f;

    .line 248
    .line 249
    invoke-virtual {p0, v0}, La3/p;->e(La3/i;)V

    .line 250
    .line 251
    .line 252
    :cond_f
    iget-object v0, p0, La3/p;->j:La3/f;

    .line 253
    .line 254
    :goto_5
    iput-object v0, p0, La3/p;->k:La3/i;

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_10
    iput-object v5, p0, La3/p;->k:La3/i;

    .line 258
    .line 259
    :goto_6
    iget-object v0, p0, La3/p;->k:La3/i;

    .line 260
    .line 261
    invoke-interface {v0, p1}, La3/i;->b(La3/l;)J

    .line 262
    .line 263
    .line 264
    move-result-wide v0

    .line 265
    return-wide v0
.end method

.method public final c()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, La3/p;->k:La3/i;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, La3/i;->c()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, La3/p;->k:La3/i;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, La3/i;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, La3/p;->k:La3/i;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, La3/p;->k:La3/i;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final d([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, La3/p;->k:La3/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, La3/i;->d([BII)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final e(La3/i;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, La3/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La3/g0;

    invoke-interface {p1, v1}, La3/i;->a(La3/g0;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()La3/i;
    .locals 2

    .line 1
    iget-object v0, p0, La3/p;->e:La3/c;

    if-nez v0, :cond_0

    new-instance v0, La3/c;

    iget-object v1, p0, La3/p;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, La3/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La3/p;->e:La3/c;

    invoke-virtual {p0, v0}, La3/p;->e(La3/i;)V

    :cond_0
    iget-object v0, p0, La3/p;->e:La3/c;

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, La3/p;->k:La3/i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, La3/i;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method
