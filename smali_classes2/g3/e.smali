.class public final Lg3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg3/g;


# direct methods
.method public synthetic constructor <init>(Lg3/g;I)V
    .locals 0

    .line 1
    iput p2, p0, Lg3/e;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lg3/e;->b:Lg3/g;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lm3/d;)V
    .locals 6

    .line 1
    iget v0, p0, Lg3/e;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lg3/e;->b:Lg3/g;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_2

    .line 9
    :pswitch_0
    move-object v0, p2

    .line 10
    check-cast v0, Lm3/h;

    .line 11
    .line 12
    iget-object v2, p2, Lm3/d;->d:Ljava/lang/Class;

    .line 13
    .line 14
    const-class v3, Ljava/util/List;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    check-cast p1, Ljava/util/List;

    .line 23
    .line 24
    invoke-virtual {v1, v0, p1}, Lg3/c;->d(Lm3/h;Ljava/util/Collection;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p2, p2, Lm3/d;->d:Ljava/lang/Class;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1, v0, p1}, Lg3/c;->b(Lm3/h;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void

    .line 40
    :cond_1
    new-instance p1, Lh3/c;

    .line 41
    .line 42
    const-string p2, "Immutable objects cannot be recursive."

    .line 43
    .line 44
    invoke-direct {p1, p2}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :pswitch_1
    iget-object v0, p2, Lm3/d;->d:Ljava/lang/Class;

    .line 49
    .line 50
    const-class v2, Ljava/util/Map;

    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    check-cast p2, Lm3/c;

    .line 59
    .line 60
    check-cast p1, Ljava/util/Map;

    .line 61
    .line 62
    invoke-virtual {v1, p2, p1}, Lg3/m;->k(Lm3/c;Ljava/util/Map;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget-object v0, p2, Lm3/d;->d:Ljava/lang/Class;

    .line 67
    .line 68
    const-class v2, Ljava/util/Set;

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    check-cast p2, Lm3/c;

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    check-cast p1, Ljava/util/Set;

    .line 79
    .line 80
    invoke-virtual {v1, p2, p1}, Lg3/m;->l(Lm3/c;Ljava/util/Set;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {p0, p2, p1}, Lg3/e;->c(Lm3/c;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :goto_1
    return-void

    .line 88
    :goto_2
    :try_start_0
    invoke-virtual {p0, p2}, Lg3/e;->d(Lm3/d;)Lg3/d;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-interface {v0, p1, p2}, Lg3/d;->a(Ljava/lang/Object;Lm3/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :catch_0
    move-exception p1

    .line 97
    move-object v5, p1

    .line 98
    new-instance p1, Lg3/h;

    .line 99
    .line 100
    const/4 v1, 0x0

    .line 101
    const/4 v2, 0x0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v3, "Can\'t construct a second step for a java object for "

    .line 105
    .line 106
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v3, p2, Lm3/d;->a:Lm3/i;

    .line 110
    .line 111
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v3, "; exception="

    .line 115
    .line 116
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    iget-object v4, p2, Lm3/d;->b:Lh3/a;

    .line 131
    .line 132
    move-object v0, p1

    .line 133
    invoke-direct/range {v0 .. v5}, Lg3/h;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;Ljava/lang/Exception;)V

    .line 134
    .line 135
    .line 136
    throw p1

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lm3/d;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lg3/e;->a:I

    .line 2
    .line 3
    const-class v1, Ljava/util/Collection;

    .line 4
    .line 5
    iget-object v2, p0, Lg3/e;->b:Lg3/g;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto/16 :goto_a

    .line 12
    .line 13
    :pswitch_0
    move-object v0, p1

    .line 14
    check-cast v0, Lm3/h;

    .line 15
    .line 16
    iget-object v4, p1, Lm3/d;->d:Ljava/lang/Class;

    .line 17
    .line 18
    const-class v5, Ljava/util/Set;

    .line 19
    .line 20
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    iget-boolean p1, p1, Lm3/d;->e:Z

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Lg3/c;->i(Lm3/b;)Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v2, v0, p1}, Lg3/c;->d(Lm3/h;Ljava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_6

    .line 38
    .line 39
    :cond_0
    new-instance p1, Lh3/c;

    .line 40
    .line 41
    const-string v0, "Set cannot be recursive."

    .line 42
    .line 43
    invoke-direct {p1, v0}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_1
    iget-object v4, p1, Lm3/d;->d:Ljava/lang/Class;

    .line 48
    .line 49
    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    iget-boolean p1, p1, Lm3/d;->e:Z

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Lg3/c;->h(Lm3/h;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    goto/16 :goto_6

    .line 64
    .line 65
    :cond_2
    invoke-virtual {v2, v0}, Lg3/c;->h(Lm3/h;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v2, v0, p1}, Lg3/c;->d(Lm3/h;Ljava/util/Collection;)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_6

    .line 73
    .line 74
    :cond_3
    iget-object v1, p1, Lm3/d;->d:Ljava/lang/Class;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    iget-boolean v1, p1, Lm3/d;->e:Z

    .line 83
    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    iget-object p1, p1, Lm3/d;->d:Ljava/lang/Class;

    .line 87
    .line 88
    iget-object v0, v0, Lm3/h;->h:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    goto/16 :goto_6

    .line 106
    .line 107
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    iget-object p1, v0, Lm3/d;->d:Ljava/lang/Class;

    .line 111
    .line 112
    iget-object v1, v0, Lm3/h;->h:Ljava/util/List;

    .line 113
    .line 114
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {v2, v0, p1}, Lg3/c;->b(Lm3/h;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_6

    .line 130
    .line 131
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .line 132
    .line 133
    iget-object v4, v0, Lm3/h;->h:Ljava/util/List;

    .line 134
    .line 135
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    .line 141
    .line 142
    iget-object v4, p1, Lm3/d;->d:Ljava/lang/Class;

    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    array-length v5, v4

    .line 149
    const/4 v6, 0x0

    .line 150
    move v7, v6

    .line 151
    :goto_0
    iget-object v8, v0, Lm3/h;->h:Ljava/util/List;

    .line 152
    .line 153
    if-ge v7, v5, :cond_7

    .line 154
    .line 155
    aget-object v9, v4, v7

    .line 156
    .line 157
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    array-length v10, v10

    .line 166
    if-ne v8, v10, :cond_6

    .line 167
    .line 168
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-nez v4, :cond_17

    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-ne v4, v3, :cond_9

    .line 185
    .line 186
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    new-array p1, p1, [Ljava/lang/Object;

    .line 191
    .line 192
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 197
    .line 198
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-eqz v4, :cond_8

    .line 207
    .line 208
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    check-cast v4, Lm3/d;

    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    aget-object v5, v5, v6

    .line 219
    .line 220
    invoke-virtual {v4, v5}, Lm3/d;->b(Ljava/lang/Class;)V

    .line 221
    .line 222
    .line 223
    add-int/lit8 v5, v6, 0x1

    .line 224
    .line 225
    invoke-virtual {v2, v4}, Lg3/c;->c(Lm3/d;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    aput-object v4, p1, v6

    .line 230
    .line 231
    move v6, v5

    .line 232
    goto :goto_1

    .line 233
    :cond_8
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    goto/16 :goto_6

    .line 241
    .line 242
    :catch_0
    move-exception p1

    .line 243
    new-instance v0, Lh3/c;

    .line 244
    .line 245
    invoke-direct {v0, p1}, Lh3/c;-><init>(Ljava/lang/Exception;)V

    .line 246
    .line 247
    .line 248
    throw v0

    .line 249
    :cond_9
    invoke-virtual {v2, v0}, Lg3/c;->h(Lm3/h;)Ljava/util/List;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    invoke-virtual {v2, v0, v4}, Lg3/c;->d(Lm3/h;Ljava/util/Collection;)V

    .line 254
    .line 255
    .line 256
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    new-array v0, v0, [Ljava/lang/Class;

    .line 261
    .line 262
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    move v5, v6

    .line 267
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 268
    .line 269
    .line 270
    move-result v7

    .line 271
    if-eqz v7, :cond_a

    .line 272
    .line 273
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    aput-object v7, v0, v5

    .line 282
    .line 283
    add-int/2addr v5, v3

    .line 284
    goto :goto_2

    .line 285
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    if-eqz v2, :cond_17

    .line 294
    .line 295
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 300
    .line 301
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    move v7, v6

    .line 306
    :goto_3
    array-length v9, v5

    .line 307
    if-ge v7, v9, :cond_16

    .line 308
    .line 309
    aget-object v9, v5, v7

    .line 310
    .line 311
    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    .line 312
    .line 313
    .line 314
    move-result v10

    .line 315
    if-nez v10, :cond_c

    .line 316
    .line 317
    goto :goto_4

    .line 318
    :cond_c
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 319
    .line 320
    if-ne v9, v10, :cond_d

    .line 321
    .line 322
    const-class v9, Ljava/lang/Integer;

    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_d
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 326
    .line 327
    if-ne v9, v10, :cond_e

    .line 328
    .line 329
    const-class v9, Ljava/lang/Float;

    .line 330
    .line 331
    goto :goto_4

    .line 332
    :cond_e
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 333
    .line 334
    if-ne v9, v10, :cond_f

    .line 335
    .line 336
    const-class v9, Ljava/lang/Double;

    .line 337
    .line 338
    goto :goto_4

    .line 339
    :cond_f
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 340
    .line 341
    if-ne v9, v10, :cond_10

    .line 342
    .line 343
    const-class v9, Ljava/lang/Boolean;

    .line 344
    .line 345
    goto :goto_4

    .line 346
    :cond_10
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 347
    .line 348
    if-ne v9, v10, :cond_11

    .line 349
    .line 350
    const-class v9, Ljava/lang/Long;

    .line 351
    .line 352
    goto :goto_4

    .line 353
    :cond_11
    sget-object v10, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 354
    .line 355
    if-ne v9, v10, :cond_12

    .line 356
    .line 357
    const-class v9, Ljava/lang/Character;

    .line 358
    .line 359
    goto :goto_4

    .line 360
    :cond_12
    sget-object v10, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 361
    .line 362
    if-ne v9, v10, :cond_13

    .line 363
    .line 364
    const-class v9, Ljava/lang/Short;

    .line 365
    .line 366
    goto :goto_4

    .line 367
    :cond_13
    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 368
    .line 369
    if-ne v9, v10, :cond_15

    .line 370
    .line 371
    const-class v9, Ljava/lang/Byte;

    .line 372
    .line 373
    :goto_4
    aget-object v10, v0, v7

    .line 374
    .line 375
    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 376
    .line 377
    .line 378
    move-result v9

    .line 379
    if-nez v9, :cond_14

    .line 380
    .line 381
    move v5, v6

    .line 382
    goto :goto_5

    .line 383
    :cond_14
    add-int/lit8 v7, v7, 0x1

    .line 384
    .line 385
    goto :goto_3

    .line 386
    :cond_15
    new-instance p1, Lh3/c;

    .line 387
    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    const-string v1, "Unexpected primitive "

    .line 391
    .line 392
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-direct {p1, v0}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw p1

    .line 406
    :cond_16
    move v5, v3

    .line 407
    :goto_5
    if-eqz v5, :cond_b

    .line 408
    .line 409
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 410
    .line 411
    .line 412
    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 420
    :goto_6
    return-object p1

    .line 421
    :catch_1
    move-exception p1

    .line 422
    new-instance v0, Lh3/c;

    .line 423
    .line 424
    invoke-direct {v0, p1}, Lh3/c;-><init>(Ljava/lang/Exception;)V

    .line 425
    .line 426
    .line 427
    throw v0

    .line 428
    :cond_17
    new-instance v0, Lh3/c;

    .line 429
    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    const-string v2, "No suitable constructor with "

    .line 433
    .line 434
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    const-string v2, " arguments found for "

    .line 449
    .line 450
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    iget-object p1, p1, Lm3/d;->d:Ljava/lang/Class;

    .line 454
    .line 455
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    invoke-direct {v0, p1}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    throw v0

    .line 466
    :pswitch_1
    move-object v0, p1

    .line 467
    check-cast v0, Lm3/c;

    .line 468
    .line 469
    iget-object v4, p1, Lm3/d;->d:Ljava/lang/Class;

    .line 470
    .line 471
    const-class v5, Ljava/util/Map;

    .line 472
    .line 473
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 474
    .line 475
    .line 476
    move-result v4

    .line 477
    if-eqz v4, :cond_19

    .line 478
    .line 479
    iget-boolean p1, p1, Lm3/d;->e:Z

    .line 480
    .line 481
    if-eqz p1, :cond_18

    .line 482
    .line 483
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 484
    .line 485
    .line 486
    :try_start_2
    invoke-virtual {v2, v5, v0, v3}, Lg3/c;->g(Ljava/lang/Class;Lm3/d;Z)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object p1

    .line 490
    check-cast p1, Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 491
    .line 492
    goto :goto_9

    .line 493
    :catch_2
    iget-object p1, v0, Lm3/c;->h:Ljava/util/List;

    .line 494
    .line 495
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 496
    .line 497
    .line 498
    move-result p1

    .line 499
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 500
    .line 501
    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 502
    .line 503
    .line 504
    move-object p1, v0

    .line 505
    goto :goto_9

    .line 506
    :cond_18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 507
    .line 508
    .line 509
    :try_start_3
    invoke-virtual {v2, v5, v0, v3}, Lg3/c;->g(Ljava/lang/Class;Lm3/d;Z)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object p1

    .line 513
    check-cast p1, Ljava/util/Map;
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 514
    .line 515
    goto :goto_7

    .line 516
    :catch_3
    iget-object p1, v0, Lm3/c;->h:Ljava/util/List;

    .line 517
    .line 518
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 519
    .line 520
    .line 521
    move-result p1

    .line 522
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 523
    .line 524
    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 525
    .line 526
    .line 527
    move-object p1, v1

    .line 528
    :goto_7
    invoke-virtual {v2, v0, p1}, Lg3/m;->k(Lm3/c;Ljava/util/Map;)V

    .line 529
    .line 530
    .line 531
    goto :goto_9

    .line 532
    :cond_19
    iget-object v4, p1, Lm3/d;->d:Ljava/lang/Class;

    .line 533
    .line 534
    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 535
    .line 536
    .line 537
    move-result v1

    .line 538
    if-eqz v1, :cond_1b

    .line 539
    .line 540
    iget-boolean p1, p1, Lm3/d;->e:Z

    .line 541
    .line 542
    if-eqz p1, :cond_1a

    .line 543
    .line 544
    invoke-virtual {v2, v0}, Lg3/c;->i(Lm3/b;)Ljava/util/Set;

    .line 545
    .line 546
    .line 547
    move-result-object p1

    .line 548
    goto :goto_9

    .line 549
    :cond_1a
    invoke-virtual {v2, v0}, Lg3/c;->i(Lm3/b;)Ljava/util/Set;

    .line 550
    .line 551
    .line 552
    move-result-object p1

    .line 553
    invoke-virtual {v2, v0, p1}, Lg3/m;->l(Lm3/c;Ljava/util/Set;)V

    .line 554
    .line 555
    .line 556
    goto :goto_9

    .line 557
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 558
    .line 559
    .line 560
    :try_start_4
    const-class v1, Ljava/lang/Object;

    .line 561
    .line 562
    invoke-virtual {v2, v1, v0, v3}, Lg3/c;->g(Ljava/lang/Class;Lm3/d;Z)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v1
    :try_end_4
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4

    .line 566
    iget-boolean p1, p1, Lm3/d;->e:Z

    .line 567
    .line 568
    if-eqz p1, :cond_1c

    .line 569
    .line 570
    goto :goto_8

    .line 571
    :cond_1c
    invoke-virtual {p0, v0, v1}, Lg3/e;->c(Lm3/c;Ljava/lang/Object;)V

    .line 572
    .line 573
    .line 574
    :goto_8
    move-object p1, v1

    .line 575
    :goto_9
    return-object p1

    .line 576
    :catch_4
    move-exception p1

    .line 577
    new-instance v0, Lh3/c;

    .line 578
    .line 579
    invoke-direct {v0, p1}, Lh3/c;-><init>(Ljava/lang/Exception;)V

    .line 580
    .line 581
    .line 582
    throw v0

    .line 583
    :goto_a
    :try_start_5
    invoke-virtual {p0, p1}, Lg3/e;->d(Lm3/d;)Lg3/d;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    invoke-interface {v0, p1}, Lg3/d;->b(Lm3/d;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object p1
    :try_end_5
    .catch Lg3/h; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 591
    return-object p1

    .line 592
    :catch_5
    move-exception v0

    .line 593
    move-object v6, v0

    .line 594
    new-instance v0, Lg3/h;

    .line 595
    .line 596
    const/4 v2, 0x0

    .line 597
    const/4 v3, 0x0

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    .line 599
    .line 600
    const-string v4, "Can\'t construct a java object for "

    .line 601
    .line 602
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    iget-object v4, p1, Lm3/d;->a:Lm3/i;

    .line 606
    .line 607
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    const-string v4, "; exception="

    .line 611
    .line 612
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v4

    .line 619
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v4

    .line 626
    iget-object v5, p1, Lm3/d;->b:Lh3/a;

    .line 627
    .line 628
    move-object v1, v0

    .line 629
    invoke-direct/range {v1 .. v6}, Lg3/h;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;Ljava/lang/Exception;)V

    .line 630
    .line 631
    .line 632
    throw v0

    .line 633
    :catch_6
    move-exception p1

    .line 634
    throw p1

    .line 635
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lm3/c;Ljava/lang/Object;)V
    .locals 20

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p0

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    iget-object v0, v2, Lg3/e;->b:Lg3/g;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lg3/m;->n(Lm3/c;)V

    .line 10
    .line 11
    .line 12
    iget-object v4, v1, Lm3/d;->d:Ljava/lang/Class;

    .line 13
    .line 14
    iget-object v5, v1, Lm3/c;->h:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-eqz v6, :cond_12

    .line 25
    .line 26
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    check-cast v6, Lm3/f;

    .line 31
    .line 32
    iget-object v7, v6, Lm3/f;->a:Lm3/d;

    .line 33
    .line 34
    instance-of v8, v7, Lm3/g;

    .line 35
    .line 36
    if-eqz v8, :cond_11

    .line 37
    .line 38
    check-cast v7, Lm3/g;

    .line 39
    .line 40
    iget-object v6, v6, Lm3/f;->b:Lm3/d;

    .line 41
    .line 42
    const-class v8, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v7, v8}, Lm3/d;->b(Ljava/lang/Class;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v7}, Lg3/c;->c(Lm3/d;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    check-cast v7, Ljava/lang/String;

    .line 52
    .line 53
    :try_start_0
    iget-object v9, v0, Lg3/c;->m:Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    check-cast v9, Le3/e;
    :try_end_0
    .catch Lg3/i; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    const-string v10, "\' on class: "

    .line 62
    .line 63
    if-nez v9, :cond_7

    .line 64
    .line 65
    :try_start_1
    invoke-virtual {v0}, Lg3/c;->f()Lf2/g;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    iget-object v13, v12, Lf2/g;->c:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v13, Ljava/util/Map;

    .line 72
    .line 73
    invoke-interface {v13, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v14

    .line 77
    if-eqz v14, :cond_0

    .line 78
    .line 79
    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v13

    .line 83
    check-cast v13, Ljava/util/Map;

    .line 84
    .line 85
    move-object/from16 v16, v5

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_0
    new-instance v14, Ljava/util/LinkedHashMap;

    .line 89
    .line 90
    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 91
    .line 92
    .line 93
    move-object v15, v4

    .line 94
    :goto_1
    if-eqz v15, :cond_4

    .line 95
    .line 96
    invoke-virtual {v15}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 97
    .line 98
    .line 99
    move-result-object v11

    .line 100
    array-length v2, v11

    .line 101
    move-object/from16 v16, v5

    .line 102
    .line 103
    const/4 v5, 0x0

    .line 104
    :goto_2
    if-ge v5, v2, :cond_3

    .line 105
    .line 106
    move/from16 v17, v2

    .line 107
    .line 108
    aget-object v2, v11, v5

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 111
    .line 112
    .line 113
    move-result v18

    .line 114
    invoke-static/range {v18 .. v18}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 115
    .line 116
    .line 117
    move-result v19

    .line 118
    if-nez v19, :cond_1

    .line 119
    .line 120
    invoke-static/range {v18 .. v18}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    .line 121
    .line 122
    .line 123
    move-result v18

    .line 124
    if-nez v18, :cond_1

    .line 125
    .line 126
    move-object/from16 v18, v11

    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    invoke-interface {v14, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v11

    .line 136
    if-nez v11, :cond_2

    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    new-instance v1, Ll3/b;

    .line 143
    .line 144
    invoke-direct {v1, v2}, Ll3/b;-><init>(Ljava/lang/reflect/Field;)V

    .line 145
    .line 146
    .line 147
    invoke-interface {v14, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_1
    move-object/from16 v18, v11

    .line 152
    .line 153
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 154
    .line 155
    move-object/from16 v1, p1

    .line 156
    .line 157
    move/from16 v2, v17

    .line 158
    .line 159
    move-object/from16 v11, v18

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_3
    invoke-virtual {v15}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    move-result-object v15

    .line 166
    move-object/from16 v2, p0

    .line 167
    .line 168
    move-object/from16 v1, p1

    .line 169
    .line 170
    move-object/from16 v5, v16

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_4
    move-object/from16 v16, v5

    .line 174
    .line 175
    invoke-interface {v13, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-object v13, v14

    .line 179
    :goto_4
    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    check-cast v1, Ll3/d;

    .line 184
    .line 185
    if-nez v1, :cond_5

    .line 186
    .line 187
    iget-boolean v2, v12, Lf2/g;->b:Z

    .line 188
    .line 189
    if-eqz v2, :cond_5

    .line 190
    .line 191
    new-instance v1, Ll3/c;

    .line 192
    .line 193
    invoke-direct {v1, v7}, Ll3/c;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :cond_5
    if-eqz v1, :cond_6

    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_6
    new-instance v0, Lh3/c;

    .line 200
    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string v2, "Unable to find property \'"

    .line 204
    .line 205
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-direct {v0, v1}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v0

    .line 229
    :cond_7
    move-object/from16 v16, v5

    .line 230
    .line 231
    invoke-virtual {v9, v7}, Le3/e;->b(Ljava/lang/String;)Ll3/d;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    :goto_5
    invoke-virtual {v1}, Ll3/d;->d()Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-eqz v2, :cond_10

    .line 240
    .line 241
    invoke-virtual {v1}, Ll3/d;->c()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-virtual {v6, v2}, Lm3/d;->b(Ljava/lang/Class;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v6}, Lm3/d;->a()Lm3/e;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    sget-object v5, Lm3/e;->a:Lm3/e;

    .line 253
    .line 254
    if-eq v2, v5, :cond_b

    .line 255
    .line 256
    invoke-virtual {v1}, Ll3/d;->a()[Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    if-eqz v2, :cond_b

    .line 261
    .line 262
    array-length v5, v2

    .line 263
    if-lez v5, :cond_b

    .line 264
    .line 265
    invoke-virtual {v6}, Lm3/d;->a()Lm3/e;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    sget-object v10, Lm3/e;->b:Lm3/e;

    .line 270
    .line 271
    if-ne v5, v10, :cond_8

    .line 272
    .line 273
    const/4 v5, 0x0

    .line 274
    aget-object v2, v2, v5

    .line 275
    .line 276
    move-object v5, v6

    .line 277
    check-cast v5, Lm3/h;

    .line 278
    .line 279
    iget-object v5, v5, Lm3/h;->h:Ljava/util/List;

    .line 280
    .line 281
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 286
    .line 287
    .line 288
    move-result v10

    .line 289
    if-eqz v10, :cond_b

    .line 290
    .line 291
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v10

    .line 295
    check-cast v10, Lm3/d;

    .line 296
    .line 297
    invoke-virtual {v10, v2}, Lm3/d;->b(Ljava/lang/Class;)V

    .line 298
    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_8
    const-class v5, Ljava/util/Set;

    .line 302
    .line 303
    iget-object v10, v6, Lm3/d;->d:Ljava/lang/Class;

    .line 304
    .line 305
    invoke-virtual {v5, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    if-eqz v5, :cond_a

    .line 310
    .line 311
    const/4 v5, 0x0

    .line 312
    aget-object v2, v2, v5

    .line 313
    .line 314
    move-object v5, v6

    .line 315
    check-cast v5, Lm3/c;

    .line 316
    .line 317
    iget-object v10, v5, Lm3/c;->h:Ljava/util/List;

    .line 318
    .line 319
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 320
    .line 321
    .line 322
    move-result-object v10

    .line 323
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 324
    .line 325
    .line 326
    move-result v11

    .line 327
    if-eqz v11, :cond_9

    .line 328
    .line 329
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v11

    .line 333
    check-cast v11, Lm3/f;

    .line 334
    .line 335
    iget-object v11, v11, Lm3/f;->a:Lm3/d;

    .line 336
    .line 337
    invoke-virtual {v11, v2}, Lm3/d;->b(Ljava/lang/Class;)V

    .line 338
    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_9
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 342
    .line 343
    iput-object v2, v5, Lm3/d;->g:Ljava/lang/Boolean;

    .line 344
    .line 345
    goto :goto_8

    .line 346
    :cond_a
    const-class v5, Ljava/util/Map;

    .line 347
    .line 348
    iget-object v10, v6, Lm3/d;->d:Ljava/lang/Class;

    .line 349
    .line 350
    invoke-virtual {v5, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 351
    .line 352
    .line 353
    move-result v5

    .line 354
    if-eqz v5, :cond_b

    .line 355
    .line 356
    const/4 v5, 0x0

    .line 357
    aget-object v5, v2, v5

    .line 358
    .line 359
    const/4 v10, 0x1

    .line 360
    aget-object v2, v2, v10

    .line 361
    .line 362
    move-object v10, v6

    .line 363
    check-cast v10, Lm3/c;

    .line 364
    .line 365
    invoke-virtual {v10, v5, v2}, Lm3/c;->d(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 366
    .line 367
    .line 368
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 369
    .line 370
    iput-object v2, v10, Lm3/d;->g:Ljava/lang/Boolean;

    .line 371
    .line 372
    :cond_b
    :goto_8
    if-eqz v9, :cond_c

    .line 373
    .line 374
    invoke-virtual {v0, v6}, Lg3/c;->c(Lm3/d;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    goto :goto_9

    .line 379
    :cond_c
    invoke-virtual {v0, v6}, Lg3/c;->c(Lm3/d;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    :goto_9
    invoke-virtual {v1}, Ll3/d;->c()Ljava/lang/Class;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 388
    .line 389
    if-eq v5, v9, :cond_d

    .line 390
    .line 391
    invoke-virtual {v1}, Ll3/d;->c()Ljava/lang/Class;

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    const-class v9, Ljava/lang/Float;

    .line 396
    .line 397
    if-ne v5, v9, :cond_e

    .line 398
    .line 399
    :cond_d
    instance-of v5, v2, Ljava/lang/Double;

    .line 400
    .line 401
    if-eqz v5, :cond_e

    .line 402
    .line 403
    check-cast v2, Ljava/lang/Double;

    .line 404
    .line 405
    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    :cond_e
    invoke-virtual {v1}, Ll3/d;->c()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    if-ne v5, v8, :cond_f

    .line 418
    .line 419
    sget-object v5, Lm3/i;->h:Lm3/i;

    .line 420
    .line 421
    iget-object v8, v6, Lm3/d;->a:Lm3/i;

    .line 422
    .line 423
    invoke-virtual {v5, v8}, Lm3/i;->equals(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v5

    .line 427
    if-eqz v5, :cond_f

    .line 428
    .line 429
    instance-of v5, v2, [B

    .line 430
    .line 431
    if-eqz v5, :cond_f

    .line 432
    .line 433
    new-instance v5, Ljava/lang/String;

    .line 434
    .line 435
    check-cast v2, [B

    .line 436
    .line 437
    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    .line 438
    .line 439
    .line 440
    move-object v2, v5

    .line 441
    :cond_f
    invoke-virtual {v1, v3, v2}, Ll3/d;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 442
    .line 443
    .line 444
    move-object/from16 v2, p0

    .line 445
    .line 446
    move-object/from16 v1, p1

    .line 447
    .line 448
    move-object/from16 v5, v16

    .line 449
    .line 450
    goto/16 :goto_0

    .line 451
    .line 452
    :cond_10
    new-instance v0, Lh3/c;

    .line 453
    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    .line 455
    .line 456
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    .line 458
    .line 459
    const-string v2, "No writable property \'"

    .line 460
    .line 461
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    invoke-direct {v0, v1}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    throw v0
    :try_end_1
    .catch Lg3/i; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 485
    :catch_0
    move-exception v0

    .line 486
    move-object v13, v0

    .line 487
    new-instance v0, Lg3/h;

    .line 488
    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    .line 490
    .line 491
    const-string v2, "Cannot create property="

    .line 492
    .line 493
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    const-string v2, " for JavaBean="

    .line 500
    .line 501
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v9

    .line 511
    move-object/from16 v1, p1

    .line 512
    .line 513
    iget-object v10, v1, Lm3/d;->b:Lh3/a;

    .line 514
    .line 515
    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v11

    .line 519
    iget-object v12, v6, Lm3/d;->b:Lh3/a;

    .line 520
    .line 521
    move-object v8, v0

    .line 522
    invoke-direct/range {v8 .. v13}, Lg3/h;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;Ljava/lang/Exception;)V

    .line 523
    .line 524
    .line 525
    throw v0

    .line 526
    :catch_1
    move-exception v0

    .line 527
    throw v0

    .line 528
    :cond_11
    new-instance v0, Lh3/c;

    .line 529
    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    .line 531
    .line 532
    const-string v2, "Keys must be scalars but found: "

    .line 533
    .line 534
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    iget-object v2, v6, Lm3/f;->a:Lm3/d;

    .line 538
    .line 539
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    invoke-direct {v0, v1}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    throw v0

    .line 550
    :cond_12
    return-void
.end method

.method public final d(Lm3/d;)Lg3/d;
    .locals 5

    .line 1
    iget-object v0, p0, Lg3/e;->b:Lg3/g;

    .line 2
    .line 3
    iget-object v1, v0, Lg3/c;->n:Ljava/util/HashMap;

    .line 4
    .line 5
    iget-object v2, p1, Lm3/d;->a:Lm3/i;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/Class;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p1, Lm3/d;->a:Lm3/i;

    .line 16
    .line 17
    iget-object v2, v2, Lm3/i;->a:Ljava/lang/String;

    .line 18
    .line 19
    const-string v3, "tag:yaml.org,2002:"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    const/16 v3, 0x12

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    sget-object v3, Lt3/a;->a:Ljava/nio/charset/CharsetDecoder;

    .line 34
    .line 35
    :try_start_0
    const-string v3, "UTF-8"

    .line 36
    .line 37
    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 41
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const/4 v4, 0x1

    .line 50
    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    :try_start_2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 59
    :goto_0
    iget-object v3, p1, Lm3/d;->a:Lm3/i;

    .line 60
    .line 61
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catch_1
    new-instance p1, Lh3/c;

    .line 66
    .line 67
    const-string v0, "Class not found: "

    .line 68
    .line 69
    invoke-static {v0, v2}, La1/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-direct {p1, v0}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :catch_2
    move-exception p1

    .line 78
    new-instance v0, Lh3/c;

    .line 79
    .line 80
    invoke-direct {v0, p1}, Lh3/c;-><init>(Ljava/lang/Exception;)V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :cond_0
    new-instance p1, Lh3/c;

    .line 85
    .line 86
    const-string v0, "Invalid tag: "

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {p1, v0}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_1
    :goto_1
    invoke-virtual {p1, v2}, Lm3/d;->b(Ljava/lang/Class;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, v0, Lg3/c;->a:Ljava/util/EnumMap;

    .line 100
    .line 101
    invoke-virtual {p1}, Lm3/d;->a()Lm3/e;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Lg3/d;

    .line 110
    .line 111
    return-object p1
.end method
