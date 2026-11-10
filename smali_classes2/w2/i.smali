.class public final Lw2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt2/e;
.implements Lt2/t;


# instance fields
.field public final f:Lw2/g;

.field public final g:Lx2/l;

.field public final h:Lw2/b;

.field public final i:La3/g0;

.field public final j:Lj2/d;

.field public final k:La3/r;

.field public final l:Lcom/google/android/gms/internal/play_billing/v;

.field public final m:La3/b;

.field public final n:Ljava/util/IdentityHashMap;

.field public final o:Lh/a;

.field public final p:Lc/a;

.field public final q:Z

.field public final r:I

.field public final s:Z

.field public t:Lt2/d;

.field public u:I

.field public v:Lt2/x;

.field public w:[Lw2/p;

.field public x:[Lw2/p;

.field public y:Lh/a;

.field public z:Z


# direct methods
.method public constructor <init>(Lw2/g;Lx2/l;Lw2/b;La3/g0;Lj2/d;La3/r;Lcom/google/android/gms/internal/play_billing/v;La3/m;Lc/a;ZIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/i;->f:Lw2/g;

    iput-object p2, p0, Lw2/i;->g:Lx2/l;

    iput-object p3, p0, Lw2/i;->h:Lw2/b;

    iput-object p4, p0, Lw2/i;->i:La3/g0;

    iput-object p5, p0, Lw2/i;->j:Lj2/d;

    iput-object p6, p0, Lw2/i;->k:La3/r;

    iput-object p7, p0, Lw2/i;->l:Lcom/google/android/gms/internal/play_billing/v;

    iput-object p8, p0, Lw2/i;->m:La3/b;

    iput-object p9, p0, Lw2/i;->p:Lc/a;

    iput-boolean p10, p0, Lw2/i;->q:Z

    iput p11, p0, Lw2/i;->r:I

    iput-boolean p12, p0, Lw2/i;->s:Z

    const/4 p1, 0x0

    new-array p2, p1, [Lt2/u;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance p3, Lh/a;

    const/16 p4, 0x12

    invoke-direct {p3, p2, p4}, Lh/a;-><init>(Ljava/lang/Object;I)V

    .line 2
    iput-object p3, p0, Lw2/i;->y:Lh/a;

    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Lw2/i;->n:Ljava/util/IdentityHashMap;

    new-instance p2, Lh/a;

    const/16 p3, 0x14

    invoke-direct {p2, p3}, Lh/a;-><init>(I)V

    iput-object p2, p0, Lw2/i;->o:Lh/a;

    new-array p2, p1, [Lw2/p;

    iput-object p2, p0, Lw2/i;->w:[Lw2/p;

    new-array p1, p1, [Lw2/p;

    iput-object p1, p0, Lw2/i;->x:[Lw2/p;

    .line 3
    iget-object p1, p7, Lcom/google/android/gms/internal/play_billing/v;->c:Ljava/lang/Object;

    .line 4
    check-cast p1, Lt2/f;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object p2, p7, Lcom/google/android/gms/internal/play_billing/v;->d:Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lt2/k;

    iget-object p4, p3, Lt2/k;->b:Lt2/n;

    new-instance p5, Lt2/h;

    const/4 p6, 0x2

    invoke-direct {p5, p7, p4, p1, p6}, Lt2/h;-><init>(Lcom/google/android/gms/internal/play_billing/v;Lt2/n;Lt2/f;I)V

    iget-object p3, p3, Lt2/k;->a:Landroid/os/Handler;

    invoke-static {p3, p5}, Lcom/google/android/gms/internal/play_billing/v;->i(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static d(Lf2/t;Lf2/t;Z)Lf2/t;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    iget-object v3, v1, Lf2/t;->f:Ljava/lang/String;

    iget-object v4, v1, Lf2/t;->g:Lp2/b;

    iget v5, v1, Lf2/t;->v:I

    iget v6, v1, Lf2/t;->c:I

    iget v7, v1, Lf2/t;->d:I

    iget-object v8, v1, Lf2/t;->A:Ljava/lang/String;

    iget-object v1, v1, Lf2/t;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lf2/t;->f:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3, v1}, Lb3/n;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lf2/t;->g:Lp2/b;

    if-eqz p2, :cond_1

    iget v5, v0, Lf2/t;->v:I

    iget v6, v0, Lf2/t;->c:I

    iget v7, v0, Lf2/t;->d:I

    iget-object v8, v0, Lf2/t;->A:Ljava/lang/String;

    iget-object v1, v0, Lf2/t;->b:Ljava/lang/String;

    :goto_0
    move-object v11, v3

    move-object v12, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move-object/from16 v17, v8

    move-object v8, v1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v8, v1

    move-object/from16 v17, v8

    move v14, v2

    move-object v11, v3

    move-object v12, v4

    move v15, v6

    move/from16 v16, v15

    :goto_1
    invoke-static {v11}, Lb3/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz p2, :cond_2

    iget v2, v0, Lf2/t;->e:I

    :cond_2
    move v13, v2

    iget-object v7, v0, Lf2/t;->a:Ljava/lang/String;

    iget-object v9, v0, Lf2/t;->h:Ljava/lang/String;

    invoke-static/range {v7 .. v17}, Lf2/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lp2/b;IIIILjava/lang/String;)Lf2/t;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b(Lt2/u;)V
    .locals 0

    .line 1
    check-cast p1, Lw2/p;

    .line 2
    .line 3
    iget-object p1, p0, Lw2/i;->t:Lt2/d;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lt2/t;->b(Lt2/u;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c(I[Landroid/net/Uri;[Lf2/t;Lf2/t;Ljava/util/List;Ljava/util/Map;J)Lw2/p;
    .locals 16

    .line 1
    move-object/from16 v13, p0

    new-instance v9, Lw2/f;

    iget-object v1, v13, Lw2/i;->f:Lw2/g;

    iget-object v2, v13, Lw2/i;->g:Lx2/l;

    iget-object v5, v13, Lw2/i;->h:Lw2/b;

    iget-object v6, v13, Lw2/i;->i:La3/g0;

    iget-object v7, v13, Lw2/i;->o:Lh/a;

    move-object v0, v9

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lw2/f;-><init>(Lw2/g;Lx2/l;[Landroid/net/Uri;[Lf2/t;Lw2/b;La3/g0;Lh/a;Ljava/util/List;)V

    new-instance v14, Lw2/p;

    iget-object v5, v13, Lw2/i;->m:La3/b;

    iget-object v10, v13, Lw2/i;->j:Lj2/d;

    iget-object v11, v13, Lw2/i;->k:La3/r;

    iget-object v12, v13, Lw2/i;->l:Lcom/google/android/gms/internal/play_billing/v;

    iget v15, v13, Lw2/i;->r:I

    move-object v0, v14

    move/from16 v1, p1

    move-object/from16 v2, p0

    move-object v3, v9

    move-object/from16 v4, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p4

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move v12, v15

    invoke-direct/range {v0 .. v12}, Lw2/p;-><init>(ILw2/i;Lw2/f;Ljava/util/Map;La3/b;JLf2/t;Lj2/d;La3/r;Lcom/google/android/gms/internal/play_billing/v;I)V

    return-object v14
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lw2/i;->y:Lh/a;

    invoke-virtual {v0}, Lh/a;->e()Z

    move-result v0

    return v0
.end method

.method public final f(JLf2/h0;)J
    .locals 0

    .line 1
    return-wide p1
.end method

.method public final g()Lt2/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lw2/i;->v:Lt2/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final h()V
    .locals 11

    .line 1
    iget v0, p0, Lw2/i;->u:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lw2/i;->u:I

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lw2/i;->w:[Lw2/p;

    .line 11
    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    move v4, v3

    .line 16
    :goto_0
    if-ge v3, v1, :cond_1

    .line 17
    .line 18
    aget-object v5, v0, v3

    .line 19
    .line 20
    invoke-virtual {v5}, Lw2/p;->d()V

    .line 21
    .line 22
    .line 23
    iget-object v5, v5, Lw2/p;->K:Lt2/x;

    .line 24
    .line 25
    iget v5, v5, Lt2/x;->a:I

    .line 26
    .line 27
    add-int/2addr v4, v5

    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-array v0, v4, [Lt2/w;

    .line 32
    .line 33
    iget-object v1, p0, Lw2/i;->w:[Lw2/p;

    .line 34
    .line 35
    array-length v3, v1

    .line 36
    move v4, v2

    .line 37
    move v5, v4

    .line 38
    :goto_1
    if-ge v4, v3, :cond_3

    .line 39
    .line 40
    aget-object v6, v1, v4

    .line 41
    .line 42
    invoke-virtual {v6}, Lw2/p;->d()V

    .line 43
    .line 44
    .line 45
    iget-object v7, v6, Lw2/p;->K:Lt2/x;

    .line 46
    .line 47
    iget v7, v7, Lt2/x;->a:I

    .line 48
    .line 49
    move v8, v2

    .line 50
    :goto_2
    if-ge v8, v7, :cond_2

    .line 51
    .line 52
    add-int/lit8 v9, v5, 0x1

    .line 53
    .line 54
    invoke-virtual {v6}, Lw2/p;->d()V

    .line 55
    .line 56
    .line 57
    iget-object v10, v6, Lw2/p;->K:Lt2/x;

    .line 58
    .line 59
    iget-object v10, v10, Lt2/x;->b:[Lt2/w;

    .line 60
    .line 61
    aget-object v10, v10, v8

    .line 62
    .line 63
    aput-object v10, v0, v5

    .line 64
    .line 65
    add-int/lit8 v8, v8, 0x1

    .line 66
    .line 67
    move v5, v9

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    new-instance v1, Lt2/x;

    .line 73
    .line 74
    invoke-direct {v1, v0}, Lt2/x;-><init>([Lt2/w;)V

    .line 75
    .line 76
    .line 77
    iput-object v1, p0, Lw2/i;->v:Lt2/x;

    .line 78
    .line 79
    iget-object v0, p0, Lw2/i;->t:Lt2/d;

    .line 80
    .line 81
    invoke-interface {v0, p0}, Lt2/d;->a(Lt2/e;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final k([Lz2/p;[Z[Lt2/s;[ZJ)J
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-wide/from16 v3, p5

    .line 8
    .line 9
    array-length v5, v0

    .line 10
    new-array v5, v5, [I

    .line 11
    .line 12
    array-length v6, v0

    .line 13
    new-array v6, v6, [I

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    :goto_0
    array-length v9, v0

    .line 17
    iget-object v10, v1, Lw2/i;->n:Ljava/util/IdentityHashMap;

    .line 18
    .line 19
    const/4 v11, -0x1

    .line 20
    if-ge v8, v9, :cond_3

    .line 21
    .line 22
    aget-object v9, v2, v8

    .line 23
    .line 24
    if-nez v9, :cond_0

    .line 25
    .line 26
    move v9, v11

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {v10, v9}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    check-cast v9, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v9

    .line 38
    :goto_1
    aput v9, v5, v8

    .line 39
    .line 40
    aput v11, v6, v8

    .line 41
    .line 42
    aget-object v9, v0, v8

    .line 43
    .line 44
    if-eqz v9, :cond_2

    .line 45
    .line 46
    check-cast v9, Lz2/d;

    .line 47
    .line 48
    iget-object v9, v9, Lz2/d;->a:Lt2/w;

    .line 49
    .line 50
    const/4 v10, 0x0

    .line 51
    :goto_2
    iget-object v12, v1, Lw2/i;->w:[Lw2/p;

    .line 52
    .line 53
    array-length v13, v12

    .line 54
    if-ge v10, v13, :cond_2

    .line 55
    .line 56
    aget-object v12, v12, v10

    .line 57
    .line 58
    invoke-virtual {v12}, Lw2/p;->d()V

    .line 59
    .line 60
    .line 61
    iget-object v12, v12, Lw2/p;->K:Lt2/x;

    .line 62
    .line 63
    invoke-virtual {v12, v9}, Lt2/x;->a(Lt2/w;)I

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    if-eq v12, v11, :cond_1

    .line 68
    .line 69
    aput v10, v6, v8

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {v10}, Ljava/util/IdentityHashMap;->clear()V

    .line 79
    .line 80
    .line 81
    array-length v8, v0

    .line 82
    new-array v9, v8, [Lt2/s;

    .line 83
    .line 84
    array-length v12, v0

    .line 85
    new-array v13, v12, [Lt2/s;

    .line 86
    .line 87
    array-length v14, v0

    .line 88
    new-array v15, v14, [Lz2/p;

    .line 89
    .line 90
    iget-object v7, v1, Lw2/i;->w:[Lw2/p;

    .line 91
    .line 92
    array-length v7, v7

    .line 93
    new-array v7, v7, [Lw2/p;

    .line 94
    .line 95
    move-object/from16 v18, v7

    .line 96
    .line 97
    move/from16 v16, v8

    .line 98
    .line 99
    const/4 v8, 0x0

    .line 100
    const/4 v11, 0x0

    .line 101
    const/16 v17, 0x0

    .line 102
    .line 103
    :goto_4
    iget-object v7, v1, Lw2/i;->w:[Lw2/p;

    .line 104
    .line 105
    array-length v7, v7

    .line 106
    if-ge v11, v7, :cond_2b

    .line 107
    .line 108
    move/from16 v19, v8

    .line 109
    .line 110
    const/4 v7, 0x0

    .line 111
    :goto_5
    array-length v8, v0

    .line 112
    move-object/from16 v20, v10

    .line 113
    .line 114
    if-ge v7, v8, :cond_6

    .line 115
    .line 116
    aget v8, v5, v7

    .line 117
    .line 118
    if-ne v8, v11, :cond_4

    .line 119
    .line 120
    aget-object v8, v2, v7

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_4
    const/4 v8, 0x0

    .line 124
    :goto_6
    aput-object v8, v13, v7

    .line 125
    .line 126
    aget v8, v6, v7

    .line 127
    .line 128
    if-ne v8, v11, :cond_5

    .line 129
    .line 130
    aget-object v10, v0, v7

    .line 131
    .line 132
    goto :goto_7

    .line 133
    :cond_5
    const/4 v10, 0x0

    .line 134
    :goto_7
    aput-object v10, v15, v7

    .line 135
    .line 136
    add-int/lit8 v7, v7, 0x1

    .line 137
    .line 138
    move-object/from16 v10, v20

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_6
    iget-object v7, v1, Lw2/i;->w:[Lw2/p;

    .line 142
    .line 143
    aget-object v7, v7, v11

    .line 144
    .line 145
    invoke-virtual {v7}, Lw2/p;->d()V

    .line 146
    .line 147
    .line 148
    iget v8, v7, Lw2/p;->G:I

    .line 149
    .line 150
    const/4 v10, 0x0

    .line 151
    :goto_8
    if-ge v10, v14, :cond_a

    .line 152
    .line 153
    aget-object v21, v13, v10

    .line 154
    .line 155
    move-object/from16 v2, v21

    .line 156
    .line 157
    check-cast v2, Lw2/l;

    .line 158
    .line 159
    if-eqz v2, :cond_9

    .line 160
    .line 161
    aget-object v21, v15, v10

    .line 162
    .line 163
    if-eqz v21, :cond_7

    .line 164
    .line 165
    aget-boolean v21, p2, v10

    .line 166
    .line 167
    if-nez v21, :cond_9

    .line 168
    .line 169
    :cond_7
    iget v1, v7, Lw2/p;->G:I

    .line 170
    .line 171
    move-object/from16 v21, v5

    .line 172
    .line 173
    const/4 v5, -0x1

    .line 174
    add-int/2addr v1, v5

    .line 175
    iput v1, v7, Lw2/p;->G:I

    .line 176
    .line 177
    iget v1, v2, Lw2/l;->h:I

    .line 178
    .line 179
    if-eq v1, v5, :cond_8

    .line 180
    .line 181
    iget-object v1, v2, Lw2/l;->g:Lw2/p;

    .line 182
    .line 183
    invoke-virtual {v1}, Lw2/p;->d()V

    .line 184
    .line 185
    .line 186
    iget-object v5, v1, Lw2/p;->M:[I

    .line 187
    .line 188
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    iget-object v5, v1, Lw2/p;->M:[I

    .line 192
    .line 193
    move-object/from16 v22, v9

    .line 194
    .line 195
    iget v9, v2, Lw2/l;->f:I

    .line 196
    .line 197
    aget v5, v5, v9

    .line 198
    .line 199
    iget-object v9, v1, Lw2/p;->P:[Z

    .line 200
    .line 201
    aget-boolean v9, v9, v5

    .line 202
    .line 203
    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 204
    .line 205
    .line 206
    iget-object v1, v1, Lw2/p;->P:[Z

    .line 207
    .line 208
    const/4 v9, 0x0

    .line 209
    aput-boolean v9, v1, v5

    .line 210
    .line 211
    const/4 v1, -0x1

    .line 212
    iput v1, v2, Lw2/l;->h:I

    .line 213
    .line 214
    goto :goto_9

    .line 215
    :cond_8
    move v1, v5

    .line 216
    move-object/from16 v22, v9

    .line 217
    .line 218
    :goto_9
    const/4 v2, 0x0

    .line 219
    aput-object v2, v13, v10

    .line 220
    .line 221
    goto :goto_a

    .line 222
    :cond_9
    move-object/from16 v21, v5

    .line 223
    .line 224
    move-object/from16 v22, v9

    .line 225
    .line 226
    const/4 v1, -0x1

    .line 227
    :goto_a
    add-int/lit8 v10, v10, 0x1

    .line 228
    .line 229
    move-object/from16 v1, p0

    .line 230
    .line 231
    move-object/from16 v2, p3

    .line 232
    .line 233
    move-object/from16 v5, v21

    .line 234
    .line 235
    move-object/from16 v9, v22

    .line 236
    .line 237
    goto :goto_8

    .line 238
    :cond_a
    move-object/from16 v21, v5

    .line 239
    .line 240
    move-object/from16 v22, v9

    .line 241
    .line 242
    const/4 v1, -0x1

    .line 243
    if-nez v17, :cond_d

    .line 244
    .line 245
    iget-boolean v5, v7, Lw2/p;->U:Z

    .line 246
    .line 247
    if-eqz v5, :cond_b

    .line 248
    .line 249
    if-nez v8, :cond_c

    .line 250
    .line 251
    goto :goto_b

    .line 252
    :cond_b
    iget-wide v8, v7, Lw2/p;->R:J

    .line 253
    .line 254
    cmp-long v5, v3, v8

    .line 255
    .line 256
    if-eqz v5, :cond_c

    .line 257
    .line 258
    goto :goto_b

    .line 259
    :cond_c
    const/4 v5, 0x0

    .line 260
    goto :goto_c

    .line 261
    :cond_d
    :goto_b
    const/4 v5, 0x1

    .line 262
    :goto_c
    iget-object v8, v7, Lw2/p;->h:Lw2/f;

    .line 263
    .line 264
    iget-object v9, v8, Lw2/f;->p:Lz2/p;

    .line 265
    .line 266
    move-object v1, v9

    .line 267
    const/4 v10, 0x0

    .line 268
    :goto_d
    if-ge v10, v14, :cond_12

    .line 269
    .line 270
    aget-object v2, v15, v10

    .line 271
    .line 272
    move/from16 v23, v14

    .line 273
    .line 274
    if-nez v2, :cond_e

    .line 275
    .line 276
    move-object/from16 v24, v15

    .line 277
    .line 278
    goto :goto_f

    .line 279
    :cond_e
    iget-object v14, v7, Lw2/p;->K:Lt2/x;

    .line 280
    .line 281
    move-object/from16 v24, v15

    .line 282
    .line 283
    move-object v15, v2

    .line 284
    check-cast v15, Lz2/d;

    .line 285
    .line 286
    iget-object v15, v15, Lz2/d;->a:Lt2/w;

    .line 287
    .line 288
    invoke-virtual {v14, v15}, Lt2/x;->a(Lt2/w;)I

    .line 289
    .line 290
    .line 291
    move-result v14

    .line 292
    iget v15, v7, Lw2/p;->N:I

    .line 293
    .line 294
    if-ne v14, v15, :cond_f

    .line 295
    .line 296
    iput-object v2, v8, Lw2/f;->p:Lz2/p;

    .line 297
    .line 298
    move-object v1, v2

    .line 299
    :cond_f
    aget-object v2, v13, v10

    .line 300
    .line 301
    if-nez v2, :cond_11

    .line 302
    .line 303
    iget v2, v7, Lw2/p;->G:I

    .line 304
    .line 305
    const/4 v15, 0x1

    .line 306
    add-int/2addr v2, v15

    .line 307
    iput v2, v7, Lw2/p;->G:I

    .line 308
    .line 309
    new-instance v2, Lw2/l;

    .line 310
    .line 311
    invoke-direct {v2, v7, v14}, Lw2/l;-><init>(Lw2/p;I)V

    .line 312
    .line 313
    .line 314
    aput-object v2, v13, v10

    .line 315
    .line 316
    aput-boolean v15, p4, v10

    .line 317
    .line 318
    iget-object v15, v7, Lw2/p;->M:[I

    .line 319
    .line 320
    if-eqz v15, :cond_11

    .line 321
    .line 322
    invoke-virtual {v2}, Lw2/l;->a()V

    .line 323
    .line 324
    .line 325
    if-nez v5, :cond_11

    .line 326
    .line 327
    iget-object v2, v7, Lw2/p;->x:[Lw2/o;

    .line 328
    .line 329
    iget-object v5, v7, Lw2/p;->M:[I

    .line 330
    .line 331
    aget v5, v5, v14

    .line 332
    .line 333
    aget-object v2, v2, v5

    .line 334
    .line 335
    const/4 v5, 0x1

    .line 336
    invoke-virtual {v2, v3, v4, v5}, Lw2/o;->l(JZ)Z

    .line 337
    .line 338
    .line 339
    move-result v14

    .line 340
    if-nez v14, :cond_10

    .line 341
    .line 342
    iget v5, v2, Lw2/o;->p:I

    .line 343
    .line 344
    iget v2, v2, Lw2/o;->r:I

    .line 345
    .line 346
    add-int/2addr v5, v2

    .line 347
    if-eqz v5, :cond_10

    .line 348
    .line 349
    const/4 v2, 0x1

    .line 350
    goto :goto_e

    .line 351
    :cond_10
    const/4 v2, 0x0

    .line 352
    :goto_e
    move v5, v2

    .line 353
    :cond_11
    :goto_f
    add-int/lit8 v10, v10, 0x1

    .line 354
    .line 355
    move/from16 v14, v23

    .line 356
    .line 357
    move-object/from16 v15, v24

    .line 358
    .line 359
    goto :goto_d

    .line 360
    :cond_12
    move/from16 v23, v14

    .line 361
    .line 362
    move-object/from16 v24, v15

    .line 363
    .line 364
    iget v2, v7, Lw2/p;->G:I

    .line 365
    .line 366
    iget-object v10, v7, Lw2/p;->q:Ljava/util/ArrayList;

    .line 367
    .line 368
    if-nez v2, :cond_18

    .line 369
    .line 370
    const/4 v2, 0x0

    .line 371
    iput-object v2, v8, Lw2/f;->m:Lcom/google/android/gms/internal/play_billing/c0;

    .line 372
    .line 373
    iput-object v2, v7, Lw2/p;->I:Lf2/t;

    .line 374
    .line 375
    const/4 v1, 0x1

    .line 376
    iput-boolean v1, v7, Lw2/p;->T:Z

    .line 377
    .line 378
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 379
    .line 380
    .line 381
    iget-object v1, v7, Lw2/p;->m:La3/c0;

    .line 382
    .line 383
    iget-object v2, v1, La3/c0;->b:La3/y;

    .line 384
    .line 385
    if-eqz v2, :cond_13

    .line 386
    .line 387
    const/4 v2, 0x1

    .line 388
    goto :goto_10

    .line 389
    :cond_13
    const/4 v2, 0x0

    .line 390
    :goto_10
    if-eqz v2, :cond_17

    .line 391
    .line 392
    iget-boolean v2, v7, Lw2/p;->E:Z

    .line 393
    .line 394
    if-eqz v2, :cond_15

    .line 395
    .line 396
    iget-object v2, v7, Lw2/p;->x:[Lw2/o;

    .line 397
    .line 398
    array-length v8, v2

    .line 399
    const/4 v9, 0x0

    .line 400
    :goto_11
    if-ge v9, v8, :cond_15

    .line 401
    .line 402
    aget-object v10, v2, v9

    .line 403
    .line 404
    iget-object v14, v10, Lw2/o;->a:Lt2/p;

    .line 405
    .line 406
    monitor-enter v10

    .line 407
    :try_start_0
    iget v15, v10, Lw2/o;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    .line 409
    if-nez v15, :cond_14

    .line 410
    .line 411
    monitor-exit v10

    .line 412
    const-wide/16 v25, -0x1

    .line 413
    .line 414
    :goto_12
    move v15, v11

    .line 415
    move-wide/from16 v10, v25

    .line 416
    .line 417
    goto :goto_13

    .line 418
    :cond_14
    :try_start_1
    invoke-virtual {v10, v15}, Lw2/o;->e(I)J

    .line 419
    .line 420
    .line 421
    move-result-wide v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 422
    monitor-exit v10

    .line 423
    goto :goto_12

    .line 424
    :goto_13
    invoke-virtual {v14, v10, v11}, Lt2/p;->a(J)V

    .line 425
    .line 426
    .line 427
    add-int/lit8 v9, v9, 0x1

    .line 428
    .line 429
    move v11, v15

    .line 430
    goto :goto_11

    .line 431
    :catchall_0
    move-exception v0

    .line 432
    monitor-exit v10

    .line 433
    throw v0

    .line 434
    :cond_15
    move v15, v11

    .line 435
    iget-object v1, v1, La3/c0;->b:La3/y;

    .line 436
    .line 437
    if-eqz v1, :cond_16

    .line 438
    .line 439
    const/4 v2, 0x0

    .line 440
    invoke-virtual {v1, v2}, La3/y;->a(Z)V

    .line 441
    .line 442
    .line 443
    goto :goto_14

    .line 444
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 445
    .line 446
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 447
    .line 448
    .line 449
    throw v0

    .line 450
    :cond_17
    move v15, v11

    .line 451
    invoke-virtual {v7}, Lw2/p;->A()V

    .line 452
    .line 453
    .line 454
    :goto_14
    move v11, v15

    .line 455
    goto :goto_19

    .line 456
    :cond_18
    move v15, v11

    .line 457
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    if-nez v2, :cond_1c

    .line 462
    .line 463
    invoke-static {v1, v9}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v2

    .line 467
    if-nez v2, :cond_1c

    .line 468
    .line 469
    iget-boolean v2, v7, Lw2/p;->U:Z

    .line 470
    .line 471
    if-nez v2, :cond_1b

    .line 472
    .line 473
    const-wide/16 v9, 0x0

    .line 474
    .line 475
    cmp-long v2, v3, v9

    .line 476
    .line 477
    if-gez v2, :cond_19

    .line 478
    .line 479
    neg-long v9, v3

    .line 480
    :cond_19
    invoke-virtual {v7}, Lw2/p;->l()Lw2/h;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    invoke-virtual {v8, v2, v3, v4}, Lw2/f;->a(Lw2/h;J)[Lv2/c;

    .line 485
    .line 486
    .line 487
    move v11, v15

    .line 488
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    invoke-interface {v1, v9, v10, v14, v15}, Lz2/p;->c(JJ)V

    .line 494
    .line 495
    .line 496
    iget-object v8, v8, Lw2/f;->h:Lt2/w;

    .line 497
    .line 498
    iget-object v2, v2, Lv2/a;->c:Lf2/t;

    .line 499
    .line 500
    invoke-virtual {v8, v2}, Lt2/w;->a(Lf2/t;)I

    .line 501
    .line 502
    .line 503
    move-result v2

    .line 504
    check-cast v1, Lz2/d;

    .line 505
    .line 506
    iget-object v8, v1, Lz2/d;->c:[I

    .line 507
    .line 508
    invoke-interface {v1}, Lz2/p;->b()I

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    aget v1, v8, v1

    .line 513
    .line 514
    if-eq v1, v2, :cond_1a

    .line 515
    .line 516
    goto :goto_15

    .line 517
    :cond_1a
    const/4 v1, 0x0

    .line 518
    goto :goto_16

    .line 519
    :cond_1b
    move v11, v15

    .line 520
    :goto_15
    const/4 v1, 0x1

    .line 521
    :goto_16
    if-eqz v1, :cond_1d

    .line 522
    .line 523
    const/4 v1, 0x1

    .line 524
    iput-boolean v1, v7, Lw2/p;->T:Z

    .line 525
    .line 526
    const/4 v1, 0x1

    .line 527
    const/4 v5, 0x1

    .line 528
    goto :goto_17

    .line 529
    :cond_1c
    move v11, v15

    .line 530
    :cond_1d
    move/from16 v1, v17

    .line 531
    .line 532
    :goto_17
    if-eqz v5, :cond_1f

    .line 533
    .line 534
    invoke-virtual {v7, v3, v4, v1}, Lw2/p;->B(JZ)Z

    .line 535
    .line 536
    .line 537
    const/4 v1, 0x0

    .line 538
    :goto_18
    if-ge v1, v12, :cond_1f

    .line 539
    .line 540
    aget-object v2, v13, v1

    .line 541
    .line 542
    if-eqz v2, :cond_1e

    .line 543
    .line 544
    const/4 v2, 0x1

    .line 545
    aput-boolean v2, p4, v1

    .line 546
    .line 547
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    .line 548
    .line 549
    goto :goto_18

    .line 550
    :cond_1f
    :goto_19
    iget-object v1, v7, Lw2/p;->v:Ljava/util/ArrayList;

    .line 551
    .line 552
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 553
    .line 554
    .line 555
    const/4 v2, 0x0

    .line 556
    :goto_1a
    if-ge v2, v12, :cond_21

    .line 557
    .line 558
    aget-object v8, v13, v2

    .line 559
    .line 560
    if-eqz v8, :cond_20

    .line 561
    .line 562
    check-cast v8, Lw2/l;

    .line 563
    .line 564
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    :cond_20
    add-int/lit8 v2, v2, 0x1

    .line 568
    .line 569
    goto :goto_1a

    .line 570
    :cond_21
    const/4 v2, 0x1

    .line 571
    iput-boolean v2, v7, Lw2/p;->U:Z

    .line 572
    .line 573
    const/4 v1, 0x0

    .line 574
    const/4 v2, 0x0

    .line 575
    :goto_1b
    array-length v8, v0

    .line 576
    if-ge v1, v8, :cond_25

    .line 577
    .line 578
    aget-object v8, v13, v1

    .line 579
    .line 580
    aget v9, v6, v1

    .line 581
    .line 582
    move v10, v11

    .line 583
    if-ne v9, v10, :cond_22

    .line 584
    .line 585
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 586
    .line 587
    .line 588
    aput-object v8, v22, v1

    .line 589
    .line 590
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    move-object/from16 v9, v20

    .line 595
    .line 596
    invoke-virtual {v9, v8, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    const/4 v2, 0x1

    .line 600
    goto :goto_1d

    .line 601
    :cond_22
    move-object/from16 v9, v20

    .line 602
    .line 603
    aget v11, v21, v1

    .line 604
    .line 605
    if-ne v11, v10, :cond_24

    .line 606
    .line 607
    if-nez v8, :cond_23

    .line 608
    .line 609
    const/4 v8, 0x1

    .line 610
    goto :goto_1c

    .line 611
    :cond_23
    const/4 v8, 0x0

    .line 612
    :goto_1c
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 613
    .line 614
    .line 615
    :cond_24
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    .line 616
    .line 617
    move-object/from16 v20, v9

    .line 618
    .line 619
    move v11, v10

    .line 620
    goto :goto_1b

    .line 621
    :cond_25
    move v10, v11

    .line 622
    move-object/from16 v9, v20

    .line 623
    .line 624
    if-eqz v2, :cond_2a

    .line 625
    .line 626
    aput-object v7, v18, v19

    .line 627
    .line 628
    add-int/lit8 v8, v19, 0x1

    .line 629
    .line 630
    iget-object v1, v7, Lw2/p;->h:Lw2/f;

    .line 631
    .line 632
    if-nez v19, :cond_29

    .line 633
    .line 634
    const/4 v2, 0x1

    .line 635
    iput-boolean v2, v1, Lw2/f;->k:Z

    .line 636
    .line 637
    if-nez v5, :cond_26

    .line 638
    .line 639
    move-object/from16 v5, p0

    .line 640
    .line 641
    iget-object v1, v5, Lw2/i;->x:[Lw2/p;

    .line 642
    .line 643
    array-length v11, v1

    .line 644
    if-eqz v11, :cond_27

    .line 645
    .line 646
    const/4 v11, 0x0

    .line 647
    aget-object v1, v1, v11

    .line 648
    .line 649
    if-eq v7, v1, :cond_28

    .line 650
    .line 651
    goto :goto_1e

    .line 652
    :cond_26
    move-object/from16 v5, p0

    .line 653
    .line 654
    :cond_27
    :goto_1e
    iget-object v1, v5, Lw2/i;->o:Lh/a;

    .line 655
    .line 656
    iget-object v1, v1, Lh/a;->g:Ljava/lang/Object;

    .line 657
    .line 658
    check-cast v1, Landroid/util/SparseArray;

    .line 659
    .line 660
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 661
    .line 662
    .line 663
    move/from16 v17, v2

    .line 664
    .line 665
    :cond_28
    const/4 v2, 0x0

    .line 666
    goto :goto_1f

    .line 667
    :cond_29
    const/4 v2, 0x0

    .line 668
    move-object/from16 v5, p0

    .line 669
    .line 670
    iput-boolean v2, v1, Lw2/f;->k:Z

    .line 671
    .line 672
    goto :goto_1f

    .line 673
    :cond_2a
    const/4 v2, 0x0

    .line 674
    move-object/from16 v5, p0

    .line 675
    .line 676
    move/from16 v8, v19

    .line 677
    .line 678
    :goto_1f
    add-int/lit8 v11, v10, 0x1

    .line 679
    .line 680
    move-object/from16 v2, p3

    .line 681
    .line 682
    move-object v1, v5

    .line 683
    move-object v10, v9

    .line 684
    move-object/from16 v5, v21

    .line 685
    .line 686
    move-object/from16 v9, v22

    .line 687
    .line 688
    move/from16 v14, v23

    .line 689
    .line 690
    move-object/from16 v15, v24

    .line 691
    .line 692
    goto/16 :goto_4

    .line 693
    .line 694
    :cond_2b
    move-object v5, v1

    .line 695
    move-object v1, v2

    .line 696
    move/from16 v19, v8

    .line 697
    .line 698
    move-object v8, v9

    .line 699
    move/from16 v7, v16

    .line 700
    .line 701
    const/4 v2, 0x0

    .line 702
    invoke-static {v8, v2, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 703
    .line 704
    .line 705
    move-object/from16 v0, v18

    .line 706
    .line 707
    move/from16 v8, v19

    .line 708
    .line 709
    invoke-static {v0, v8}, Lb3/n;->g([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    check-cast v0, [Lw2/p;

    .line 714
    .line 715
    iput-object v0, v5, Lw2/i;->x:[Lw2/p;

    .line 716
    .line 717
    iget-object v1, v5, Lw2/i;->p:Lc/a;

    .line 718
    .line 719
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 720
    .line 721
    .line 722
    new-instance v1, Lh/a;

    .line 723
    .line 724
    const/16 v2, 0x12

    .line 725
    .line 726
    invoke-direct {v1, v0, v2}, Lh/a;-><init>(Ljava/lang/Object;I)V

    .line 727
    .line 728
    .line 729
    iput-object v1, v5, Lw2/i;->y:Lh/a;

    .line 730
    .line 731
    return-wide v3
.end method

.method public final m()J
    .locals 2

    .line 1
    iget-object v0, p0, Lw2/i;->y:Lh/a;

    invoke-virtual {v0}, Lh/a;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public final n()V
    .locals 5

    .line 1
    iget-object v0, p0, Lw2/i;->w:[Lw2/p;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_2

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3}, Lw2/p;->w()V

    .line 10
    .line 11
    .line 12
    iget-boolean v4, v3, Lw2/p;->V:Z

    .line 13
    .line 14
    if-eqz v4, :cond_1

    .line 15
    .line 16
    iget-boolean v3, v3, Lw2/p;->F:Z

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lf2/z;

    .line 22
    .line 23
    const-string v1, "Loading finished before preparation is complete."

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-void
.end method

.method public final o(JZ)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lw2/i;->x:[Lw2/p;

    .line 4
    .line 5
    array-length v2, v0

    .line 6
    const/4 v3, 0x0

    .line 7
    move v4, v3

    .line 8
    :goto_0
    if-ge v4, v2, :cond_6

    .line 9
    .line 10
    aget-object v5, v0, v4

    .line 11
    .line 12
    iget-boolean v6, v5, Lw2/p;->E:Z

    .line 13
    .line 14
    if-eqz v6, :cond_5

    .line 15
    .line 16
    invoke-virtual {v5}, Lw2/p;->q()Z

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    goto :goto_5

    .line 23
    :cond_0
    iget-object v6, v5, Lw2/p;->x:[Lw2/o;

    .line 24
    .line 25
    array-length v6, v6

    .line 26
    move v7, v3

    .line 27
    :goto_1
    if-ge v7, v6, :cond_5

    .line 28
    .line 29
    iget-object v8, v5, Lw2/p;->x:[Lw2/o;

    .line 30
    .line 31
    aget-object v8, v8, v7

    .line 32
    .line 33
    iget-object v9, v5, Lw2/p;->P:[Z

    .line 34
    .line 35
    aget-boolean v9, v9, v7

    .line 36
    .line 37
    iget-object v15, v8, Lw2/o;->a:Lt2/p;

    .line 38
    .line 39
    monitor-enter v8

    .line 40
    :try_start_0
    iget v10, v8, Lw2/o;->o:I

    .line 41
    .line 42
    if-eqz v10, :cond_4

    .line 43
    .line 44
    iget-object v11, v8, Lw2/o;->l:[J

    .line 45
    .line 46
    iget v12, v8, Lw2/o;->q:I

    .line 47
    .line 48
    aget-wide v13, v11, v12

    .line 49
    .line 50
    cmp-long v11, p1, v13

    .line 51
    .line 52
    if-gez v11, :cond_1

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_1
    if-eqz v9, :cond_2

    .line 56
    .line 57
    iget v9, v8, Lw2/o;->r:I

    .line 58
    .line 59
    if-eq v9, v10, :cond_2

    .line 60
    .line 61
    add-int/lit8 v9, v9, 0x1

    .line 62
    .line 63
    move v11, v9

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    move v11, v10

    .line 66
    :goto_2
    move-object v9, v8

    .line 67
    move v10, v12

    .line 68
    move-wide/from16 v12, p1

    .line 69
    .line 70
    move/from16 v14, p3

    .line 71
    .line 72
    invoke-virtual/range {v9 .. v14}, Lw2/o;->g(IIJZ)I

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    const/4 v10, -0x1

    .line 77
    if-ne v9, v10, :cond_3

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_3
    invoke-virtual {v8, v9}, Lw2/o;->e(I)J

    .line 81
    .line 82
    .line 83
    move-result-wide v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    goto :goto_4

    .line 85
    :cond_4
    :goto_3
    const-wide/16 v9, -0x1

    .line 86
    .line 87
    :goto_4
    monitor-exit v8

    .line 88
    invoke-virtual {v15, v9, v10}, Lt2/p;->a(J)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v7, v7, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    monitor-exit v8

    .line 96
    throw v0

    .line 97
    :cond_5
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    return-void
.end method

.method public final r(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lw2/i;->x:[Lw2/p;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-lez v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aget-object v0, v0, v1

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, v1}, Lw2/p;->B(JZ)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    :goto_0
    iget-object v2, p0, Lw2/i;->x:[Lw2/p;

    .line 15
    .line 16
    array-length v3, v2

    .line 17
    if-ge v1, v3, :cond_0

    .line 18
    .line 19
    aget-object v2, v2, v1

    .line 20
    .line 21
    invoke-virtual {v2, p1, p2, v0}, Lw2/p;->B(JZ)Z

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lw2/i;->o:Lh/a;

    .line 30
    .line 31
    iget-object v0, v0, Lh/a;->g:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-wide p1
.end method

.method public final t()J
    .locals 2

    .line 1
    iget-object v0, p0, Lw2/i;->y:Lh/a;

    invoke-virtual {v0}, Lh/a;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public final u()J
    .locals 7

    .line 1
    iget-boolean v0, p0, Lw2/i;->z:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lw2/i;->l:Lcom/google/android/gms/internal/play_billing/v;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/v;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lt2/f;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/v;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x1

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lt2/k;

    .line 34
    .line 35
    iget-object v5, v3, Lt2/k;->b:Lt2/n;

    .line 36
    .line 37
    new-instance v6, Lt2/h;

    .line 38
    .line 39
    invoke-direct {v6, v0, v5, v1, v4}, Lt2/h;-><init>(Lcom/google/android/gms/internal/play_billing/v;Lt2/n;Lt2/f;I)V

    .line 40
    .line 41
    .line 42
    iget-object v3, v3, Lt2/k;->a:Landroid/os/Handler;

    .line 43
    .line 44
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/play_billing/v;->i(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iput-boolean v4, p0, Lw2/i;->z:Z

    .line 49
    .line 50
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    return-wide v0
.end method

.method public final v(J)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lw2/i;->v:Lt2/x;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object p1, p0, Lw2/i;->w:[Lw2/p;

    .line 6
    .line 7
    array-length p2, p1

    .line 8
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    :goto_0
    if-ge v1, p2, :cond_1

    .line 11
    .line 12
    aget-object v2, p1, v1

    .line 13
    .line 14
    iget-boolean v3, v2, Lw2/p;->F:Z

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    iget-wide v3, v2, Lw2/p;->R:J

    .line 19
    .line 20
    invoke-virtual {v2, v3, v4}, Lw2/p;->v(J)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return v0

    .line 27
    :cond_2
    iget-object v0, p0, Lw2/i;->y:Lh/a;

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Lh/a;->v(J)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public final x(Lt2/d;J)V
    .locals 37

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iput-object v0, v9, Lw2/i;->t:Lt2/d;

    .line 6
    .line 7
    iget-object v0, v9, Lw2/i;->g:Lx2/l;

    .line 8
    .line 9
    check-cast v0, Lx2/b;

    .line 10
    .line 11
    iget-object v1, v0, Lx2/b;->j:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget-object v10, v0, Lx2/b;->p:Lx2/e;

    .line 17
    .line 18
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-boolean v0, v9, Lw2/i;->s:Z

    .line 22
    .line 23
    const/4 v11, 0x0

    .line 24
    const/4 v12, 0x1

    .line 25
    if-eqz v0, :cond_5

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    iget-object v1, v10, Lx2/e;->m:Ljava/util/List;

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    move v3, v11

    .line 40
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-ge v3, v4, :cond_6

    .line 45
    .line 46
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Lj2/b;

    .line 51
    .line 52
    iget-object v5, v4, Lj2/b;->c:Ljava/lang/String;

    .line 53
    .line 54
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    move v6, v3

    .line 57
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-ge v6, v7, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    check-cast v7, Lj2/b;

    .line 68
    .line 69
    iget-object v8, v7, Lj2/b;->c:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-eqz v8, :cond_3

    .line 76
    .line 77
    iget-object v8, v4, Lj2/b;->c:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v13, v7, Lj2/b;->c:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz v8, :cond_1

    .line 82
    .line 83
    if-eqz v13, :cond_1

    .line 84
    .line 85
    invoke-static {v8, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v14

    .line 89
    if-eqz v14, :cond_0

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_0
    move v14, v11

    .line 93
    goto :goto_3

    .line 94
    :cond_1
    :goto_2
    move v14, v12

    .line 95
    :goto_3
    invoke-static {v14}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 96
    .line 97
    .line 98
    if-eqz v8, :cond_2

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_2
    move-object v8, v13

    .line 102
    :goto_4
    sget v13, Lb3/n;->a:I

    .line 103
    .line 104
    iget-object v4, v4, Lj2/b;->a:[Lj2/a;

    .line 105
    .line 106
    array-length v13, v4

    .line 107
    iget-object v7, v7, Lj2/b;->a:[Lj2/a;

    .line 108
    .line 109
    array-length v14, v7

    .line 110
    add-int/2addr v13, v14

    .line 111
    invoke-static {v4, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v13

    .line 115
    array-length v4, v4

    .line 116
    array-length v14, v7

    .line 117
    invoke-static {v7, v11, v13, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    .line 119
    .line 120
    check-cast v13, [Lj2/a;

    .line 121
    .line 122
    new-instance v4, Lj2/b;

    .line 123
    .line 124
    invoke-direct {v4, v8, v12, v13}, Lj2/b;-><init>(Ljava/lang/String;Z[Lj2/a;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    :cond_6
    move-object v13, v2

    .line 143
    iget-object v0, v10, Lx2/e;->e:Ljava/util/List;

    .line 144
    .line 145
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    xor-int/2addr v1, v12

    .line 150
    iput v11, v9, Lw2/i;->u:I

    .line 151
    .line 152
    new-instance v14, Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .line 156
    .line 157
    new-instance v15, Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .line 161
    .line 162
    iget-boolean v7, v9, Lw2/i;->q:Z

    .line 163
    .line 164
    iget-object v8, v10, Lx2/e;->g:Ljava/util/List;

    .line 165
    .line 166
    if-eqz v1, :cond_1a

    .line 167
    .line 168
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    new-array v2, v1, [I

    .line 173
    .line 174
    move v3, v11

    .line 175
    move v4, v3

    .line 176
    move v5, v4

    .line 177
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    const/4 v11, 0x2

    .line 182
    if-ge v3, v6, :cond_a

    .line 183
    .line 184
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    check-cast v6, Lx2/d;

    .line 189
    .line 190
    iget-object v6, v6, Lx2/d;->b:Lf2/t;

    .line 191
    .line 192
    iget v12, v6, Lf2/t;->o:I

    .line 193
    .line 194
    if-gtz v12, :cond_9

    .line 195
    .line 196
    iget-object v6, v6, Lf2/t;->f:Ljava/lang/String;

    .line 197
    .line 198
    invoke-static {v11, v6}, Lb3/n;->d(ILjava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v12

    .line 202
    if-eqz v12, :cond_7

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :cond_7
    const/4 v12, 0x1

    .line 206
    invoke-static {v12, v6}, Lb3/n;->d(ILjava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    if-eqz v6, :cond_8

    .line 211
    .line 212
    aput v12, v2, v3

    .line 213
    .line 214
    add-int/lit8 v5, v5, 0x1

    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_8
    const/4 v6, -0x1

    .line 218
    aput v6, v2, v3

    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_9
    :goto_6
    aput v11, v2, v3

    .line 222
    .line 223
    add-int/lit8 v4, v4, 0x1

    .line 224
    .line 225
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 226
    .line 227
    const/4 v11, 0x0

    .line 228
    const/4 v12, 0x1

    .line 229
    goto :goto_5

    .line 230
    :cond_a
    if-lez v4, :cond_b

    .line 231
    .line 232
    const/4 v1, 0x1

    .line 233
    goto :goto_8

    .line 234
    :cond_b
    if-ge v5, v1, :cond_c

    .line 235
    .line 236
    sub-int/2addr v1, v5

    .line 237
    move v12, v1

    .line 238
    const/4 v1, 0x0

    .line 239
    const/4 v3, 0x1

    .line 240
    goto :goto_9

    .line 241
    :cond_c
    move v4, v1

    .line 242
    const/4 v1, 0x0

    .line 243
    :goto_8
    move v12, v4

    .line 244
    const/4 v3, 0x0

    .line 245
    :goto_9
    new-array v4, v12, [Landroid/net/Uri;

    .line 246
    .line 247
    new-array v6, v12, [Lf2/t;

    .line 248
    .line 249
    new-array v5, v12, [I

    .line 250
    .line 251
    move/from16 v18, v7

    .line 252
    .line 253
    const/4 v11, 0x0

    .line 254
    const/16 v17, 0x0

    .line 255
    .line 256
    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    if-ge v11, v7, :cond_10

    .line 261
    .line 262
    if-eqz v1, :cond_d

    .line 263
    .line 264
    aget v7, v2, v11

    .line 265
    .line 266
    move/from16 v19, v1

    .line 267
    .line 268
    const/4 v1, 0x2

    .line 269
    if-ne v7, v1, :cond_f

    .line 270
    .line 271
    goto :goto_b

    .line 272
    :cond_d
    move/from16 v19, v1

    .line 273
    .line 274
    :goto_b
    if-eqz v3, :cond_e

    .line 275
    .line 276
    aget v1, v2, v11

    .line 277
    .line 278
    const/4 v7, 0x1

    .line 279
    if-eq v1, v7, :cond_f

    .line 280
    .line 281
    :cond_e
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    check-cast v1, Lx2/d;

    .line 286
    .line 287
    iget-object v7, v1, Lx2/d;->a:Landroid/net/Uri;

    .line 288
    .line 289
    aput-object v7, v4, v17

    .line 290
    .line 291
    iget-object v1, v1, Lx2/d;->b:Lf2/t;

    .line 292
    .line 293
    aput-object v1, v6, v17

    .line 294
    .line 295
    add-int/lit8 v1, v17, 0x1

    .line 296
    .line 297
    aput v11, v5, v17

    .line 298
    .line 299
    move/from16 v17, v1

    .line 300
    .line 301
    :cond_f
    add-int/lit8 v11, v11, 0x1

    .line 302
    .line 303
    move/from16 v1, v19

    .line 304
    .line 305
    goto :goto_a

    .line 306
    :cond_10
    const/4 v1, 0x0

    .line 307
    aget-object v0, v6, v1

    .line 308
    .line 309
    iget-object v11, v0, Lf2/t;->f:Ljava/lang/String;

    .line 310
    .line 311
    const/4 v1, 0x0

    .line 312
    iget-object v7, v10, Lx2/e;->j:Lf2/t;

    .line 313
    .line 314
    iget-object v3, v10, Lx2/e;->k:Ljava/util/List;

    .line 315
    .line 316
    move-object/from16 v0, p0

    .line 317
    .line 318
    move-object v2, v4

    .line 319
    move-object/from16 v17, v3

    .line 320
    .line 321
    move-object v3, v6

    .line 322
    move-object v4, v7

    .line 323
    move-object v7, v5

    .line 324
    move-object/from16 v5, v17

    .line 325
    .line 326
    move-object/from16 v17, v6

    .line 327
    .line 328
    move-object v6, v13

    .line 329
    move-object v9, v7

    .line 330
    move-object/from16 v19, v8

    .line 331
    .line 332
    move-wide/from16 v7, p2

    .line 333
    .line 334
    invoke-virtual/range {v0 .. v8}, Lw2/i;->c(I[Landroid/net/Uri;[Lf2/t;Lf2/t;Ljava/util/List;Ljava/util/Map;J)Lw2/p;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    if-eqz v18, :cond_1b

    .line 345
    .line 346
    if-eqz v11, :cond_1b

    .line 347
    .line 348
    const/4 v1, 0x2

    .line 349
    invoke-static {v1, v11}, Lb3/n;->d(ILjava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    if-eqz v2, :cond_11

    .line 354
    .line 355
    const/4 v1, 0x1

    .line 356
    goto :goto_c

    .line 357
    :cond_11
    const/4 v1, 0x0

    .line 358
    :goto_c
    const/4 v2, 0x1

    .line 359
    invoke-static {v2, v11}, Lb3/n;->d(ILjava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    if-eqz v3, :cond_12

    .line 364
    .line 365
    const/4 v2, 0x1

    .line 366
    goto :goto_d

    .line 367
    :cond_12
    const/4 v2, 0x0

    .line 368
    :goto_d
    new-instance v3, Ljava/util/ArrayList;

    .line 369
    .line 370
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .line 372
    .line 373
    iget-object v4, v10, Lx2/e;->j:Lf2/t;

    .line 374
    .line 375
    if-eqz v1, :cond_16

    .line 376
    .line 377
    new-array v1, v12, [Lf2/t;

    .line 378
    .line 379
    const/4 v5, 0x0

    .line 380
    :goto_e
    if-ge v5, v12, :cond_13

    .line 381
    .line 382
    aget-object v6, v17, v5

    .line 383
    .line 384
    iget-object v7, v6, Lf2/t;->f:Ljava/lang/String;

    .line 385
    .line 386
    const/4 v8, 0x2

    .line 387
    invoke-static {v8, v7}, Lb3/n;->d(ILjava/lang/String;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v24

    .line 391
    invoke-static/range {v24 .. v24}, Lb3/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v23

    .line 395
    iget-object v7, v6, Lf2/t;->a:Ljava/lang/String;

    .line 396
    .line 397
    iget-object v9, v6, Lf2/t;->b:Ljava/lang/String;

    .line 398
    .line 399
    iget-object v11, v6, Lf2/t;->h:Ljava/lang/String;

    .line 400
    .line 401
    iget-object v8, v6, Lf2/t;->g:Lp2/b;

    .line 402
    .line 403
    move-object/from16 v32, v14

    .line 404
    .line 405
    iget v14, v6, Lf2/t;->e:I

    .line 406
    .line 407
    move-object/from16 v33, v15

    .line 408
    .line 409
    iget v15, v6, Lf2/t;->n:I

    .line 410
    .line 411
    move-object/from16 v34, v13

    .line 412
    .line 413
    iget v13, v6, Lf2/t;->o:I

    .line 414
    .line 415
    move-object/from16 v35, v0

    .line 416
    .line 417
    iget v0, v6, Lf2/t;->p:F

    .line 418
    .line 419
    move/from16 v36, v12

    .line 420
    .line 421
    iget v12, v6, Lf2/t;->c:I

    .line 422
    .line 423
    iget v6, v6, Lf2/t;->d:I

    .line 424
    .line 425
    move-object/from16 v20, v7

    .line 426
    .line 427
    move-object/from16 v21, v9

    .line 428
    .line 429
    move-object/from16 v22, v11

    .line 430
    .line 431
    move-object/from16 v25, v8

    .line 432
    .line 433
    move/from16 v26, v14

    .line 434
    .line 435
    move/from16 v27, v15

    .line 436
    .line 437
    move/from16 v28, v13

    .line 438
    .line 439
    move/from16 v29, v0

    .line 440
    .line 441
    move/from16 v30, v12

    .line 442
    .line 443
    move/from16 v31, v6

    .line 444
    .line 445
    invoke-static/range {v20 .. v31}, Lf2/t;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lp2/b;IIIFII)Lf2/t;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    aput-object v0, v1, v5

    .line 450
    .line 451
    add-int/lit8 v5, v5, 0x1

    .line 452
    .line 453
    move-object/from16 v14, v32

    .line 454
    .line 455
    move-object/from16 v15, v33

    .line 456
    .line 457
    move-object/from16 v13, v34

    .line 458
    .line 459
    move-object/from16 v0, v35

    .line 460
    .line 461
    move/from16 v12, v36

    .line 462
    .line 463
    goto :goto_e

    .line 464
    :cond_13
    move-object/from16 v35, v0

    .line 465
    .line 466
    move-object/from16 v34, v13

    .line 467
    .line 468
    move-object/from16 v32, v14

    .line 469
    .line 470
    move-object/from16 v33, v15

    .line 471
    .line 472
    new-instance v0, Lt2/w;

    .line 473
    .line 474
    invoke-direct {v0, v1}, Lt2/w;-><init>([Lf2/t;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    if-eqz v2, :cond_15

    .line 481
    .line 482
    if-nez v4, :cond_14

    .line 483
    .line 484
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    .line 485
    .line 486
    .line 487
    move-result v0

    .line 488
    if-eqz v0, :cond_15

    .line 489
    .line 490
    :cond_14
    new-instance v0, Lt2/w;

    .line 491
    .line 492
    const/4 v1, 0x0

    .line 493
    aget-object v2, v17, v1

    .line 494
    .line 495
    invoke-static {v2, v4, v1}, Lw2/i;->d(Lf2/t;Lf2/t;Z)Lf2/t;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    filled-new-array {v2}, [Lf2/t;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    invoke-direct {v0, v1}, Lt2/w;-><init>([Lf2/t;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    :cond_15
    iget-object v0, v10, Lx2/e;->k:Ljava/util/List;

    .line 510
    .line 511
    if-eqz v0, :cond_18

    .line 512
    .line 513
    const/4 v1, 0x0

    .line 514
    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 515
    .line 516
    .line 517
    move-result v2

    .line 518
    if-ge v1, v2, :cond_18

    .line 519
    .line 520
    new-instance v2, Lt2/w;

    .line 521
    .line 522
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v4

    .line 526
    check-cast v4, Lf2/t;

    .line 527
    .line 528
    filled-new-array {v4}, [Lf2/t;

    .line 529
    .line 530
    .line 531
    move-result-object v4

    .line 532
    invoke-direct {v2, v4}, Lt2/w;-><init>([Lf2/t;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    add-int/lit8 v1, v1, 0x1

    .line 539
    .line 540
    goto :goto_f

    .line 541
    :cond_16
    move-object/from16 v35, v0

    .line 542
    .line 543
    move/from16 v36, v12

    .line 544
    .line 545
    move-object/from16 v34, v13

    .line 546
    .line 547
    move-object/from16 v32, v14

    .line 548
    .line 549
    move-object/from16 v33, v15

    .line 550
    .line 551
    if-eqz v2, :cond_19

    .line 552
    .line 553
    move/from16 v1, v36

    .line 554
    .line 555
    new-array v0, v1, [Lf2/t;

    .line 556
    .line 557
    const/4 v2, 0x0

    .line 558
    :goto_10
    if-ge v2, v1, :cond_17

    .line 559
    .line 560
    aget-object v5, v17, v2

    .line 561
    .line 562
    const/4 v6, 0x1

    .line 563
    invoke-static {v5, v4, v6}, Lw2/i;->d(Lf2/t;Lf2/t;Z)Lf2/t;

    .line 564
    .line 565
    .line 566
    move-result-object v5

    .line 567
    aput-object v5, v0, v2

    .line 568
    .line 569
    add-int/lit8 v2, v2, 0x1

    .line 570
    .line 571
    goto :goto_10

    .line 572
    :cond_17
    new-instance v1, Lt2/w;

    .line 573
    .line 574
    invoke-direct {v1, v0}, Lt2/w;-><init>([Lf2/t;)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    :cond_18
    new-instance v0, Lt2/w;

    .line 581
    .line 582
    const-string v1, "ID3"

    .line 583
    .line 584
    const-string v2, "application/id3"

    .line 585
    .line 586
    invoke-static {v1, v2}, Lf2/t;->i(Ljava/lang/String;Ljava/lang/String;)Lf2/t;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    filled-new-array {v1}, [Lf2/t;

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    invoke-direct {v0, v1}, Lt2/w;-><init>([Lf2/t;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    const/4 v1, 0x0

    .line 601
    new-array v2, v1, [Lt2/w;

    .line 602
    .line 603
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    check-cast v1, [Lt2/w;

    .line 608
    .line 609
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 610
    .line 611
    .line 612
    move-result v0

    .line 613
    filled-new-array {v0}, [I

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    move-object/from16 v2, v35

    .line 618
    .line 619
    invoke-virtual {v2, v1, v0}, Lw2/p;->z([Lt2/w;[I)V

    .line 620
    .line 621
    .line 622
    goto :goto_11

    .line 623
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 624
    .line 625
    const-string v1, "Unexpected codecs attribute: "

    .line 626
    .line 627
    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    throw v0

    .line 635
    :cond_1a
    move/from16 v18, v7

    .line 636
    .line 637
    move-object/from16 v19, v8

    .line 638
    .line 639
    :cond_1b
    move-object/from16 v34, v13

    .line 640
    .line 641
    move-object/from16 v32, v14

    .line 642
    .line 643
    move-object/from16 v33, v15

    .line 644
    .line 645
    :goto_11
    new-instance v9, Ljava/util/ArrayList;

    .line 646
    .line 647
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    .line 648
    .line 649
    .line 650
    move-result v0

    .line 651
    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 652
    .line 653
    .line 654
    new-instance v11, Ljava/util/ArrayList;

    .line 655
    .line 656
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    .line 657
    .line 658
    .line 659
    move-result v0

    .line 660
    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 661
    .line 662
    .line 663
    new-instance v12, Ljava/util/ArrayList;

    .line 664
    .line 665
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    .line 666
    .line 667
    .line 668
    move-result v0

    .line 669
    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 670
    .line 671
    .line 672
    new-instance v13, Ljava/util/HashSet;

    .line 673
    .line 674
    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 675
    .line 676
    .line 677
    const/4 v14, 0x0

    .line 678
    :goto_12
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    .line 679
    .line 680
    .line 681
    move-result v0

    .line 682
    if-ge v14, v0, :cond_21

    .line 683
    .line 684
    move-object/from16 v15, v19

    .line 685
    .line 686
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    check-cast v0, Lx2/c;

    .line 691
    .line 692
    iget-object v0, v0, Lx2/c;->c:Ljava/lang/String;

    .line 693
    .line 694
    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 695
    .line 696
    .line 697
    move-result v1

    .line 698
    if-nez v1, :cond_1c

    .line 699
    .line 700
    move-object/from16 v8, v32

    .line 701
    .line 702
    move-object/from16 v7, v33

    .line 703
    .line 704
    goto/16 :goto_15

    .line 705
    .line 706
    :cond_1c
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 713
    .line 714
    .line 715
    const/4 v1, 0x0

    .line 716
    const/16 v16, 0x1

    .line 717
    .line 718
    :goto_13
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 719
    .line 720
    .line 721
    move-result v2

    .line 722
    if-ge v1, v2, :cond_1f

    .line 723
    .line 724
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v2

    .line 728
    check-cast v2, Lx2/c;

    .line 729
    .line 730
    iget-object v2, v2, Lx2/c;->c:Ljava/lang/String;

    .line 731
    .line 732
    invoke-static {v0, v2}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 733
    .line 734
    .line 735
    move-result v2

    .line 736
    if-eqz v2, :cond_1e

    .line 737
    .line 738
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v2

    .line 742
    check-cast v2, Lx2/c;

    .line 743
    .line 744
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 745
    .line 746
    .line 747
    move-result-object v3

    .line 748
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    .line 750
    .line 751
    iget-object v3, v2, Lx2/c;->a:Landroid/net/Uri;

    .line 752
    .line 753
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    .line 755
    .line 756
    iget-object v2, v2, Lx2/c;->b:Lf2/t;

    .line 757
    .line 758
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    .line 760
    .line 761
    iget-object v2, v2, Lf2/t;->f:Ljava/lang/String;

    .line 762
    .line 763
    if-eqz v2, :cond_1d

    .line 764
    .line 765
    const/4 v2, 0x1

    .line 766
    goto :goto_14

    .line 767
    :cond_1d
    const/4 v2, 0x0

    .line 768
    :goto_14
    and-int v2, v16, v2

    .line 769
    .line 770
    move/from16 v16, v2

    .line 771
    .line 772
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    .line 773
    .line 774
    goto :goto_13

    .line 775
    :cond_1f
    const/4 v1, 0x1

    .line 776
    const/4 v0, 0x0

    .line 777
    new-array v2, v0, [Landroid/net/Uri;

    .line 778
    .line 779
    sget v3, Lb3/n;->a:I

    .line 780
    .line 781
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object v2

    .line 785
    check-cast v2, [Landroid/net/Uri;

    .line 786
    .line 787
    new-array v3, v0, [Lf2/t;

    .line 788
    .line 789
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object v0

    .line 793
    move-object v3, v0

    .line 794
    check-cast v3, [Lf2/t;

    .line 795
    .line 796
    const/4 v4, 0x0

    .line 797
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 798
    .line 799
    .line 800
    move-result-object v5

    .line 801
    move-object/from16 v0, p0

    .line 802
    .line 803
    move-object/from16 v6, v34

    .line 804
    .line 805
    move-wide/from16 v7, p2

    .line 806
    .line 807
    invoke-virtual/range {v0 .. v8}, Lw2/i;->c(I[Landroid/net/Uri;[Lf2/t;Lf2/t;Ljava/util/List;Ljava/util/Map;J)Lw2/p;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    invoke-static {v12}, Lb3/n;->j(Ljava/util/ArrayList;)[I

    .line 812
    .line 813
    .line 814
    move-result-object v1

    .line 815
    move-object/from16 v7, v33

    .line 816
    .line 817
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    .line 819
    .line 820
    move-object/from16 v8, v32

    .line 821
    .line 822
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    .line 824
    .line 825
    if-eqz v18, :cond_20

    .line 826
    .line 827
    if-eqz v16, :cond_20

    .line 828
    .line 829
    const/4 v1, 0x0

    .line 830
    new-array v2, v1, [Lf2/t;

    .line 831
    .line 832
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object v2

    .line 836
    check-cast v2, [Lf2/t;

    .line 837
    .line 838
    new-instance v3, Lt2/w;

    .line 839
    .line 840
    invoke-direct {v3, v2}, Lt2/w;-><init>([Lf2/t;)V

    .line 841
    .line 842
    .line 843
    filled-new-array {v3}, [Lt2/w;

    .line 844
    .line 845
    .line 846
    move-result-object v2

    .line 847
    new-array v3, v1, [I

    .line 848
    .line 849
    invoke-virtual {v0, v2, v3}, Lw2/p;->z([Lt2/w;[I)V

    .line 850
    .line 851
    .line 852
    :cond_20
    :goto_15
    add-int/lit8 v14, v14, 0x1

    .line 853
    .line 854
    move-object/from16 v33, v7

    .line 855
    .line 856
    move-object/from16 v32, v8

    .line 857
    .line 858
    move-object/from16 v19, v15

    .line 859
    .line 860
    goto/16 :goto_12

    .line 861
    .line 862
    :cond_21
    move-object/from16 v8, v32

    .line 863
    .line 864
    move-object/from16 v7, v33

    .line 865
    .line 866
    const/4 v9, 0x0

    .line 867
    :goto_16
    iget-object v0, v10, Lx2/e;->h:Ljava/util/List;

    .line 868
    .line 869
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 870
    .line 871
    .line 872
    move-result v1

    .line 873
    if-ge v9, v1, :cond_22

    .line 874
    .line 875
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    check-cast v0, Lx2/c;

    .line 880
    .line 881
    const/4 v1, 0x3

    .line 882
    const/4 v2, 0x1

    .line 883
    new-array v3, v2, [Landroid/net/Uri;

    .line 884
    .line 885
    iget-object v2, v0, Lx2/c;->a:Landroid/net/Uri;

    .line 886
    .line 887
    const/4 v4, 0x0

    .line 888
    aput-object v2, v3, v4

    .line 889
    .line 890
    iget-object v11, v0, Lx2/c;->b:Lf2/t;

    .line 891
    .line 892
    filled-new-array {v11}, [Lf2/t;

    .line 893
    .line 894
    .line 895
    move-result-object v4

    .line 896
    const/4 v5, 0x0

    .line 897
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 898
    .line 899
    .line 900
    move-result-object v6

    .line 901
    move-object/from16 v0, p0

    .line 902
    .line 903
    move-object v2, v3

    .line 904
    move-object v3, v4

    .line 905
    move-object v4, v5

    .line 906
    move-object v5, v6

    .line 907
    move-object/from16 v6, v34

    .line 908
    .line 909
    move-object v13, v7

    .line 910
    move-object v12, v8

    .line 911
    move-wide/from16 v7, p2

    .line 912
    .line 913
    invoke-virtual/range {v0 .. v8}, Lw2/i;->c(I[Landroid/net/Uri;[Lf2/t;Lf2/t;Ljava/util/List;Ljava/util/Map;J)Lw2/p;

    .line 914
    .line 915
    .line 916
    move-result-object v0

    .line 917
    filled-new-array {v9}, [I

    .line 918
    .line 919
    .line 920
    move-result-object v1

    .line 921
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    .line 923
    .line 924
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    .line 926
    .line 927
    new-instance v1, Lt2/w;

    .line 928
    .line 929
    filled-new-array {v11}, [Lf2/t;

    .line 930
    .line 931
    .line 932
    move-result-object v2

    .line 933
    invoke-direct {v1, v2}, Lt2/w;-><init>([Lf2/t;)V

    .line 934
    .line 935
    .line 936
    filled-new-array {v1}, [Lt2/w;

    .line 937
    .line 938
    .line 939
    move-result-object v1

    .line 940
    const/4 v2, 0x0

    .line 941
    new-array v3, v2, [I

    .line 942
    .line 943
    invoke-virtual {v0, v1, v3}, Lw2/p;->z([Lt2/w;[I)V

    .line 944
    .line 945
    .line 946
    add-int/lit8 v9, v9, 0x1

    .line 947
    .line 948
    move-object v8, v12

    .line 949
    move-object v7, v13

    .line 950
    goto :goto_16

    .line 951
    :cond_22
    move-object v13, v7

    .line 952
    move-object v12, v8

    .line 953
    const/4 v2, 0x0

    .line 954
    new-array v0, v2, [Lw2/p;

    .line 955
    .line 956
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 957
    .line 958
    .line 959
    move-result-object v0

    .line 960
    check-cast v0, [Lw2/p;

    .line 961
    .line 962
    move-object/from16 v1, p0

    .line 963
    .line 964
    iput-object v0, v1, Lw2/i;->w:[Lw2/p;

    .line 965
    .line 966
    new-array v0, v2, [[I

    .line 967
    .line 968
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 969
    .line 970
    .line 971
    move-result-object v0

    .line 972
    check-cast v0, [[I

    .line 973
    .line 974
    iget-object v0, v1, Lw2/i;->w:[Lw2/p;

    .line 975
    .line 976
    array-length v3, v0

    .line 977
    iput v3, v1, Lw2/i;->u:I

    .line 978
    .line 979
    aget-object v3, v0, v2

    .line 980
    .line 981
    iget-object v3, v3, Lw2/p;->h:Lw2/f;

    .line 982
    .line 983
    const/4 v4, 0x1

    .line 984
    iput-boolean v4, v3, Lw2/f;->k:Z

    .line 985
    .line 986
    array-length v3, v0

    .line 987
    move v11, v2

    .line 988
    :goto_17
    if-ge v11, v3, :cond_24

    .line 989
    .line 990
    aget-object v2, v0, v11

    .line 991
    .line 992
    iget-boolean v4, v2, Lw2/p;->F:Z

    .line 993
    .line 994
    if-nez v4, :cond_23

    .line 995
    .line 996
    iget-wide v4, v2, Lw2/p;->R:J

    .line 997
    .line 998
    invoke-virtual {v2, v4, v5}, Lw2/p;->v(J)Z

    .line 999
    .line 1000
    .line 1001
    :cond_23
    add-int/lit8 v11, v11, 0x1

    .line 1002
    .line 1003
    goto :goto_17

    .line 1004
    :cond_24
    iget-object v0, v1, Lw2/i;->w:[Lw2/p;

    .line 1005
    .line 1006
    iput-object v0, v1, Lw2/i;->x:[Lw2/p;

    .line 1007
    .line 1008
    return-void
.end method

.method public final y(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw2/i;->y:Lh/a;

    invoke-virtual {v0, p1, p2}, Lh/a;->y(J)V

    return-void
.end method
