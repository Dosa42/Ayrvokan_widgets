.class public final Le3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljava/util/logging/Logger;


# instance fields
.field public final a:Ljava/lang/Class;

.field public b:Ljava/lang/Class;

.field public final c:Lm3/i;

.field public transient d:Lf2/g;

.field public transient e:Z

.field public f:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Le3/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Le3/e;->g:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lm3/i;Ljava/lang/Class;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Le3/e;->f:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    iput-object p1, p0, Le3/e;->a:Ljava/lang/Class;

    iput-object p2, p0, Le3/e;->c:Lm3/i;

    iput-object p3, p0, Le3/e;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 8

    .line 1
    iget-object v0, p0, Le3/e;->f:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_7

    .line 8
    .line 9
    new-instance v0, Ll3/e;

    .line 10
    .line 11
    invoke-direct {v0, p1, p2}, Ll3/e;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 15
    .line 16
    iget-object p2, p0, Le3/e;->f:Ljava/util/Map;

    .line 17
    .line 18
    if-ne p1, p2, :cond_0

    .line 19
    .line 20
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Le3/e;->f:Ljava/util/Map;

    .line 26
    .line 27
    :cond_0
    iget-object p1, v0, Ll3/e;->c:Ljava/lang/Class;

    .line 28
    .line 29
    iget-object p2, p0, Le3/e;->a:Ljava/lang/Class;

    .line 30
    .line 31
    if-eq p1, p2, :cond_6

    .line 32
    .line 33
    iput-object p2, v0, Ll3/e;->c:Ljava/lang/Class;

    .line 34
    .line 35
    invoke-virtual {v0}, Ll3/e;->b()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    move-object v1, p2

    .line 40
    :goto_0
    const/4 v2, 0x1

    .line 41
    const/4 v3, 0x0

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    array-length v5, v4

    .line 49
    :goto_1
    if-ge v3, v5, :cond_2

    .line 50
    .line 51
    aget-object v6, v4, v3

    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_1

    .line 62
    .line 63
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-nez v4, :cond_2

    .line 72
    .line 73
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_2

    .line 78
    .line 79
    invoke-virtual {v6, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 80
    .line 81
    .line 82
    iput-object v6, v0, Ll3/e;->g:Ljava/lang/reflect/Field;

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    iget-object p1, v0, Ll3/e;->g:Ljava/lang/reflect/Field;

    .line 94
    .line 95
    if-nez p1, :cond_4

    .line 96
    .line 97
    sget-object p1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 98
    .line 99
    sget-object v1, Ll3/e;->k:Ljava/util/logging/Logger;

    .line 100
    .line 101
    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_4

    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {v0}, Ll3/e;->b()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    filled-new-array {p1, v4}, [Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string v4, "Failed to find field for %s.%s"

    .line 120
    .line 121
    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_4
    iget-object p1, v0, Ll3/e;->d:Ljava/lang/String;

    .line 129
    .line 130
    if-eqz p1, :cond_5

    .line 131
    .line 132
    new-array v1, v3, [Ljava/lang/Class;

    .line 133
    .line 134
    invoke-virtual {v0, p2, p1, v1}, Ll3/e;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 135
    .line 136
    .line 137
    :cond_5
    iget-object p1, v0, Ll3/e;->e:Ljava/lang/String;

    .line 138
    .line 139
    if-eqz p1, :cond_6

    .line 140
    .line 141
    iput-boolean v3, v0, Ll3/e;->j:Z

    .line 142
    .line 143
    new-array v1, v2, [Ljava/lang/Class;

    .line 144
    .line 145
    invoke-virtual {v0}, Ll3/e;->c()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    aput-object v4, v1, v3

    .line 150
    .line 151
    invoke-virtual {v0, p2, p1, v1}, Ll3/e;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    iput-object v1, v0, Ll3/e;->f:Ljava/lang/reflect/Method;

    .line 156
    .line 157
    if-nez v1, :cond_6

    .line 158
    .line 159
    iget-object v1, v0, Ll3/e;->h:[Ljava/lang/Class;

    .line 160
    .line 161
    if-eqz v1, :cond_6

    .line 162
    .line 163
    iput-boolean v2, v0, Ll3/e;->j:Z

    .line 164
    .line 165
    invoke-virtual {v0, p2, p1, v1}, Ll3/e;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    iput-object p1, v0, Ll3/e;->f:Ljava/lang/reflect/Method;

    .line 170
    .line 171
    :cond_6
    iget-object p1, p0, Le3/e;->f:Ljava/util/Map;

    .line 172
    .line 173
    invoke-virtual {v0}, Ll3/e;->b()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_7
    iget-object v0, p0, Le3/e;->f:Ljava/util/Map;

    .line 182
    .line 183
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Ll3/e;

    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    array-length v0, p2

    .line 193
    if-lez v0, :cond_8

    .line 194
    .line 195
    iput-object p2, p1, Ll3/e;->h:[Ljava/lang/Class;

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_8
    const/4 p2, 0x0

    .line 199
    iput-object p2, p1, Ll3/e;->h:[Ljava/lang/Class;

    .line 200
    .line 201
    :goto_3
    return-void
.end method

.method public final b(Ljava/lang/String;)Ll3/d;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v0, Le3/e;->e:Z

    .line 6
    .line 7
    const-string v3, "\' on class: "

    .line 8
    .line 9
    const-string v4, "Unable to find property \'"

    .line 10
    .line 11
    iget-object v6, v0, Le3/e;->a:Ljava/lang/Class;

    .line 12
    .line 13
    if-nez v2, :cond_a

    .line 14
    .line 15
    iget-object v2, v0, Le3/e;->f:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :catch_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    if-eqz v8, :cond_9

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    check-cast v8, Ll3/e;

    .line 36
    .line 37
    :try_start_0
    invoke-virtual {v8}, Ll3/e;->b()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v10
    :try_end_0
    .catch Lh3/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :try_start_1
    iget-object v11, v0, Le3/e;->d:Lf2/g;

    .line 42
    .line 43
    if-eqz v11, :cond_7

    .line 44
    .line 45
    iget-object v12, v11, Lf2/g;->c:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v12, Ljava/util/Map;

    .line 48
    .line 49
    invoke-interface {v12, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v13

    .line 53
    if-eqz v13, :cond_0

    .line 54
    .line 55
    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    check-cast v12, Ljava/util/Map;

    .line 60
    .line 61
    move-object/from16 v16, v2

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_0
    new-instance v13, Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 67
    .line 68
    .line 69
    move-object v14, v6

    .line 70
    :goto_1
    if-eqz v14, :cond_4

    .line 71
    .line 72
    invoke-virtual {v14}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 73
    .line 74
    .line 75
    move-result-object v15

    .line 76
    array-length v5, v15

    .line 77
    const/4 v7, 0x0

    .line 78
    :goto_2
    if-ge v7, v5, :cond_3

    .line 79
    .line 80
    aget-object v9, v15, v7

    .line 81
    .line 82
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 83
    .line 84
    .line 85
    move-result v16

    .line 86
    invoke-static/range {v16 .. v16}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 87
    .line 88
    .line 89
    move-result v17

    .line 90
    if-nez v17, :cond_1

    .line 91
    .line 92
    invoke-static/range {v16 .. v16}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    .line 93
    .line 94
    .line 95
    move-result v16
    :try_end_1
    .catch Lh3/c; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    if-nez v16, :cond_1

    .line 97
    .line 98
    move-object/from16 v16, v2

    .line 99
    .line 100
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-interface {v13, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-nez v2, :cond_2

    .line 109
    .line 110
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    move/from16 v17, v5

    .line 115
    .line 116
    new-instance v5, Ll3/b;

    .line 117
    .line 118
    invoke-direct {v5, v9}, Ll3/b;-><init>(Ljava/lang/reflect/Field;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {v13, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_1
    move-object/from16 v16, v2

    .line 126
    .line 127
    :cond_2
    move/from16 v17, v5

    .line 128
    .line 129
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 130
    .line 131
    move-object/from16 v2, v16

    .line 132
    .line 133
    move/from16 v5, v17

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_3
    move-object/from16 v16, v2

    .line 137
    .line 138
    invoke-virtual {v14}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    move-result-object v14

    .line 142
    move-object/from16 v2, v16

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_4
    move-object/from16 v16, v2

    .line 146
    .line 147
    invoke-interface {v12, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-object v12, v13

    .line 151
    :goto_4
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    check-cast v2, Ll3/d;

    .line 156
    .line 157
    if-nez v2, :cond_5

    .line 158
    .line 159
    iget-boolean v5, v11, Lf2/g;->b:Z

    .line 160
    .line 161
    if-eqz v5, :cond_5

    .line 162
    .line 163
    new-instance v2, Ll3/c;

    .line 164
    .line 165
    invoke-direct {v2, v10}, Ll3/c;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_5
    if-eqz v2, :cond_6

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_6
    new-instance v2, Lh3/c;

    .line 172
    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    invoke-direct {v2, v5}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw v2

    .line 199
    :cond_7
    move-object/from16 v16, v2

    .line 200
    .line 201
    const/4 v2, 0x0

    .line 202
    :goto_5
    iput-object v2, v8, Ll3/e;->i:Ll3/d;

    .line 203
    .line 204
    iget-object v2, v8, Ll3/e;->e:Ljava/lang/String;

    .line 205
    .line 206
    if-eqz v2, :cond_8

    .line 207
    .line 208
    iget-object v5, v8, Ll3/e;->f:Ljava/lang/reflect/Method;

    .line 209
    .line 210
    if-nez v5, :cond_8

    .line 211
    .line 212
    iget-boolean v5, v8, Ll3/e;->j:Z

    .line 213
    .line 214
    if-nez v5, :cond_8

    .line 215
    .line 216
    const/4 v5, 0x1

    .line 217
    iput-boolean v5, v8, Ll3/e;->j:Z

    .line 218
    .line 219
    iget-object v5, v8, Ll3/e;->c:Ljava/lang/Class;

    .line 220
    .line 221
    invoke-virtual {v8}, Ll3/e;->a()[Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    invoke-virtual {v8, v5, v2, v7}, Ll3/e;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    iput-object v2, v8, Ll3/e;->f:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Lh3/c; {:try_start_2 .. :try_end_2} :catch_2

    .line 230
    .line 231
    goto :goto_6

    .line 232
    :catch_1
    move-object/from16 v16, v2

    .line 233
    .line 234
    :catch_2
    :cond_8
    :goto_6
    move-object/from16 v2, v16

    .line 235
    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :cond_9
    const/4 v2, 0x1

    .line 239
    iput-boolean v2, v0, Le3/e;->e:Z

    .line 240
    .line 241
    :cond_a
    iget-object v2, v0, Le3/e;->f:Ljava/util/Map;

    .line 242
    .line 243
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-eqz v2, :cond_b

    .line 248
    .line 249
    iget-object v2, v0, Le3/e;->f:Ljava/util/Map;

    .line 250
    .line 251
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    check-cast v1, Ll3/d;

    .line 256
    .line 257
    goto/16 :goto_c

    .line 258
    .line 259
    :cond_b
    iget-object v2, v0, Le3/e;->d:Lf2/g;

    .line 260
    .line 261
    if-eqz v2, :cond_12

    .line 262
    .line 263
    iget-object v5, v2, Lf2/g;->c:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v5, Ljava/util/Map;

    .line 266
    .line 267
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v7

    .line 271
    if-eqz v7, :cond_c

    .line 272
    .line 273
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    check-cast v5, Ljava/util/Map;

    .line 278
    .line 279
    goto :goto_9

    .line 280
    :cond_c
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 281
    .line 282
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 283
    .line 284
    .line 285
    move-object v8, v6

    .line 286
    :goto_7
    if-eqz v8, :cond_f

    .line 287
    .line 288
    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 289
    .line 290
    .line 291
    move-result-object v9

    .line 292
    array-length v10, v9

    .line 293
    const/4 v11, 0x0

    .line 294
    :goto_8
    if-ge v11, v10, :cond_e

    .line 295
    .line 296
    aget-object v12, v9, v11

    .line 297
    .line 298
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 299
    .line 300
    .line 301
    move-result v13

    .line 302
    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 303
    .line 304
    .line 305
    move-result v14

    .line 306
    if-nez v14, :cond_d

    .line 307
    .line 308
    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    .line 309
    .line 310
    .line 311
    move-result v13

    .line 312
    if-nez v13, :cond_d

    .line 313
    .line 314
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v13

    .line 318
    invoke-interface {v7, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v13

    .line 322
    if-nez v13, :cond_d

    .line 323
    .line 324
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v13

    .line 328
    new-instance v14, Ll3/b;

    .line 329
    .line 330
    invoke-direct {v14, v12}, Ll3/b;-><init>(Ljava/lang/reflect/Field;)V

    .line 331
    .line 332
    .line 333
    invoke-interface {v7, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    :cond_d
    add-int/lit8 v11, v11, 0x1

    .line 337
    .line 338
    goto :goto_8

    .line 339
    :cond_e
    invoke-virtual {v8}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    move-result-object v8

    .line 343
    goto :goto_7

    .line 344
    :cond_f
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-object v5, v7

    .line 348
    :goto_9
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    check-cast v5, Ll3/d;

    .line 353
    .line 354
    if-nez v5, :cond_10

    .line 355
    .line 356
    iget-boolean v2, v2, Lf2/g;->b:Z

    .line 357
    .line 358
    if-eqz v2, :cond_10

    .line 359
    .line 360
    new-instance v2, Ll3/c;

    .line 361
    .line 362
    invoke-direct {v2, v1}, Ll3/c;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    move-object v7, v2

    .line 366
    goto :goto_a

    .line 367
    :cond_10
    move-object v7, v5

    .line 368
    :goto_a
    if-eqz v7, :cond_11

    .line 369
    .line 370
    goto :goto_b

    .line 371
    :cond_11
    new-instance v2, Lh3/c;

    .line 372
    .line 373
    new-instance v5, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-direct {v2, v1}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    throw v2

    .line 399
    :cond_12
    const/4 v7, 0x0

    .line 400
    :goto_b
    move-object v1, v7

    .line 401
    :goto_c
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TypeDescription for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Le3/e;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (tag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le3/e;->c:Lm3/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
