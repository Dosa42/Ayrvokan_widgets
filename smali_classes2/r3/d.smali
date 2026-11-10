.class public final Lr3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/b;


# static fields
.field public static final j:Ljava/util/regex/Pattern;

.field public static final k:Ljava/util/HashMap;

.field public static final l:Ljava/util/HashMap;


# instance fields
.field public final a:Lo3/b;

.field public b:Z

.field public c:I

.field public final d:Ljava/util/ArrayList;

.field public e:I

.field public f:I

.field public final g:Lh/a;

.field public h:Z

.field public final i:Ljava/util/LinkedHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "[^0-9A-Fa-f]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lr3/d;->j:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lr3/d;->k:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lr3/d;->l:Ljava/util/HashMap;

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\u0000"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x61

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\u0007"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x62

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\u0008"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x74

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x6e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x76

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\u000b"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\u000c"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x72

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\r"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\u001b"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x5c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\\"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\u0085"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x5f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\u00a0"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\u2028"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\u2029"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x78

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x75

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x55

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo3/b;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lr3/d;->b:Z

    .line 6
    .line 7
    iput v0, p0, Lr3/d;->c:I

    .line 8
    .line 9
    iput v0, p0, Lr3/d;->e:I

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lr3/d;->f:I

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lr3/d;->h:Z

    .line 16
    .line 17
    iput-object p1, p0, Lr3/d;->a:Lo3/b;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    const/16 v1, 0x64

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lr3/d;->d:Ljava/util/ArrayList;

    .line 27
    .line 28
    new-instance v1, Lh/a;

    .line 29
    .line 30
    const/16 v2, 0xa

    .line 31
    .line 32
    const/16 v3, 0x18

    .line 33
    .line 34
    invoke-direct {v1, v2, v3}, Lh/a;-><init>(II)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lr3/d;->g:Lh/a;

    .line 38
    .line 39
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lr3/d;->i:Ljava/util/LinkedHashMap;

    .line 45
    .line 46
    invoke-virtual {p1}, Lo3/b;->c()Lh3/a;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance v1, Ls3/h;

    .line 51
    .line 52
    invoke-direct {v1, p1, p1}, Ls3/h;-><init>(Lh3/a;Lh3/a;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lr3/d;->f:I

    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lr3/d;->g:Lh/a;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lh/a;->E(Ljava/lang/Object;)V

    iput p1, p0, Lr3/d;->f:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final varargs b([I)Z
    .locals 5

    .line 1
    :goto_0
    invoke-virtual {p0}, Lr3/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr3/d;->h()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr3/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    array-length v1, p1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3/j;

    invoke-virtual {v0}, Ls3/j;->a()I

    move-result v0

    move v1, v2

    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_3

    aget v4, p1, v1

    if-ne v0, v4, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public final c(C)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lr3/d;->h:Z

    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Lr3/d;->l()V

    .line 7
    .line 8
    .line 9
    const/16 v2, 0x3e

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    move/from16 v4, p1

    .line 13
    .line 14
    if-ne v4, v2, :cond_0

    .line 15
    .line 16
    move v2, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v2, v3

    .line 19
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v6, v0, Lr3/d;->a:Lo3/b;

    .line 25
    .line 26
    invoke-virtual {v6}, Lo3/b;->c()Lh3/a;

    .line 27
    .line 28
    .line 29
    move-result-object v10

    .line 30
    invoke-virtual {v6, v1}, Lo3/b;->b(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v6}, Lo3/b;->d()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    const/4 v8, -0x1

    .line 38
    const-string v9, "while scanning a block scalar"

    .line 39
    .line 40
    const-string v11, "expected indentation indicator in the range 1-9, but found 0"

    .line 41
    .line 42
    const/16 v12, 0x2b

    .line 43
    .line 44
    const/16 v13, 0x2d

    .line 45
    .line 46
    if-eq v7, v13, :cond_5

    .line 47
    .line 48
    if-ne v7, v12, :cond_1

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    invoke-static {v7}, Ljava/lang/Character;->isDigit(I)Z

    .line 52
    .line 53
    .line 54
    move-result v14

    .line 55
    const/4 v15, 0x0

    .line 56
    if-eqz v14, :cond_8

    .line 57
    .line 58
    invoke-static {v7}, Ljava/lang/Character;->toChars(I)[C

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_4

    .line 71
    .line 72
    invoke-virtual {v6, v1}, Lo3/b;->b(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Lo3/b;->d()I

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    if-eq v11, v13, :cond_2

    .line 80
    .line 81
    if-ne v11, v12, :cond_9

    .line 82
    .line 83
    :cond_2
    if-ne v11, v12, :cond_3

    .line 84
    .line 85
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 89
    .line 90
    :goto_1
    move-object v15, v11

    .line 91
    goto :goto_4

    .line 92
    :cond_4
    new-instance v1, Lr3/c;

    .line 93
    .line 94
    invoke-virtual {v6}, Lo3/b;->c()Lh3/a;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-direct {v1, v9, v10, v11, v2}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 99
    .line 100
    .line 101
    throw v1

    .line 102
    :cond_5
    :goto_2
    if-ne v7, v12, :cond_6

    .line 103
    .line 104
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_6
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 108
    .line 109
    :goto_3
    move-object v15, v7

    .line 110
    invoke-virtual {v6, v1}, Lo3/b;->b(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6}, Lo3/b;->d()I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    invoke-static {v7}, Ljava/lang/Character;->isDigit(I)Z

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    if-eqz v12, :cond_8

    .line 122
    .line 123
    invoke-static {v7}, Ljava/lang/Character;->toChars(I)[C

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-eqz v7, :cond_7

    .line 136
    .line 137
    :goto_4
    invoke-virtual {v6, v1}, Lo3/b;->b(I)V

    .line 138
    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_7
    new-instance v1, Lr3/c;

    .line 142
    .line 143
    invoke-virtual {v6}, Lo3/b;->c()Lh3/a;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-direct {v1, v9, v10, v11, v2}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 148
    .line 149
    .line 150
    throw v1

    .line 151
    :cond_8
    move v7, v8

    .line 152
    :cond_9
    :goto_5
    invoke-virtual {v6}, Lo3/b;->d()I

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    sget-object v12, Lr3/a;->f:Lr3/a;

    .line 157
    .line 158
    invoke-virtual {v12, v11}, Lr3/a;->b(I)Z

    .line 159
    .line 160
    .line 161
    move-result v12

    .line 162
    const-string v13, ")"

    .line 163
    .line 164
    const-string v14, "("

    .line 165
    .line 166
    if-nez v12, :cond_20

    .line 167
    .line 168
    :goto_6
    invoke-virtual {v6}, Lo3/b;->d()I

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    const/16 v12, 0x20

    .line 173
    .line 174
    if-ne v11, v12, :cond_a

    .line 175
    .line 176
    invoke-virtual {v6, v1}, Lo3/b;->b(I)V

    .line 177
    .line 178
    .line 179
    goto :goto_6

    .line 180
    :cond_a
    invoke-virtual {v6}, Lo3/b;->d()I

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    const/16 v12, 0x23

    .line 185
    .line 186
    if-ne v11, v12, :cond_b

    .line 187
    .line 188
    :goto_7
    sget-object v11, Lr3/a;->e:Lr3/a;

    .line 189
    .line 190
    invoke-virtual {v6}, Lo3/b;->d()I

    .line 191
    .line 192
    .line 193
    move-result v12

    .line 194
    invoke-virtual {v11, v12}, Lr3/a;->b(I)Z

    .line 195
    .line 196
    .line 197
    move-result v11

    .line 198
    if-eqz v11, :cond_b

    .line 199
    .line 200
    invoke-virtual {v6, v1}, Lo3/b;->b(I)V

    .line 201
    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_b
    invoke-virtual {v6}, Lo3/b;->d()I

    .line 205
    .line 206
    .line 207
    move-result v11

    .line 208
    invoke-virtual/range {p0 .. p0}, Lr3/d;->q()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v12

    .line 212
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 213
    .line 214
    .line 215
    move-result v12

    .line 216
    if-nez v12, :cond_d

    .line 217
    .line 218
    if-nez v11, :cond_c

    .line 219
    .line 220
    goto :goto_8

    .line 221
    :cond_c
    invoke-static {v11}, Ljava/lang/Character;->toChars(I)[C

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    new-instance v2, Lr3/c;

    .line 230
    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string v4, "expected a comment or a line break, but found "

    .line 234
    .line 235
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v6}, Lo3/b;->c()Lh3/a;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-direct {v2, v9, v10, v1, v3}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 259
    .line 260
    .line 261
    throw v2

    .line 262
    :cond_d
    :goto_8
    iget v9, v0, Lr3/d;->f:I

    .line 263
    .line 264
    add-int/2addr v9, v1

    .line 265
    if-ge v9, v1, :cond_e

    .line 266
    .line 267
    move v9, v1

    .line 268
    :cond_e
    if-ne v7, v8, :cond_14

    .line 269
    .line 270
    new-instance v7, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v6}, Lo3/b;->c()Lh3/a;

    .line 276
    .line 277
    .line 278
    move-result-object v11

    .line 279
    move v12, v3

    .line 280
    :cond_f
    :goto_9
    sget-object v13, Lr3/a;->d:Lr3/a;

    .line 281
    .line 282
    invoke-virtual {v6}, Lo3/b;->d()I

    .line 283
    .line 284
    .line 285
    move-result v14

    .line 286
    invoke-virtual {v13, v14}, Lr3/a;->a(I)Z

    .line 287
    .line 288
    .line 289
    move-result v13

    .line 290
    if-nez v13, :cond_11

    .line 291
    .line 292
    const-string v13, " \r"

    .line 293
    .line 294
    invoke-virtual {v13, v14, v3}, Ljava/lang/String;->indexOf(II)I

    .line 295
    .line 296
    .line 297
    move-result v13

    .line 298
    if-eq v13, v8, :cond_10

    .line 299
    .line 300
    goto :goto_a

    .line 301
    :cond_10
    move v13, v3

    .line 302
    goto :goto_b

    .line 303
    :cond_11
    :goto_a
    move v13, v1

    .line 304
    :goto_b
    if-eqz v13, :cond_13

    .line 305
    .line 306
    invoke-virtual {v6}, Lo3/b;->d()I

    .line 307
    .line 308
    .line 309
    move-result v13

    .line 310
    const/16 v14, 0x20

    .line 311
    .line 312
    if-eq v13, v14, :cond_12

    .line 313
    .line 314
    invoke-virtual/range {p0 .. p0}, Lr3/d;->q()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v11

    .line 318
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v6}, Lo3/b;->c()Lh3/a;

    .line 322
    .line 323
    .line 324
    move-result-object v11

    .line 325
    goto :goto_9

    .line 326
    :cond_12
    invoke-virtual {v6, v1}, Lo3/b;->b(I)V

    .line 327
    .line 328
    .line 329
    iget v13, v6, Lo3/b;->h:I

    .line 330
    .line 331
    if-le v13, v12, :cond_f

    .line 332
    .line 333
    move v12, v13

    .line 334
    goto :goto_9

    .line 335
    :cond_13
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 340
    .line 341
    .line 342
    move-result-object v12

    .line 343
    filled-new-array {v7, v12, v11}, [Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    aget-object v11, v7, v3

    .line 348
    .line 349
    check-cast v11, Ljava/lang/String;

    .line 350
    .line 351
    aget-object v12, v7, v1

    .line 352
    .line 353
    check-cast v12, Ljava/lang/Integer;

    .line 354
    .line 355
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 356
    .line 357
    .line 358
    move-result v12

    .line 359
    const/4 v13, 0x2

    .line 360
    aget-object v7, v7, v13

    .line 361
    .line 362
    check-cast v7, Lh3/a;

    .line 363
    .line 364
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    .line 365
    .line 366
    .line 367
    move-result v9

    .line 368
    goto :goto_c

    .line 369
    :cond_14
    add-int/2addr v9, v7

    .line 370
    sub-int/2addr v9, v1

    .line 371
    invoke-virtual {v0, v9}, Lr3/d;->o(I)[Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v7

    .line 375
    aget-object v11, v7, v3

    .line 376
    .line 377
    check-cast v11, Ljava/lang/String;

    .line 378
    .line 379
    aget-object v7, v7, v1

    .line 380
    .line 381
    check-cast v7, Lh3/a;

    .line 382
    .line 383
    :goto_c
    const-string v12, ""

    .line 384
    .line 385
    :goto_d
    iget v13, v6, Lo3/b;->h:I

    .line 386
    .line 387
    if-ne v13, v9, :cond_1a

    .line 388
    .line 389
    invoke-virtual {v6}, Lo3/b;->d()I

    .line 390
    .line 391
    .line 392
    move-result v13

    .line 393
    if-eqz v13, :cond_1a

    .line 394
    .line 395
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v6}, Lo3/b;->d()I

    .line 399
    .line 400
    .line 401
    move-result v7

    .line 402
    const-string v11, " \t"

    .line 403
    .line 404
    invoke-virtual {v11, v7}, Ljava/lang/String;->indexOf(I)I

    .line 405
    .line 406
    .line 407
    move-result v7

    .line 408
    if-ne v7, v8, :cond_15

    .line 409
    .line 410
    move v7, v1

    .line 411
    goto :goto_e

    .line 412
    :cond_15
    move v7, v3

    .line 413
    :goto_e
    move v12, v3

    .line 414
    :goto_f
    sget-object v13, Lr3/a;->e:Lr3/a;

    .line 415
    .line 416
    invoke-virtual {v6, v12}, Lo3/b;->e(I)I

    .line 417
    .line 418
    .line 419
    move-result v14

    .line 420
    invoke-virtual {v13, v14}, Lr3/a;->b(I)Z

    .line 421
    .line 422
    .line 423
    move-result v13

    .line 424
    if-eqz v13, :cond_16

    .line 425
    .line 426
    add-int/lit8 v12, v12, 0x1

    .line 427
    .line 428
    goto :goto_f

    .line 429
    :cond_16
    invoke-virtual {v6, v12}, Lo3/b;->g(I)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v12

    .line 433
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual/range {p0 .. p0}, Lr3/d;->q()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v12

    .line 440
    invoke-virtual {v0, v9}, Lr3/d;->o(I)[Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v13

    .line 444
    aget-object v14, v13, v3

    .line 445
    .line 446
    check-cast v14, Ljava/lang/String;

    .line 447
    .line 448
    aget-object v13, v13, v1

    .line 449
    .line 450
    check-cast v13, Lh3/a;

    .line 451
    .line 452
    iget v1, v6, Lo3/b;->h:I

    .line 453
    .line 454
    if-ne v1, v9, :cond_19

    .line 455
    .line 456
    invoke-virtual {v6}, Lo3/b;->d()I

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    if-eqz v1, :cond_19

    .line 461
    .line 462
    if-eqz v2, :cond_17

    .line 463
    .line 464
    const-string v1, "\n"

    .line 465
    .line 466
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    if-eqz v1, :cond_17

    .line 471
    .line 472
    if-eqz v7, :cond_17

    .line 473
    .line 474
    invoke-virtual {v6}, Lo3/b;->d()I

    .line 475
    .line 476
    .line 477
    move-result v1

    .line 478
    invoke-virtual {v11, v1}, Ljava/lang/String;->indexOf(I)I

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    if-ne v1, v8, :cond_17

    .line 483
    .line 484
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    if-nez v1, :cond_18

    .line 489
    .line 490
    const-string v1, " "

    .line 491
    .line 492
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    goto :goto_10

    .line 496
    :cond_17
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    :cond_18
    :goto_10
    move-object v7, v13

    .line 500
    move-object v11, v14

    .line 501
    const/4 v1, 0x1

    .line 502
    goto :goto_d

    .line 503
    :cond_19
    move-object v11, v14

    .line 504
    goto :goto_11

    .line 505
    :cond_1a
    move-object v13, v7

    .line 506
    :goto_11
    if-eqz v15, :cond_1c

    .line 507
    .line 508
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    if-eqz v1, :cond_1b

    .line 513
    .line 514
    goto :goto_12

    .line 515
    :cond_1b
    move v1, v3

    .line 516
    goto :goto_13

    .line 517
    :cond_1c
    :goto_12
    const/4 v1, 0x1

    .line 518
    :goto_13
    if-eqz v1, :cond_1d

    .line 519
    .line 520
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    :cond_1d
    if-eqz v15, :cond_1e

    .line 524
    .line 525
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 526
    .line 527
    .line 528
    move-result v1

    .line 529
    if-eqz v1, :cond_1e

    .line 530
    .line 531
    const/4 v1, 0x1

    .line 532
    goto :goto_14

    .line 533
    :cond_1e
    move v1, v3

    .line 534
    :goto_14
    if-eqz v1, :cond_1f

    .line 535
    .line 536
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    :cond_1f
    new-instance v1, Ls3/f;

    .line 540
    .line 541
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v8

    .line 545
    const/4 v9, 0x0

    .line 546
    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    invoke-static {v2}, Le3/b;->a(Ljava/lang/Character;)Le3/b;

    .line 551
    .line 552
    .line 553
    move-result-object v12

    .line 554
    move-object v7, v1

    .line 555
    move-object v11, v13

    .line 556
    invoke-direct/range {v7 .. v12}, Ls3/f;-><init>(Ljava/lang/String;ZLh3/a;Lh3/a;Le3/b;)V

    .line 557
    .line 558
    .line 559
    iget-object v2, v0, Lr3/d;->d:Ljava/util/ArrayList;

    .line 560
    .line 561
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    return-void

    .line 565
    :cond_20
    invoke-static {v11}, Ljava/lang/Character;->toChars(I)[C

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    new-instance v2, Lr3/c;

    .line 574
    .line 575
    new-instance v3, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    const-string v4, "expected chomping or indentation indicators, but found "

    .line 578
    .line 579
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    invoke-virtual {v6}, Lo3/b;->c()Lh3/a;

    .line 599
    .line 600
    .line 601
    move-result-object v3

    .line 602
    invoke-direct {v2, v9, v10, v1, v3}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 603
    .line 604
    .line 605
    throw v2
.end method

.method public final d(Z)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lr3/d;->v(I)V

    invoke-virtual {p0}, Lr3/d;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr3/d;->h:Z

    iget-object v0, p0, Lr3/d;->a:Lo3/b;

    invoke-virtual {v0}, Lo3/b;->c()Lh3/a;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lo3/b;->b(I)V

    invoke-virtual {v0}, Lo3/b;->c()Lh3/a;

    move-result-object v0

    if-eqz p1, :cond_0

    new-instance p1, Ls3/c;

    const/4 v2, 0x4

    invoke-direct {p1, v1, v0, v2}, Ls3/c;-><init>(Lh3/a;Lh3/a;I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ls3/c;

    invoke-direct {p1, v1, v0, v2}, Ls3/c;-><init>(Lh3/a;Lh3/a;I)V

    :goto_0
    iget-object v0, p0, Lr3/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lr3/d;->l()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lr3/d;->c:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    sub-int/2addr v0, v1

    .line 8
    iput v0, p0, Lr3/d;->c:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lr3/d;->h:Z

    .line 12
    .line 13
    iget-object v0, p0, Lr3/d;->a:Lo3/b;

    .line 14
    .line 15
    invoke-virtual {v0}, Lo3/b;->c()Lh3/a;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1}, Lo3/b;->b(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lo3/b;->c()Lh3/a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    new-instance p1, Ls3/c;

    .line 29
    .line 30
    const/4 v1, 0x6

    .line 31
    invoke-direct {p1, v2, v0, v1}, Ls3/c;-><init>(Lh3/a;Lh3/a;I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Ls3/c;

    .line 36
    .line 37
    const/16 v1, 0x8

    .line 38
    .line 39
    invoke-direct {p1, v2, v0, v1}, Ls3/c;-><init>(Lh3/a;Lh3/a;I)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object v0, p0, Lr3/d;->d:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final f(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lr3/d;->m()V

    iget v0, p0, Lr3/d;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lr3/d;->c:I

    iput-boolean v1, p0, Lr3/d;->h:Z

    iget-object v0, p0, Lr3/d;->a:Lo3/b;

    invoke-virtual {v0}, Lo3/b;->c()Lh3/a;

    move-result-object v2

    invoke-virtual {v0, v1}, Lo3/b;->b(I)V

    invoke-virtual {v0}, Lo3/b;->c()Lh3/a;

    move-result-object v0

    if-eqz p1, :cond_0

    new-instance p1, Ls3/c;

    const/4 v1, 0x7

    invoke-direct {p1, v2, v0, v1}, Ls3/c;-><init>(Lh3/a;Lh3/a;I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ls3/c;

    const/16 v1, 0x9

    invoke-direct {p1, v2, v0, v1}, Ls3/c;-><init>(Lh3/a;Lh3/a;I)V

    :goto_0
    iget-object v0, p0, Lr3/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final g(C)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lr3/d;->m()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lr3/d;->h:Z

    .line 6
    .line 7
    const/16 v1, 0x22

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne p1, v1, :cond_0

    .line 11
    .line 12
    move v1, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v0

    .line 15
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v4, p0, Lr3/d;->a:Lo3/b;

    .line 21
    .line 22
    invoke-virtual {v4}, Lo3/b;->c()Lh3/a;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    invoke-virtual {v4}, Lo3/b;->d()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    invoke-virtual {v4, v2}, Lo3/b;->b(I)V

    .line 31
    .line 32
    .line 33
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    :goto_2
    move v7, v0

    .line 39
    :goto_3
    sget-object v9, Lr3/a;->g:Lr3/a;

    .line 40
    .line 41
    invoke-virtual {v4, v7}, Lo3/b;->e(I)I

    .line 42
    .line 43
    .line 44
    move-result v10

    .line 45
    invoke-virtual {v9, v10}, Lr3/a;->a(I)Z

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    const/4 v11, -0x1

    .line 50
    if-nez v9, :cond_2

    .line 51
    .line 52
    const-string v9, "\'\"\\"

    .line 53
    .line 54
    invoke-virtual {v9, v10, v0}, Ljava/lang/String;->indexOf(II)I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    if-eq v9, v11, :cond_1

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_1
    move v9, v0

    .line 62
    goto :goto_5

    .line 63
    :cond_2
    :goto_4
    move v9, v2

    .line 64
    :goto_5
    xor-int/2addr v9, v2

    .line 65
    if-eqz v9, :cond_3

    .line 66
    .line 67
    add-int/lit8 v7, v7, 0x1

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    if-eqz v7, :cond_4

    .line 71
    .line 72
    invoke-virtual {v4, v7}, Lo3/b;->g(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    :cond_4
    invoke-virtual {v4}, Lo3/b;->d()I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    const/16 v9, 0x27

    .line 84
    .line 85
    if-nez v1, :cond_5

    .line 86
    .line 87
    if-ne v7, v9, :cond_5

    .line 88
    .line 89
    invoke-virtual {v4, v2}, Lo3/b;->e(I)I

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    if-ne v10, v9, :cond_5

    .line 94
    .line 95
    const-string v7, "\'"

    .line 96
    .line 97
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const/4 v7, 0x2

    .line 101
    goto/16 :goto_7

    .line 102
    .line 103
    :cond_5
    if-eqz v1, :cond_6

    .line 104
    .line 105
    if-eq v7, v9, :cond_7

    .line 106
    .line 107
    :cond_6
    if-nez v1, :cond_8

    .line 108
    .line 109
    const-string v9, "\"\\"

    .line 110
    .line 111
    invoke-virtual {v9, v7}, Ljava/lang/String;->indexOf(I)I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-eq v9, v11, :cond_8

    .line 116
    .line 117
    :cond_7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_8
    if-eqz v1, :cond_d

    .line 122
    .line 123
    const/16 v9, 0x5c

    .line 124
    .line 125
    if-ne v7, v9, :cond_d

    .line 126
    .line 127
    invoke-virtual {v4, v2}, Lo3/b;->b(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Lo3/b;->d()I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    invoke-static {v7}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    if-nez v9, :cond_9

    .line 139
    .line 140
    sget-object v9, Lr3/d;->k:Ljava/util/HashMap;

    .line 141
    .line 142
    int-to-char v10, v7

    .line 143
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 144
    .line 145
    .line 146
    move-result-object v11

    .line 147
    invoke-virtual {v9, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v11

    .line 151
    if-eqz v11, :cond_9

    .line 152
    .line 153
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    check-cast v7, Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    :goto_6
    invoke-virtual {v4, v2}, Lo3/b;->b(I)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_2

    .line 170
    .line 171
    :cond_9
    invoke-static {v7}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    .line 172
    .line 173
    .line 174
    move-result v9

    .line 175
    const-string v10, "while scanning a double-quoted scalar"

    .line 176
    .line 177
    if-nez v9, :cond_b

    .line 178
    .line 179
    sget-object v9, Lr3/d;->l:Ljava/util/HashMap;

    .line 180
    .line 181
    int-to-char v11, v7

    .line 182
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 183
    .line 184
    .line 185
    move-result-object v12

    .line 186
    invoke-virtual {v9, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v12

    .line 190
    if-eqz v12, :cond_b

    .line 191
    .line 192
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    check-cast v7, Ljava/lang/Integer;

    .line 201
    .line 202
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    invoke-virtual {v4, v2}, Lo3/b;->b(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4, v7}, Lo3/b;->f(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    sget-object v11, Lr3/d;->j:Ljava/util/regex/Pattern;

    .line 214
    .line 215
    invoke-virtual {v11, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 216
    .line 217
    .line 218
    move-result-object v11

    .line 219
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    .line 220
    .line 221
    .line 222
    move-result v11

    .line 223
    if-nez v11, :cond_a

    .line 224
    .line 225
    const/16 v10, 0x10

    .line 226
    .line 227
    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 228
    .line 229
    .line 230
    move-result v9

    .line 231
    new-instance v10, Ljava/lang/String;

    .line 232
    .line 233
    invoke-static {v9}, Ljava/lang/Character;->toChars(I)[C

    .line 234
    .line 235
    .line 236
    move-result-object v9

    .line 237
    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([C)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    :goto_7
    invoke-virtual {v4, v7}, Lo3/b;->b(I)V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_2

    .line 247
    .line 248
    :cond_a
    new-instance p1, Lr3/c;

    .line 249
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    const-string v1, "expected escape sequence of "

    .line 253
    .line 254
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v1, " hexadecimal numbers, but found: "

    .line 261
    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-virtual {v4}, Lo3/b;->c()Lh3/a;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-direct {p1, v10, v8, v0, v1}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 277
    .line 278
    .line 279
    throw p1

    .line 280
    :cond_b
    invoke-virtual {p0}, Lr3/d;->q()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 285
    .line 286
    .line 287
    move-result v9

    .line 288
    if-eqz v9, :cond_c

    .line 289
    .line 290
    invoke-virtual {p0, v8}, Lr3/d;->p(Lh3/a;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    goto/16 :goto_2

    .line 298
    .line 299
    :cond_c
    invoke-static {v7}, Ljava/lang/Character;->toChars(I)[C

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    new-instance v0, Lr3/c;

    .line 308
    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const-string v2, "found unknown escape character "

    .line 312
    .line 313
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    const-string p1, "("

    .line 320
    .line 321
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    const-string p1, ")"

    .line 328
    .line 329
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-virtual {v4}, Lo3/b;->c()Lh3/a;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-direct {v0, v10, v8, p1, v1}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 341
    .line 342
    .line 343
    throw v0

    .line 344
    :cond_d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v6

    .line 348
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v4}, Lo3/b;->d()I

    .line 352
    .line 353
    .line 354
    move-result v6

    .line 355
    if-eq v6, v5, :cond_12

    .line 356
    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .line 361
    .line 362
    move v7, v0

    .line 363
    :goto_8
    invoke-virtual {v4, v7}, Lo3/b;->e(I)I

    .line 364
    .line 365
    .line 366
    move-result v9

    .line 367
    const-string v10, " \t"

    .line 368
    .line 369
    invoke-virtual {v10, v9}, Ljava/lang/String;->indexOf(I)I

    .line 370
    .line 371
    .line 372
    move-result v9

    .line 373
    if-eq v9, v11, :cond_e

    .line 374
    .line 375
    add-int/lit8 v7, v7, 0x1

    .line 376
    .line 377
    goto :goto_8

    .line 378
    :cond_e
    invoke-virtual {v4, v7}, Lo3/b;->g(I)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v7

    .line 382
    invoke-virtual {v4}, Lo3/b;->d()I

    .line 383
    .line 384
    .line 385
    move-result v9

    .line 386
    if-eqz v9, :cond_11

    .line 387
    .line 388
    invoke-virtual {p0}, Lr3/d;->q()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v9

    .line 392
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 393
    .line 394
    .line 395
    move-result v10

    .line 396
    if-eqz v10, :cond_10

    .line 397
    .line 398
    invoke-virtual {p0, v8}, Lr3/d;->p(Lh3/a;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v7

    .line 402
    const-string v10, "\n"

    .line 403
    .line 404
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v10

    .line 408
    if-nez v10, :cond_f

    .line 409
    .line 410
    goto :goto_9

    .line 411
    :cond_f
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 412
    .line 413
    .line 414
    move-result v9

    .line 415
    if-nez v9, :cond_10

    .line 416
    .line 417
    const-string v9, " "

    .line 418
    .line 419
    :goto_9
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    :cond_10
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v6

    .line 429
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    goto/16 :goto_1

    .line 433
    .line 434
    :cond_11
    new-instance p1, Lr3/c;

    .line 435
    .line 436
    invoke-virtual {v4}, Lo3/b;->c()Lh3/a;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    const-string v1, "while scanning a quoted scalar"

    .line 441
    .line 442
    const-string v2, "found unexpected end of stream"

    .line 443
    .line 444
    invoke-direct {p1, v1, v8, v2, v0}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 445
    .line 446
    .line 447
    throw p1

    .line 448
    :cond_12
    invoke-virtual {v4, v2}, Lo3/b;->b(I)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v4}, Lo3/b;->c()Lh3/a;

    .line 452
    .line 453
    .line 454
    move-result-object v9

    .line 455
    new-instance v0, Ls3/f;

    .line 456
    .line 457
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v6

    .line 461
    const/4 v7, 0x0

    .line 462
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    invoke-static {p1}, Le3/b;->a(Ljava/lang/Character;)Le3/b;

    .line 467
    .line 468
    .line 469
    move-result-object v10

    .line 470
    move-object v5, v0

    .line 471
    invoke-direct/range {v5 .. v10}, Ls3/f;-><init>(Ljava/lang/String;ZLh3/a;Lh3/a;Le3/b;)V

    .line 472
    .line 473
    .line 474
    iget-object p1, p0, Lr3/d;->d:Ljava/util/ArrayList;

    .line 475
    .line 476
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    return-void
.end method

.method public final h()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lr3/d;->a:Lo3/b;

    .line 4
    .line 5
    iget v2, v1, Lo3/b;->f:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const v4, 0xfeff

    .line 15
    .line 16
    .line 17
    if-ne v2, v4, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Lo3/b;->b(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    move v4, v2

    .line 24
    :cond_1
    :goto_0
    const/16 v5, 0x20

    .line 25
    .line 26
    const/16 v6, 0x23

    .line 27
    .line 28
    if-nez v4, :cond_7

    .line 29
    .line 30
    move v7, v2

    .line 31
    :goto_1
    invoke-virtual {v1, v7}, Lo3/b;->e(I)I

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    if-ne v8, v5, :cond_2

    .line 36
    .line 37
    add-int/lit8 v7, v7, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    if-lez v7, :cond_3

    .line 41
    .line 42
    invoke-virtual {v1, v7}, Lo3/b;->b(I)V

    .line 43
    .line 44
    .line 45
    :cond_3
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-ne v5, v6, :cond_5

    .line 50
    .line 51
    move v5, v2

    .line 52
    :goto_2
    sget-object v6, Lr3/a;->e:Lr3/a;

    .line 53
    .line 54
    invoke-virtual {v1, v5}, Lo3/b;->e(I)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    invoke-virtual {v6, v7}, Lr3/a;->b(I)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_4

    .line 63
    .line 64
    add-int/lit8 v5, v5, 0x1

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_4
    if-lez v5, :cond_5

    .line 68
    .line 69
    invoke-virtual {v1, v5}, Lo3/b;->b(I)V

    .line 70
    .line 71
    .line 72
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lr3/d;->q()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_6

    .line 81
    .line 82
    iget v5, v0, Lr3/d;->c:I

    .line 83
    .line 84
    if-nez v5, :cond_1

    .line 85
    .line 86
    iput-boolean v3, v0, Lr3/d;->h:Z

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_6
    move v4, v3

    .line 90
    goto :goto_0

    .line 91
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lr3/d;->u()V

    .line 92
    .line 93
    .line 94
    iget v4, v1, Lo3/b;->h:I

    .line 95
    .line 96
    invoke-virtual {v0, v4}, Lr3/d;->v(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    iget-object v6, v0, Lr3/d;->i:Ljava/util/LinkedHashMap;

    .line 104
    .line 105
    iget-object v7, v0, Lr3/d;->d:Ljava/util/ArrayList;

    .line 106
    .line 107
    const/4 v8, -0x1

    .line 108
    if-eqz v4, :cond_57

    .line 109
    .line 110
    const/16 v9, 0x2a

    .line 111
    .line 112
    if-eq v4, v9, :cond_56

    .line 113
    .line 114
    const/16 v9, 0x3a

    .line 115
    .line 116
    const/4 v10, 0x3

    .line 117
    const-string v11, "..."

    .line 118
    .line 119
    const-string v12, "---"

    .line 120
    .line 121
    if-eq v4, v9, :cond_31

    .line 122
    .line 123
    const/16 v6, 0x5b

    .line 124
    .line 125
    if-eq v4, v6, :cond_30

    .line 126
    .line 127
    const/16 v6, 0x5d

    .line 128
    .line 129
    if-eq v4, v6, :cond_2f

    .line 130
    .line 131
    const-string v6, ")"

    .line 132
    .line 133
    const/16 v9, 0x21

    .line 134
    .line 135
    const/4 v13, 0x2

    .line 136
    const/16 v14, 0x3e

    .line 137
    .line 138
    if-eq v4, v9, :cond_27

    .line 139
    .line 140
    const/16 v9, 0x22

    .line 141
    .line 142
    if-eq v4, v9, :cond_26

    .line 143
    .line 144
    if-eq v4, v14, :cond_25

    .line 145
    .line 146
    const/16 v9, 0x3f

    .line 147
    .line 148
    if-eq v4, v9, :cond_20

    .line 149
    .line 150
    packed-switch v4, :pswitch_data_0

    .line 151
    .line 152
    .line 153
    packed-switch v4, :pswitch_data_1

    .line 154
    .line 155
    .line 156
    packed-switch v4, :pswitch_data_2

    .line 157
    .line 158
    .line 159
    goto/16 :goto_1a

    .line 160
    .line 161
    :pswitch_0
    const/16 v1, 0x27

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Lr3/d;->g(C)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lr3/d;->m()V

    .line 168
    .line 169
    .line 170
    iput-boolean v2, v0, Lr3/d;->h:Z

    .line 171
    .line 172
    invoke-virtual {v0, v3}, Lr3/d;->n(Z)Ls3/j;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :pswitch_2
    iget v9, v1, Lo3/b;->h:I

    .line 181
    .line 182
    if-nez v9, :cond_8

    .line 183
    .line 184
    move v9, v3

    .line 185
    goto :goto_3

    .line 186
    :cond_8
    move v9, v2

    .line 187
    :goto_3
    if-eqz v9, :cond_39

    .line 188
    .line 189
    invoke-virtual {v0, v8}, Lr3/d;->v(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual/range {p0 .. p0}, Lr3/d;->l()V

    .line 193
    .line 194
    .line 195
    iput-boolean v2, v0, Lr3/d;->h:Z

    .line 196
    .line 197
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-virtual {v1, v3}, Lo3/b;->b(I)V

    .line 202
    .line 203
    .line 204
    move v8, v2

    .line 205
    :goto_4
    invoke-virtual {v1, v8}, Lo3/b;->e(I)I

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    sget-object v10, Lr3/a;->i:Lr3/a;

    .line 210
    .line 211
    invoke-virtual {v10, v9}, Lr3/a;->a(I)Z

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    if-eqz v10, :cond_9

    .line 216
    .line 217
    add-int/lit8 v8, v8, 0x1

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_9
    const-string v10, "while scanning a directive"

    .line 221
    .line 222
    const-string v11, "("

    .line 223
    .line 224
    const-string v12, "expected alphabetic or numeric character, but found "

    .line 225
    .line 226
    if-eqz v8, :cond_1a

    .line 227
    .line 228
    invoke-virtual {v1, v8}, Lo3/b;->g(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v8

    .line 232
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 233
    .line 234
    .line 235
    move-result v9

    .line 236
    sget-object v14, Lr3/a;->f:Lr3/a;

    .line 237
    .line 238
    invoke-virtual {v14, v9}, Lr3/a;->b(I)Z

    .line 239
    .line 240
    .line 241
    move-result v14

    .line 242
    if-nez v14, :cond_19

    .line 243
    .line 244
    const-string v9, "YAML"

    .line 245
    .line 246
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v9

    .line 250
    if-eqz v9, :cond_d

    .line 251
    .line 252
    :goto_5
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    if-ne v2, v5, :cond_a

    .line 257
    .line 258
    invoke-virtual {v1, v3}, Lo3/b;->b(I)V

    .line 259
    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_a
    invoke-virtual {v0, v4}, Lr3/d;->t(Lh3/a;)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 267
    .line 268
    .line 269
    move-result v9

    .line 270
    const/16 v12, 0x2e

    .line 271
    .line 272
    if-ne v9, v12, :cond_c

    .line 273
    .line 274
    invoke-virtual {v1, v3}, Lo3/b;->b(I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v4}, Lr3/d;->t(Lh3/a;)Ljava/lang/Integer;

    .line 278
    .line 279
    .line 280
    move-result-object v9

    .line 281
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 282
    .line 283
    .line 284
    move-result v12

    .line 285
    sget-object v14, Lr3/a;->f:Lr3/a;

    .line 286
    .line 287
    invoke-virtual {v14, v12}, Lr3/a;->b(I)Z

    .line 288
    .line 289
    .line 290
    move-result v14

    .line 291
    if-nez v14, :cond_b

    .line 292
    .line 293
    new-instance v12, Ljava/util/ArrayList;

    .line 294
    .line 295
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    goto/16 :goto_8

    .line 305
    .line 306
    :cond_b
    invoke-static {v12}, Ljava/lang/Character;->toChars(I)[C

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    new-instance v3, Lr3/c;

    .line 315
    .line 316
    new-instance v5, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    const-string v7, "expected a digit or \' \', but found "

    .line 319
    .line 320
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-direct {v3, v10, v4, v2, v1}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 344
    .line 345
    .line 346
    throw v3

    .line 347
    :cond_c
    invoke-static {v9}, Ljava/lang/Character;->toChars(I)[C

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    new-instance v3, Lr3/c;

    .line 356
    .line 357
    new-instance v5, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    const-string v7, "expected a digit or \'.\', but found "

    .line 360
    .line 361
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-direct {v3, v10, v4, v2, v1}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 385
    .line 386
    .line 387
    throw v3

    .line 388
    :cond_d
    const-string v9, "TAG"

    .line 389
    .line 390
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v9

    .line 394
    if-eqz v9, :cond_12

    .line 395
    .line 396
    :goto_6
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    if-ne v2, v5, :cond_e

    .line 401
    .line 402
    invoke-virtual {v1, v3}, Lo3/b;->b(I)V

    .line 403
    .line 404
    .line 405
    goto :goto_6

    .line 406
    :cond_e
    const-string v2, "directive"

    .line 407
    .line 408
    invoke-virtual {v0, v2, v4}, Lr3/d;->r(Ljava/lang/String;Lh3/a;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v9

    .line 412
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 413
    .line 414
    .line 415
    move-result v12

    .line 416
    const-string v14, "expected \' \', but found "

    .line 417
    .line 418
    if-ne v12, v5, :cond_11

    .line 419
    .line 420
    :goto_7
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 421
    .line 422
    .line 423
    move-result v12

    .line 424
    if-ne v12, v5, :cond_f

    .line 425
    .line 426
    invoke-virtual {v1, v3}, Lo3/b;->b(I)V

    .line 427
    .line 428
    .line 429
    goto :goto_7

    .line 430
    :cond_f
    invoke-virtual {v0, v2, v4}, Lr3/d;->s(Ljava/lang/String;Lh3/a;)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 435
    .line 436
    .line 437
    move-result v12

    .line 438
    sget-object v15, Lr3/a;->f:Lr3/a;

    .line 439
    .line 440
    invoke-virtual {v15, v12}, Lr3/a;->b(I)Z

    .line 441
    .line 442
    .line 443
    move-result v15

    .line 444
    if-nez v15, :cond_10

    .line 445
    .line 446
    new-instance v12, Ljava/util/ArrayList;

    .line 447
    .line 448
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    :goto_8
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    goto :goto_a

    .line 462
    :cond_10
    invoke-static {v12}, Ljava/lang/Character;->toChars(I)[C

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    new-instance v3, Lr3/c;

    .line 471
    .line 472
    new-instance v5, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    invoke-direct {v3, v10, v4, v2, v1}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 498
    .line 499
    .line 500
    throw v3

    .line 501
    :cond_11
    invoke-static {v12}, Ljava/lang/Character;->toChars(I)[C

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    new-instance v3, Lr3/c;

    .line 510
    .line 511
    new-instance v5, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    invoke-direct {v3, v10, v4, v2, v1}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 537
    .line 538
    .line 539
    throw v3

    .line 540
    :cond_12
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 541
    .line 542
    .line 543
    move-result-object v9

    .line 544
    :goto_9
    sget-object v12, Lr3/a;->e:Lr3/a;

    .line 545
    .line 546
    invoke-virtual {v1, v2}, Lo3/b;->e(I)I

    .line 547
    .line 548
    .line 549
    move-result v13

    .line 550
    invoke-virtual {v12, v13}, Lr3/a;->b(I)Z

    .line 551
    .line 552
    .line 553
    move-result v12

    .line 554
    if-eqz v12, :cond_13

    .line 555
    .line 556
    add-int/lit8 v2, v2, 0x1

    .line 557
    .line 558
    goto :goto_9

    .line 559
    :cond_13
    if-lez v2, :cond_14

    .line 560
    .line 561
    invoke-virtual {v1, v2}, Lo3/b;->b(I)V

    .line 562
    .line 563
    .line 564
    :cond_14
    const/4 v12, 0x0

    .line 565
    move-object v2, v9

    .line 566
    :goto_a
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 567
    .line 568
    .line 569
    move-result v9

    .line 570
    if-ne v9, v5, :cond_15

    .line 571
    .line 572
    invoke-virtual {v1, v3}, Lo3/b;->b(I)V

    .line 573
    .line 574
    .line 575
    goto :goto_a

    .line 576
    :cond_15
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 577
    .line 578
    .line 579
    move-result v5

    .line 580
    const/16 v9, 0x23

    .line 581
    .line 582
    if-ne v5, v9, :cond_16

    .line 583
    .line 584
    :goto_b
    sget-object v5, Lr3/a;->e:Lr3/a;

    .line 585
    .line 586
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 587
    .line 588
    .line 589
    move-result v9

    .line 590
    invoke-virtual {v5, v9}, Lr3/a;->b(I)Z

    .line 591
    .line 592
    .line 593
    move-result v5

    .line 594
    if-eqz v5, :cond_16

    .line 595
    .line 596
    invoke-virtual {v1, v3}, Lo3/b;->b(I)V

    .line 597
    .line 598
    .line 599
    goto :goto_b

    .line 600
    :cond_16
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 601
    .line 602
    .line 603
    move-result v3

    .line 604
    invoke-virtual/range {p0 .. p0}, Lr3/d;->q()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v5

    .line 608
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 609
    .line 610
    .line 611
    move-result v5

    .line 612
    if-nez v5, :cond_18

    .line 613
    .line 614
    if-nez v3, :cond_17

    .line 615
    .line 616
    goto :goto_c

    .line 617
    :cond_17
    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    .line 618
    .line 619
    .line 620
    move-result-object v2

    .line 621
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v2

    .line 625
    new-instance v5, Lr3/c;

    .line 626
    .line 627
    new-instance v7, Ljava/lang/StringBuilder;

    .line 628
    .line 629
    const-string v8, "expected a comment or a line break, but found "

    .line 630
    .line 631
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v2

    .line 650
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    invoke-direct {v5, v10, v4, v2, v1}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 655
    .line 656
    .line 657
    throw v5

    .line 658
    :cond_18
    :goto_c
    new-instance v1, Ls3/e;

    .line 659
    .line 660
    invoke-direct {v1, v8, v12, v4, v2}, Ls3/e;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lh3/a;Lh3/a;)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    .line 665
    .line 666
    return-void

    .line 667
    :cond_19
    invoke-static {v9}, Ljava/lang/Character;->toChars(I)[C

    .line 668
    .line 669
    .line 670
    move-result-object v2

    .line 671
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v2

    .line 675
    new-instance v3, Lr3/c;

    .line 676
    .line 677
    new-instance v5, Ljava/lang/StringBuilder;

    .line 678
    .line 679
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v2

    .line 698
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 699
    .line 700
    .line 701
    move-result-object v1

    .line 702
    invoke-direct {v3, v10, v4, v2, v1}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 703
    .line 704
    .line 705
    throw v3

    .line 706
    :cond_1a
    invoke-static {v9}, Ljava/lang/Character;->toChars(I)[C

    .line 707
    .line 708
    .line 709
    move-result-object v2

    .line 710
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v2

    .line 714
    new-instance v3, Lr3/c;

    .line 715
    .line 716
    new-instance v5, Ljava/lang/StringBuilder;

    .line 717
    .line 718
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v2

    .line 737
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 738
    .line 739
    .line 740
    move-result-object v1

    .line 741
    invoke-direct {v3, v10, v4, v2, v1}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 742
    .line 743
    .line 744
    throw v3

    .line 745
    :pswitch_3
    iget v5, v1, Lo3/b;->h:I

    .line 746
    .line 747
    if-nez v5, :cond_1b

    .line 748
    .line 749
    invoke-virtual {v1, v10}, Lo3/b;->f(I)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v5

    .line 753
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 754
    .line 755
    .line 756
    move-result v5

    .line 757
    if-eqz v5, :cond_1b

    .line 758
    .line 759
    sget-object v5, Lr3/a;->g:Lr3/a;

    .line 760
    .line 761
    invoke-virtual {v1, v10}, Lo3/b;->e(I)I

    .line 762
    .line 763
    .line 764
    move-result v6

    .line 765
    invoke-virtual {v5, v6}, Lr3/a;->a(I)Z

    .line 766
    .line 767
    .line 768
    move-result v5

    .line 769
    if-eqz v5, :cond_1b

    .line 770
    .line 771
    move v5, v3

    .line 772
    goto :goto_d

    .line 773
    :cond_1b
    move v5, v2

    .line 774
    :goto_d
    if-eqz v5, :cond_39

    .line 775
    .line 776
    invoke-virtual {v0, v2}, Lr3/d;->d(Z)V

    .line 777
    .line 778
    .line 779
    return-void

    .line 780
    :pswitch_4
    iget v5, v1, Lo3/b;->h:I

    .line 781
    .line 782
    if-nez v5, :cond_1c

    .line 783
    .line 784
    invoke-virtual {v1, v10}, Lo3/b;->f(I)Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v5

    .line 788
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 789
    .line 790
    .line 791
    move-result v5

    .line 792
    if-eqz v5, :cond_1c

    .line 793
    .line 794
    sget-object v5, Lr3/a;->g:Lr3/a;

    .line 795
    .line 796
    invoke-virtual {v1, v10}, Lo3/b;->e(I)I

    .line 797
    .line 798
    .line 799
    move-result v6

    .line 800
    invoke-virtual {v5, v6}, Lr3/a;->a(I)Z

    .line 801
    .line 802
    .line 803
    move-result v5

    .line 804
    if-eqz v5, :cond_1c

    .line 805
    .line 806
    move v5, v3

    .line 807
    goto :goto_e

    .line 808
    :cond_1c
    move v5, v2

    .line 809
    :goto_e
    if-eqz v5, :cond_1d

    .line 810
    .line 811
    invoke-virtual {v0, v3}, Lr3/d;->d(Z)V

    .line 812
    .line 813
    .line 814
    return-void

    .line 815
    :cond_1d
    sget-object v5, Lr3/a;->g:Lr3/a;

    .line 816
    .line 817
    invoke-virtual {v1, v3}, Lo3/b;->e(I)I

    .line 818
    .line 819
    .line 820
    move-result v6

    .line 821
    invoke-virtual {v5, v6}, Lr3/a;->a(I)Z

    .line 822
    .line 823
    .line 824
    move-result v5

    .line 825
    if-eqz v5, :cond_39

    .line 826
    .line 827
    iget v2, v0, Lr3/d;->c:I

    .line 828
    .line 829
    if-nez v2, :cond_1f

    .line 830
    .line 831
    iget-boolean v2, v0, Lr3/d;->h:Z

    .line 832
    .line 833
    if-eqz v2, :cond_1e

    .line 834
    .line 835
    iget v2, v1, Lo3/b;->h:I

    .line 836
    .line 837
    invoke-virtual {v0, v2}, Lr3/d;->a(I)Z

    .line 838
    .line 839
    .line 840
    move-result v2

    .line 841
    if-eqz v2, :cond_1f

    .line 842
    .line 843
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 844
    .line 845
    .line 846
    move-result-object v2

    .line 847
    new-instance v4, Ls3/c;

    .line 848
    .line 849
    invoke-direct {v4, v2, v2, v13}, Ls3/c;-><init>(Lh3/a;Lh3/a;I)V

    .line 850
    .line 851
    .line 852
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    .line 854
    .line 855
    goto :goto_f

    .line 856
    :cond_1e
    new-instance v2, Lr3/c;

    .line 857
    .line 858
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 859
    .line 860
    .line 861
    move-result-object v1

    .line 862
    const-string v3, "sequence entries are not allowed here"

    .line 863
    .line 864
    const/4 v4, 0x0

    .line 865
    invoke-direct {v2, v4, v4, v3, v1}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 866
    .line 867
    .line 868
    throw v2

    .line 869
    :cond_1f
    :goto_f
    iput-boolean v3, v0, Lr3/d;->h:Z

    .line 870
    .line 871
    invoke-virtual/range {p0 .. p0}, Lr3/d;->l()V

    .line 872
    .line 873
    .line 874
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 875
    .line 876
    .line 877
    move-result-object v2

    .line 878
    invoke-virtual {v1, v3}, Lo3/b;->b(I)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 882
    .line 883
    .line 884
    move-result-object v1

    .line 885
    new-instance v3, Ls3/d;

    .line 886
    .line 887
    invoke-direct {v3, v2, v1}, Ls3/d;-><init>(Lh3/a;Lh3/a;)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    .line 892
    .line 893
    return-void

    .line 894
    :pswitch_5
    iput-boolean v3, v0, Lr3/d;->h:Z

    .line 895
    .line 896
    invoke-virtual/range {p0 .. p0}, Lr3/d;->l()V

    .line 897
    .line 898
    .line 899
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 900
    .line 901
    .line 902
    move-result-object v2

    .line 903
    invoke-virtual {v1, v3}, Lo3/b;->b(I)V

    .line 904
    .line 905
    .line 906
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 907
    .line 908
    .line 909
    move-result-object v1

    .line 910
    new-instance v3, Ls3/c;

    .line 911
    .line 912
    const/4 v4, 0x5

    .line 913
    invoke-direct {v3, v2, v1, v4}, Ls3/c;-><init>(Lh3/a;Lh3/a;I)V

    .line 914
    .line 915
    .line 916
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    .line 918
    .line 919
    return-void

    .line 920
    :pswitch_6
    invoke-virtual {v0, v3}, Lr3/d;->e(Z)V

    .line 921
    .line 922
    .line 923
    return-void

    .line 924
    :pswitch_7
    iget v5, v0, Lr3/d;->c:I

    .line 925
    .line 926
    if-nez v5, :cond_39

    .line 927
    .line 928
    const/16 v1, 0x7c

    .line 929
    .line 930
    invoke-virtual {v0, v1}, Lr3/d;->c(C)V

    .line 931
    .line 932
    .line 933
    return-void

    .line 934
    :pswitch_8
    invoke-virtual {v0, v3}, Lr3/d;->f(Z)V

    .line 935
    .line 936
    .line 937
    return-void

    .line 938
    :cond_20
    iget v5, v0, Lr3/d;->c:I

    .line 939
    .line 940
    if-eqz v5, :cond_21

    .line 941
    .line 942
    move v5, v3

    .line 943
    goto :goto_10

    .line 944
    :cond_21
    sget-object v5, Lr3/a;->g:Lr3/a;

    .line 945
    .line 946
    invoke-virtual {v1, v3}, Lo3/b;->e(I)I

    .line 947
    .line 948
    .line 949
    move-result v6

    .line 950
    invoke-virtual {v5, v6}, Lr3/a;->a(I)Z

    .line 951
    .line 952
    .line 953
    move-result v5

    .line 954
    :goto_10
    if-eqz v5, :cond_39

    .line 955
    .line 956
    iget v4, v0, Lr3/d;->c:I

    .line 957
    .line 958
    if-nez v4, :cond_23

    .line 959
    .line 960
    iget-boolean v4, v0, Lr3/d;->h:Z

    .line 961
    .line 962
    if-eqz v4, :cond_22

    .line 963
    .line 964
    iget v4, v1, Lo3/b;->h:I

    .line 965
    .line 966
    invoke-virtual {v0, v4}, Lr3/d;->a(I)Z

    .line 967
    .line 968
    .line 969
    move-result v4

    .line 970
    if-eqz v4, :cond_23

    .line 971
    .line 972
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 973
    .line 974
    .line 975
    move-result-object v4

    .line 976
    new-instance v5, Ls3/c;

    .line 977
    .line 978
    invoke-direct {v5, v4, v4, v3}, Ls3/c;-><init>(Lh3/a;Lh3/a;I)V

    .line 979
    .line 980
    .line 981
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    .line 983
    .line 984
    goto :goto_11

    .line 985
    :cond_22
    new-instance v2, Lr3/c;

    .line 986
    .line 987
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 988
    .line 989
    .line 990
    move-result-object v1

    .line 991
    const-string v3, "mapping keys are not allowed here"

    .line 992
    .line 993
    const/4 v4, 0x0

    .line 994
    invoke-direct {v2, v4, v4, v3, v1}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 995
    .line 996
    .line 997
    throw v2

    .line 998
    :cond_23
    :goto_11
    iget v4, v0, Lr3/d;->c:I

    .line 999
    .line 1000
    if-nez v4, :cond_24

    .line 1001
    .line 1002
    move v2, v3

    .line 1003
    :cond_24
    iput-boolean v2, v0, Lr3/d;->h:Z

    .line 1004
    .line 1005
    invoke-virtual/range {p0 .. p0}, Lr3/d;->l()V

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v2

    .line 1012
    invoke-virtual {v1, v3}, Lo3/b;->b(I)V

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v1

    .line 1019
    new-instance v3, Ls3/c;

    .line 1020
    .line 1021
    const/16 v4, 0xa

    .line 1022
    .line 1023
    invoke-direct {v3, v2, v1, v4}, Ls3/c;-><init>(Lh3/a;Lh3/a;I)V

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    .line 1028
    .line 1029
    return-void

    .line 1030
    :cond_25
    iget v5, v0, Lr3/d;->c:I

    .line 1031
    .line 1032
    if-nez v5, :cond_39

    .line 1033
    .line 1034
    invoke-virtual {v0, v14}, Lr3/d;->c(C)V

    .line 1035
    .line 1036
    .line 1037
    return-void

    .line 1038
    :cond_26
    invoke-virtual {v0, v9}, Lr3/d;->g(C)V

    .line 1039
    .line 1040
    .line 1041
    return-void

    .line 1042
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lr3/d;->m()V

    .line 1043
    .line 1044
    .line 1045
    iput-boolean v2, v0, Lr3/d;->h:Z

    .line 1046
    .line 1047
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v4

    .line 1051
    invoke-virtual {v1, v3}, Lo3/b;->e(I)I

    .line 1052
    .line 1053
    .line 1054
    move-result v5

    .line 1055
    const/16 v8, 0x3c

    .line 1056
    .line 1057
    const-string v10, "\' ("

    .line 1058
    .line 1059
    const-string v11, "while scanning a tag"

    .line 1060
    .line 1061
    const-string v12, "tag"

    .line 1062
    .line 1063
    if-ne v5, v8, :cond_29

    .line 1064
    .line 1065
    invoke-virtual {v1, v13}, Lo3/b;->b(I)V

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v0, v12, v4}, Lr3/d;->s(Ljava/lang/String;Lh3/a;)Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v2

    .line 1072
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 1073
    .line 1074
    .line 1075
    move-result v5

    .line 1076
    if-ne v5, v14, :cond_28

    .line 1077
    .line 1078
    invoke-virtual {v1, v3}, Lo3/b;->b(I)V

    .line 1079
    .line 1080
    .line 1081
    goto :goto_12

    .line 1082
    :cond_28
    invoke-static {v5}, Ljava/lang/Character;->toChars(I)[C

    .line 1083
    .line 1084
    .line 1085
    move-result-object v2

    .line 1086
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v2

    .line 1090
    new-instance v3, Lr3/c;

    .line 1091
    .line 1092
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1093
    .line 1094
    const-string v8, "expected \'>\', but found \'"

    .line 1095
    .line 1096
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1097
    .line 1098
    .line 1099
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    .line 1101
    .line 1102
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    .line 1110
    .line 1111
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v2

    .line 1115
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v1

    .line 1119
    invoke-direct {v3, v11, v4, v2, v1}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 1120
    .line 1121
    .line 1122
    throw v3

    .line 1123
    :cond_29
    sget-object v8, Lr3/a;->g:Lr3/a;

    .line 1124
    .line 1125
    invoke-virtual {v8, v5}, Lr3/a;->a(I)Z

    .line 1126
    .line 1127
    .line 1128
    move-result v8

    .line 1129
    const-string v13, "!"

    .line 1130
    .line 1131
    if-eqz v8, :cond_2a

    .line 1132
    .line 1133
    invoke-virtual {v1, v3}, Lo3/b;->b(I)V

    .line 1134
    .line 1135
    .line 1136
    move-object v2, v13

    .line 1137
    :goto_12
    const/4 v3, 0x0

    .line 1138
    goto :goto_16

    .line 1139
    :cond_2a
    move v8, v3

    .line 1140
    :goto_13
    sget-object v14, Lr3/a;->f:Lr3/a;

    .line 1141
    .line 1142
    invoke-virtual {v14, v5}, Lr3/a;->b(I)Z

    .line 1143
    .line 1144
    .line 1145
    move-result v14

    .line 1146
    if-eqz v14, :cond_2c

    .line 1147
    .line 1148
    if-ne v5, v9, :cond_2b

    .line 1149
    .line 1150
    move v2, v3

    .line 1151
    goto :goto_14

    .line 1152
    :cond_2b
    add-int/2addr v8, v3

    .line 1153
    invoke-virtual {v1, v8}, Lo3/b;->e(I)I

    .line 1154
    .line 1155
    .line 1156
    move-result v5

    .line 1157
    goto :goto_13

    .line 1158
    :cond_2c
    :goto_14
    if-eqz v2, :cond_2d

    .line 1159
    .line 1160
    invoke-virtual {v0, v12, v4}, Lr3/d;->r(Ljava/lang/String;Lh3/a;)Ljava/lang/String;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v13

    .line 1164
    goto :goto_15

    .line 1165
    :cond_2d
    invoke-virtual {v1, v3}, Lo3/b;->b(I)V

    .line 1166
    .line 1167
    .line 1168
    :goto_15
    invoke-virtual {v0, v12, v4}, Lr3/d;->s(Ljava/lang/String;Lh3/a;)Ljava/lang/String;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v2

    .line 1172
    move-object v3, v13

    .line 1173
    :goto_16
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 1174
    .line 1175
    .line 1176
    move-result v5

    .line 1177
    sget-object v8, Lr3/a;->f:Lr3/a;

    .line 1178
    .line 1179
    invoke-virtual {v8, v5}, Lr3/a;->b(I)Z

    .line 1180
    .line 1181
    .line 1182
    move-result v8

    .line 1183
    if-nez v8, :cond_2e

    .line 1184
    .line 1185
    new-instance v5, Ln2/a0;

    .line 1186
    .line 1187
    invoke-direct {v5, v3, v2}, Ln2/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v1

    .line 1194
    new-instance v2, Ls3/i;

    .line 1195
    .line 1196
    invoke-direct {v2, v5, v4, v1}, Ls3/i;-><init>(Ln2/a0;Lh3/a;Lh3/a;)V

    .line 1197
    .line 1198
    .line 1199
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    .line 1201
    .line 1202
    return-void

    .line 1203
    :cond_2e
    invoke-static {v5}, Ljava/lang/Character;->toChars(I)[C

    .line 1204
    .line 1205
    .line 1206
    move-result-object v2

    .line 1207
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v2

    .line 1211
    new-instance v3, Lr3/c;

    .line 1212
    .line 1213
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1214
    .line 1215
    const-string v8, "expected \' \', but found \'"

    .line 1216
    .line 1217
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1218
    .line 1219
    .line 1220
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v2

    .line 1236
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v1

    .line 1240
    invoke-direct {v3, v11, v4, v2, v1}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 1241
    .line 1242
    .line 1243
    throw v3

    .line 1244
    :cond_2f
    invoke-virtual {v0, v2}, Lr3/d;->e(Z)V

    .line 1245
    .line 1246
    .line 1247
    return-void

    .line 1248
    :cond_30
    invoke-virtual {v0, v2}, Lr3/d;->f(Z)V

    .line 1249
    .line 1250
    .line 1251
    return-void

    .line 1252
    :cond_31
    iget v5, v0, Lr3/d;->c:I

    .line 1253
    .line 1254
    if-eqz v5, :cond_32

    .line 1255
    .line 1256
    move v5, v3

    .line 1257
    goto :goto_17

    .line 1258
    :cond_32
    sget-object v5, Lr3/a;->g:Lr3/a;

    .line 1259
    .line 1260
    invoke-virtual {v1, v3}, Lo3/b;->e(I)I

    .line 1261
    .line 1262
    .line 1263
    move-result v9

    .line 1264
    invoke-virtual {v5, v9}, Lr3/a;->a(I)Z

    .line 1265
    .line 1266
    .line 1267
    move-result v5

    .line 1268
    :goto_17
    if-eqz v5, :cond_39

    .line 1269
    .line 1270
    iget v4, v0, Lr3/d;->c:I

    .line 1271
    .line 1272
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v4

    .line 1276
    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v4

    .line 1280
    check-cast v4, Lr3/e;

    .line 1281
    .line 1282
    if-eqz v4, :cond_34

    .line 1283
    .line 1284
    iget v5, v0, Lr3/d;->e:I

    .line 1285
    .line 1286
    iget v6, v4, Lr3/e;->a:I

    .line 1287
    .line 1288
    sub-int v5, v6, v5

    .line 1289
    .line 1290
    new-instance v8, Ls3/c;

    .line 1291
    .line 1292
    iget-object v9, v4, Lr3/e;->f:Lh3/a;

    .line 1293
    .line 1294
    const/16 v10, 0xa

    .line 1295
    .line 1296
    invoke-direct {v8, v9, v9, v10}, Ls3/c;-><init>(Lh3/a;Lh3/a;I)V

    .line 1297
    .line 1298
    .line 1299
    invoke-virtual {v7, v5, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1300
    .line 1301
    .line 1302
    iget v5, v0, Lr3/d;->c:I

    .line 1303
    .line 1304
    if-nez v5, :cond_33

    .line 1305
    .line 1306
    iget v4, v4, Lr3/e;->e:I

    .line 1307
    .line 1308
    invoke-virtual {v0, v4}, Lr3/d;->a(I)Z

    .line 1309
    .line 1310
    .line 1311
    move-result v4

    .line 1312
    if-eqz v4, :cond_33

    .line 1313
    .line 1314
    iget v4, v0, Lr3/d;->e:I

    .line 1315
    .line 1316
    sub-int/2addr v6, v4

    .line 1317
    new-instance v4, Ls3/c;

    .line 1318
    .line 1319
    invoke-direct {v4, v9, v9, v3}, Ls3/c;-><init>(Lh3/a;Lh3/a;I)V

    .line 1320
    .line 1321
    .line 1322
    invoke-virtual {v7, v6, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1323
    .line 1324
    .line 1325
    :cond_33
    iput-boolean v2, v0, Lr3/d;->h:Z

    .line 1326
    .line 1327
    goto :goto_19

    .line 1328
    :cond_34
    iget v4, v0, Lr3/d;->c:I

    .line 1329
    .line 1330
    if-nez v4, :cond_36

    .line 1331
    .line 1332
    iget-boolean v5, v0, Lr3/d;->h:Z

    .line 1333
    .line 1334
    if-eqz v5, :cond_35

    .line 1335
    .line 1336
    goto :goto_18

    .line 1337
    :cond_35
    new-instance v2, Lr3/c;

    .line 1338
    .line 1339
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v1

    .line 1343
    const-string v3, "mapping values are not allowed here"

    .line 1344
    .line 1345
    const/4 v4, 0x0

    .line 1346
    invoke-direct {v2, v4, v4, v3, v1}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 1347
    .line 1348
    .line 1349
    throw v2

    .line 1350
    :cond_36
    :goto_18
    if-nez v4, :cond_37

    .line 1351
    .line 1352
    iget v4, v1, Lo3/b;->h:I

    .line 1353
    .line 1354
    invoke-virtual {v0, v4}, Lr3/d;->a(I)Z

    .line 1355
    .line 1356
    .line 1357
    move-result v4

    .line 1358
    if-eqz v4, :cond_37

    .line 1359
    .line 1360
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v4

    .line 1364
    new-instance v5, Ls3/c;

    .line 1365
    .line 1366
    invoke-direct {v5, v4, v4, v3}, Ls3/c;-><init>(Lh3/a;Lh3/a;I)V

    .line 1367
    .line 1368
    .line 1369
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1370
    .line 1371
    .line 1372
    :cond_37
    iget v4, v0, Lr3/d;->c:I

    .line 1373
    .line 1374
    if-nez v4, :cond_38

    .line 1375
    .line 1376
    move v2, v3

    .line 1377
    :cond_38
    iput-boolean v2, v0, Lr3/d;->h:Z

    .line 1378
    .line 1379
    invoke-virtual/range {p0 .. p0}, Lr3/d;->l()V

    .line 1380
    .line 1381
    .line 1382
    :goto_19
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v2

    .line 1386
    invoke-virtual {v1, v3}, Lo3/b;->b(I)V

    .line 1387
    .line 1388
    .line 1389
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v1

    .line 1393
    new-instance v3, Ls3/c;

    .line 1394
    .line 1395
    const/16 v4, 0xb

    .line 1396
    .line 1397
    invoke-direct {v3, v2, v1, v4}, Ls3/c;-><init>(Lh3/a;Lh3/a;I)V

    .line 1398
    .line 1399
    .line 1400
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1401
    .line 1402
    .line 1403
    return-void

    .line 1404
    :cond_39
    :goto_1a
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 1405
    .line 1406
    .line 1407
    move-result v5

    .line 1408
    sget-object v6, Lr3/a;->g:Lr3/a;

    .line 1409
    .line 1410
    invoke-virtual {v6, v5}, Lr3/a;->a(I)Z

    .line 1411
    .line 1412
    .line 1413
    move-result v9

    .line 1414
    if-nez v9, :cond_3b

    .line 1415
    .line 1416
    const-string v9, "-?:,[]{}#&*!|>\'\"%@`"

    .line 1417
    .line 1418
    invoke-virtual {v9, v5, v2}, Ljava/lang/String;->indexOf(II)I

    .line 1419
    .line 1420
    .line 1421
    move-result v9

    .line 1422
    if-eq v9, v8, :cond_3a

    .line 1423
    .line 1424
    goto :goto_1b

    .line 1425
    :cond_3a
    move v9, v2

    .line 1426
    goto :goto_1c

    .line 1427
    :cond_3b
    :goto_1b
    move v9, v3

    .line 1428
    :goto_1c
    xor-int/2addr v9, v3

    .line 1429
    if-nez v9, :cond_3d

    .line 1430
    .line 1431
    invoke-virtual {v1, v3}, Lo3/b;->e(I)I

    .line 1432
    .line 1433
    .line 1434
    move-result v9

    .line 1435
    invoke-virtual {v6, v9}, Lr3/a;->b(I)Z

    .line 1436
    .line 1437
    .line 1438
    move-result v6

    .line 1439
    if-eqz v6, :cond_3c

    .line 1440
    .line 1441
    const/16 v6, 0x2d

    .line 1442
    .line 1443
    if-eq v5, v6, :cond_3d

    .line 1444
    .line 1445
    iget v6, v0, Lr3/d;->c:I

    .line 1446
    .line 1447
    if-nez v6, :cond_3c

    .line 1448
    .line 1449
    const-string v6, "?:"

    .line 1450
    .line 1451
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    .line 1452
    .line 1453
    .line 1454
    move-result v5

    .line 1455
    if-eq v5, v8, :cond_3c

    .line 1456
    .line 1457
    goto :goto_1d

    .line 1458
    :cond_3c
    move v3, v2

    .line 1459
    :cond_3d
    :goto_1d
    if-eqz v3, :cond_52

    .line 1460
    .line 1461
    invoke-virtual/range {p0 .. p0}, Lr3/d;->m()V

    .line 1462
    .line 1463
    .line 1464
    iput-boolean v2, v0, Lr3/d;->h:Z

    .line 1465
    .line 1466
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1467
    .line 1468
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1469
    .line 1470
    .line 1471
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v16

    .line 1475
    iget v4, v0, Lr3/d;->f:I

    .line 1476
    .line 1477
    add-int/lit8 v5, v4, 0x1

    .line 1478
    .line 1479
    const-string v6, ""

    .line 1480
    .line 1481
    move-object v8, v6

    .line 1482
    move-object/from16 v4, v16

    .line 1483
    .line 1484
    :goto_1e
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 1485
    .line 1486
    .line 1487
    move-result v9

    .line 1488
    const/16 v10, 0x23

    .line 1489
    .line 1490
    if-ne v9, v10, :cond_3e

    .line 1491
    .line 1492
    goto :goto_24

    .line 1493
    :cond_3e
    move v9, v2

    .line 1494
    :goto_1f
    invoke-virtual {v1, v9}, Lo3/b;->e(I)I

    .line 1495
    .line 1496
    .line 1497
    move-result v10

    .line 1498
    sget-object v13, Lr3/a;->g:Lr3/a;

    .line 1499
    .line 1500
    invoke-virtual {v13, v10}, Lr3/a;->a(I)Z

    .line 1501
    .line 1502
    .line 1503
    move-result v14

    .line 1504
    if-nez v14, :cond_44

    .line 1505
    .line 1506
    const/16 v14, 0x3a

    .line 1507
    .line 1508
    if-ne v10, v14, :cond_42

    .line 1509
    .line 1510
    add-int/lit8 v14, v9, 0x1

    .line 1511
    .line 1512
    invoke-virtual {v1, v14}, Lo3/b;->e(I)I

    .line 1513
    .line 1514
    .line 1515
    move-result v14

    .line 1516
    iget v15, v0, Lr3/d;->c:I

    .line 1517
    .line 1518
    if-eqz v15, :cond_3f

    .line 1519
    .line 1520
    const-string v15, ",[]{}"

    .line 1521
    .line 1522
    goto :goto_20

    .line 1523
    :cond_3f
    move-object v15, v6

    .line 1524
    :goto_20
    invoke-virtual {v13, v14}, Lr3/a;->a(I)Z

    .line 1525
    .line 1526
    .line 1527
    move-result v13

    .line 1528
    if-nez v13, :cond_41

    .line 1529
    .line 1530
    invoke-virtual {v15, v14, v2}, Ljava/lang/String;->indexOf(II)I

    .line 1531
    .line 1532
    .line 1533
    move-result v13

    .line 1534
    const/4 v14, -0x1

    .line 1535
    if-eq v13, v14, :cond_40

    .line 1536
    .line 1537
    goto :goto_21

    .line 1538
    :cond_40
    move v13, v2

    .line 1539
    goto :goto_22

    .line 1540
    :cond_41
    :goto_21
    const/4 v13, 0x1

    .line 1541
    :goto_22
    if-nez v13, :cond_44

    .line 1542
    .line 1543
    :cond_42
    iget v13, v0, Lr3/d;->c:I

    .line 1544
    .line 1545
    if-eqz v13, :cond_43

    .line 1546
    .line 1547
    const-string v13, ",?[]{}"

    .line 1548
    .line 1549
    invoke-virtual {v13, v10}, Ljava/lang/String;->indexOf(I)I

    .line 1550
    .line 1551
    .line 1552
    move-result v10

    .line 1553
    const/4 v13, -0x1

    .line 1554
    if-eq v10, v13, :cond_43

    .line 1555
    .line 1556
    goto :goto_23

    .line 1557
    :cond_43
    add-int/lit8 v9, v9, 0x1

    .line 1558
    .line 1559
    goto :goto_1f

    .line 1560
    :cond_44
    :goto_23
    if-nez v9, :cond_45

    .line 1561
    .line 1562
    :goto_24
    move-object/from16 v17, v4

    .line 1563
    .line 1564
    goto/16 :goto_2a

    .line 1565
    .line 1566
    :cond_45
    iput-boolean v2, v0, Lr3/d;->h:Z

    .line 1567
    .line 1568
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    .line 1570
    .line 1571
    invoke-virtual {v1, v9}, Lo3/b;->g(I)Ljava/lang/String;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v4

    .line 1575
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    .line 1577
    .line 1578
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v8

    .line 1582
    move v4, v2

    .line 1583
    :goto_25
    invoke-virtual {v1, v4}, Lo3/b;->e(I)I

    .line 1584
    .line 1585
    .line 1586
    move-result v9

    .line 1587
    const/16 v10, 0x20

    .line 1588
    .line 1589
    if-eq v9, v10, :cond_51

    .line 1590
    .line 1591
    invoke-virtual {v1, v4}, Lo3/b;->e(I)I

    .line 1592
    .line 1593
    .line 1594
    move-result v9

    .line 1595
    const/16 v10, 0x9

    .line 1596
    .line 1597
    if-ne v9, v10, :cond_46

    .line 1598
    .line 1599
    goto/16 :goto_2b

    .line 1600
    .line 1601
    :cond_46
    invoke-virtual {v1, v4}, Lo3/b;->g(I)Ljava/lang/String;

    .line 1602
    .line 1603
    .line 1604
    move-result-object v4

    .line 1605
    invoke-virtual/range {p0 .. p0}, Lr3/d;->q()Ljava/lang/String;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v9

    .line 1609
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 1610
    .line 1611
    .line 1612
    move-result v10

    .line 1613
    if-eqz v10, :cond_4e

    .line 1614
    .line 1615
    const/4 v4, 0x1

    .line 1616
    iput-boolean v4, v0, Lr3/d;->h:Z

    .line 1617
    .line 1618
    const/4 v4, 0x3

    .line 1619
    invoke-virtual {v1, v4}, Lo3/b;->f(I)Ljava/lang/String;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v10

    .line 1623
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1624
    .line 1625
    .line 1626
    move-result v13

    .line 1627
    if-nez v13, :cond_4d

    .line 1628
    .line 1629
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1630
    .line 1631
    .line 1632
    move-result v10

    .line 1633
    if-eqz v10, :cond_47

    .line 1634
    .line 1635
    sget-object v10, Lr3/a;->g:Lr3/a;

    .line 1636
    .line 1637
    invoke-virtual {v1, v4}, Lo3/b;->e(I)I

    .line 1638
    .line 1639
    .line 1640
    move-result v4

    .line 1641
    invoke-virtual {v10, v4}, Lr3/a;->a(I)Z

    .line 1642
    .line 1643
    .line 1644
    move-result v4

    .line 1645
    if-eqz v4, :cond_47

    .line 1646
    .line 1647
    goto :goto_27

    .line 1648
    :cond_47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1649
    .line 1650
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1651
    .line 1652
    .line 1653
    :cond_48
    :goto_26
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 1654
    .line 1655
    .line 1656
    move-result v10

    .line 1657
    const/16 v13, 0x20

    .line 1658
    .line 1659
    if-ne v10, v13, :cond_49

    .line 1660
    .line 1661
    const/4 v10, 0x1

    .line 1662
    invoke-virtual {v1, v10}, Lo3/b;->b(I)V

    .line 1663
    .line 1664
    .line 1665
    goto :goto_26

    .line 1666
    :cond_49
    invoke-virtual/range {p0 .. p0}, Lr3/d;->q()Ljava/lang/String;

    .line 1667
    .line 1668
    .line 1669
    move-result-object v10

    .line 1670
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 1671
    .line 1672
    .line 1673
    move-result v13

    .line 1674
    if-eqz v13, :cond_4a

    .line 1675
    .line 1676
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    .line 1678
    .line 1679
    const/4 v10, 0x3

    .line 1680
    invoke-virtual {v1, v10}, Lo3/b;->f(I)Ljava/lang/String;

    .line 1681
    .line 1682
    .line 1683
    move-result-object v13

    .line 1684
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1685
    .line 1686
    .line 1687
    move-result v14

    .line 1688
    if-nez v14, :cond_4d

    .line 1689
    .line 1690
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1691
    .line 1692
    .line 1693
    move-result v13

    .line 1694
    if-eqz v13, :cond_48

    .line 1695
    .line 1696
    sget-object v13, Lr3/a;->g:Lr3/a;

    .line 1697
    .line 1698
    invoke-virtual {v1, v10}, Lo3/b;->e(I)I

    .line 1699
    .line 1700
    .line 1701
    move-result v10

    .line 1702
    invoke-virtual {v13, v10}, Lr3/a;->a(I)Z

    .line 1703
    .line 1704
    .line 1705
    move-result v10

    .line 1706
    if-eqz v10, :cond_48

    .line 1707
    .line 1708
    goto :goto_27

    .line 1709
    :cond_4a
    const-string v10, "\n"

    .line 1710
    .line 1711
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1712
    .line 1713
    .line 1714
    move-result v10

    .line 1715
    if-nez v10, :cond_4b

    .line 1716
    .line 1717
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1718
    .line 1719
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1720
    .line 1721
    .line 1722
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1723
    .line 1724
    .line 1725
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1726
    .line 1727
    .line 1728
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1729
    .line 1730
    .line 1731
    move-result-object v4

    .line 1732
    goto :goto_28

    .line 1733
    :cond_4b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 1734
    .line 1735
    .line 1736
    move-result v9

    .line 1737
    if-nez v9, :cond_4c

    .line 1738
    .line 1739
    const-string v4, " "

    .line 1740
    .line 1741
    goto :goto_28

    .line 1742
    :cond_4c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1743
    .line 1744
    .line 1745
    move-result-object v4

    .line 1746
    goto :goto_28

    .line 1747
    :cond_4d
    :goto_27
    move-object v4, v6

    .line 1748
    :cond_4e
    :goto_28
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1749
    .line 1750
    .line 1751
    move-result v9

    .line 1752
    if-eqz v9, :cond_50

    .line 1753
    .line 1754
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 1755
    .line 1756
    .line 1757
    move-result v9

    .line 1758
    const/16 v10, 0x23

    .line 1759
    .line 1760
    if-eq v9, v10, :cond_50

    .line 1761
    .line 1762
    iget v9, v0, Lr3/d;->c:I

    .line 1763
    .line 1764
    if-nez v9, :cond_4f

    .line 1765
    .line 1766
    iget v9, v1, Lo3/b;->h:I

    .line 1767
    .line 1768
    if-ge v9, v5, :cond_4f

    .line 1769
    .line 1770
    goto :goto_29

    .line 1771
    :cond_4f
    move-object/from16 v19, v8

    .line 1772
    .line 1773
    move-object v8, v4

    .line 1774
    move-object/from16 v4, v19

    .line 1775
    .line 1776
    goto/16 :goto_1e

    .line 1777
    .line 1778
    :cond_50
    :goto_29
    move-object/from16 v17, v8

    .line 1779
    .line 1780
    :goto_2a
    new-instance v1, Ls3/f;

    .line 1781
    .line 1782
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1783
    .line 1784
    .line 1785
    move-result-object v14

    .line 1786
    const/4 v15, 0x1

    .line 1787
    sget-object v18, Le3/b;->f:Le3/b;

    .line 1788
    .line 1789
    move-object v13, v1

    .line 1790
    invoke-direct/range {v13 .. v18}, Ls3/f;-><init>(Ljava/lang/String;ZLh3/a;Lh3/a;Le3/b;)V

    .line 1791
    .line 1792
    .line 1793
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1794
    .line 1795
    .line 1796
    return-void

    .line 1797
    :cond_51
    :goto_2b
    add-int/lit8 v4, v4, 0x1

    .line 1798
    .line 1799
    goto/16 :goto_25

    .line 1800
    .line 1801
    :cond_52
    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    .line 1802
    .line 1803
    .line 1804
    move-result-object v2

    .line 1805
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 1806
    .line 1807
    .line 1808
    move-result-object v2

    .line 1809
    sget-object v3, Lr3/d;->k:Ljava/util/HashMap;

    .line 1810
    .line 1811
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1812
    .line 1813
    .line 1814
    move-result-object v5

    .line 1815
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1816
    .line 1817
    .line 1818
    move-result-object v5

    .line 1819
    :cond_53
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1820
    .line 1821
    .line 1822
    move-result v6

    .line 1823
    if-eqz v6, :cond_54

    .line 1824
    .line 1825
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1826
    .line 1827
    .line 1828
    move-result-object v6

    .line 1829
    check-cast v6, Ljava/lang/Character;

    .line 1830
    .line 1831
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v7

    .line 1835
    check-cast v7, Ljava/lang/String;

    .line 1836
    .line 1837
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1838
    .line 1839
    .line 1840
    move-result v7

    .line 1841
    if-eqz v7, :cond_53

    .line 1842
    .line 1843
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1844
    .line 1845
    const-string v3, "\\"

    .line 1846
    .line 1847
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1848
    .line 1849
    .line 1850
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1851
    .line 1852
    .line 1853
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1854
    .line 1855
    .line 1856
    move-result-object v2

    .line 1857
    :cond_54
    const/16 v3, 0x9

    .line 1858
    .line 1859
    if-ne v4, v3, :cond_55

    .line 1860
    .line 1861
    const-string v3, "(TAB)"

    .line 1862
    .line 1863
    invoke-static {v2, v3}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1864
    .line 1865
    .line 1866
    move-result-object v2

    .line 1867
    :cond_55
    const-string v3, "found character \'%s\' that cannot start any token. (Do not use %s for indentation)"

    .line 1868
    .line 1869
    filled-new-array {v2, v2}, [Ljava/lang/Object;

    .line 1870
    .line 1871
    .line 1872
    move-result-object v2

    .line 1873
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1874
    .line 1875
    .line 1876
    move-result-object v2

    .line 1877
    new-instance v3, Lr3/c;

    .line 1878
    .line 1879
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 1880
    .line 1881
    .line 1882
    move-result-object v1

    .line 1883
    const-string v4, "while scanning for the next token"

    .line 1884
    .line 1885
    const/4 v5, 0x0

    .line 1886
    invoke-direct {v3, v4, v5, v2, v1}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 1887
    .line 1888
    .line 1889
    throw v3

    .line 1890
    :cond_56
    invoke-virtual/range {p0 .. p0}, Lr3/d;->m()V

    .line 1891
    .line 1892
    .line 1893
    iput-boolean v2, v0, Lr3/d;->h:Z

    .line 1894
    .line 1895
    invoke-virtual {v0, v2}, Lr3/d;->n(Z)Ls3/j;

    .line 1896
    .line 1897
    .line 1898
    move-result-object v1

    .line 1899
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1900
    .line 1901
    .line 1902
    return-void

    .line 1903
    :cond_57
    invoke-virtual {v0, v8}, Lr3/d;->v(I)V

    .line 1904
    .line 1905
    .line 1906
    invoke-virtual/range {p0 .. p0}, Lr3/d;->l()V

    .line 1907
    .line 1908
    .line 1909
    iput-boolean v2, v0, Lr3/d;->h:Z

    .line 1910
    .line 1911
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clear()V

    .line 1912
    .line 1913
    .line 1914
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 1915
    .line 1916
    .line 1917
    move-result-object v1

    .line 1918
    new-instance v2, Ls3/g;

    .line 1919
    .line 1920
    invoke-direct {v2, v1, v1}, Ls3/g;-><init>(Lh3/a;Lh3/a;)V

    .line 1921
    .line 1922
    .line 1923
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1924
    .line 1925
    .line 1926
    const/4 v1, 0x1

    .line 1927
    iput-boolean v1, v0, Lr3/d;->b:Z

    .line 1928
    .line 1929
    return-void

    .line 1930
    nop

    .line 1931
    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1932
    .line 1933
    .line 1934
    .line 1935
    .line 1936
    .line 1937
    .line 1938
    .line 1939
    .line 1940
    .line 1941
    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 1942
    .line 1943
    .line 1944
    .line 1945
    .line 1946
    .line 1947
    .line 1948
    .line 1949
    .line 1950
    .line 1951
    :pswitch_data_2
    .packed-switch 0x7b
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final i()Ls3/j;
    .locals 2

    .line 1
    iget v0, p0, Lr3/d;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr3/d;->e:I

    iget-object v0, p0, Lr3/d;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3/j;

    return-object v0
.end method

.method public final j()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lr3/d;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lr3/d;->d:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return v2

    .line 17
    :cond_1
    invoke-virtual {p0}, Lr3/d;->u()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lr3/d;->i:Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lr3/e;

    .line 41
    .line 42
    iget v0, v0, Lr3/e;->a:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v0, -0x1

    .line 46
    :goto_0
    iget v3, p0, Lr3/d;->e:I

    .line 47
    .line 48
    if-ne v0, v3, :cond_3

    .line 49
    .line 50
    move v1, v2

    .line 51
    :cond_3
    return v1
.end method

.method public final k()Ls3/j;
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Lr3/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr3/d;->h()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr3/d;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3/j;

    return-object v0
.end method

.method public final l()V
    .locals 5

    .line 1
    iget-object v0, p0, Lr3/d;->i:Ljava/util/LinkedHashMap;

    iget v1, p0, Lr3/d;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr3/e;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lr3/e;->b:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lr3/c;

    iget-object v2, p0, Lr3/d;->a:Lo3/b;

    invoke-virtual {v2}, Lo3/b;->c()Lh3/a;

    move-result-object v2

    iget-object v0, v0, Lr3/e;->f:Lh3/a;

    const-string v3, "could not find expected \':\'"

    const-string v4, "while scanning a simple key"

    invoke-direct {v1, v4, v0, v3, v2}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public final m()V
    .locals 9

    .line 1
    iget v0, p0, Lr3/d;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Lr3/d;->a:Lo3/b;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lr3/d;->f:I

    .line 8
    .line 9
    iget v2, v1, Lo3/b;->h:I

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    move v4, v0

    .line 17
    iget-boolean v0, p0, Lr3/d;->h:Z

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    new-instance v0, Lh3/c;

    .line 25
    .line 26
    const-string v1, "A simple key is required only if it is the first token in the current line"

    .line 27
    .line 28
    invoke-direct {v0, v1}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lr3/d;->l()V

    .line 35
    .line 36
    .line 37
    iget v0, p0, Lr3/d;->e:I

    .line 38
    .line 39
    iget-object v2, p0, Lr3/d;->d:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    add-int v3, v2, v0

    .line 46
    .line 47
    new-instance v0, Lr3/e;

    .line 48
    .line 49
    iget v5, v1, Lo3/b;->f:I

    .line 50
    .line 51
    iget v6, v1, Lo3/b;->g:I

    .line 52
    .line 53
    iget v7, v1, Lo3/b;->h:I

    .line 54
    .line 55
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    move-object v2, v0

    .line 60
    invoke-direct/range {v2 .. v8}, Lr3/e;-><init>(IZIIILh3/a;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lr3/d;->i:Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    iget v2, p0, Lr3/d;->c:I

    .line 66
    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :cond_3
    return-void
.end method

.method public final n(Z)Ls3/j;
    .locals 13

    .line 1
    iget-object v0, p0, Lr3/d;->a:Lo3/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo3/b;->c()Lh3/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lo3/b;->d()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/16 v3, 0x2a

    .line 12
    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    const-string v2, "alias"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v2, "anchor"

    .line 19
    .line 20
    :goto_0
    const/4 v3, 0x1

    .line 21
    invoke-virtual {v0, v3}, Lo3/b;->b(I)V

    .line 22
    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    move v5, v4

    .line 26
    :goto_1
    invoke-virtual {v0, v5}, Lo3/b;->e(I)I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    sget-object v7, Lr3/a;->g:Lr3/a;

    .line 31
    .line 32
    invoke-virtual {v7, v6}, Lr3/a;->a(I)Z

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    const/4 v9, -0x1

    .line 37
    if-nez v8, :cond_2

    .line 38
    .line 39
    const-string v8, ":,[]{}"

    .line 40
    .line 41
    invoke-virtual {v8, v6, v4}, Ljava/lang/String;->indexOf(II)I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    if-eq v8, v9, :cond_1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    move v8, v4

    .line 49
    goto :goto_3

    .line 50
    :cond_2
    :goto_2
    move v8, v3

    .line 51
    :goto_3
    xor-int/2addr v8, v3

    .line 52
    if-eqz v8, :cond_3

    .line 53
    .line 54
    add-int/lit8 v5, v5, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    const-string v8, ")"

    .line 58
    .line 59
    const-string v10, "("

    .line 60
    .line 61
    const-string v11, "unexpected character found "

    .line 62
    .line 63
    const-string v12, "while scanning an "

    .line 64
    .line 65
    if-eqz v5, :cond_8

    .line 66
    .line 67
    invoke-virtual {v0, v5}, Lo3/b;->g(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v0}, Lo3/b;->d()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    invoke-virtual {v7, v6}, Lr3/a;->a(I)Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-nez v7, :cond_4

    .line 80
    .line 81
    const-string v7, "?:,]}%@`"

    .line 82
    .line 83
    invoke-virtual {v7, v6, v4}, Ljava/lang/String;->indexOf(II)I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-eq v7, v9, :cond_5

    .line 88
    .line 89
    :cond_4
    move v4, v3

    .line 90
    :cond_5
    xor-int/2addr v3, v4

    .line 91
    if-nez v3, :cond_7

    .line 92
    .line 93
    invoke-virtual {v0}, Lo3/b;->c()Lh3/a;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz p1, :cond_6

    .line 98
    .line 99
    new-instance p1, Ls3/b;

    .line 100
    .line 101
    invoke-direct {p1, v5, v1, v0}, Ls3/b;-><init>(Ljava/lang/String;Lh3/a;Lh3/a;)V

    .line 102
    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_6
    new-instance p1, Ls3/a;

    .line 106
    .line 107
    invoke-direct {p1, v5, v1, v0}, Ls3/a;-><init>(Ljava/lang/String;Lh3/a;Lh3/a;)V

    .line 108
    .line 109
    .line 110
    :goto_4
    return-object p1

    .line 111
    :cond_7
    invoke-static {v6}, Ljava/lang/Character;->toChars(I)[C

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    new-instance v3, Lr3/c;

    .line 120
    .line 121
    invoke-virtual {v12, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {v0}, Lo3/b;->c()Lh3/a;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-direct {v3, v2, v1, p1, v0}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 151
    .line 152
    .line 153
    throw v3

    .line 154
    :cond_8
    invoke-static {v6}, Ljava/lang/Character;->toChars(I)[C

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    new-instance v3, Lr3/c;

    .line 163
    .line 164
    invoke-virtual {v12, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {v0}, Lo3/b;->c()Lh3/a;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-direct {v3, v2, v1, p1, v0}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 194
    .line 195
    .line 196
    throw v3
.end method

.method public final o(I)[Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lr3/d;->a:Lo3/b;

    .line 7
    .line 8
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget v3, v1, Lo3/b;->h:I

    .line 13
    .line 14
    :goto_0
    const/16 v4, 0x20

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    if-ge v3, p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    if-ne v6, v4, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, v5}, Lo3/b;->b(I)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lr3/d;->q()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget v3, v1, Lo3/b;->h:I

    .line 49
    .line 50
    :goto_1
    if-ge v3, p1, :cond_0

    .line 51
    .line 52
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-ne v6, v4, :cond_0

    .line 57
    .line 58
    invoke-virtual {v1, v5}, Lo3/b;->b(I)V

    .line 59
    .line 60
    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    filled-new-array {p1, v2}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1
.end method

.method public final p(Lh3/a;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    iget-object v1, p0, Lr3/d;->a:Lo3/b;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    invoke-virtual {v1, v2}, Lo3/b;->f(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const-string v4, "---"

    .line 14
    .line 15
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    const-string v4, "..."

    .line 22
    .line 23
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    :cond_0
    sget-object v3, Lr3/a;->g:Lr3/a;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lo3/b;->e(I)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {v3, v2}, Lr3/a;->a(I)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_4

    .line 40
    .line 41
    :cond_1
    :goto_1
    const-string v2, " \t"

    .line 42
    .line 43
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const/4 v3, -0x1

    .line 52
    if-eq v2, v3, :cond_2

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    invoke-virtual {v1, v2}, Lo3/b;->b(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {p0}, Lr3/d;->q()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1

    .line 78
    :cond_4
    new-instance v0, Lr3/c;

    .line 79
    .line 80
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string v2, "while scanning a quoted scalar"

    .line 85
    .line 86
    const-string v3, "found unexpected document separator"

    .line 87
    .line 88
    invoke-direct {v0, v2, p1, v3, v1}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 89
    .line 90
    .line 91
    throw v0
.end method

.method public final q()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lr3/d;->a:Lo3/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo3/b;->d()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0xa

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/16 v4, 0xd

    .line 11
    .line 12
    if-eq v1, v4, :cond_3

    .line 13
    .line 14
    if-eq v1, v2, :cond_3

    .line 15
    .line 16
    const/16 v5, 0x85

    .line 17
    .line 18
    if-ne v1, v5, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/16 v2, 0x2028

    .line 22
    .line 23
    if-eq v1, v2, :cond_2

    .line 24
    .line 25
    const/16 v2, 0x2029

    .line 26
    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-string v0, ""

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_2
    :goto_0
    invoke-virtual {v0, v3}, Lo3/b;->b(I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0

    .line 45
    :cond_3
    :goto_1
    if-ne v1, v4, :cond_4

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Lo3/b;->e(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-ne v2, v1, :cond_4

    .line 52
    .line 53
    const/4 v1, 0x2

    .line 54
    invoke-virtual {v0, v1}, Lo3/b;->b(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    invoke-virtual {v0, v3}, Lo3/b;->b(I)V

    .line 59
    .line 60
    .line 61
    :goto_2
    const-string v0, "\n"

    .line 62
    .line 63
    return-object v0
.end method

.method public final r(Ljava/lang/String;Lh3/a;)Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lr3/d;->a:Lo3/b;

    invoke-virtual {v0}, Lo3/b;->d()I

    move-result v1

    const-string v2, "while scanning a "

    const-string v3, ")"

    const-string v4, "("

    const-string v5, "expected \'!\', but found "

    const/16 v6, 0x21

    if-ne v1, v6, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo3/b;->e(I)I

    move-result v7

    const/16 v8, 0x20

    if-eq v7, v8, :cond_2

    move v8, v1

    :goto_0
    sget-object v9, Lr3/a;->i:Lr3/a;

    invoke-virtual {v9, v7}, Lr3/a;->a(I)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v8}, Lo3/b;->e(I)I

    move-result v7

    goto :goto_0

    :cond_0
    if-ne v7, v6, :cond_1

    add-int/2addr v1, v8

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v8}, Lo3/b;->b(I)V

    invoke-static {v7}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lr3/c;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lo3/b;->c()Lh3/a;

    move-result-object v0

    invoke-direct {v6, p1, p2, v1, v0}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    throw v6

    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Lo3/b;->g(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lr3/c;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lo3/b;->c()Lh3/a;

    move-result-object v0

    invoke-direct {v7, p1, p2, v1, v0}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    throw v7
.end method

.method public final s(Ljava/lang/String;Lh3/a;)Ljava/lang/String;
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lr3/d;->a:Lo3/b;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Lo3/b;->e(I)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    move v4, v2

    .line 14
    :goto_0
    sget-object v5, Lr3/a;->h:Lr3/a;

    .line 15
    .line 16
    invoke-virtual {v5, v3}, Lr3/a;->a(I)Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    const-string v6, "while scanning a "

    .line 21
    .line 22
    const-string v7, ")"

    .line 23
    .line 24
    const-string v8, "("

    .line 25
    .line 26
    if-eqz v5, :cond_3

    .line 27
    .line 28
    const/16 v5, 0x25

    .line 29
    .line 30
    if-ne v3, v5, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1, v4}, Lo3/b;->g(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    move v4, v3

    .line 41
    :goto_1
    mul-int/lit8 v9, v4, 0x3

    .line 42
    .line 43
    invoke-virtual {v1, v9}, Lo3/b;->e(I)I

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    if-ne v9, v5, :cond_0

    .line 48
    .line 49
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    :goto_2
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    if-ne v10, v5, :cond_1

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Lo3/b;->b(I)V

    .line 67
    .line 68
    .line 69
    const/4 v10, 0x2

    .line 70
    :try_start_0
    invoke-virtual {v1, v10}, Lo3/b;->f(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    const/16 v12, 0x10

    .line 75
    .line 76
    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    int-to-byte v11, v11

    .line 81
    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v10}, Lo3/b;->b(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :catch_0
    invoke-virtual {v1}, Lo3/b;->d()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1, v3}, Lo3/b;->e(I)I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    new-instance v5, Lr3/c;

    .line 113
    .line 114
    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    new-instance v6, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v9, "expected URI escape sequence of 2 hexadecimal numbers, but found "

    .line 121
    .line 122
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v0, ") and "

    .line 135
    .line 136
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-direct {v5, p1, p2, v0, v1}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 160
    .line 161
    .line 162
    throw v5

    .line 163
    :cond_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 164
    .line 165
    .line 166
    :try_start_1
    sget-object v3, Lt3/a;->a:Ljava/nio/charset/CharsetDecoder;

    .line 167
    .line 168
    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    move v4, v2

    .line 180
    goto :goto_3

    .line 181
    :catch_1
    move-exception v0

    .line 182
    new-instance v1, Lr3/c;

    .line 183
    .line 184
    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v3, "expected URI in UTF-8: "

    .line 191
    .line 192
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-direct {v1, p1, p2, v0, v9}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 207
    .line 208
    .line 209
    throw v1

    .line 210
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 211
    .line 212
    :goto_3
    invoke-virtual {v1, v4}, Lo3/b;->e(I)I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :cond_3
    if-eqz v4, :cond_4

    .line 219
    .line 220
    invoke-virtual {v1, v4}, Lo3/b;->g(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-eqz v2, :cond_5

    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    return-object p1

    .line 238
    :cond_5
    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    new-instance v2, Lr3/c;

    .line 247
    .line 248
    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    const-string v5, "expected URI, but found "

    .line 255
    .line 256
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v1}, Lo3/b;->c()Lh3/a;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-direct {v2, p1, p2, v0, v1}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 280
    .line 281
    .line 282
    throw v2
.end method

.method public final t(Lh3/a;)Ljava/lang/Integer;
    .locals 6

    .line 1
    iget-object v0, p0, Lr3/d;->a:Lo3/b;

    invoke-virtual {v0}, Lo3/b;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lo3/b;->e(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lo3/b;->g(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lr3/c;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "expected a digit, but found "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lo3/b;->c()Lh3/a;

    move-result-object v0

    const-string v2, "while scanning a directive"

    invoke-direct {v3, v2, p1, v1, v0}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    throw v3
.end method

.method public final u()V
    .locals 5

    .line 1
    iget-object v0, p0, Lr3/d;->i:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_3

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lr3/e;

    .line 28
    .line 29
    iget v2, v1, Lr3/e;->d:I

    .line 30
    .line 31
    iget-object v3, p0, Lr3/d;->a:Lo3/b;

    .line 32
    .line 33
    iget v4, v3, Lo3/b;->g:I

    .line 34
    .line 35
    if-ne v2, v4, :cond_1

    .line 36
    .line 37
    iget v2, v3, Lo3/b;->f:I

    .line 38
    .line 39
    iget v4, v1, Lr3/e;->c:I

    .line 40
    .line 41
    sub-int/2addr v2, v4

    .line 42
    const/16 v4, 0x400

    .line 43
    .line 44
    if-le v2, v4, :cond_0

    .line 45
    .line 46
    :cond_1
    iget-boolean v2, v1, Lr3/e;->b:Z

    .line 47
    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    new-instance v0, Lr3/c;

    .line 55
    .line 56
    invoke-virtual {v3}, Lo3/b;->c()Lh3/a;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iget-object v1, v1, Lr3/e;->f:Lh3/a;

    .line 61
    .line 62
    const-string v3, "could not find expected \':\'"

    .line 63
    .line 64
    const-string v4, "while scanning a simple key"

    .line 65
    .line 66
    invoke-direct {v0, v4, v1, v3, v2}, Lr3/c;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_3
    return-void
.end method

.method public final v(I)V
    .locals 4

    .line 1
    iget v0, p0, Lr3/d;->c:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    iget v0, p0, Lr3/d;->f:I

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lr3/d;->a:Lo3/b;

    invoke-virtual {v0}, Lo3/b;->c()Lh3/a;

    move-result-object v0

    iget-object v1, p0, Lr3/d;->g:Lh/a;

    invoke-virtual {v1}, Lh/a;->D()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lr3/d;->f:I

    iget-object v1, p0, Lr3/d;->d:Ljava/util/ArrayList;

    new-instance v2, Ls3/c;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v0, v3}, Ls3/c;-><init>(Lh3/a;Lh3/a;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
