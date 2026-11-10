.class public final synthetic Lp0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/i;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lp0/k;

.field public final synthetic h:Lj0/k;


# direct methods
.method public synthetic constructor <init>(Lp0/k;Lj0/k;I)V
    .locals 0

    .line 1
    iput p3, p0, Lp0/f;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lp0/f;->g:Lp0/k;

    .line 4
    .line 5
    iput-object p2, p0, Lp0/f;->h:Lj0/k;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lp0/f;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Lp0/f;->h:Lj0/k;

    .line 4
    .line 5
    iget-object v2, p0, Lp0/f;->g:Lp0/k;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :pswitch_0
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v1}, Lp0/k;->b(Landroid/database/sqlite/SQLiteDatabase;Lj0/k;)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v2}, Lp0/k;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    filled-new-array {p1}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v1, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    .line 38
    .line 39
    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v0, Lh0/c;

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    invoke-direct {v0, v1}, Lh0/c;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0}, Lp0/k;->g(Landroid/database/Cursor;Lp0/i;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Ljava/lang/Boolean;

    .line 55
    .line 56
    :goto_0
    return-object p1

    .line 57
    :goto_1
    move-object v0, p1

    .line 58
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    .line 60
    iget-object p1, v2, Lp0/k;->d:Lp0/a;

    .line 61
    .line 62
    iget v3, p1, Lp0/a;->b:I

    .line 63
    .line 64
    invoke-virtual {v2, v0, v1, v3}, Lp0/k;->d(Landroid/database/sqlite/SQLiteDatabase;Lj0/k;I)Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-static {}, Lg0/c;->values()[Lg0/c;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    array-length v4, v3

    .line 73
    const/4 v5, 0x0

    .line 74
    move v6, v5

    .line 75
    :goto_2
    if-ge v6, v4, :cond_3

    .line 76
    .line 77
    aget-object v7, v3, v6

    .line 78
    .line 79
    iget-object v9, v1, Lj0/k;->c:Lg0/c;

    .line 80
    .line 81
    if-ne v7, v9, :cond_1

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    iget v10, p1, Lp0/a;->b:I

    .line 89
    .line 90
    sub-int/2addr v10, v9

    .line 91
    if-gtz v10, :cond_2

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_2
    invoke-static {}, Lj0/k;->a()Lf0/k;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    iget-object v11, v1, Lj0/k;->a:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v9, v11}, Lf0/k;->k(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v9, v7}, Lf0/k;->l(Lg0/c;)V

    .line 104
    .line 105
    .line 106
    iget-object v7, v1, Lj0/k;->b:[B

    .line 107
    .line 108
    iput-object v7, v9, Lf0/k;->h:Ljava/lang/Object;

    .line 109
    .line 110
    invoke-virtual {v9}, Lf0/k;->b()Lj0/k;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v2, v0, v7, v10}, Lp0/k;->d(Landroid/database/sqlite/SQLiteDatabase;Lj0/k;I)Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 119
    .line 120
    .line 121
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    :goto_4
    new-instance p1, Ljava/util/HashMap;

    .line 125
    .line 126
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 127
    .line 128
    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v2, "event_id IN ("

    .line 132
    .line 133
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-ge v5, v2, :cond_5

    .line 141
    .line 142
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    check-cast v2, Lp0/b;

    .line 147
    .line 148
    iget-wide v2, v2, Lp0/b;->a:J

    .line 149
    .line 150
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    add-int/lit8 v2, v2, -0x1

    .line 158
    .line 159
    if-ge v5, v2, :cond_4

    .line 160
    .line 161
    const/16 v2, 0x2c

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_5
    const/16 v2, 0x29

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v2, "event_metadata"

    .line 175
    .line 176
    const-string v3, "event_id"

    .line 177
    .line 178
    const-string v4, "name"

    .line 179
    .line 180
    const-string v5, "value"

    .line 181
    .line 182
    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    const/4 v5, 0x0

    .line 191
    const/4 v6, 0x0

    .line 192
    const/4 v7, 0x0

    .line 193
    const/4 v9, 0x0

    .line 194
    move-object v1, v2

    .line 195
    move-object v2, v3

    .line 196
    move-object v3, v4

    .line 197
    move-object v4, v5

    .line 198
    move-object v5, v6

    .line 199
    move-object v6, v7

    .line 200
    move-object v7, v9

    .line 201
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    new-instance v1, Lh0/b;

    .line 206
    .line 207
    const/4 v2, 0x7

    .line 208
    invoke-direct {v1, p1, v2}, Lh0/b;-><init>(Ljava/lang/Object;I)V

    .line 209
    .line 210
    .line 211
    invoke-static {v0, v1}, Lp0/k;->g(Landroid/database/Cursor;Lp0/i;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v8}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    :goto_6
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-eqz v1, :cond_8

    .line 223
    .line 224
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    check-cast v1, Lp0/b;

    .line 229
    .line 230
    iget-wide v2, v1, Lp0/b;->a:J

    .line 231
    .line 232
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-nez v2, :cond_6

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_6
    iget-object v2, v1, Lp0/b;->c:Lj0/i;

    .line 244
    .line 245
    invoke-virtual {v2}, Lj0/i;->c()Lj0/h;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    iget-wide v3, v1, Lp0/b;->a:J

    .line 250
    .line 251
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    check-cast v5, Ljava/util/Set;

    .line 260
    .line 261
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 266
    .line 267
    .line 268
    move-result v6

    .line 269
    if-eqz v6, :cond_7

    .line 270
    .line 271
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    check-cast v6, Lp0/j;

    .line 276
    .line 277
    iget-object v7, v6, Lp0/j;->a:Ljava/lang/String;

    .line 278
    .line 279
    iget-object v6, v6, Lp0/j;->b:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {v2, v7, v6}, Lj0/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_7
    invoke-virtual {v2}, Lj0/h;->b()Lj0/i;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    new-instance v5, Lp0/b;

    .line 290
    .line 291
    iget-object v1, v1, Lp0/b;->b:Lj0/k;

    .line 292
    .line 293
    invoke-direct {v5, v3, v4, v1, v2}, Lp0/b;-><init>(JLj0/k;Lj0/i;)V

    .line 294
    .line 295
    .line 296
    invoke-interface {v0, v5}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_8
    return-object v8

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
