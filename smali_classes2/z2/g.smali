.class public final Lz2/g;
.super Lz2/t;
.source "SourceFile"


# static fields
.field public static final B:Lz2/g;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lz2/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Landroid/util/SparseBooleanArray;

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:I

.field public final n:I

.field public final o:Z

.field public final p:I

.field public final q:I

.field public final r:Z

.field public final s:Z

.field public final t:Z

.field public final u:Z

.field public final v:Z

.field public final w:Z

.field public final x:Z

.field public final y:I

.field public final z:Landroid/util/SparseArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lz2/h;

    invoke-direct {v0}, Lz2/h;-><init>()V

    invoke-virtual {v0}, Lz2/h;->a()Lz2/g;

    move-result-object v0

    sput-object v0, Lz2/g;->B:Lz2/g;

    new-instance v0, Lv0/l;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lv0/l;-><init>(I)V

    sput-object v0, Lz2/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIZZIIZIIZLjava/lang/String;IZLandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V
    .locals 3

    .line 1
    move-object v0, p0

    move-object/from16 v1, p13

    move/from16 v2, p14

    invoke-direct {p0, v2, v1}, Lz2/t;-><init>(ILjava/lang/String;)V

    move v1, p1

    iput v1, v0, Lz2/g;->f:I

    move v1, p2

    iput v1, v0, Lz2/g;->g:I

    move v1, p3

    iput v1, v0, Lz2/g;->h:I

    move v1, p4

    iput v1, v0, Lz2/g;->i:I

    move v1, p5

    iput-boolean v1, v0, Lz2/g;->j:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lz2/g;->k:Z

    move v2, p6

    iput-boolean v2, v0, Lz2/g;->l:Z

    move v2, p7

    iput v2, v0, Lz2/g;->m:I

    move v2, p8

    iput v2, v0, Lz2/g;->n:I

    move v2, p9

    iput-boolean v2, v0, Lz2/g;->o:Z

    move v2, p10

    iput v2, v0, Lz2/g;->p:I

    move v2, p11

    iput v2, v0, Lz2/g;->q:I

    move v2, p12

    iput-boolean v2, v0, Lz2/g;->r:Z

    iput-boolean v1, v0, Lz2/g;->s:Z

    iput-boolean v1, v0, Lz2/g;->t:Z

    iput-boolean v1, v0, Lz2/g;->u:Z

    iput-boolean v1, v0, Lz2/g;->v:Z

    iput-boolean v1, v0, Lz2/g;->w:Z

    move/from16 v2, p15

    iput-boolean v2, v0, Lz2/g;->x:Z

    iput v1, v0, Lz2/g;->y:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lz2/g;->z:Landroid/util/SparseArray;

    move-object/from16 v1, p17

    iput-object v1, v0, Lz2/g;->A:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 10

    invoke-direct {p0, p1}, Lz2/t;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lz2/g;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lz2/g;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lz2/g;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lz2/g;->i:I

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    iput-boolean v0, p0, Lz2/g;->j:Z

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    .line 5
    :goto_1
    iput-boolean v0, p0, Lz2/g;->k:Z

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 7
    :goto_2
    iput-boolean v0, p0, Lz2/g;->l:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lz2/g;->m:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lz2/g;->n:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    .line 9
    :goto_3
    iput-boolean v0, p0, Lz2/g;->o:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lz2/g;->p:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lz2/g;->q:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    .line 11
    :goto_4
    iput-boolean v0, p0, Lz2/g;->r:Z

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v1

    .line 13
    :goto_5
    iput-boolean v0, p0, Lz2/g;->s:Z

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    move v0, v1

    .line 15
    :goto_6
    iput-boolean v0, p0, Lz2/g;->t:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_7

    :cond_7
    move v0, v1

    .line 17
    :goto_7
    iput-boolean v0, p0, Lz2/g;->u:Z

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_8

    :cond_8
    move v0, v1

    .line 19
    :goto_8
    iput-boolean v0, p0, Lz2/g;->v:Z

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_9

    :cond_9
    move v0, v1

    .line 21
    :goto_9
    iput-boolean v0, p0, Lz2/g;->w:Z

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_a

    :cond_a
    move v2, v1

    .line 23
    :goto_a
    iput-boolean v2, p0, Lz2/g;->x:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lz2/g;->y:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v0}, Landroid/util/SparseArray;-><init>(I)V

    move v3, v1

    :goto_b
    if-ge v3, v0, :cond_c

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(I)V

    move v7, v1

    :goto_c
    if-ge v7, v5, :cond_b

    const-class v8, Lt2/x;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    .line 25
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    check-cast v8, Lt2/x;

    const-class v9, Lz2/i;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lz2/i;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_b
    invoke-virtual {v2, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 27
    :cond_c
    iput-object v2, p0, Lz2/g;->z:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lz2/g;->A:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_e

    .line 7
    .line 8
    const-class v2, Lz2/g;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto/16 :goto_9

    .line 17
    .line 18
    :cond_1
    move-object v2, p1

    .line 19
    check-cast v2, Lz2/g;

    .line 20
    .line 21
    invoke-super {p0, p1}, Lz2/t;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_d

    .line 26
    .line 27
    iget p1, p0, Lz2/g;->f:I

    .line 28
    .line 29
    iget v3, v2, Lz2/g;->f:I

    .line 30
    .line 31
    if-ne p1, v3, :cond_d

    .line 32
    .line 33
    iget p1, p0, Lz2/g;->g:I

    .line 34
    .line 35
    iget v3, v2, Lz2/g;->g:I

    .line 36
    .line 37
    if-ne p1, v3, :cond_d

    .line 38
    .line 39
    iget p1, p0, Lz2/g;->h:I

    .line 40
    .line 41
    iget v3, v2, Lz2/g;->h:I

    .line 42
    .line 43
    if-ne p1, v3, :cond_d

    .line 44
    .line 45
    iget p1, p0, Lz2/g;->i:I

    .line 46
    .line 47
    iget v3, v2, Lz2/g;->i:I

    .line 48
    .line 49
    if-ne p1, v3, :cond_d

    .line 50
    .line 51
    iget-boolean p1, p0, Lz2/g;->j:Z

    .line 52
    .line 53
    iget-boolean v3, v2, Lz2/g;->j:Z

    .line 54
    .line 55
    if-ne p1, v3, :cond_d

    .line 56
    .line 57
    iget-boolean p1, p0, Lz2/g;->k:Z

    .line 58
    .line 59
    iget-boolean v3, v2, Lz2/g;->k:Z

    .line 60
    .line 61
    if-ne p1, v3, :cond_d

    .line 62
    .line 63
    iget-boolean p1, p0, Lz2/g;->l:Z

    .line 64
    .line 65
    iget-boolean v3, v2, Lz2/g;->l:Z

    .line 66
    .line 67
    if-ne p1, v3, :cond_d

    .line 68
    .line 69
    iget-boolean p1, p0, Lz2/g;->o:Z

    .line 70
    .line 71
    iget-boolean v3, v2, Lz2/g;->o:Z

    .line 72
    .line 73
    if-ne p1, v3, :cond_d

    .line 74
    .line 75
    iget p1, p0, Lz2/g;->m:I

    .line 76
    .line 77
    iget v3, v2, Lz2/g;->m:I

    .line 78
    .line 79
    if-ne p1, v3, :cond_d

    .line 80
    .line 81
    iget p1, p0, Lz2/g;->n:I

    .line 82
    .line 83
    iget v3, v2, Lz2/g;->n:I

    .line 84
    .line 85
    if-ne p1, v3, :cond_d

    .line 86
    .line 87
    iget p1, p0, Lz2/g;->p:I

    .line 88
    .line 89
    iget v3, v2, Lz2/g;->p:I

    .line 90
    .line 91
    if-ne p1, v3, :cond_d

    .line 92
    .line 93
    iget p1, p0, Lz2/g;->q:I

    .line 94
    .line 95
    iget v3, v2, Lz2/g;->q:I

    .line 96
    .line 97
    if-ne p1, v3, :cond_d

    .line 98
    .line 99
    iget-boolean p1, p0, Lz2/g;->r:Z

    .line 100
    .line 101
    iget-boolean v3, v2, Lz2/g;->r:Z

    .line 102
    .line 103
    if-ne p1, v3, :cond_d

    .line 104
    .line 105
    iget-boolean p1, p0, Lz2/g;->s:Z

    .line 106
    .line 107
    iget-boolean v3, v2, Lz2/g;->s:Z

    .line 108
    .line 109
    if-ne p1, v3, :cond_d

    .line 110
    .line 111
    iget-boolean p1, p0, Lz2/g;->t:Z

    .line 112
    .line 113
    iget-boolean v3, v2, Lz2/g;->t:Z

    .line 114
    .line 115
    if-ne p1, v3, :cond_d

    .line 116
    .line 117
    iget-boolean p1, p0, Lz2/g;->u:Z

    .line 118
    .line 119
    iget-boolean v3, v2, Lz2/g;->u:Z

    .line 120
    .line 121
    if-ne p1, v3, :cond_d

    .line 122
    .line 123
    iget-boolean p1, p0, Lz2/g;->v:Z

    .line 124
    .line 125
    iget-boolean v3, v2, Lz2/g;->v:Z

    .line 126
    .line 127
    if-ne p1, v3, :cond_d

    .line 128
    .line 129
    iget-boolean p1, p0, Lz2/g;->w:Z

    .line 130
    .line 131
    iget-boolean v3, v2, Lz2/g;->w:Z

    .line 132
    .line 133
    if-ne p1, v3, :cond_d

    .line 134
    .line 135
    iget-boolean p1, p0, Lz2/g;->x:Z

    .line 136
    .line 137
    iget-boolean v3, v2, Lz2/g;->x:Z

    .line 138
    .line 139
    if-ne p1, v3, :cond_d

    .line 140
    .line 141
    iget p1, p0, Lz2/g;->y:I

    .line 142
    .line 143
    iget v3, v2, Lz2/g;->y:I

    .line 144
    .line 145
    if-ne p1, v3, :cond_d

    .line 146
    .line 147
    iget-object p1, p0, Lz2/g;->A:Landroid/util/SparseBooleanArray;

    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    iget-object v4, v2, Lz2/g;->A:Landroid/util/SparseBooleanArray;

    .line 154
    .line 155
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-eq v5, v3, :cond_2

    .line 160
    .line 161
    :goto_0
    move p1, v1

    .line 162
    goto :goto_2

    .line 163
    :cond_2
    move v5, v1

    .line 164
    :goto_1
    if-ge v5, v3, :cond_4

    .line 165
    .line 166
    invoke-virtual {p1, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    invoke-virtual {v4, v6}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-gez v6, :cond_3

    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_4
    move p1, v0

    .line 181
    :goto_2
    if-eqz p1, :cond_d

    .line 182
    .line 183
    iget-object p1, p0, Lz2/g;->z:Landroid/util/SparseArray;

    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    iget-object v2, v2, Lz2/g;->z:Landroid/util/SparseArray;

    .line 190
    .line 191
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    if-eq v4, v3, :cond_6

    .line 196
    .line 197
    :cond_5
    :goto_3
    move p1, v1

    .line 198
    goto :goto_7

    .line 199
    :cond_6
    move v4, v1

    .line 200
    :goto_4
    if-ge v4, v3, :cond_c

    .line 201
    .line 202
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    if-ltz v5, :cond_5

    .line 211
    .line 212
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    check-cast v6, Ljava/util/Map;

    .line 217
    .line 218
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    check-cast v5, Ljava/util/Map;

    .line 223
    .line 224
    invoke-interface {v6}, Ljava/util/Map;->size()I

    .line 225
    .line 226
    .line 227
    move-result v7

    .line 228
    invoke-interface {v5}, Ljava/util/Map;->size()I

    .line 229
    .line 230
    .line 231
    move-result v8

    .line 232
    if-eq v8, v7, :cond_7

    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_7
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    if-eqz v7, :cond_a

    .line 248
    .line 249
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    check-cast v7, Ljava/util/Map$Entry;

    .line 254
    .line 255
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    check-cast v8, Lt2/x;

    .line 260
    .line 261
    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v9

    .line 265
    if-eqz v9, :cond_9

    .line 266
    .line 267
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v8

    .line 275
    invoke-static {v7, v8}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v7

    .line 279
    if-nez v7, :cond_8

    .line 280
    .line 281
    :cond_9
    :goto_5
    move v5, v1

    .line 282
    goto :goto_6

    .line 283
    :cond_a
    move v5, v0

    .line 284
    :goto_6
    if-nez v5, :cond_b

    .line 285
    .line 286
    goto :goto_3

    .line 287
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_c
    move p1, v0

    .line 291
    :goto_7
    if-eqz p1, :cond_d

    .line 292
    .line 293
    goto :goto_8

    .line 294
    :cond_d
    move v0, v1

    .line 295
    :goto_8
    return v0

    .line 296
    :cond_e
    :goto_9
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lz2/t;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lz2/g;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lz2/g;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lz2/g;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lz2/g;->i:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lz2/g;->j:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lz2/g;->k:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lz2/g;->l:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lz2/g;->o:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lz2/g;->m:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lz2/g;->n:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lz2/g;->p:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lz2/g;->q:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lz2/g;->r:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lz2/g;->s:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lz2/g;->t:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lz2/g;->u:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lz2/g;->v:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lz2/g;->w:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lz2/g;->x:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lz2/g;->y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Lz2/t;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lz2/g;->f:I

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget p2, p0, Lz2/g;->g:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget p2, p0, Lz2/g;->h:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget p2, p0, Lz2/g;->i:I

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget-boolean p2, p0, Lz2/g;->j:Z

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    iget-boolean p2, p0, Lz2/g;->k:Z

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget-boolean p2, p0, Lz2/g;->l:Z

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    iget p2, p0, Lz2/g;->m:I

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    iget p2, p0, Lz2/g;->n:I

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    iget-boolean p2, p0, Lz2/g;->o:Z

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    iget p2, p0, Lz2/g;->p:I

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    .line 58
    .line 59
    iget p2, p0, Lz2/g;->q:I

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    .line 63
    .line 64
    iget-boolean p2, p0, Lz2/g;->r:Z

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    .line 68
    .line 69
    iget-boolean p2, p0, Lz2/g;->s:Z

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    .line 73
    .line 74
    iget-boolean p2, p0, Lz2/g;->t:Z

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    .line 78
    .line 79
    iget-boolean p2, p0, Lz2/g;->u:Z

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    .line 83
    .line 84
    iget-boolean p2, p0, Lz2/g;->v:Z

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    .line 88
    .line 89
    iget-boolean p2, p0, Lz2/g;->w:Z

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    .line 93
    .line 94
    iget-boolean p2, p0, Lz2/g;->x:Z

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    .line 98
    .line 99
    iget p2, p0, Lz2/g;->y:I

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    .line 103
    .line 104
    iget-object p2, p0, Lz2/g;->z:Landroid/util/SparseArray;

    .line 105
    .line 106
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    .line 112
    .line 113
    const/4 v1, 0x0

    .line 114
    move v2, v1

    .line 115
    :goto_0
    if-ge v2, v0, :cond_1

    .line 116
    .line 117
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    check-cast v4, Ljava/util/Map;

    .line 126
    .line 127
    invoke-interface {v4}, Ljava/util/Map;->size()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    .line 136
    .line 137
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_0

    .line 150
    .line 151
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    check-cast v4, Ljava/util/Map$Entry;

    .line 156
    .line 157
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    check-cast v5, Landroid/os/Parcelable;

    .line 162
    .line 163
    invoke-virtual {p1, v5, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 164
    .line 165
    .line 166
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    check-cast v4, Landroid/os/Parcelable;

    .line 171
    .line 172
    invoke-virtual {p1, v4, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_1
    iget-object p2, p0, Lz2/g;->A:Landroid/util/SparseBooleanArray;

    .line 180
    .line 181
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method
