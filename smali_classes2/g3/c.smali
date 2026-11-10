.class public abstract Lg3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/EnumMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/HashSet;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public h:Lm3/i;

.field public i:Lf2/g;

.field public j:Z

.field public k:Z

.field public l:Z

.field public final m:Ljava/util/HashMap;

.field public final n:Ljava/util/HashMap;

.field public final o:Ld3/c0;


# direct methods
.method public constructor <init>(Ld3/c0;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lm3/e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lg3/c;->a:Ljava/util/EnumMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg3/c;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg3/c;->c:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg3/c;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg3/c;->l:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lg3/c;->d:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lg3/c;->e:Ljava/util/HashSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lg3/c;->f:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lg3/c;->g:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lg3/c;->m:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lg3/c;->n:Ljava/util/HashMap;

    const/4 v2, 0x0

    iput-object v2, p0, Lg3/c;->h:Lm3/i;

    iput-boolean v0, p0, Lg3/c;->j:Z

    new-instance v0, Le3/e;

    sget-object v2, Lm3/i;->g:Lm3/i;

    const-class v3, Ljava/util/SortedMap;

    const-class v4, Ljava/util/TreeMap;

    invoke-direct {v0, v3, v2, v4}, Le3/e;-><init>(Ljava/lang/Class;Lm3/i;Ljava/lang/Class;)V

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Le3/e;

    sget-object v2, Lm3/i;->e:Lm3/i;

    const-class v3, Ljava/util/SortedSet;

    const-class v4, Ljava/util/TreeSet;

    invoke-direct {v0, v3, v2, v4}, Le3/e;-><init>(Ljava/lang/Class;Lm3/i;Ljava/lang/Class;)V

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lg3/c;->o:Ld3/c0;

    return-void
.end method


# virtual methods
.method public final a(Le3/e;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lg3/c;->n:Ljava/util/HashMap;

    .line 4
    .line 5
    iget-object v1, p1, Le3/e;->c:Lm3/i;

    .line 6
    .line 7
    iget-object v2, p1, Le3/e;->a:Ljava/lang/Class;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lg3/c;->f()Lf2/g;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p1, Le3/e;->d:Lf2/g;

    .line 17
    .line 18
    iget-object v0, p0, Lg3/c;->m:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Le3/e;

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 28
    .line 29
    const-string v0, "TypeDescription is required."

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public final b(Lm3/h;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lm3/d;->d:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p1, p1, Lm3/h;->h:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_b

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lm3/d;

    .line 25
    .line 26
    iget-object v3, v2, Lm3/d;->d:Ljava/lang/Class;

    .line 27
    .line 28
    const-class v4, Ljava/lang/Object;

    .line 29
    .line 30
    if-ne v3, v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Lm3/d;->b(Ljava/lang/Class;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0, v2}, Lg3/c;->c(Lm3/d;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_a

    .line 44
    .line 45
    if-eqz v3, :cond_9

    .line 46
    .line 47
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 48
    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    check-cast v3, Ljava/lang/Number;

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-static {p2, v1, v2}, Ljava/lang/reflect/Array;->setByte(Ljava/lang/Object;IB)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :cond_1
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 67
    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    check-cast v3, Ljava/lang/Number;

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/Number;->shortValue()S

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-static {p2, v1, v2}, Ljava/lang/reflect/Array;->setShort(Ljava/lang/Object;IS)V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_1

    .line 84
    .line 85
    :cond_2
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 86
    .line 87
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_3

    .line 92
    .line 93
    check-cast v3, Ljava/lang/Number;

    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-static {p2, v1, v2}, Ljava/lang/reflect/Array;->setInt(Ljava/lang/Object;II)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_1

    .line 103
    .line 104
    :cond_3
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 105
    .line 106
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_4

    .line 111
    .line 112
    check-cast v3, Ljava/lang/Number;

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 115
    .line 116
    .line 117
    move-result-wide v2

    .line 118
    invoke-static {p2, v1, v2, v3}, Ljava/lang/reflect/Array;->setLong(Ljava/lang/Object;IJ)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 123
    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_5

    .line 129
    .line 130
    check-cast v3, Ljava/lang/Number;

    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    invoke-static {p2, v1, v2}, Ljava/lang/reflect/Array;->setFloat(Ljava/lang/Object;IF)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_5
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 141
    .line 142
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_6

    .line 147
    .line 148
    check-cast v3, Ljava/lang/Number;

    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    .line 151
    .line 152
    .line 153
    move-result-wide v2

    .line 154
    invoke-static {p2, v1, v2, v3}, Ljava/lang/reflect/Array;->setDouble(Ljava/lang/Object;ID)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_6
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 159
    .line 160
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_7

    .line 165
    .line 166
    check-cast v3, Ljava/lang/Character;

    .line 167
    .line 168
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    invoke-static {p2, v1, v2}, Ljava/lang/reflect/Array;->setChar(Ljava/lang/Object;IC)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_7
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 177
    .line 178
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_8

    .line 183
    .line 184
    check-cast v3, Ljava/lang/Boolean;

    .line 185
    .line 186
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    invoke-static {p2, v1, v2}, Ljava/lang/reflect/Array;->setBoolean(Ljava/lang/Object;IZ)V

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_8
    new-instance p1, Lh3/c;

    .line 195
    .line 196
    const-string p2, "unexpected primitive type"

    .line 197
    .line 198
    invoke-direct {p1, p2}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p1

    .line 202
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    .line 203
    .line 204
    new-instance p2, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string v0, "Unable to construct element value for "

    .line 207
    .line 208
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw p1

    .line 222
    :cond_a
    invoke-static {p2, v1, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_b
    return-void
.end method

.method public final c(Lm3/d;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lg3/c;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iget-object v1, p0, Lg3/c;->e:Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v2, :cond_c

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    iget-object v2, p1, Lm3/d;->g:Ljava/lang/Boolean;

    .line 27
    .line 28
    if-nez v2, :cond_3

    .line 29
    .line 30
    iget-object v2, p1, Lm3/d;->a:Lm3/i;

    .line 31
    .line 32
    iget-boolean v2, v2, Lm3/i;->b:Z

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    iget-boolean v2, p1, Lm3/d;->f:Z

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    const-class v2, Ljava/lang/Object;

    .line 41
    .line 42
    iget-object v4, p1, Lm3/d;->d:Ljava/lang/Class;

    .line 43
    .line 44
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    iget-object v2, p1, Lm3/d;->a:Lm3/i;

    .line 51
    .line 52
    sget-object v4, Lm3/i;->m:Lm3/i;

    .line 53
    .line 54
    invoke-virtual {v2, v4}, Lm3/i;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget-object v2, p1, Lm3/d;->a:Lm3/i;

    .line 62
    .line 63
    iget-object v4, p1, Lm3/d;->d:Ljava/lang/Class;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    sget-object v5, Lm3/i;->q:Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Ljava/util/Set;

    .line 75
    .line 76
    const/4 v5, 0x0

    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    move v2, v5

    .line 85
    :goto_0
    if-eqz v2, :cond_4

    .line 86
    .line 87
    :goto_1
    const/4 v5, 0x1

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    :cond_4
    :goto_2
    if-eqz v5, :cond_5

    .line 94
    .line 95
    iget-object v2, p0, Lg3/c;->a:Ljava/util/EnumMap;

    .line 96
    .line 97
    invoke-virtual {p1}, Lm3/d;->a()Lm3/e;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v2, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    goto :goto_3

    .line 106
    :cond_5
    iget-object v2, p0, Lg3/c;->b:Ljava/util/HashMap;

    .line 107
    .line 108
    iget-object v4, p1, Lm3/d;->a:Lm3/i;

    .line 109
    .line 110
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Lg3/d;

    .line 115
    .line 116
    if-nez v4, :cond_8

    .line 117
    .line 118
    iget-object v4, p0, Lg3/c;->c:Ljava/util/HashMap;

    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-eqz v6, :cond_7

    .line 133
    .line 134
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    check-cast v6, Ljava/lang/String;

    .line 139
    .line 140
    iget-object v7, p1, Lm3/d;->a:Lm3/i;

    .line 141
    .line 142
    iget-object v7, v7, Lm3/i;->a:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-eqz v7, :cond_6

    .line 149
    .line 150
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    goto :goto_3

    .line 155
    :cond_7
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    :goto_3
    move-object v4, v2

    .line 160
    check-cast v4, Lg3/d;

    .line 161
    .line 162
    :cond_8
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eqz v2, :cond_9

    .line 167
    .line 168
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    goto :goto_4

    .line 173
    :cond_9
    invoke-interface {v4, p1}, Lg3/d;->b(Lm3/d;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    :goto_4
    iget-object v3, p1, Lm3/d;->d:Ljava/lang/Class;

    .line 178
    .line 179
    iget-object v5, p0, Lg3/c;->m:Ljava/util/HashMap;

    .line 180
    .line 181
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    if-eqz v6, :cond_a

    .line 186
    .line 187
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    check-cast v3, Le3/e;

    .line 192
    .line 193
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    :cond_a
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    iget-boolean v0, p1, Lm3/d;->e:Z

    .line 203
    .line 204
    if-eqz v0, :cond_b

    .line 205
    .line 206
    invoke-interface {v4, v2, p1}, Lg3/d;->a(Ljava/lang/Object;Lm3/d;)V

    .line 207
    .line 208
    .line 209
    :cond_b
    return-object v2

    .line 210
    :cond_c
    new-instance v0, Lg3/h;

    .line 211
    .line 212
    iget-object p1, p1, Lm3/d;->b:Lh3/a;

    .line 213
    .line 214
    const-string v1, "found unconstructable recursive node"

    .line 215
    .line 216
    invoke-direct {v0, v3, v3, v1, p1}, Lg3/h;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 217
    .line 218
    .line 219
    throw v0
.end method

.method public final d(Lm3/h;Ljava/util/Collection;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lm3/h;->h:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lm3/d;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lg3/c;->c(Lm3/d;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lg3/c;->f:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lg3/b;

    .line 24
    .line 25
    iget-object v3, v2, Lg3/b;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v3, Lg3/b;

    .line 28
    .line 29
    iget-object v2, v2, Lg3/b;->a:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Ljava/util/Map;

    .line 32
    .line 33
    iget-object v4, v3, Lg3/b;->a:Ljava/lang/Object;

    .line 34
    .line 35
    iget-object v3, v3, Lg3/b;->b:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lg3/c;->g:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lg3/b;

    .line 67
    .line 68
    iget-object v3, v2, Lg3/b;->a:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v3, Ljava/util/Set;

    .line 71
    .line 72
    iget-object v2, v2, Lg3/b;->b:Ljava/lang/Object;

    .line 73
    .line 74
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    .line 80
    .line 81
    :cond_3
    return-void
.end method

.method public final f()Lf2/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lg3/c;->i:Lf2/g;

    if-nez v0, :cond_0

    new-instance v0, Lf2/g;

    invoke-direct {v0}, Lf2/g;-><init>()V

    iput-object v0, p0, Lg3/c;->i:Lf2/g;

    :cond_0
    iget-object v0, p0, Lg3/c;->i:Lf2/g;

    return-object v0
.end method

.method public final g(Ljava/lang/Class;Lm3/d;Z)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object p2, p2, Lm3/d;->d:Ljava/lang/Class;

    .line 2
    .line 3
    iget-object v0, p0, Lg3/c;->m:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Le3/e;

    .line 18
    .line 19
    iget-object v1, v0, Le3/e;->b:Ljava/lang/Class;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    :try_start_0
    new-array v5, v3, [Ljava/lang/Class;

    .line 25
    .line 26
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 31
    .line 32
    .line 33
    new-array v5, v3, [Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    sget-object v5, Le3/e;->g:Ljava/util/logging/Logger;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v5, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iput-object v4, v0, Le3/e;->b:Ljava/lang/Class;

    .line 51
    .line 52
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 53
    .line 54
    return-object v4

    .line 55
    :cond_1
    if-eqz p3, :cond_2

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_2

    .line 72
    .line 73
    :try_start_1
    new-array p1, v3, [Ljava/lang/Class;

    .line 74
    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 80
    .line 81
    .line 82
    new-array p2, v3, [Ljava/lang/Object;

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    return-object p1

    .line 89
    :catch_1
    move-exception p1

    .line 90
    new-instance p2, Lh3/c;

    .line 91
    .line 92
    invoke-direct {p2, p1}, Lh3/c;-><init>(Ljava/lang/Exception;)V

    .line 93
    .line 94
    .line 95
    throw p2

    .line 96
    :catch_2
    move-exception p1

    .line 97
    new-instance p2, Ljava/lang/InstantiationException;

    .line 98
    .line 99
    new-instance p3, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v0, "NoSuchMethodException:"

    .line 102
    .line 103
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-direct {p2, p1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p2

    .line 121
    :cond_2
    new-instance p1, Ljava/lang/InstantiationException;

    .line 122
    .line 123
    invoke-direct {p1}, Ljava/lang/InstantiationException;-><init>()V

    .line 124
    .line 125
    .line 126
    throw p1
.end method

.method public final h(Lm3/h;)Ljava/util/List;
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, p1, v1}, Lg3/c;->g(Ljava/lang/Class;Lm3/d;Z)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :catch_0
    iget-object p1, p1, Lm3/h;->h:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final i(Lm3/b;)Ljava/util/Set;
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Ljava/util/Set;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, p1, v1}, Lg3/c;->g(Ljava/lang/Class;Lm3/d;Z)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :catch_0
    invoke-virtual {p1}, Lm3/b;->c()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method
