.class public abstract Lcom/google/android/gms/internal/play_billing/k1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x50

    new-array v0, v0, [C

    sput-object v0, Lcom/google/android/gms/internal/play_billing/k1;->a:[C

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 1
    instance-of v0, p3, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p3, Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/k1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_2

    check-cast p3, Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/k1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/play_billing/k1;->b(ILjava/lang/StringBuilder;)V

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_5
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of p2, p3, Ljava/lang/String;

    const/16 v0, 0x22

    const-string v1, ": \""

    if-eqz p2, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/play_billing/a0;

    sget-object p2, Lcom/google/android/gms/internal/play_billing/s0;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p3, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/play_billing/a0;-><init>([B)V

    invoke-static {p1}, Lc1/b;->A(Lcom/google/android/gms/internal/play_billing/z;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_6
    instance-of p2, p3, Lcom/google/android/gms/internal/play_billing/z;

    if-eqz p2, :cond_7

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, Lcom/google/android/gms/internal/play_billing/z;

    invoke-static {p3}, Lc1/b;->A(Lcom/google/android/gms/internal/play_billing/z;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_7
    instance-of p2, p3, Lcom/google/android/gms/internal/play_billing/l0;

    const-string v0, "}"

    const-string v1, "\n"

    const-string v2, " {"

    if-eqz p2, :cond_8

    add-int/lit8 p2, p1, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, Lcom/google/android/gms/internal/play_billing/l0;

    invoke-static {p3, p0, p2}, Lcom/google/android/gms/internal/play_billing/k1;->c(Lcom/google/android/gms/internal/play_billing/j1;Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/play_billing/k1;->b(ILjava/lang/StringBuilder;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_8
    instance-of p2, p3, Ljava/util/Map$Entry;

    if-eqz p2, :cond_9

    add-int/lit8 p2, p1, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "key"

    invoke-static {p0, p2, v3, v2}, Lcom/google/android/gms/internal/play_billing/k1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    const-string v2, "value"

    invoke-static {p0, p2, v2, p3}, Lcom/google/android/gms/internal/play_billing/k1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/play_billing/k1;->b(ILjava/lang/StringBuilder;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_9
    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static b(ILjava/lang/StringBuilder;)V
    .locals 3

    .line 1
    :goto_0
    if-lez p0, :cond_1

    const/16 v0, 0x50

    if-le p0, v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, p0

    :goto_1
    sget-object v1, Lcom/google/android/gms/internal/play_billing/k1;->a:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    sub-int/2addr p0, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static c(Lcom/google/android/gms/internal/play_billing/j1;Ljava/lang/StringBuilder;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v4, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v5, Ljava/util/TreeMap;

    .line 18
    .line 19
    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    array-length v7, v6

    .line 31
    const/4 v8, 0x0

    .line 32
    move v9, v8

    .line 33
    :goto_0
    const/4 v10, 0x3

    .line 34
    const-string v11, "get"

    .line 35
    .line 36
    const-string v12, "has"

    .line 37
    .line 38
    const-string v13, "set"

    .line 39
    .line 40
    if-ge v9, v7, :cond_4

    .line 41
    .line 42
    aget-object v14, v6, v9

    .line 43
    .line 44
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 45
    .line 46
    .line 47
    move-result v15

    .line 48
    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 49
    .line 50
    .line 51
    move-result v15

    .line 52
    if-eqz v15, :cond_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v15

    .line 59
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result v15

    .line 63
    if-lt v15, v10, :cond_3

    .line 64
    .line 65
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    if-eqz v10, :cond_1

    .line 74
    .line 75
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    if-eqz v10, :cond_3

    .line 92
    .line 93
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    array-length v10, v10

    .line 98
    if-nez v10, :cond_3

    .line 99
    .line 100
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    if-eqz v10, :cond_2

    .line 109
    .line 110
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    invoke-virtual {v4, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v10

    .line 126
    if-eqz v10, :cond_3

    .line 127
    .line 128
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    invoke-virtual {v5, v10, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_4
    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-eqz v7, :cond_12

    .line 151
    .line 152
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    check-cast v7, Ljava/util/Map$Entry;

    .line 157
    .line 158
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    check-cast v9, Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    const-string v14, "List"

    .line 169
    .line 170
    invoke-virtual {v9, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result v15

    .line 174
    if-eqz v15, :cond_5

    .line 175
    .line 176
    const-string v15, "OrBuilderList"

    .line 177
    .line 178
    invoke-virtual {v9, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v15

    .line 182
    if-nez v15, :cond_5

    .line 183
    .line 184
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v14

    .line 188
    if-nez v14, :cond_5

    .line 189
    .line 190
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v14

    .line 194
    check-cast v14, Ljava/lang/reflect/Method;

    .line 195
    .line 196
    if-eqz v14, :cond_5

    .line 197
    .line 198
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    move-result-object v15

    .line 202
    const-class v10, Ljava/util/List;

    .line 203
    .line 204
    invoke-virtual {v15, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v10

    .line 208
    if-eqz v10, :cond_5

    .line 209
    .line 210
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    add-int/lit8 v7, v7, -0x4

    .line 215
    .line 216
    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    new-array v9, v8, [Ljava/lang/Object;

    .line 221
    .line 222
    invoke-static {v14, v0, v9}, Lcom/google/android/gms/internal/play_billing/l0;->f(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    goto :goto_3

    .line 227
    :cond_5
    const-string v10, "Map"

    .line 228
    .line 229
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result v14

    .line 233
    if-eqz v14, :cond_6

    .line 234
    .line 235
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v10

    .line 239
    if-nez v10, :cond_6

    .line 240
    .line 241
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    check-cast v10, Ljava/lang/reflect/Method;

    .line 246
    .line 247
    if-eqz v10, :cond_6

    .line 248
    .line 249
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    move-result-object v14

    .line 253
    const-class v15, Ljava/util/Map;

    .line 254
    .line 255
    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v14

    .line 259
    if-eqz v14, :cond_6

    .line 260
    .line 261
    const-class v14, Ljava/lang/Deprecated;

    .line 262
    .line 263
    invoke-virtual {v10, v14}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 264
    .line 265
    .line 266
    move-result v14

    .line 267
    if-nez v14, :cond_6

    .line 268
    .line 269
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 270
    .line 271
    .line 272
    move-result v14

    .line 273
    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 274
    .line 275
    .line 276
    move-result v14

    .line 277
    if-eqz v14, :cond_6

    .line 278
    .line 279
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    add-int/lit8 v7, v7, -0x3

    .line 284
    .line 285
    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v7

    .line 289
    new-array v9, v8, [Ljava/lang/Object;

    .line 290
    .line 291
    invoke-static {v10, v0, v9}, Lcom/google/android/gms/internal/play_billing/l0;->f(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v9

    .line 295
    :goto_3
    invoke-static {v1, v2, v7, v9}, Lcom/google/android/gms/internal/play_billing/k1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    goto/16 :goto_6

    .line 299
    .line 300
    :cond_6
    invoke-virtual {v13, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v10

    .line 304
    invoke-virtual {v3, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v10

    .line 308
    if-eqz v10, :cond_11

    .line 309
    .line 310
    const-string v10, "Bytes"

    .line 311
    .line 312
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    move-result v10

    .line 316
    if-eqz v10, :cond_7

    .line 317
    .line 318
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 319
    .line 320
    .line 321
    move-result v10

    .line 322
    add-int/lit8 v10, v10, -0x5

    .line 323
    .line 324
    invoke-virtual {v9, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v10

    .line 328
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v10

    .line 332
    invoke-virtual {v11, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v10

    .line 336
    invoke-virtual {v5, v10}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v10

    .line 340
    if-nez v10, :cond_11

    .line 341
    .line 342
    :cond_7
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    check-cast v7, Ljava/lang/reflect/Method;

    .line 347
    .line 348
    invoke-virtual {v12, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v10

    .line 352
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v10

    .line 356
    check-cast v10, Ljava/lang/reflect/Method;

    .line 357
    .line 358
    if-eqz v7, :cond_11

    .line 359
    .line 360
    new-array v14, v8, [Ljava/lang/Object;

    .line 361
    .line 362
    invoke-static {v7, v0, v14}, Lcom/google/android/gms/internal/play_billing/l0;->f(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v7

    .line 366
    if-nez v10, :cond_f

    .line 367
    .line 368
    instance-of v10, v7, Ljava/lang/Boolean;

    .line 369
    .line 370
    if-eqz v10, :cond_8

    .line 371
    .line 372
    move-object v10, v7

    .line 373
    check-cast v10, Ljava/lang/Boolean;

    .line 374
    .line 375
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 376
    .line 377
    .line 378
    move-result v10

    .line 379
    if-eqz v10, :cond_11

    .line 380
    .line 381
    goto/16 :goto_5

    .line 382
    .line 383
    :cond_8
    instance-of v10, v7, Ljava/lang/Integer;

    .line 384
    .line 385
    if-eqz v10, :cond_9

    .line 386
    .line 387
    move-object v10, v7

    .line 388
    check-cast v10, Ljava/lang/Integer;

    .line 389
    .line 390
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 391
    .line 392
    .line 393
    move-result v10

    .line 394
    if-eqz v10, :cond_11

    .line 395
    .line 396
    goto/16 :goto_5

    .line 397
    .line 398
    :cond_9
    instance-of v10, v7, Ljava/lang/Float;

    .line 399
    .line 400
    if-eqz v10, :cond_a

    .line 401
    .line 402
    move-object v10, v7

    .line 403
    check-cast v10, Ljava/lang/Float;

    .line 404
    .line 405
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 406
    .line 407
    .line 408
    move-result v10

    .line 409
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 410
    .line 411
    .line 412
    move-result v10

    .line 413
    if-eqz v10, :cond_11

    .line 414
    .line 415
    goto :goto_5

    .line 416
    :cond_a
    instance-of v10, v7, Ljava/lang/Double;

    .line 417
    .line 418
    if-eqz v10, :cond_b

    .line 419
    .line 420
    move-object v10, v7

    .line 421
    check-cast v10, Ljava/lang/Double;

    .line 422
    .line 423
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    .line 424
    .line 425
    .line 426
    move-result-wide v14

    .line 427
    invoke-static {v14, v15}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 428
    .line 429
    .line 430
    move-result-wide v14

    .line 431
    const-wide/16 v16, 0x0

    .line 432
    .line 433
    cmp-long v10, v14, v16

    .line 434
    .line 435
    if-eqz v10, :cond_11

    .line 436
    .line 437
    goto :goto_5

    .line 438
    :cond_b
    instance-of v10, v7, Ljava/lang/String;

    .line 439
    .line 440
    if-eqz v10, :cond_c

    .line 441
    .line 442
    const-string v10, ""

    .line 443
    .line 444
    goto :goto_4

    .line 445
    :cond_c
    instance-of v10, v7, Lcom/google/android/gms/internal/play_billing/z;

    .line 446
    .line 447
    if-eqz v10, :cond_d

    .line 448
    .line 449
    sget-object v10, Lcom/google/android/gms/internal/play_billing/z;->b:Lcom/google/android/gms/internal/play_billing/a0;

    .line 450
    .line 451
    :goto_4
    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result v10

    .line 455
    if-nez v10, :cond_11

    .line 456
    .line 457
    goto :goto_5

    .line 458
    :cond_d
    instance-of v10, v7, Lcom/google/android/gms/internal/play_billing/j1;

    .line 459
    .line 460
    if-eqz v10, :cond_e

    .line 461
    .line 462
    move-object v10, v7

    .line 463
    check-cast v10, Lcom/google/android/gms/internal/play_billing/j1;

    .line 464
    .line 465
    check-cast v10, Lcom/google/android/gms/internal/play_billing/l0;

    .line 466
    .line 467
    const/4 v14, 0x6

    .line 468
    invoke-virtual {v10, v14}, Lcom/google/android/gms/internal/play_billing/l0;->m(I)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v10

    .line 472
    check-cast v10, Lcom/google/android/gms/internal/play_billing/l0;

    .line 473
    .line 474
    if-eq v7, v10, :cond_11

    .line 475
    .line 476
    goto :goto_5

    .line 477
    :cond_e
    instance-of v10, v7, Ljava/lang/Enum;

    .line 478
    .line 479
    if-eqz v10, :cond_10

    .line 480
    .line 481
    move-object v10, v7

    .line 482
    check-cast v10, Ljava/lang/Enum;

    .line 483
    .line 484
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 485
    .line 486
    .line 487
    move-result v10

    .line 488
    if-eqz v10, :cond_11

    .line 489
    .line 490
    goto :goto_5

    .line 491
    :cond_f
    new-array v14, v8, [Ljava/lang/Object;

    .line 492
    .line 493
    invoke-static {v10, v0, v14}, Lcom/google/android/gms/internal/play_billing/l0;->f(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v10

    .line 497
    check-cast v10, Ljava/lang/Boolean;

    .line 498
    .line 499
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 500
    .line 501
    .line 502
    move-result v10

    .line 503
    if-eqz v10, :cond_11

    .line 504
    .line 505
    :cond_10
    :goto_5
    invoke-static {v1, v2, v9, v7}, Lcom/google/android/gms/internal/play_billing/k1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    :cond_11
    :goto_6
    const/4 v10, 0x3

    .line 509
    goto/16 :goto_2

    .line 510
    .line 511
    :cond_12
    check-cast v0, Lcom/google/android/gms/internal/play_billing/l0;

    .line 512
    .line 513
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/l0;->zzc:Lcom/google/android/gms/internal/play_billing/w1;

    .line 514
    .line 515
    if-eqz v0, :cond_13

    .line 516
    .line 517
    :goto_7
    iget v3, v0, Lcom/google/android/gms/internal/play_billing/w1;->a:I

    .line 518
    .line 519
    if-ge v8, v3, :cond_13

    .line 520
    .line 521
    iget-object v3, v0, Lcom/google/android/gms/internal/play_billing/w1;->b:[I

    .line 522
    .line 523
    aget v3, v3, v8

    .line 524
    .line 525
    const/4 v4, 0x3

    .line 526
    ushr-int/2addr v3, v4

    .line 527
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v3

    .line 531
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/w1;->c:[Ljava/lang/Object;

    .line 532
    .line 533
    aget-object v5, v5, v8

    .line 534
    .line 535
    invoke-static {v1, v2, v3, v5}, Lcom/google/android/gms/internal/play_billing/k1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 536
    .line 537
    .line 538
    add-int/lit8 v8, v8, 0x1

    .line 539
    .line 540
    goto :goto_7

    .line 541
    :cond_13
    return-void
.end method
