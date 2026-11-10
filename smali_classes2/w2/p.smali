.class public final Lw2/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/w;
.implements La3/a0;
.implements Lt2/u;
.implements Lk2/i;
.implements Lt2/r;


# static fields
.field public static final a0:Ljava/util/Set;


# instance fields
.field public final A:Landroid/util/SparseIntArray;

.field public B:Lw2/n;

.field public C:I

.field public D:I

.field public E:Z

.field public F:Z

.field public G:I

.field public H:Lf2/t;

.field public I:Lf2/t;

.field public J:Z

.field public K:Lt2/x;

.field public L:Ljava/util/Set;

.field public M:[I

.field public N:I

.field public O:Z

.field public P:[Z

.field public Q:[Z

.field public R:J

.field public S:J

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:J

.field public Y:Lj2/b;

.field public Z:I

.field public final f:I

.field public final g:Lw2/i;

.field public final h:Lw2/f;

.field public final i:La3/b;

.field public final j:Lf2/t;

.field public final k:Lj2/d;

.field public final l:La3/r;

.field public final m:La3/c0;

.field public final n:Lcom/google/android/gms/internal/play_billing/v;

.field public final o:I

.field public final p:Ly0/j0;

.field public final q:Ljava/util/ArrayList;

.field public final r:Ljava/util/List;

.field public final s:Lw2/m;

.field public final t:Lw2/m;

.field public final u:Landroid/os/Handler;

.field public final v:Ljava/util/ArrayList;

.field public final w:Ljava/util/Map;

.field public x:[Lw2/o;

.field public y:[I

.field public final z:Ljava/util/HashSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lw2/p;->a0:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(ILw2/i;Lw2/f;Ljava/util/Map;La3/b;JLf2/t;Lj2/d;La3/r;Lcom/google/android/gms/internal/play_billing/v;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lw2/p;->f:I

    iput-object p2, p0, Lw2/p;->g:Lw2/i;

    iput-object p3, p0, Lw2/p;->h:Lw2/f;

    iput-object p4, p0, Lw2/p;->w:Ljava/util/Map;

    iput-object p5, p0, Lw2/p;->i:La3/b;

    iput-object p8, p0, Lw2/p;->j:Lf2/t;

    iput-object p9, p0, Lw2/p;->k:Lj2/d;

    iput-object p10, p0, Lw2/p;->l:La3/r;

    iput-object p11, p0, Lw2/p;->n:Lcom/google/android/gms/internal/play_billing/v;

    iput p12, p0, Lw2/p;->o:I

    new-instance p1, La3/c0;

    const-string p2, "Loader:HlsSampleStreamWrapper"

    invoke-direct {p1, p2}, La3/c0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lw2/p;->m:La3/c0;

    new-instance p1, Ly0/j0;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ly0/j0;-><init>(I)V

    iput-object p1, p0, Lw2/p;->p:Ly0/j0;

    const/4 p1, 0x0

    new-array p2, p1, [I

    iput-object p2, p0, Lw2/p;->y:[I

    new-instance p2, Ljava/util/HashSet;

    sget-object p3, Lw2/p;->a0:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p4

    invoke-direct {p2, p4}, Ljava/util/HashSet;-><init>(I)V

    iput-object p2, p0, Lw2/p;->z:Ljava/util/HashSet;

    new-instance p2, Landroid/util/SparseIntArray;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-direct {p2, p3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p2, p0, Lw2/p;->A:Landroid/util/SparseIntArray;

    new-array p2, p1, [Lw2/o;

    iput-object p2, p0, Lw2/p;->x:[Lw2/o;

    new-array p2, p1, [Z

    iput-object p2, p0, Lw2/p;->Q:[Z

    new-array p2, p1, [Z

    iput-object p2, p0, Lw2/p;->P:[Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lw2/p;->q:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lw2/p;->r:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lw2/p;->v:Ljava/util/ArrayList;

    new-instance p2, Lw2/m;

    invoke-direct {p2, p0, p1}, Lw2/m;-><init>(Lt2/u;I)V

    iput-object p2, p0, Lw2/p;->s:Lw2/m;

    new-instance p1, Lw2/m;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lw2/m;-><init>(Lt2/u;I)V

    iput-object p1, p0, Lw2/p;->t:Lw2/m;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lw2/p;->u:Landroid/os/Handler;

    iput-wide p6, p0, Lw2/p;->R:J

    iput-wide p6, p0, Lw2/p;->S:J

    return-void
.end method

.method public static i(Lf2/t;Lf2/t;Z)Lf2/t;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    const/4 v2, -0x1

    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    iget v3, v0, Lf2/t;->e:I

    .line 12
    .line 13
    move v9, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move v9, v2

    .line 16
    :goto_0
    iget v3, v0, Lf2/t;->v:I

    .line 17
    .line 18
    if-eq v3, v2, :cond_2

    .line 19
    .line 20
    move/from16 v27, v3

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    iget v2, v1, Lf2/t;->v:I

    .line 24
    .line 25
    move/from16 v27, v2

    .line 26
    .line 27
    :goto_1
    iget-object v2, v1, Lf2/t;->i:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v2}, Lb3/c;->d(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iget-object v3, v0, Lf2/t;->f:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v2, v3}, Lb3/n;->d(ILjava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v10

    .line 39
    invoke-static {v10}, Lb3/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-nez v2, :cond_3

    .line 44
    .line 45
    iget-object v2, v1, Lf2/t;->i:Ljava/lang/String;

    .line 46
    .line 47
    :cond_3
    move-object v13, v2

    .line 48
    iget-object v5, v0, Lf2/t;->a:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v6, v0, Lf2/t;->b:Ljava/lang/String;

    .line 51
    .line 52
    iget v2, v0, Lf2/t;->n:I

    .line 53
    .line 54
    iget v3, v0, Lf2/t;->o:I

    .line 55
    .line 56
    iget v7, v0, Lf2/t;->c:I

    .line 57
    .line 58
    iget-object v11, v0, Lf2/t;->A:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v0, v0, Lf2/t;->g:Lp2/b;

    .line 61
    .line 62
    iget-object v4, v1, Lf2/t;->g:Lp2/b;

    .line 63
    .line 64
    if-eqz v4, :cond_6

    .line 65
    .line 66
    if-nez v0, :cond_4

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    iget-object v0, v0, Lp2/b;->a:[Lp2/a;

    .line 70
    .line 71
    array-length v8, v0

    .line 72
    if-nez v8, :cond_5

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    new-instance v8, Lp2/b;

    .line 76
    .line 77
    iget-object v4, v4, Lp2/b;->a:[Lp2/a;

    .line 78
    .line 79
    array-length v12, v4

    .line 80
    array-length v14, v0

    .line 81
    add-int/2addr v12, v14

    .line 82
    invoke-static {v4, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    array-length v4, v4

    .line 87
    array-length v14, v0

    .line 88
    const/4 v15, 0x0

    .line 89
    invoke-static {v0, v15, v12, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    .line 91
    .line 92
    check-cast v12, [Lp2/a;

    .line 93
    .line 94
    invoke-direct {v8, v12}, Lp2/b;-><init>([Lp2/a;)V

    .line 95
    .line 96
    .line 97
    move-object v4, v8

    .line 98
    :goto_2
    move-object v0, v4

    .line 99
    :cond_6
    new-instance v35, Lf2/t;

    .line 100
    .line 101
    move-object/from16 v4, v35

    .line 102
    .line 103
    iget v8, v1, Lf2/t;->d:I

    .line 104
    .line 105
    iget-object v12, v1, Lf2/t;->h:Ljava/lang/String;

    .line 106
    .line 107
    iget v14, v1, Lf2/t;->j:I

    .line 108
    .line 109
    iget-object v15, v1, Lf2/t;->k:Ljava/util/List;

    .line 110
    .line 111
    move-object/from16 v19, v11

    .line 112
    .line 113
    iget-object v11, v1, Lf2/t;->l:Lj2/b;

    .line 114
    .line 115
    move-object/from16 v16, v11

    .line 116
    .line 117
    move-object/from16 p0, v12

    .line 118
    .line 119
    iget-wide v11, v1, Lf2/t;->m:J

    .line 120
    .line 121
    move-wide/from16 v17, v11

    .line 122
    .line 123
    iget v11, v1, Lf2/t;->p:F

    .line 124
    .line 125
    move/from16 v21, v11

    .line 126
    .line 127
    iget v11, v1, Lf2/t;->q:I

    .line 128
    .line 129
    move/from16 v22, v11

    .line 130
    .line 131
    iget v11, v1, Lf2/t;->r:F

    .line 132
    .line 133
    move/from16 v23, v11

    .line 134
    .line 135
    iget-object v11, v1, Lf2/t;->t:[B

    .line 136
    .line 137
    move-object/from16 v24, v11

    .line 138
    .line 139
    iget v11, v1, Lf2/t;->s:I

    .line 140
    .line 141
    move/from16 v25, v11

    .line 142
    .line 143
    iget-object v11, v1, Lf2/t;->u:Lc3/a;

    .line 144
    .line 145
    move-object/from16 v26, v11

    .line 146
    .line 147
    iget v11, v1, Lf2/t;->w:I

    .line 148
    .line 149
    move/from16 v28, v11

    .line 150
    .line 151
    iget v11, v1, Lf2/t;->x:I

    .line 152
    .line 153
    move/from16 v29, v11

    .line 154
    .line 155
    iget v11, v1, Lf2/t;->y:I

    .line 156
    .line 157
    move/from16 v30, v11

    .line 158
    .line 159
    iget v11, v1, Lf2/t;->z:I

    .line 160
    .line 161
    move/from16 v31, v11

    .line 162
    .line 163
    iget v11, v1, Lf2/t;->B:I

    .line 164
    .line 165
    move/from16 v33, v11

    .line 166
    .line 167
    iget-object v1, v1, Lf2/t;->C:Ljava/lang/Class;

    .line 168
    .line 169
    move-object/from16 v34, v1

    .line 170
    .line 171
    move-object/from16 v1, v19

    .line 172
    .line 173
    move-object v11, v0

    .line 174
    move/from16 v19, v2

    .line 175
    .line 176
    move/from16 v20, v3

    .line 177
    .line 178
    move-object/from16 v32, v1

    .line 179
    .line 180
    move-object/from16 v12, p0

    .line 181
    .line 182
    invoke-direct/range {v4 .. v34}, Lf2/t;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lp2/b;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lj2/b;JIIFIF[BILc3/a;IIIIILjava/lang/String;ILjava/lang/Class;)V

    .line 183
    .line 184
    .line 185
    return-object v35
.end method

.method public static p(I)I
    .locals 3

    .line 1
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v0
.end method


# virtual methods
.method public final A()V
    .locals 6

    .line 1
    iget-object v0, p0, Lw2/p;->x:[Lw2/o;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    iget-boolean v5, p0, Lw2/p;->T:Z

    invoke-virtual {v4, v5}, Lw2/o;->k(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lw2/p;->T:Z

    return-void
.end method

.method public final B(JZ)Z
    .locals 4

    .line 1
    iput-wide p1, p0, Lw2/p;->R:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lw2/p;->q()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput-wide p1, p0, Lw2/p;->S:J

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-boolean v0, p0, Lw2/p;->E:Z

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    if-nez p3, :cond_4

    .line 19
    .line 20
    iget-object p3, p0, Lw2/p;->x:[Lw2/o;

    .line 21
    .line 22
    array-length p3, p3

    .line 23
    move v0, v2

    .line 24
    :goto_0
    if-ge v0, p3, :cond_3

    .line 25
    .line 26
    iget-object v3, p0, Lw2/p;->x:[Lw2/o;

    .line 27
    .line 28
    aget-object v3, v3, v0

    .line 29
    .line 30
    invoke-virtual {v3, p1, p2, v2}, Lw2/o;->l(JZ)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    iget-object v3, p0, Lw2/p;->Q:[Z

    .line 37
    .line 38
    aget-boolean v3, v3, v0

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    iget-boolean v3, p0, Lw2/p;->O:Z

    .line 43
    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    :cond_1
    move p3, v2

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    move p3, v1

    .line 52
    :goto_1
    if-eqz p3, :cond_4

    .line 53
    .line 54
    return v2

    .line 55
    :cond_4
    iput-wide p1, p0, Lw2/p;->S:J

    .line 56
    .line 57
    iput-boolean v2, p0, Lw2/p;->V:Z

    .line 58
    .line 59
    iget-object p1, p0, Lw2/p;->q:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lw2/p;->m:La3/c0;

    .line 65
    .line 66
    iget-object p2, p1, La3/c0;->b:La3/y;

    .line 67
    .line 68
    if-eqz p2, :cond_5

    .line 69
    .line 70
    move p3, v1

    .line 71
    goto :goto_2

    .line 72
    :cond_5
    move p3, v2

    .line 73
    :goto_2
    if-eqz p3, :cond_7

    .line 74
    .line 75
    if-eqz p2, :cond_6

    .line 76
    .line 77
    invoke-virtual {p2, v2}, La3/y;->a(Z)V

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :cond_7
    const/4 p2, 0x0

    .line 88
    iput-object p2, p1, La3/c0;->c:Ljava/io/IOException;

    .line 89
    .line 90
    invoke-virtual {p0}, Lw2/p;->A()V

    .line 91
    .line 92
    .line 93
    :goto_3
    return v1
.end method

.method public final C(II)Lk2/o;
    .locals 10

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lw2/p;->a0:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v2, p0, Lw2/p;->z:Ljava/util/HashSet;

    .line 12
    .line 13
    iget-object v3, p0, Lw2/p;->A:Landroid/util/SparseIntArray;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->g(Z)V

    .line 27
    .line 28
    .line 29
    const/4 v0, -0x1

    .line 30
    invoke-virtual {v3, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ne v1, v0, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lw2/p;->y:[I

    .line 48
    .line 49
    aput p1, v0, v1

    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Lw2/p;->y:[I

    .line 52
    .line 53
    aget v0, v0, v1

    .line 54
    .line 55
    if-ne v0, p1, :cond_2

    .line 56
    .line 57
    iget-object v0, p0, Lw2/p;->x:[Lw2/o;

    .line 58
    .line 59
    aget-object v0, v0, v1

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    new-instance v0, Lk2/g;

    .line 63
    .line 64
    invoke-direct {v0}, Lk2/g;-><init>()V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    move v0, v4

    .line 69
    :goto_0
    iget-object v1, p0, Lw2/p;->x:[Lw2/o;

    .line 70
    .line 71
    array-length v5, v1

    .line 72
    if-ge v0, v5, :cond_5

    .line 73
    .line 74
    iget-object v5, p0, Lw2/p;->y:[I

    .line 75
    .line 76
    aget v5, v5, v0

    .line 77
    .line 78
    if-ne v5, p1, :cond_4

    .line 79
    .line 80
    aget-object v0, v1, v0

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    :goto_1
    const/4 v0, 0x0

    .line 87
    :goto_2
    if-nez v0, :cond_c

    .line 88
    .line 89
    iget-boolean v0, p0, Lw2/p;->W:Z

    .line 90
    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    new-instance p1, Lk2/g;

    .line 94
    .line 95
    invoke-direct {p1}, Lk2/g;-><init>()V

    .line 96
    .line 97
    .line 98
    return-object p1

    .line 99
    :cond_6
    iget-object v0, p0, Lw2/p;->x:[Lw2/o;

    .line 100
    .line 101
    array-length v0, v0

    .line 102
    const/4 v1, 0x1

    .line 103
    if-eq p2, v1, :cond_7

    .line 104
    .line 105
    const/4 v5, 0x2

    .line 106
    if-ne p2, v5, :cond_8

    .line 107
    .line 108
    :cond_7
    move v4, v1

    .line 109
    :cond_8
    new-instance v5, Lw2/o;

    .line 110
    .line 111
    iget-object v6, p0, Lw2/p;->i:La3/b;

    .line 112
    .line 113
    iget-object v7, p0, Lw2/p;->k:Lj2/d;

    .line 114
    .line 115
    iget-object v8, p0, Lw2/p;->w:Ljava/util/Map;

    .line 116
    .line 117
    invoke-direct {v5, v6, v7, v8}, Lw2/o;-><init>(La3/b;Lj2/d;Ljava/util/Map;)V

    .line 118
    .line 119
    .line 120
    if-eqz v4, :cond_9

    .line 121
    .line 122
    iget-object v6, p0, Lw2/p;->Y:Lj2/b;

    .line 123
    .line 124
    iput-object v6, v5, Lw2/o;->F:Lj2/b;

    .line 125
    .line 126
    iput-boolean v1, v5, Lw2/o;->A:Z

    .line 127
    .line 128
    :cond_9
    iget-wide v6, p0, Lw2/p;->X:J

    .line 129
    .line 130
    iget-wide v8, v5, Lw2/o;->C:J

    .line 131
    .line 132
    cmp-long v8, v8, v6

    .line 133
    .line 134
    if-eqz v8, :cond_a

    .line 135
    .line 136
    iput-wide v6, v5, Lw2/o;->C:J

    .line 137
    .line 138
    iput-boolean v1, v5, Lw2/o;->A:Z

    .line 139
    .line 140
    :cond_a
    iget v6, p0, Lw2/p;->Z:I

    .line 141
    .line 142
    iput v6, v5, Lw2/o;->z:I

    .line 143
    .line 144
    iput-object p0, v5, Lw2/o;->d:Lt2/r;

    .line 145
    .line 146
    iget-object v6, p0, Lw2/p;->y:[I

    .line 147
    .line 148
    add-int/lit8 v7, v0, 0x1

    .line 149
    .line 150
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    iput-object v6, p0, Lw2/p;->y:[I

    .line 155
    .line 156
    aput p1, v6, v0

    .line 157
    .line 158
    iget-object p1, p0, Lw2/p;->x:[Lw2/o;

    .line 159
    .line 160
    sget v6, Lb3/n;->a:I

    .line 161
    .line 162
    array-length v6, p1

    .line 163
    add-int/2addr v6, v1

    .line 164
    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    array-length p1, p1

    .line 169
    aput-object v5, v1, p1

    .line 170
    .line 171
    check-cast v1, [Lw2/o;

    .line 172
    .line 173
    iput-object v1, p0, Lw2/p;->x:[Lw2/o;

    .line 174
    .line 175
    iget-object p1, p0, Lw2/p;->Q:[Z

    .line 176
    .line 177
    invoke-static {p1, v7}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    iput-object p1, p0, Lw2/p;->Q:[Z

    .line 182
    .line 183
    aput-boolean v4, p1, v0

    .line 184
    .line 185
    iget-boolean p1, p0, Lw2/p;->O:Z

    .line 186
    .line 187
    or-int/2addr p1, v4

    .line 188
    iput-boolean p1, p0, Lw2/p;->O:Z

    .line 189
    .line 190
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3, p2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 198
    .line 199
    .line 200
    invoke-static {p2}, Lw2/p;->p(I)I

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    iget v1, p0, Lw2/p;->C:I

    .line 205
    .line 206
    invoke-static {v1}, Lw2/p;->p(I)I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-le p1, v1, :cond_b

    .line 211
    .line 212
    iput v0, p0, Lw2/p;->D:I

    .line 213
    .line 214
    iput p2, p0, Lw2/p;->C:I

    .line 215
    .line 216
    :cond_b
    iget-object p1, p0, Lw2/p;->P:[Z

    .line 217
    .line 218
    invoke-static {p1, v7}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    iput-object p1, p0, Lw2/p;->P:[Z

    .line 223
    .line 224
    move-object v0, v5

    .line 225
    :cond_c
    const/4 p1, 0x4

    .line 226
    if-ne p2, p1, :cond_e

    .line 227
    .line 228
    iget-object p1, p0, Lw2/p;->B:Lw2/n;

    .line 229
    .line 230
    if-nez p1, :cond_d

    .line 231
    .line 232
    new-instance p1, Lw2/n;

    .line 233
    .line 234
    iget p2, p0, Lw2/p;->o:I

    .line 235
    .line 236
    invoke-direct {p1, v0, p2}, Lw2/n;-><init>(Lk2/o;I)V

    .line 237
    .line 238
    .line 239
    iput-object p1, p0, Lw2/p;->B:Lw2/n;

    .line 240
    .line 241
    :cond_d
    iget-object p1, p0, Lw2/p;->B:Lw2/n;

    .line 242
    .line 243
    return-object p1

    .line 244
    :cond_e
    return-object v0
.end method

.method public final a(La3/z;JJ)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lv2/a;

    .line 6
    .line 7
    iget-object v2, v0, Lw2/p;->h:Lw2/f;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    instance-of v3, v1, Lw2/d;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    move-object v3, v1

    .line 17
    check-cast v3, Lw2/d;

    .line 18
    .line 19
    iget-object v4, v3, Lw2/d;->i:[B

    .line 20
    .line 21
    iput-object v4, v2, Lw2/f;->l:[B

    .line 22
    .line 23
    iget-object v4, v3, Lv2/a;->a:La3/l;

    .line 24
    .line 25
    iget-object v4, v4, La3/l;->a:Landroid/net/Uri;

    .line 26
    .line 27
    iget-object v3, v3, Lw2/d;->k:[B

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object v2, v2, Lw2/f;->j:Lh/a;

    .line 33
    .line 34
    iget-object v2, v2, Lh/a;->g:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, [B

    .line 46
    .line 47
    :cond_0
    iget-object v3, v0, Lw2/p;->n:Lcom/google/android/gms/internal/play_billing/v;

    .line 48
    .line 49
    iget-object v2, v1, Lv2/a;->a:La3/l;

    .line 50
    .line 51
    iget-object v2, v1, Lv2/a;->h:La3/f0;

    .line 52
    .line 53
    iget-object v4, v2, La3/f0;->c:Landroid/net/Uri;

    .line 54
    .line 55
    iget v5, v1, Lv2/a;->b:I

    .line 56
    .line 57
    iget v6, v0, Lw2/p;->f:I

    .line 58
    .line 59
    iget v7, v1, Lv2/a;->d:I

    .line 60
    .line 61
    iget-object v8, v1, Lv2/a;->e:Ljava/lang/Object;

    .line 62
    .line 63
    iget-wide v9, v1, Lv2/a;->f:J

    .line 64
    .line 65
    iget-wide v11, v1, Lv2/a;->g:J

    .line 66
    .line 67
    iget-wide v1, v2, La3/f0;->b:J

    .line 68
    .line 69
    move-wide/from16 v13, p2

    .line 70
    .line 71
    move-wide/from16 v15, p4

    .line 72
    .line 73
    move-wide/from16 v17, v1

    .line 74
    .line 75
    invoke-virtual/range {v3 .. v18}, Lcom/google/android/gms/internal/play_billing/v;->d(Landroid/net/Uri;IIILjava/lang/Object;JJJJJ)V

    .line 76
    .line 77
    .line 78
    iget-boolean v1, v0, Lw2/p;->F:Z

    .line 79
    .line 80
    if-nez v1, :cond_1

    .line 81
    .line 82
    iget-wide v1, v0, Lw2/p;->R:J

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Lw2/p;->v(J)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    iget-object v1, v0, Lw2/p;->g:Lw2/i;

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Lw2/i;->b(Lt2/u;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    return-void
.end method

.method public final b(La3/z;JJZ)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lv2/a;

    .line 6
    .line 7
    iget-object v2, v0, Lw2/p;->n:Lcom/google/android/gms/internal/play_billing/v;

    .line 8
    .line 9
    iget-object v3, v1, Lv2/a;->a:La3/l;

    .line 10
    .line 11
    iget-object v3, v1, Lv2/a;->h:La3/f0;

    .line 12
    .line 13
    iget-object v4, v3, La3/f0;->c:Landroid/net/Uri;

    .line 14
    .line 15
    iget v5, v1, Lv2/a;->b:I

    .line 16
    .line 17
    iget v6, v0, Lw2/p;->f:I

    .line 18
    .line 19
    iget v7, v1, Lv2/a;->d:I

    .line 20
    .line 21
    iget-object v8, v1, Lv2/a;->e:Ljava/lang/Object;

    .line 22
    .line 23
    iget-wide v9, v1, Lv2/a;->f:J

    .line 24
    .line 25
    iget-wide v11, v1, Lv2/a;->g:J

    .line 26
    .line 27
    iget-wide v14, v3, La3/f0;->b:J

    .line 28
    .line 29
    move-object v3, v4

    .line 30
    move v4, v5

    .line 31
    move v5, v6

    .line 32
    move v6, v7

    .line 33
    move-object v7, v8

    .line 34
    move-wide v8, v9

    .line 35
    move-wide v10, v11

    .line 36
    move-wide/from16 v12, p2

    .line 37
    .line 38
    move-wide/from16 v16, v14

    .line 39
    .line 40
    move-wide/from16 v14, p4

    .line 41
    .line 42
    invoke-virtual/range {v2 .. v17}, Lcom/google/android/gms/internal/play_billing/v;->b(Landroid/net/Uri;IIILjava/lang/Object;JJJJJ)V

    .line 43
    .line 44
    .line 45
    if-nez p6, :cond_0

    .line 46
    .line 47
    invoke-virtual/range {p0 .. p0}, Lw2/p;->A()V

    .line 48
    .line 49
    .line 50
    iget v1, v0, Lw2/p;->G:I

    .line 51
    .line 52
    if-lez v1, :cond_0

    .line 53
    .line 54
    iget-object v1, v0, Lw2/p;->g:Lw2/i;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Lw2/i;->b(Lt2/u;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method

.method public final c(La3/z;JJLjava/io/IOException;I)La3/x;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lv2/a;

    .line 6
    .line 7
    iget-object v2, v1, Lv2/a;->h:La3/f0;

    .line 8
    .line 9
    iget-wide v13, v2, La3/f0;->b:J

    .line 10
    .line 11
    instance-of v2, v1, Lw2/h;

    .line 12
    .line 13
    iget-object v3, v0, Lw2/p;->l:La3/r;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static/range {p6 .. p6}, La3/r;->c(Ljava/io/IOException;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    cmp-long v8, v4, v6

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    if-eqz v8, :cond_0

    .line 31
    .line 32
    iget-object v8, v0, Lw2/p;->h:Lw2/f;

    .line 33
    .line 34
    iget-object v10, v8, Lw2/f;->p:Lz2/p;

    .line 35
    .line 36
    iget-object v8, v8, Lw2/f;->h:Lt2/w;

    .line 37
    .line 38
    iget-object v11, v1, Lv2/a;->c:Lf2/t;

    .line 39
    .line 40
    invoke-virtual {v8, v11}, Lt2/w;->a(Lf2/t;)I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    check-cast v10, Lz2/d;

    .line 45
    .line 46
    invoke-virtual {v10, v8}, Lz2/d;->h(I)I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    invoke-virtual {v10, v4, v5, v8}, Lz2/d;->g(JI)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    move/from16 v21, v4

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move/from16 v21, v9

    .line 58
    .line 59
    :goto_0
    if-eqz v21, :cond_3

    .line 60
    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    const-wide/16 v2, 0x0

    .line 64
    .line 65
    cmp-long v2, v13, v2

    .line 66
    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    iget-object v2, v0, Lw2/p;->q:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    add-int/lit8 v3, v3, -0x1

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Lw2/h;

    .line 82
    .line 83
    if-ne v3, v1, :cond_1

    .line 84
    .line 85
    const/4 v3, 0x1

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    move v3, v9

    .line 88
    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_2

    .line 96
    .line 97
    iget-wide v2, v0, Lw2/p;->R:J

    .line 98
    .line 99
    iput-wide v2, v0, Lw2/p;->S:J

    .line 100
    .line 101
    :cond_2
    sget-object v2, La3/c0;->d:La3/x;

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-static/range {p6 .. p7}, La3/r;->d(Ljava/io/IOException;I)J

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    cmp-long v5, v2, v6

    .line 112
    .line 113
    if-eqz v5, :cond_4

    .line 114
    .line 115
    new-instance v5, La3/x;

    .line 116
    .line 117
    invoke-direct {v5, v9, v2, v3}, La3/x;-><init>(IJ)V

    .line 118
    .line 119
    .line 120
    move-object v2, v5

    .line 121
    goto :goto_2

    .line 122
    :cond_4
    sget-object v2, La3/c0;->e:La3/x;

    .line 123
    .line 124
    :goto_2
    iget-object v3, v0, Lw2/p;->n:Lcom/google/android/gms/internal/play_billing/v;

    .line 125
    .line 126
    iget-object v5, v1, Lv2/a;->h:La3/f0;

    .line 127
    .line 128
    iget-object v5, v5, La3/f0;->c:Landroid/net/Uri;

    .line 129
    .line 130
    iget v6, v1, Lv2/a;->b:I

    .line 131
    .line 132
    iget v7, v0, Lw2/p;->f:I

    .line 133
    .line 134
    iget v8, v1, Lv2/a;->d:I

    .line 135
    .line 136
    iget-object v10, v1, Lv2/a;->e:Ljava/lang/Object;

    .line 137
    .line 138
    iget-wide v11, v1, Lv2/a;->f:J

    .line 139
    .line 140
    move-object v15, v5

    .line 141
    iget-wide v4, v1, Lv2/a;->g:J

    .line 142
    .line 143
    iget v1, v2, La3/x;->a:I

    .line 144
    .line 145
    const/4 v9, 0x1

    .line 146
    if-eqz v1, :cond_6

    .line 147
    .line 148
    if-ne v1, v9, :cond_5

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_5
    const/16 v16, 0x0

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_6
    :goto_3
    move/from16 v16, v9

    .line 155
    .line 156
    :goto_4
    xor-int/lit8 v20, v16, 0x1

    .line 157
    .line 158
    move-wide/from16 v16, v4

    .line 159
    .line 160
    move-object v4, v15

    .line 161
    move v5, v6

    .line 162
    move v6, v7

    .line 163
    move v7, v8

    .line 164
    move-object v8, v10

    .line 165
    move-wide v9, v11

    .line 166
    move-wide/from16 v11, v16

    .line 167
    .line 168
    move-wide/from16 v17, v13

    .line 169
    .line 170
    move-wide/from16 v13, p2

    .line 171
    .line 172
    move-wide/from16 v15, p4

    .line 173
    .line 174
    move-object/from16 v19, p6

    .line 175
    .line 176
    invoke-virtual/range {v3 .. v20}, Lcom/google/android/gms/internal/play_billing/v;->f(Landroid/net/Uri;IIILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 177
    .line 178
    .line 179
    if-eqz v21, :cond_8

    .line 180
    .line 181
    iget-boolean v1, v0, Lw2/p;->F:Z

    .line 182
    .line 183
    if-nez v1, :cond_7

    .line 184
    .line 185
    iget-wide v3, v0, Lw2/p;->R:J

    .line 186
    .line 187
    invoke-virtual {v0, v3, v4}, Lw2/p;->v(J)Z

    .line 188
    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_7
    iget-object v1, v0, Lw2/p;->g:Lw2/i;

    .line 192
    .line 193
    invoke-virtual {v1, v0}, Lw2/i;->b(Lt2/u;)V

    .line 194
    .line 195
    .line 196
    :cond_8
    :goto_5
    return-object v2
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lw2/p;->F:Z

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lw2/p;->K:Lt2/x;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lw2/p;->L:Ljava/util/Set;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lw2/p;->m:La3/c0;

    .line 2
    .line 3
    iget-object v0, v0, La3/c0;->b:La3/y;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final h([Lt2/w;)Lt2/x;
    .locals 40

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, v0

    .line 5
    if-ge v2, v3, :cond_2

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    iget v4, v3, Lt2/w;->a:I

    .line 10
    .line 11
    new-array v4, v4, [Lf2/t;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    :goto_1
    iget v6, v3, Lt2/w;->a:I

    .line 15
    .line 16
    if-ge v5, v6, :cond_1

    .line 17
    .line 18
    iget-object v6, v3, Lt2/w;->b:[Lf2/t;

    .line 19
    .line 20
    aget-object v6, v6, v5

    .line 21
    .line 22
    iget-object v7, v6, Lf2/t;->l:Lj2/b;

    .line 23
    .line 24
    if-eqz v7, :cond_0

    .line 25
    .line 26
    move-object/from16 v7, p0

    .line 27
    .line 28
    iget-object v8, v7, Lw2/p;->k:Lj2/d;

    .line 29
    .line 30
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const/16 v39, 0x0

    .line 34
    .line 35
    new-instance v8, Lf2/t;

    .line 36
    .line 37
    move-object v9, v8

    .line 38
    iget-object v10, v6, Lf2/t;->a:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v11, v6, Lf2/t;->b:Ljava/lang/String;

    .line 41
    .line 42
    iget v12, v6, Lf2/t;->c:I

    .line 43
    .line 44
    iget v13, v6, Lf2/t;->d:I

    .line 45
    .line 46
    iget v14, v6, Lf2/t;->e:I

    .line 47
    .line 48
    iget-object v15, v6, Lf2/t;->f:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v1, v6, Lf2/t;->g:Lp2/b;

    .line 51
    .line 52
    move-object/from16 v16, v1

    .line 53
    .line 54
    iget-object v1, v6, Lf2/t;->h:Ljava/lang/String;

    .line 55
    .line 56
    move-object/from16 v17, v1

    .line 57
    .line 58
    iget-object v1, v6, Lf2/t;->i:Ljava/lang/String;

    .line 59
    .line 60
    move-object/from16 v18, v1

    .line 61
    .line 62
    iget v1, v6, Lf2/t;->j:I

    .line 63
    .line 64
    move/from16 v19, v1

    .line 65
    .line 66
    iget-object v1, v6, Lf2/t;->k:Ljava/util/List;

    .line 67
    .line 68
    move-object/from16 v20, v1

    .line 69
    .line 70
    iget-object v1, v6, Lf2/t;->l:Lj2/b;

    .line 71
    .line 72
    move-object/from16 v21, v1

    .line 73
    .line 74
    move-object v1, v8

    .line 75
    iget-wide v7, v6, Lf2/t;->m:J

    .line 76
    .line 77
    move-wide/from16 v22, v7

    .line 78
    .line 79
    iget v7, v6, Lf2/t;->n:I

    .line 80
    .line 81
    move/from16 v24, v7

    .line 82
    .line 83
    iget v7, v6, Lf2/t;->o:I

    .line 84
    .line 85
    move/from16 v25, v7

    .line 86
    .line 87
    iget v7, v6, Lf2/t;->p:F

    .line 88
    .line 89
    move/from16 v26, v7

    .line 90
    .line 91
    iget v7, v6, Lf2/t;->q:I

    .line 92
    .line 93
    move/from16 v27, v7

    .line 94
    .line 95
    iget v7, v6, Lf2/t;->r:F

    .line 96
    .line 97
    move/from16 v28, v7

    .line 98
    .line 99
    iget-object v7, v6, Lf2/t;->t:[B

    .line 100
    .line 101
    move-object/from16 v29, v7

    .line 102
    .line 103
    iget v7, v6, Lf2/t;->s:I

    .line 104
    .line 105
    move/from16 v30, v7

    .line 106
    .line 107
    iget-object v7, v6, Lf2/t;->u:Lc3/a;

    .line 108
    .line 109
    move-object/from16 v31, v7

    .line 110
    .line 111
    iget v7, v6, Lf2/t;->v:I

    .line 112
    .line 113
    move/from16 v32, v7

    .line 114
    .line 115
    iget v7, v6, Lf2/t;->w:I

    .line 116
    .line 117
    move/from16 v33, v7

    .line 118
    .line 119
    iget v7, v6, Lf2/t;->x:I

    .line 120
    .line 121
    move/from16 v34, v7

    .line 122
    .line 123
    iget v7, v6, Lf2/t;->y:I

    .line 124
    .line 125
    move/from16 v35, v7

    .line 126
    .line 127
    iget v7, v6, Lf2/t;->z:I

    .line 128
    .line 129
    move/from16 v36, v7

    .line 130
    .line 131
    iget-object v7, v6, Lf2/t;->A:Ljava/lang/String;

    .line 132
    .line 133
    move-object/from16 v37, v7

    .line 134
    .line 135
    iget v6, v6, Lf2/t;->B:I

    .line 136
    .line 137
    move/from16 v38, v6

    .line 138
    .line 139
    invoke-direct/range {v9 .. v39}, Lf2/t;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lp2/b;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lj2/b;JIIFIF[BILc3/a;IIIIILjava/lang/String;ILjava/lang/Class;)V

    .line 140
    .line 141
    .line 142
    move-object v6, v1

    .line 143
    :cond_0
    aput-object v6, v4, v5

    .line 144
    .line 145
    add-int/lit8 v5, v5, 0x1

    .line 146
    .line 147
    goto/16 :goto_1

    .line 148
    .line 149
    :cond_1
    new-instance v1, Lt2/w;

    .line 150
    .line 151
    invoke-direct {v1, v4}, Lt2/w;-><init>([Lf2/t;)V

    .line 152
    .line 153
    .line 154
    aput-object v1, v0, v2

    .line 155
    .line 156
    add-int/lit8 v2, v2, 0x1

    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_2
    new-instance v1, Lt2/x;

    .line 161
    .line 162
    invoke-direct {v1, v0}, Lt2/x;-><init>([Lt2/w;)V

    .line 163
    .line 164
    .line 165
    return-object v1
.end method

.method public final j()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lw2/p;->W:Z

    iget-object v0, p0, Lw2/p;->u:Landroid/os/Handler;

    iget-object v1, p0, Lw2/p;->t:Lw2/m;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final l()Lw2/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lw2/p;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw2/h;

    return-object v0
.end method

.method public final m()J
    .locals 8

    .line 1
    iget-boolean v0, p0, Lw2/p;->V:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, -0x8000000000000000L

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lw2/p;->q()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-wide v0, p0, Lw2/p;->S:J

    .line 15
    .line 16
    return-wide v0

    .line 17
    :cond_1
    iget-wide v0, p0, Lw2/p;->R:J

    .line 18
    .line 19
    invoke-virtual {p0}, Lw2/p;->l()Lw2/h;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-boolean v3, v2, Lw2/h;->G:Z

    .line 24
    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget-object v2, p0, Lw2/p;->q:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x1

    .line 35
    if-le v3, v4, :cond_3

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    add-int/lit8 v3, v3, -0x2

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lw2/h;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    const/4 v2, 0x0

    .line 51
    :goto_0
    if-eqz v2, :cond_4

    .line 52
    .line 53
    iget-wide v2, v2, Lv2/a;->g:J

    .line 54
    .line 55
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    :cond_4
    iget-boolean v2, p0, Lw2/p;->E:Z

    .line 60
    .line 61
    if-eqz v2, :cond_5

    .line 62
    .line 63
    iget-object v2, p0, Lw2/p;->x:[Lw2/o;

    .line 64
    .line 65
    array-length v3, v2

    .line 66
    const/4 v4, 0x0

    .line 67
    :goto_1
    if-ge v4, v3, :cond_5

    .line 68
    .line 69
    aget-object v5, v2, v4

    .line 70
    .line 71
    monitor-enter v5

    .line 72
    :try_start_0
    iget-wide v6, v5, Lw2/o;->t:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    monitor-exit v5

    .line 75
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    add-int/lit8 v4, v4, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    monitor-exit v5

    .line 84
    throw v0

    .line 85
    :cond_5
    return-wide v0
.end method

.method public final q()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lw2/p;->S:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final s()V
    .locals 15

    .line 1
    iget-boolean v0, p0, Lw2/p;->J:Z

    .line 2
    .line 3
    if-nez v0, :cond_19

    .line 4
    .line 5
    iget-object v0, p0, Lw2/p;->M:[I

    .line 6
    .line 7
    if-nez v0, :cond_19

    .line 8
    .line 9
    iget-boolean v0, p0, Lw2/p;->E:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_11

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lw2/p;->x:[Lw2/o;

    .line 16
    .line 17
    array-length v1, v0

    .line 18
    const/4 v2, 0x0

    .line 19
    move v3, v2

    .line 20
    :goto_0
    if-ge v3, v1, :cond_2

    .line 21
    .line 22
    aget-object v4, v0, v3

    .line 23
    .line 24
    invoke-virtual {v4}, Lw2/o;->j()Lf2/t;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v0, p0, Lw2/p;->K:Lt2/x;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    const/4 v3, 0x3

    .line 38
    const/4 v4, -0x1

    .line 39
    if-eqz v0, :cond_b

    .line 40
    .line 41
    iget v0, v0, Lt2/x;->a:I

    .line 42
    .line 43
    new-array v5, v0, [I

    .line 44
    .line 45
    iput-object v5, p0, Lw2/p;->M:[I

    .line 46
    .line 47
    invoke-static {v5, v4}, Ljava/util/Arrays;->fill([II)V

    .line 48
    .line 49
    .line 50
    move v4, v2

    .line 51
    :goto_1
    if-ge v4, v0, :cond_a

    .line 52
    .line 53
    move v5, v2

    .line 54
    :goto_2
    iget-object v6, p0, Lw2/p;->x:[Lw2/o;

    .line 55
    .line 56
    array-length v7, v6

    .line 57
    if-ge v5, v7, :cond_9

    .line 58
    .line 59
    aget-object v6, v6, v5

    .line 60
    .line 61
    invoke-virtual {v6}, Lw2/o;->j()Lf2/t;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    iget-object v7, p0, Lw2/p;->K:Lt2/x;

    .line 66
    .line 67
    iget-object v7, v7, Lt2/x;->b:[Lt2/w;

    .line 68
    .line 69
    aget-object v7, v7, v4

    .line 70
    .line 71
    iget-object v7, v7, Lt2/w;->b:[Lf2/t;

    .line 72
    .line 73
    aget-object v7, v7, v2

    .line 74
    .line 75
    iget-object v8, v6, Lf2/t;->i:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v9, v7, Lf2/t;->i:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v8}, Lb3/c;->d(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    if-eq v10, v3, :cond_3

    .line 84
    .line 85
    invoke-static {v9}, Lb3/c;->d(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-ne v10, v6, :cond_7

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_3
    invoke-static {v8, v9}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-nez v9, :cond_4

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_4
    const-string v9, "application/cea-608"

    .line 100
    .line 101
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    if-nez v9, :cond_5

    .line 106
    .line 107
    const-string v9, "application/cea-708"

    .line 108
    .line 109
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-eqz v8, :cond_6

    .line 114
    .line 115
    :cond_5
    iget v6, v6, Lf2/t;->B:I

    .line 116
    .line 117
    iget v7, v7, Lf2/t;->B:I

    .line 118
    .line 119
    if-ne v6, v7, :cond_7

    .line 120
    .line 121
    :cond_6
    :goto_3
    move v6, v1

    .line 122
    goto :goto_5

    .line 123
    :cond_7
    :goto_4
    move v6, v2

    .line 124
    :goto_5
    if-eqz v6, :cond_8

    .line 125
    .line 126
    iget-object v6, p0, Lw2/p;->M:[I

    .line 127
    .line 128
    aput v5, v6, v4

    .line 129
    .line 130
    goto :goto_6

    .line 131
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_9
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_a
    iget-object v0, p0, Lw2/p;->v:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_19

    .line 148
    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    check-cast v1, Lw2/l;

    .line 154
    .line 155
    invoke-virtual {v1}, Lw2/l;->a()V

    .line 156
    .line 157
    .line 158
    goto :goto_7

    .line 159
    :cond_b
    iget-object v0, p0, Lw2/p;->x:[Lw2/o;

    .line 160
    .line 161
    array-length v0, v0

    .line 162
    const/4 v5, 0x6

    .line 163
    move v6, v2

    .line 164
    move v8, v4

    .line 165
    move v7, v5

    .line 166
    :goto_8
    const/4 v9, 0x2

    .line 167
    if-ge v6, v0, :cond_11

    .line 168
    .line 169
    iget-object v10, p0, Lw2/p;->x:[Lw2/o;

    .line 170
    .line 171
    aget-object v10, v10, v6

    .line 172
    .line 173
    invoke-virtual {v10}, Lw2/o;->j()Lf2/t;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    iget-object v10, v10, Lf2/t;->i:Ljava/lang/String;

    .line 178
    .line 179
    invoke-static {v10}, Lb3/c;->f(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v11

    .line 183
    if-eqz v11, :cond_c

    .line 184
    .line 185
    goto :goto_9

    .line 186
    :cond_c
    invoke-static {v10}, Lb3/c;->e(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v9

    .line 190
    if-eqz v9, :cond_d

    .line 191
    .line 192
    move v9, v1

    .line 193
    goto :goto_9

    .line 194
    :cond_d
    const-string v9, "text"

    .line 195
    .line 196
    invoke-static {v10}, Lb3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v10

    .line 200
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    if-eqz v9, :cond_e

    .line 205
    .line 206
    move v9, v3

    .line 207
    goto :goto_9

    .line 208
    :cond_e
    move v9, v5

    .line 209
    :goto_9
    invoke-static {v9}, Lw2/p;->p(I)I

    .line 210
    .line 211
    .line 212
    move-result v10

    .line 213
    invoke-static {v7}, Lw2/p;->p(I)I

    .line 214
    .line 215
    .line 216
    move-result v11

    .line 217
    if-le v10, v11, :cond_f

    .line 218
    .line 219
    move v8, v6

    .line 220
    move v7, v9

    .line 221
    goto :goto_a

    .line 222
    :cond_f
    if-ne v9, v7, :cond_10

    .line 223
    .line 224
    if-eq v8, v4, :cond_10

    .line 225
    .line 226
    move v8, v4

    .line 227
    :cond_10
    :goto_a
    add-int/lit8 v6, v6, 0x1

    .line 228
    .line 229
    goto :goto_8

    .line 230
    :cond_11
    iget-object v3, p0, Lw2/p;->h:Lw2/f;

    .line 231
    .line 232
    iget-object v3, v3, Lw2/f;->h:Lt2/w;

    .line 233
    .line 234
    iget v5, v3, Lt2/w;->a:I

    .line 235
    .line 236
    iput v4, p0, Lw2/p;->N:I

    .line 237
    .line 238
    new-array v4, v0, [I

    .line 239
    .line 240
    iput-object v4, p0, Lw2/p;->M:[I

    .line 241
    .line 242
    move v4, v2

    .line 243
    :goto_b
    if-ge v4, v0, :cond_12

    .line 244
    .line 245
    iget-object v6, p0, Lw2/p;->M:[I

    .line 246
    .line 247
    aput v4, v6, v4

    .line 248
    .line 249
    add-int/lit8 v4, v4, 0x1

    .line 250
    .line 251
    goto :goto_b

    .line 252
    :cond_12
    new-array v4, v0, [Lt2/w;

    .line 253
    .line 254
    move v6, v2

    .line 255
    :goto_c
    if-ge v6, v0, :cond_17

    .line 256
    .line 257
    iget-object v10, p0, Lw2/p;->x:[Lw2/o;

    .line 258
    .line 259
    aget-object v10, v10, v6

    .line 260
    .line 261
    invoke-virtual {v10}, Lw2/o;->j()Lf2/t;

    .line 262
    .line 263
    .line 264
    move-result-object v10

    .line 265
    if-ne v6, v8, :cond_15

    .line 266
    .line 267
    new-array v11, v5, [Lf2/t;

    .line 268
    .line 269
    iget-object v12, v3, Lt2/w;->b:[Lf2/t;

    .line 270
    .line 271
    if-ne v5, v1, :cond_13

    .line 272
    .line 273
    aget-object v12, v12, v2

    .line 274
    .line 275
    invoke-virtual {v10, v12}, Lf2/t;->b(Lf2/t;)Lf2/t;

    .line 276
    .line 277
    .line 278
    move-result-object v10

    .line 279
    aput-object v10, v11, v2

    .line 280
    .line 281
    goto :goto_e

    .line 282
    :cond_13
    move v13, v2

    .line 283
    :goto_d
    if-ge v13, v5, :cond_14

    .line 284
    .line 285
    aget-object v14, v12, v13

    .line 286
    .line 287
    invoke-static {v14, v10, v1}, Lw2/p;->i(Lf2/t;Lf2/t;Z)Lf2/t;

    .line 288
    .line 289
    .line 290
    move-result-object v14

    .line 291
    aput-object v14, v11, v13

    .line 292
    .line 293
    add-int/lit8 v13, v13, 0x1

    .line 294
    .line 295
    goto :goto_d

    .line 296
    :cond_14
    :goto_e
    new-instance v10, Lt2/w;

    .line 297
    .line 298
    invoke-direct {v10, v11}, Lt2/w;-><init>([Lf2/t;)V

    .line 299
    .line 300
    .line 301
    aput-object v10, v4, v6

    .line 302
    .line 303
    iput v6, p0, Lw2/p;->N:I

    .line 304
    .line 305
    goto :goto_10

    .line 306
    :cond_15
    if-ne v7, v9, :cond_16

    .line 307
    .line 308
    iget-object v11, v10, Lf2/t;->i:Ljava/lang/String;

    .line 309
    .line 310
    invoke-static {v11}, Lb3/c;->e(Ljava/lang/String;)Z

    .line 311
    .line 312
    .line 313
    move-result v11

    .line 314
    if-eqz v11, :cond_16

    .line 315
    .line 316
    iget-object v11, p0, Lw2/p;->j:Lf2/t;

    .line 317
    .line 318
    goto :goto_f

    .line 319
    :cond_16
    const/4 v11, 0x0

    .line 320
    :goto_f
    new-instance v12, Lt2/w;

    .line 321
    .line 322
    invoke-static {v11, v10, v2}, Lw2/p;->i(Lf2/t;Lf2/t;Z)Lf2/t;

    .line 323
    .line 324
    .line 325
    move-result-object v10

    .line 326
    filled-new-array {v10}, [Lf2/t;

    .line 327
    .line 328
    .line 329
    move-result-object v10

    .line 330
    invoke-direct {v12, v10}, Lt2/w;-><init>([Lf2/t;)V

    .line 331
    .line 332
    .line 333
    aput-object v12, v4, v6

    .line 334
    .line 335
    :goto_10
    add-int/lit8 v6, v6, 0x1

    .line 336
    .line 337
    goto :goto_c

    .line 338
    :cond_17
    invoke-virtual {p0, v4}, Lw2/p;->h([Lt2/w;)Lt2/x;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    iput-object v0, p0, Lw2/p;->K:Lt2/x;

    .line 343
    .line 344
    iget-object v0, p0, Lw2/p;->L:Ljava/util/Set;

    .line 345
    .line 346
    if-nez v0, :cond_18

    .line 347
    .line 348
    move v2, v1

    .line 349
    :cond_18
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 350
    .line 351
    .line 352
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    iput-object v0, p0, Lw2/p;->L:Ljava/util/Set;

    .line 357
    .line 358
    iput-boolean v1, p0, Lw2/p;->F:Z

    .line 359
    .line 360
    iget-object v0, p0, Lw2/p;->g:Lw2/i;

    .line 361
    .line 362
    invoke-virtual {v0}, Lw2/i;->h()V

    .line 363
    .line 364
    .line 365
    :cond_19
    :goto_11
    return-void
.end method

.method public final t()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lw2/p;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lw2/p;->S:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lw2/p;->V:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lw2/p;->l()Lw2/h;

    move-result-object v0

    iget-wide v0, v0, Lv2/a;->g:J

    :goto_0
    return-wide v0
.end method

.method public final v(J)Z
    .locals 52

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lw2/p;->V:Z

    .line 4
    .line 5
    if-nez v1, :cond_32

    .line 6
    .line 7
    iget-object v1, v0, Lw2/p;->m:La3/c0;

    .line 8
    .line 9
    iget-object v3, v1, La3/c0;->b:La3/y;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    move v3, v4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-nez v3, :cond_32

    .line 18
    .line 19
    iget-object v3, v1, La3/c0;->c:Ljava/io/IOException;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    move v3, v4

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 v3, 0x0

    .line 26
    :goto_1
    if-eqz v3, :cond_2

    .line 27
    .line 28
    goto/16 :goto_28

    .line 29
    .line 30
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lw2/p;->q()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget-wide v5, v0, Lw2/p;->S:J

    .line 41
    .line 42
    :goto_2
    move-wide v11, v5

    .line 43
    goto :goto_4

    .line 44
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lw2/p;->l()Lw2/h;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iget-boolean v5, v3, Lw2/h;->G:Z

    .line 49
    .line 50
    if-eqz v5, :cond_4

    .line 51
    .line 52
    iget-wide v5, v3, Lv2/a;->g:J

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_4
    iget-wide v5, v0, Lw2/p;->R:J

    .line 56
    .line 57
    iget-wide v7, v3, Lv2/a;->f:J

    .line 58
    .line 59
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide v5

    .line 63
    :goto_3
    iget-object v3, v0, Lw2/p;->r:Ljava/util/List;

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :goto_4
    iget-boolean v5, v0, Lw2/p;->F:Z

    .line 67
    .line 68
    if-nez v5, :cond_6

    .line 69
    .line 70
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-nez v5, :cond_5

    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_5
    const/4 v13, 0x0

    .line 78
    goto :goto_6

    .line 79
    :cond_6
    :goto_5
    move v13, v4

    .line 80
    :goto_6
    iget-object v14, v0, Lw2/p;->h:Lw2/f;

    .line 81
    .line 82
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_7

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    goto :goto_7

    .line 93
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    sub-int/2addr v5, v4

    .line 98
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Lw2/h;

    .line 103
    .line 104
    :goto_7
    if-nez v3, :cond_8

    .line 105
    .line 106
    const/4 v10, -0x1

    .line 107
    goto :goto_8

    .line 108
    :cond_8
    iget-object v5, v14, Lw2/f;->h:Lt2/w;

    .line 109
    .line 110
    iget-object v6, v3, Lv2/a;->c:Lf2/t;

    .line 111
    .line 112
    invoke-virtual {v5, v6}, Lt2/w;->a(Lf2/t;)I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    move v10, v5

    .line 117
    :goto_8
    sub-long v5, v11, p1

    .line 118
    .line 119
    iget-wide v7, v14, Lw2/f;->q:J

    .line 120
    .line 121
    move-wide/from16 v16, v5

    .line 122
    .line 123
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    cmp-long v6, v7, v4

    .line 129
    .line 130
    if-eqz v6, :cond_9

    .line 131
    .line 132
    const/4 v6, 0x1

    .line 133
    goto :goto_9

    .line 134
    :cond_9
    const/4 v6, 0x0

    .line 135
    :goto_9
    if-eqz v6, :cond_a

    .line 136
    .line 137
    sub-long v7, v7, p1

    .line 138
    .line 139
    goto :goto_a

    .line 140
    :cond_a
    move-wide v7, v4

    .line 141
    :goto_a
    if-eqz v3, :cond_b

    .line 142
    .line 143
    iget-boolean v6, v14, Lw2/f;->o:Z

    .line 144
    .line 145
    if-nez v6, :cond_b

    .line 146
    .line 147
    move/from16 v19, v10

    .line 148
    .line 149
    iget-wide v9, v3, Lv2/a;->g:J

    .line 150
    .line 151
    iget-wide v4, v3, Lv2/a;->f:J

    .line 152
    .line 153
    sub-long/2addr v9, v4

    .line 154
    sub-long v5, v16, v9

    .line 155
    .line 156
    move-object/from16 v22, v3

    .line 157
    .line 158
    const-wide/16 v2, 0x0

    .line 159
    .line 160
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 161
    .line 162
    .line 163
    move-result-wide v5

    .line 164
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    cmp-long v16, v7, v20

    .line 170
    .line 171
    if-eqz v16, :cond_c

    .line 172
    .line 173
    sub-long/2addr v7, v9

    .line 174
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 175
    .line 176
    .line 177
    move-result-wide v7

    .line 178
    goto :goto_b

    .line 179
    :cond_b
    move-object/from16 v22, v3

    .line 180
    .line 181
    move-wide/from16 v20, v4

    .line 182
    .line 183
    move/from16 v19, v10

    .line 184
    .line 185
    move-wide/from16 v5, v16

    .line 186
    .line 187
    :cond_c
    :goto_b
    move-object/from16 v3, v22

    .line 188
    .line 189
    invoke-virtual {v14, v3, v11, v12}, Lw2/f;->a(Lw2/h;J)[Lv2/c;

    .line 190
    .line 191
    .line 192
    iget-object v2, v14, Lw2/f;->p:Lz2/p;

    .line 193
    .line 194
    invoke-interface {v2, v5, v6, v7, v8}, Lz2/p;->c(JJ)V

    .line 195
    .line 196
    .line 197
    iget-object v2, v14, Lw2/f;->p:Lz2/p;

    .line 198
    .line 199
    check-cast v2, Lz2/d;

    .line 200
    .line 201
    iget-object v5, v2, Lz2/d;->c:[I

    .line 202
    .line 203
    invoke-interface {v2}, Lz2/p;->b()I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    aget v2, v5, v2

    .line 208
    .line 209
    move/from16 v9, v19

    .line 210
    .line 211
    if-eq v9, v2, :cond_d

    .line 212
    .line 213
    const/16 v16, 0x1

    .line 214
    .line 215
    goto :goto_c

    .line 216
    :cond_d
    const/16 v16, 0x0

    .line 217
    .line 218
    :goto_c
    iget-object v10, v14, Lw2/f;->e:[Landroid/net/Uri;

    .line 219
    .line 220
    aget-object v8, v10, v2

    .line 221
    .line 222
    iget-object v5, v14, Lw2/f;->g:Lx2/l;

    .line 223
    .line 224
    move-object v7, v5

    .line 225
    check-cast v7, Lx2/b;

    .line 226
    .line 227
    invoke-virtual {v7, v8}, Lx2/b;->f(Landroid/net/Uri;)Z

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    iget-object v6, v0, Lw2/p;->p:Ly0/j0;

    .line 232
    .line 233
    if-nez v5, :cond_e

    .line 234
    .line 235
    iput-object v8, v6, Ly0/j0;->i:Ljava/lang/Object;

    .line 236
    .line 237
    iget-boolean v2, v14, Lw2/f;->r:Z

    .line 238
    .line 239
    iget-object v3, v14, Lw2/f;->n:Landroid/net/Uri;

    .line 240
    .line 241
    invoke-virtual {v8, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    and-int/2addr v2, v3

    .line 246
    iput-boolean v2, v14, Lw2/f;->r:Z

    .line 247
    .line 248
    iput-object v8, v14, Lw2/f;->n:Landroid/net/Uri;

    .line 249
    .line 250
    move-object/from16 v22, v1

    .line 251
    .line 252
    :goto_d
    move-object v0, v6

    .line 253
    goto/16 :goto_24

    .line 254
    .line 255
    :cond_e
    const/4 v5, 0x1

    .line 256
    invoke-virtual {v7, v8, v5}, Lx2/b;->e(Landroid/net/Uri;Z)Lx2/g;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    iget-boolean v5, v4, Lx2/h;->c:Z

    .line 264
    .line 265
    iput-boolean v5, v14, Lw2/f;->o:Z

    .line 266
    .line 267
    iget-boolean v5, v4, Lx2/g;->l:Z

    .line 268
    .line 269
    move-object/from16 p2, v8

    .line 270
    .line 271
    move/from16 v19, v9

    .line 272
    .line 273
    iget-wide v8, v4, Lx2/g;->f:J

    .line 274
    .line 275
    if-eqz v5, :cond_f

    .line 276
    .line 277
    move-object/from16 v22, v1

    .line 278
    .line 279
    move/from16 v23, v2

    .line 280
    .line 281
    move-object/from16 v17, v6

    .line 282
    .line 283
    move-wide/from16 v5, v20

    .line 284
    .line 285
    goto :goto_e

    .line 286
    :cond_f
    move-object/from16 v17, v6

    .line 287
    .line 288
    iget-wide v5, v4, Lx2/g;->p:J

    .line 289
    .line 290
    add-long/2addr v5, v8

    .line 291
    move-object/from16 v22, v1

    .line 292
    .line 293
    move/from16 v23, v2

    .line 294
    .line 295
    iget-wide v1, v7, Lx2/b;->t:J

    .line 296
    .line 297
    sub-long/2addr v5, v1

    .line 298
    :goto_e
    iput-wide v5, v14, Lw2/f;->q:J

    .line 299
    .line 300
    iget-wide v1, v7, Lx2/b;->t:J

    .line 301
    .line 302
    sub-long v1, v8, v1

    .line 303
    .line 304
    move-wide/from16 v8, v20

    .line 305
    .line 306
    move-object v5, v14

    .line 307
    move-object/from16 v15, v17

    .line 308
    .line 309
    move-object v6, v3

    .line 310
    move-object v0, v7

    .line 311
    move/from16 v7, v16

    .line 312
    .line 313
    move-object/from16 v17, p2

    .line 314
    .line 315
    move-object v8, v4

    .line 316
    move-object/from16 v21, v10

    .line 317
    .line 318
    move/from16 v18, v19

    .line 319
    .line 320
    move-object/from16 v19, v15

    .line 321
    .line 322
    const/4 v15, -0x1

    .line 323
    move-wide v9, v1

    .line 324
    invoke-virtual/range {v5 .. v12}, Lw2/f;->b(Lw2/h;ZLx2/g;JJ)J

    .line 325
    .line 326
    .line 327
    move-result-wide v5

    .line 328
    iget-wide v7, v4, Lx2/g;->i:J

    .line 329
    .line 330
    cmp-long v7, v5, v7

    .line 331
    .line 332
    if-gez v7, :cond_11

    .line 333
    .line 334
    if-eqz v3, :cond_11

    .line 335
    .line 336
    if-eqz v16, :cond_11

    .line 337
    .line 338
    aget-object v8, v21, v18

    .line 339
    .line 340
    const/4 v1, 0x1

    .line 341
    invoke-virtual {v0, v8, v1}, Lx2/b;->e(Landroid/net/Uri;Z)Lx2/g;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    iget-wide v0, v0, Lx2/b;->t:J

    .line 349
    .line 350
    iget-wide v5, v4, Lx2/g;->f:J

    .line 351
    .line 352
    sub-long v1, v5, v0

    .line 353
    .line 354
    iget-wide v5, v3, Lv2/b;->i:J

    .line 355
    .line 356
    const-wide/16 v9, -0x1

    .line 357
    .line 358
    cmp-long v0, v5, v9

    .line 359
    .line 360
    if-eqz v0, :cond_10

    .line 361
    .line 362
    const-wide/16 v9, 0x1

    .line 363
    .line 364
    add-long/2addr v5, v9

    .line 365
    goto :goto_f

    .line 366
    :cond_10
    move-wide v5, v9

    .line 367
    :goto_f
    move-object v0, v4

    .line 368
    move/from16 v10, v18

    .line 369
    .line 370
    goto :goto_10

    .line 371
    :cond_11
    move-object v0, v4

    .line 372
    move-object/from16 v8, v17

    .line 373
    .line 374
    move/from16 v10, v23

    .line 375
    .line 376
    :goto_10
    iget-wide v11, v0, Lx2/g;->i:J

    .line 377
    .line 378
    cmp-long v4, v5, v11

    .line 379
    .line 380
    if-gez v4, :cond_12

    .line 381
    .line 382
    new-instance v0, Lcom/google/android/gms/internal/play_billing/c0;

    .line 383
    .line 384
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/c0;-><init>()V

    .line 385
    .line 386
    .line 387
    iput-object v0, v14, Lw2/f;->m:Lcom/google/android/gms/internal/play_billing/c0;

    .line 388
    .line 389
    move-object/from16 v0, v19

    .line 390
    .line 391
    goto/16 :goto_24

    .line 392
    .line 393
    :cond_12
    sub-long/2addr v5, v11

    .line 394
    long-to-int v4, v5

    .line 395
    iget-object v5, v0, Lx2/g;->o:Ljava/util/List;

    .line 396
    .line 397
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 398
    .line 399
    .line 400
    move-result v6

    .line 401
    if-lt v4, v6, :cond_16

    .line 402
    .line 403
    iget-boolean v4, v0, Lx2/g;->l:Z

    .line 404
    .line 405
    if-eqz v4, :cond_15

    .line 406
    .line 407
    if-nez v13, :cond_14

    .line 408
    .line 409
    if-nez v6, :cond_13

    .line 410
    .line 411
    goto :goto_11

    .line 412
    :cond_13
    add-int/lit8 v4, v6, -0x1

    .line 413
    .line 414
    move v7, v4

    .line 415
    move-object/from16 v6, v19

    .line 416
    .line 417
    goto :goto_12

    .line 418
    :cond_14
    :goto_11
    move-object/from16 v6, v19

    .line 419
    .line 420
    const/4 v0, 0x1

    .line 421
    iput-boolean v0, v6, Ly0/j0;->g:Z

    .line 422
    .line 423
    goto/16 :goto_d

    .line 424
    .line 425
    :cond_15
    move-object/from16 v6, v19

    .line 426
    .line 427
    iput-object v8, v6, Ly0/j0;->i:Ljava/lang/Object;

    .line 428
    .line 429
    iget-boolean v0, v14, Lw2/f;->r:Z

    .line 430
    .line 431
    iget-object v1, v14, Lw2/f;->n:Landroid/net/Uri;

    .line 432
    .line 433
    invoke-virtual {v8, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    and-int/2addr v0, v1

    .line 438
    iput-boolean v0, v14, Lw2/f;->r:Z

    .line 439
    .line 440
    iput-object v8, v14, Lw2/f;->n:Landroid/net/Uri;

    .line 441
    .line 442
    goto/16 :goto_d

    .line 443
    .line 444
    :cond_16
    move-object/from16 v6, v19

    .line 445
    .line 446
    move v7, v4

    .line 447
    :goto_12
    const/4 v4, 0x0

    .line 448
    iput-boolean v4, v14, Lw2/f;->r:Z

    .line 449
    .line 450
    const/4 v9, 0x0

    .line 451
    iput-object v9, v14, Lw2/f;->n:Landroid/net/Uri;

    .line 452
    .line 453
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v9

    .line 457
    check-cast v9, Lx2/f;

    .line 458
    .line 459
    iget-object v11, v9, Lx2/f;->b:Lx2/f;

    .line 460
    .line 461
    iget-object v12, v0, Lx2/h;->a:Ljava/lang/String;

    .line 462
    .line 463
    if-eqz v11, :cond_18

    .line 464
    .line 465
    iget-object v11, v11, Lx2/f;->g:Ljava/lang/String;

    .line 466
    .line 467
    if-nez v11, :cond_17

    .line 468
    .line 469
    goto :goto_13

    .line 470
    :cond_17
    invoke-static {v12, v11}, Lcom/google/android/gms/internal/play_billing/i0;->g0(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 471
    .line 472
    .line 473
    move-result-object v11

    .line 474
    goto :goto_14

    .line 475
    :cond_18
    :goto_13
    const/4 v11, 0x0

    .line 476
    :goto_14
    invoke-virtual {v14, v11, v10}, Lw2/f;->c(Landroid/net/Uri;I)Lw2/d;

    .line 477
    .line 478
    .line 479
    move-result-object v13

    .line 480
    iput-object v13, v6, Ly0/j0;->h:Ljava/lang/Object;

    .line 481
    .line 482
    if-eqz v13, :cond_19

    .line 483
    .line 484
    :goto_15
    goto/16 :goto_d

    .line 485
    .line 486
    :cond_19
    iget-object v9, v9, Lx2/f;->g:Ljava/lang/String;

    .line 487
    .line 488
    if-nez v9, :cond_1a

    .line 489
    .line 490
    const/4 v9, 0x0

    .line 491
    goto :goto_16

    .line 492
    :cond_1a
    invoke-static {v12, v9}, Lcom/google/android/gms/internal/play_billing/i0;->g0(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 493
    .line 494
    .line 495
    move-result-object v9

    .line 496
    :goto_16
    invoke-virtual {v14, v9, v10}, Lw2/f;->c(Landroid/net/Uri;I)Lw2/d;

    .line 497
    .line 498
    .line 499
    move-result-object v13

    .line 500
    iput-object v13, v6, Ly0/j0;->h:Ljava/lang/Object;

    .line 501
    .line 502
    if-eqz v13, :cond_1b

    .line 503
    .line 504
    goto :goto_15

    .line 505
    :cond_1b
    iget-object v13, v14, Lw2/f;->a:Lw2/g;

    .line 506
    .line 507
    iget-object v4, v14, Lw2/f;->f:[Lf2/t;

    .line 508
    .line 509
    aget-object v28, v4, v10

    .line 510
    .line 511
    iget-object v4, v14, Lw2/f;->i:Ljava/util/List;

    .line 512
    .line 513
    iget-object v10, v14, Lw2/f;->p:Lz2/p;

    .line 514
    .line 515
    invoke-interface {v10}, Lz2/p;->a()I

    .line 516
    .line 517
    .line 518
    move-result v35

    .line 519
    iget-object v10, v14, Lw2/f;->p:Lz2/p;

    .line 520
    .line 521
    invoke-interface {v10}, Lz2/p;->f()Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v36

    .line 525
    iget-boolean v10, v14, Lw2/f;->k:Z

    .line 526
    .line 527
    iget-object v15, v14, Lw2/f;->j:Lh/a;

    .line 528
    .line 529
    if-nez v9, :cond_1c

    .line 530
    .line 531
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    .line 533
    .line 534
    move-object/from16 v17, v6

    .line 535
    .line 536
    const/4 v6, 0x0

    .line 537
    goto :goto_17

    .line 538
    :cond_1c
    move-object/from16 v17, v6

    .line 539
    .line 540
    iget-object v6, v15, Lh/a;->g:Ljava/lang/Object;

    .line 541
    .line 542
    check-cast v6, Ljava/util/LinkedHashMap;

    .line 543
    .line 544
    invoke-virtual {v6, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v6

    .line 548
    check-cast v6, [B

    .line 549
    .line 550
    :goto_17
    if-nez v11, :cond_1d

    .line 551
    .line 552
    const/4 v9, 0x0

    .line 553
    goto :goto_18

    .line 554
    :cond_1d
    iget-object v9, v15, Lh/a;->g:Ljava/lang/Object;

    .line 555
    .line 556
    check-cast v9, Ljava/util/LinkedHashMap;

    .line 557
    .line 558
    invoke-virtual {v9, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v9

    .line 562
    check-cast v9, [B

    .line 563
    .line 564
    :goto_18
    sget-object v11, Lw2/h;->H:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 565
    .line 566
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v5

    .line 570
    check-cast v5, Lx2/f;

    .line 571
    .line 572
    new-instance v27, La3/l;

    .line 573
    .line 574
    iget-object v11, v5, Lx2/f;->a:Ljava/lang/String;

    .line 575
    .line 576
    invoke-static {v12, v11}, Lcom/google/android/gms/internal/play_billing/i0;->g0(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 577
    .line 578
    .line 579
    move-result-object v30

    .line 580
    move v15, v10

    .line 581
    iget-wide v10, v5, Lx2/f;->i:J

    .line 582
    .line 583
    move/from16 v19, v7

    .line 584
    .line 585
    move-object/from16 v16, v8

    .line 586
    .line 587
    iget-wide v7, v5, Lx2/f;->j:J

    .line 588
    .line 589
    move-object/from16 v29, v27

    .line 590
    .line 591
    move-wide/from16 v31, v10

    .line 592
    .line 593
    move-wide/from16 v33, v7

    .line 594
    .line 595
    invoke-direct/range {v29 .. v34}, La3/l;-><init>(Landroid/net/Uri;JJ)V

    .line 596
    .line 597
    .line 598
    if-eqz v6, :cond_1e

    .line 599
    .line 600
    const/16 v29, 0x1

    .line 601
    .line 602
    goto :goto_19

    .line 603
    :cond_1e
    const/16 v29, 0x0

    .line 604
    .line 605
    :goto_19
    if-eqz v29, :cond_1f

    .line 606
    .line 607
    iget-object v7, v5, Lx2/f;->h:Ljava/lang/String;

    .line 608
    .line 609
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 610
    .line 611
    .line 612
    invoke-static {v7}, Lw2/h;->d(Ljava/lang/String;)[B

    .line 613
    .line 614
    .line 615
    move-result-object v7

    .line 616
    goto :goto_1a

    .line 617
    :cond_1f
    const/4 v7, 0x0

    .line 618
    :goto_1a
    iget-object v8, v14, Lw2/f;->b:La3/i;

    .line 619
    .line 620
    if-eqz v6, :cond_20

    .line 621
    .line 622
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 623
    .line 624
    .line 625
    new-instance v10, Lw2/a;

    .line 626
    .line 627
    invoke-direct {v10, v8, v6, v7}, Lw2/a;-><init>(La3/i;[B[B)V

    .line 628
    .line 629
    .line 630
    move-object/from16 v26, v10

    .line 631
    .line 632
    goto :goto_1b

    .line 633
    :cond_20
    move-object/from16 v26, v8

    .line 634
    .line 635
    :goto_1b
    iget-object v6, v5, Lx2/f;->b:Lx2/f;

    .line 636
    .line 637
    if-eqz v6, :cond_24

    .line 638
    .line 639
    if-eqz v9, :cond_21

    .line 640
    .line 641
    const/4 v7, 0x1

    .line 642
    goto :goto_1c

    .line 643
    :cond_21
    const/4 v7, 0x0

    .line 644
    :goto_1c
    if-eqz v7, :cond_22

    .line 645
    .line 646
    iget-object v10, v6, Lx2/f;->h:Ljava/lang/String;

    .line 647
    .line 648
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 649
    .line 650
    .line 651
    invoke-static {v10}, Lw2/h;->d(Ljava/lang/String;)[B

    .line 652
    .line 653
    .line 654
    move-result-object v10

    .line 655
    goto :goto_1d

    .line 656
    :cond_22
    const/4 v10, 0x0

    .line 657
    :goto_1d
    iget-object v11, v6, Lx2/f;->a:Ljava/lang/String;

    .line 658
    .line 659
    invoke-static {v12, v11}, Lcom/google/android/gms/internal/play_billing/i0;->g0(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 660
    .line 661
    .line 662
    move-result-object v38

    .line 663
    new-instance v11, La3/l;

    .line 664
    .line 665
    move-object/from16 v21, v13

    .line 666
    .line 667
    iget-wide v12, v6, Lx2/f;->i:J

    .line 668
    .line 669
    move/from16 p2, v7

    .line 670
    .line 671
    iget-wide v6, v6, Lx2/f;->j:J

    .line 672
    .line 673
    move-object/from16 v37, v11

    .line 674
    .line 675
    move-wide/from16 v39, v12

    .line 676
    .line 677
    move-wide/from16 v41, v6

    .line 678
    .line 679
    invoke-direct/range {v37 .. v42}, La3/l;-><init>(Landroid/net/Uri;JJ)V

    .line 680
    .line 681
    .line 682
    if-eqz v9, :cond_23

    .line 683
    .line 684
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 685
    .line 686
    .line 687
    new-instance v6, Lw2/a;

    .line 688
    .line 689
    invoke-direct {v6, v8, v9, v10}, Lw2/a;-><init>(La3/i;[B[B)V

    .line 690
    .line 691
    .line 692
    goto :goto_1e

    .line 693
    :cond_23
    move-object v6, v8

    .line 694
    :goto_1e
    move/from16 v32, p2

    .line 695
    .line 696
    move-object/from16 v30, v6

    .line 697
    .line 698
    move-object/from16 v31, v11

    .line 699
    .line 700
    goto :goto_1f

    .line 701
    :cond_24
    move-object/from16 v21, v13

    .line 702
    .line 703
    const/16 v30, 0x0

    .line 704
    .line 705
    const/16 v31, 0x0

    .line 706
    .line 707
    const/16 v32, 0x0

    .line 708
    .line 709
    :goto_1f
    iget-wide v6, v5, Lx2/f;->e:J

    .line 710
    .line 711
    add-long v37, v1, v6

    .line 712
    .line 713
    iget-wide v1, v5, Lx2/f;->c:J

    .line 714
    .line 715
    add-long v39, v37, v1

    .line 716
    .line 717
    iget v1, v0, Lx2/g;->h:I

    .line 718
    .line 719
    iget v2, v5, Lx2/f;->d:I

    .line 720
    .line 721
    add-int/2addr v1, v2

    .line 722
    if-eqz v3, :cond_28

    .line 723
    .line 724
    iget-object v2, v3, Lw2/h;->l:Landroid/net/Uri;

    .line 725
    .line 726
    move-object/from16 v8, v16

    .line 727
    .line 728
    invoke-virtual {v8, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 729
    .line 730
    .line 731
    move-result v2

    .line 732
    if-eqz v2, :cond_26

    .line 733
    .line 734
    iget-boolean v2, v3, Lw2/h;->G:Z

    .line 735
    .line 736
    if-nez v2, :cond_25

    .line 737
    .line 738
    goto :goto_20

    .line 739
    :cond_25
    const/4 v2, 0x0

    .line 740
    goto :goto_21

    .line 741
    :cond_26
    :goto_20
    const/4 v2, 0x1

    .line 742
    :goto_21
    iget-boolean v6, v3, Lw2/h;->B:Z

    .line 743
    .line 744
    if-eqz v6, :cond_27

    .line 745
    .line 746
    iget v6, v3, Lw2/h;->k:I

    .line 747
    .line 748
    if-ne v6, v1, :cond_27

    .line 749
    .line 750
    if-nez v2, :cond_27

    .line 751
    .line 752
    iget-object v6, v3, Lw2/h;->A:Lk2/h;

    .line 753
    .line 754
    goto :goto_22

    .line 755
    :cond_27
    const/4 v6, 0x0

    .line 756
    :goto_22
    iget-object v7, v3, Lw2/h;->w:Lr2/i;

    .line 757
    .line 758
    iget-object v3, v3, Lw2/h;->x:Lb3/h;

    .line 759
    .line 760
    move/from16 v51, v2

    .line 761
    .line 762
    move-object/from16 v50, v3

    .line 763
    .line 764
    move-object/from16 v48, v6

    .line 765
    .line 766
    move-object/from16 v49, v7

    .line 767
    .line 768
    goto :goto_23

    .line 769
    :cond_28
    move-object/from16 v8, v16

    .line 770
    .line 771
    new-instance v2, Lr2/i;

    .line 772
    .line 773
    const/4 v3, 0x0

    .line 774
    invoke-direct {v2, v3}, Lr2/i;-><init>(Lh0/c;)V

    .line 775
    .line 776
    .line 777
    new-instance v3, Lb3/h;

    .line 778
    .line 779
    const/16 v6, 0xa

    .line 780
    .line 781
    invoke-direct {v3, v6}, Lb3/h;-><init>(I)V

    .line 782
    .line 783
    .line 784
    move-object/from16 v49, v2

    .line 785
    .line 786
    move-object/from16 v50, v3

    .line 787
    .line 788
    const/16 v48, 0x0

    .line 789
    .line 790
    const/16 v51, 0x0

    .line 791
    .line 792
    :goto_23
    new-instance v2, Lw2/h;

    .line 793
    .line 794
    iget-wide v6, v0, Lx2/g;->i:J

    .line 795
    .line 796
    move/from16 v0, v19

    .line 797
    .line 798
    int-to-long v9, v0

    .line 799
    add-long v41, v6, v9

    .line 800
    .line 801
    iget-boolean v0, v5, Lx2/f;->k:Z

    .line 802
    .line 803
    iget-object v3, v14, Lw2/f;->d:Lh/a;

    .line 804
    .line 805
    iget-object v6, v3, Lh/a;->g:Ljava/lang/Object;

    .line 806
    .line 807
    check-cast v6, Landroid/util/SparseArray;

    .line 808
    .line 809
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v6

    .line 813
    check-cast v6, Lb3/l;

    .line 814
    .line 815
    if-nez v6, :cond_29

    .line 816
    .line 817
    new-instance v6, Lb3/l;

    .line 818
    .line 819
    const-wide v9, 0x7fffffffffffffffL

    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    invoke-direct {v6, v9, v10}, Lb3/l;-><init>(J)V

    .line 825
    .line 826
    .line 827
    iget-object v3, v3, Lh/a;->g:Ljava/lang/Object;

    .line 828
    .line 829
    check-cast v3, Landroid/util/SparseArray;

    .line 830
    .line 831
    invoke-virtual {v3, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 832
    .line 833
    .line 834
    :cond_29
    move-object/from16 v46, v6

    .line 835
    .line 836
    iget-object v3, v5, Lx2/f;->f:Lj2/b;

    .line 837
    .line 838
    move-object/from16 v47, v3

    .line 839
    .line 840
    move-object/from16 v24, v2

    .line 841
    .line 842
    move-object/from16 v25, v21

    .line 843
    .line 844
    move-object/from16 v33, v8

    .line 845
    .line 846
    move-object/from16 v34, v4

    .line 847
    .line 848
    move/from16 v43, v1

    .line 849
    .line 850
    move/from16 v44, v0

    .line 851
    .line 852
    move/from16 v45, v15

    .line 853
    .line 854
    invoke-direct/range {v24 .. v51}, Lw2/h;-><init>(Lw2/g;La3/i;La3/l;Lf2/t;ZLa3/i;La3/l;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZZLb3/l;Lj2/b;Lk2/h;Lr2/i;Lb3/h;Z)V

    .line 855
    .line 856
    .line 857
    move-object/from16 v0, v17

    .line 858
    .line 859
    iput-object v2, v0, Ly0/j0;->h:Ljava/lang/Object;

    .line 860
    .line 861
    :goto_24
    iget-boolean v1, v0, Ly0/j0;->g:Z

    .line 862
    .line 863
    iget-object v2, v0, Ly0/j0;->h:Ljava/lang/Object;

    .line 864
    .line 865
    check-cast v2, Lv2/a;

    .line 866
    .line 867
    iget-object v3, v0, Ly0/j0;->i:Ljava/lang/Object;

    .line 868
    .line 869
    check-cast v3, Landroid/net/Uri;

    .line 870
    .line 871
    const/4 v5, 0x0

    .line 872
    iput-object v5, v0, Ly0/j0;->h:Ljava/lang/Object;

    .line 873
    .line 874
    const/4 v4, 0x0

    .line 875
    iput-boolean v4, v0, Ly0/j0;->g:Z

    .line 876
    .line 877
    iput-object v5, v0, Ly0/j0;->i:Ljava/lang/Object;

    .line 878
    .line 879
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    move-object/from16 v0, p0

    .line 885
    .line 886
    if-eqz v1, :cond_2a

    .line 887
    .line 888
    iput-wide v5, v0, Lw2/p;->S:J

    .line 889
    .line 890
    const/4 v1, 0x1

    .line 891
    iput-boolean v1, v0, Lw2/p;->V:Z

    .line 892
    .line 893
    return v1

    .line 894
    :cond_2a
    if-nez v2, :cond_2c

    .line 895
    .line 896
    if-eqz v3, :cond_2b

    .line 897
    .line 898
    iget-object v1, v0, Lw2/p;->g:Lw2/i;

    .line 899
    .line 900
    iget-object v1, v1, Lw2/i;->g:Lx2/l;

    .line 901
    .line 902
    check-cast v1, Lx2/b;

    .line 903
    .line 904
    iget-object v1, v1, Lx2/b;->i:Ljava/util/HashMap;

    .line 905
    .line 906
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    .line 908
    .line 909
    move-result-object v1

    .line 910
    check-cast v1, Lx2/a;

    .line 911
    .line 912
    invoke-virtual {v1}, Lx2/a;->e()V

    .line 913
    .line 914
    .line 915
    :cond_2b
    const/4 v1, 0x0

    .line 916
    return v1

    .line 917
    :cond_2c
    instance-of v1, v2, Lw2/h;

    .line 918
    .line 919
    if-eqz v1, :cond_2f

    .line 920
    .line 921
    iput-wide v5, v0, Lw2/p;->S:J

    .line 922
    .line 923
    move-object v1, v2

    .line 924
    check-cast v1, Lw2/h;

    .line 925
    .line 926
    iput-object v0, v1, Lw2/h;->C:Lw2/p;

    .line 927
    .line 928
    iget v3, v1, Lw2/h;->j:I

    .line 929
    .line 930
    iput v3, v0, Lw2/p;->Z:I

    .line 931
    .line 932
    iget-object v5, v0, Lw2/p;->x:[Lw2/o;

    .line 933
    .line 934
    array-length v6, v5

    .line 935
    const/4 v7, 0x0

    .line 936
    :goto_25
    if-ge v7, v6, :cond_2d

    .line 937
    .line 938
    aget-object v8, v5, v7

    .line 939
    .line 940
    iput v3, v8, Lw2/o;->z:I

    .line 941
    .line 942
    add-int/lit8 v7, v7, 0x1

    .line 943
    .line 944
    goto :goto_25

    .line 945
    :cond_2d
    iget-boolean v3, v1, Lw2/h;->s:Z

    .line 946
    .line 947
    if-eqz v3, :cond_2e

    .line 948
    .line 949
    iget-object v3, v0, Lw2/p;->x:[Lw2/o;

    .line 950
    .line 951
    array-length v5, v3

    .line 952
    const/4 v4, 0x0

    .line 953
    :goto_26
    if-ge v4, v5, :cond_2e

    .line 954
    .line 955
    aget-object v6, v3, v4

    .line 956
    .line 957
    const/4 v7, 0x1

    .line 958
    iput-boolean v7, v6, Lw2/o;->D:Z

    .line 959
    .line 960
    add-int/lit8 v4, v4, 0x1

    .line 961
    .line 962
    goto :goto_26

    .line 963
    :cond_2e
    iget-object v3, v0, Lw2/p;->q:Ljava/util/ArrayList;

    .line 964
    .line 965
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    .line 967
    .line 968
    iget-object v1, v1, Lv2/a;->c:Lf2/t;

    .line 969
    .line 970
    iput-object v1, v0, Lw2/p;->H:Lf2/t;

    .line 971
    .line 972
    :cond_2f
    iget-object v1, v0, Lw2/p;->l:La3/r;

    .line 973
    .line 974
    iget v1, v1, La3/r;->a:I

    .line 975
    .line 976
    const/4 v3, -0x1

    .line 977
    if-ne v1, v3, :cond_31

    .line 978
    .line 979
    const/4 v1, 0x7

    .line 980
    iget v3, v2, Lv2/a;->b:I

    .line 981
    .line 982
    if-ne v3, v1, :cond_30

    .line 983
    .line 984
    const/4 v1, 0x6

    .line 985
    goto :goto_27

    .line 986
    :cond_30
    const/4 v1, 0x3

    .line 987
    :cond_31
    :goto_27
    move-object/from16 v3, v22

    .line 988
    .line 989
    invoke-virtual {v3, v2, v0, v1}, La3/c0;->c(La3/z;La3/w;I)J

    .line 990
    .line 991
    .line 992
    move-result-wide v14

    .line 993
    iget-object v4, v0, Lw2/p;->n:Lcom/google/android/gms/internal/play_billing/v;

    .line 994
    .line 995
    iget-object v5, v2, Lv2/a;->a:La3/l;

    .line 996
    .line 997
    iget v6, v2, Lv2/a;->b:I

    .line 998
    .line 999
    iget v7, v0, Lw2/p;->f:I

    .line 1000
    .line 1001
    iget v8, v2, Lv2/a;->d:I

    .line 1002
    .line 1003
    iget-object v9, v2, Lv2/a;->e:Ljava/lang/Object;

    .line 1004
    .line 1005
    iget-wide v10, v2, Lv2/a;->f:J

    .line 1006
    .line 1007
    iget-wide v12, v2, Lv2/a;->g:J

    .line 1008
    .line 1009
    invoke-virtual/range {v4 .. v15}, Lcom/google/android/gms/internal/play_billing/v;->h(La3/l;IIILjava/lang/Object;JJJ)V

    .line 1010
    .line 1011
    .line 1012
    const/4 v1, 0x1

    .line 1013
    return v1

    .line 1014
    :cond_32
    :goto_28
    const/4 v1, 0x0

    .line 1015
    return v1
.end method

.method public final w()V
    .locals 3

    .line 1
    iget-object v0, p0, Lw2/p;->m:La3/c0;

    .line 2
    .line 3
    invoke-virtual {v0}, La3/c0;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lw2/p;->h:Lw2/f;

    .line 7
    .line 8
    iget-object v1, v0, Lw2/f;->m:Lcom/google/android/gms/internal/play_billing/c0;

    .line 9
    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    iget-object v1, v0, Lw2/f;->n:Landroid/net/Uri;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-boolean v2, v0, Lw2/f;->r:Z

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-object v0, v0, Lw2/f;->g:Lx2/l;

    .line 21
    .line 22
    check-cast v0, Lx2/b;

    .line 23
    .line 24
    iget-object v0, v0, Lx2/b;->i:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lx2/a;

    .line 31
    .line 32
    iget-object v1, v0, Lx2/a;->g:La3/c0;

    .line 33
    .line 34
    invoke-virtual {v1}, La3/c0;->a()V

    .line 35
    .line 36
    .line 37
    iget-object v0, v0, Lx2/a;->o:Ljava/io/IOException;

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    throw v0

    .line 43
    :cond_1
    :goto_0
    return-void

    .line 44
    :cond_2
    throw v1
.end method

.method public final y(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final varargs z([Lt2/w;[I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lw2/p;->h([Lt2/w;)Lt2/x;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lw2/p;->K:Lt2/x;

    .line 6
    .line 7
    new-instance p1, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lw2/p;->L:Ljava/util/Set;

    .line 13
    .line 14
    array-length p1, p2

    .line 15
    const/4 v0, 0x0

    .line 16
    move v1, v0

    .line 17
    :goto_0
    if-ge v1, p1, :cond_0

    .line 18
    .line 19
    aget v2, p2, v1

    .line 20
    .line 21
    iget-object v3, p0, Lw2/p;->L:Ljava/util/Set;

    .line 22
    .line 23
    iget-object v4, p0, Lw2/p;->K:Lt2/x;

    .line 24
    .line 25
    iget-object v4, v4, Lt2/x;->b:[Lt2/w;

    .line 26
    .line 27
    aget-object v2, v4, v2

    .line 28
    .line 29
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput v0, p0, Lw2/p;->N:I

    .line 36
    .line 37
    iget-object p1, p0, Lw2/p;->u:Landroid/os/Handler;

    .line 38
    .line 39
    iget-object p2, p0, Lw2/p;->g:Lw2/i;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance v0, Lw2/m;

    .line 45
    .line 46
    const/4 v1, 0x2

    .line 47
    invoke-direct {v0, p2, v1}, Lw2/m;-><init>(Lt2/u;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lw2/p;->F:Z

    .line 55
    .line 56
    return-void
.end method
