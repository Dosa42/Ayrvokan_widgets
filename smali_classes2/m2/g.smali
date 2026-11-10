.class public final Lm2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/h;


# static fields
.field public static final G:[B

.field public static final H:Lf2/t;


# instance fields
.field public A:I

.field public B:Z

.field public C:Lk2/i;

.field public D:[Lk2/o;

.field public E:[Lk2/o;

.field public F:Z

.field public final a:I

.field public final b:Ljava/util/List;

.field public final c:Landroid/util/SparseArray;

.field public final d:Lb3/h;

.field public final e:Lb3/h;

.field public final f:Lb3/h;

.field public final g:[B

.field public final h:Lb3/h;

.field public final i:Lb3/l;

.field public final j:Ln2/a0;

.field public final k:Lb3/h;

.field public final l:Ljava/util/ArrayDeque;

.field public final m:Ljava/util/ArrayDeque;

.field public n:I

.field public o:I

.field public p:J

.field public q:I

.field public r:Lb3/h;

.field public s:J

.field public t:I

.field public u:J

.field public v:J

.field public w:J

.field public x:Lm2/f;

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lm2/g;->G:[B

    const-string v0, "application/x-emsg"

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2}, Lf2/t;->h(Ljava/lang/String;J)Lf2/t;

    move-result-object v0

    sput-object v0, Lm2/g;->H:Lf2/t;

    return-void

    nop

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>(ILb3/l;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    or-int/2addr p1, v0

    .line 6
    iput p1, p0, Lm2/g;->a:I

    .line 7
    .line 8
    iput-object p2, p0, Lm2/g;->i:Lb3/l;

    .line 9
    .line 10
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lm2/g;->b:Ljava/util/List;

    .line 15
    .line 16
    new-instance p1, Ln2/a0;

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    invoke-direct {p1, p2}, Ln2/a0;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lm2/g;->j:Ln2/a0;

    .line 23
    .line 24
    new-instance p1, Lb3/h;

    .line 25
    .line 26
    const/16 p2, 0x10

    .line 27
    .line 28
    invoke-direct {p1, p2}, Lb3/h;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lm2/g;->k:Lb3/h;

    .line 32
    .line 33
    new-instance p1, Lb3/h;

    .line 34
    .line 35
    sget-object p3, Lb3/f;->a:[B

    .line 36
    .line 37
    invoke-direct {p1, p3}, Lb3/h;-><init>([B)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lm2/g;->d:Lb3/h;

    .line 41
    .line 42
    new-instance p1, Lb3/h;

    .line 43
    .line 44
    const/4 p3, 0x5

    .line 45
    invoke-direct {p1, p3}, Lb3/h;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lm2/g;->e:Lb3/h;

    .line 49
    .line 50
    new-instance p1, Lb3/h;

    .line 51
    .line 52
    invoke-direct {p1}, Lb3/h;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lm2/g;->f:Lb3/h;

    .line 56
    .line 57
    new-array p1, p2, [B

    .line 58
    .line 59
    iput-object p1, p0, Lm2/g;->g:[B

    .line 60
    .line 61
    new-instance p2, Lb3/h;

    .line 62
    .line 63
    invoke-direct {p2, p1}, Lb3/h;-><init>([B)V

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Lm2/g;->h:Lb3/h;

    .line 67
    .line 68
    new-instance p1, Ljava/util/ArrayDeque;

    .line 69
    .line 70
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lm2/g;->l:Ljava/util/ArrayDeque;

    .line 74
    .line 75
    new-instance p1, Ljava/util/ArrayDeque;

    .line 76
    .line 77
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Lm2/g;->m:Ljava/util/ArrayDeque;

    .line 81
    .line 82
    new-instance p1, Landroid/util/SparseArray;

    .line 83
    .line 84
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lm2/g;->c:Landroid/util/SparseArray;

    .line 88
    .line 89
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    iput-wide p1, p0, Lm2/g;->v:J

    .line 95
    .line 96
    iput-wide p1, p0, Lm2/g;->u:J

    .line 97
    .line 98
    iput-wide p1, p0, Lm2/g;->w:J

    .line 99
    .line 100
    iput v0, p0, Lm2/g;->n:I

    .line 101
    .line 102
    iput v0, p0, Lm2/g;->q:I

    .line 103
    .line 104
    return-void
.end method

.method public static d(Ljava/util/ArrayList;)Lj2/b;
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    move-object v4, v1

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v0, :cond_a

    .line 10
    .line 11
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    check-cast v5, Lm2/b;

    .line 16
    .line 17
    iget v6, v5, Li2/a;->b:I

    .line 18
    .line 19
    const v7, 0x70737368    # 3.013775E29f

    .line 20
    .line 21
    .line 22
    if-ne v6, v7, :cond_9

    .line 23
    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    new-instance v4, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v5, v5, Lm2/b;->c:Lb3/h;

    .line 32
    .line 33
    iget-object v5, v5, Lb3/h;->c:Ljava/io/Serializable;

    .line 34
    .line 35
    check-cast v5, [B

    .line 36
    .line 37
    new-instance v6, Lb3/h;

    .line 38
    .line 39
    invoke-direct {v6, v5}, Lb3/h;-><init>([B)V

    .line 40
    .line 41
    .line 42
    iget v8, v6, Lb3/h;->b:I

    .line 43
    .line 44
    const/16 v9, 0x20

    .line 45
    .line 46
    if-ge v8, v9, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v6, v2}, Lb3/h;->q(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6}, Lb3/h;->b()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    iget v9, v6, Lb3/h;->b:I

    .line 57
    .line 58
    iget v10, v6, Lb3/h;->a:I

    .line 59
    .line 60
    sub-int/2addr v9, v10

    .line 61
    add-int/lit8 v9, v9, 0x4

    .line 62
    .line 63
    if-eq v8, v9, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {v6}, Lb3/h;->b()I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-eq v8, v7, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    invoke-virtual {v6}, Lb3/h;->b()I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    shr-int/lit8 v7, v7, 0x18

    .line 78
    .line 79
    and-int/lit16 v7, v7, 0xff

    .line 80
    .line 81
    const/4 v8, 0x1

    .line 82
    if-le v7, v8, :cond_4

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    new-instance v9, Ljava/util/UUID;

    .line 86
    .line 87
    invoke-virtual {v6}, Lb3/h;->d()J

    .line 88
    .line 89
    .line 90
    move-result-wide v10

    .line 91
    invoke-virtual {v6}, Lb3/h;->d()J

    .line 92
    .line 93
    .line 94
    move-result-wide v12

    .line 95
    invoke-direct {v9, v10, v11, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    .line 96
    .line 97
    .line 98
    if-ne v7, v8, :cond_5

    .line 99
    .line 100
    invoke-virtual {v6}, Lb3/h;->k()I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    mul-int/lit8 v8, v8, 0x10

    .line 105
    .line 106
    invoke-virtual {v6, v8}, Lb3/h;->r(I)V

    .line 107
    .line 108
    .line 109
    :cond_5
    invoke-virtual {v6}, Lb3/h;->k()I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    iget v10, v6, Lb3/h;->b:I

    .line 114
    .line 115
    iget v11, v6, Lb3/h;->a:I

    .line 116
    .line 117
    sub-int/2addr v10, v11

    .line 118
    if-eq v8, v10, :cond_6

    .line 119
    .line 120
    :goto_1
    move-object v6, v1

    .line 121
    goto :goto_2

    .line 122
    :cond_6
    new-array v10, v8, [B

    .line 123
    .line 124
    invoke-virtual {v6, v10, v2, v8}, Lb3/h;->a([BII)V

    .line 125
    .line 126
    .line 127
    new-instance v6, Lf0/e;

    .line 128
    .line 129
    invoke-direct {v6, v9, v7, v10}, Lf0/e;-><init>(Ljava/util/UUID;I[B)V

    .line 130
    .line 131
    .line 132
    :goto_2
    if-nez v6, :cond_7

    .line 133
    .line 134
    move-object v6, v1

    .line 135
    goto :goto_3

    .line 136
    :cond_7
    iget-object v6, v6, Lf0/e;->b:Ljava/io/Serializable;

    .line 137
    .line 138
    check-cast v6, Ljava/util/UUID;

    .line 139
    .line 140
    :goto_3
    if-nez v6, :cond_8

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_8
    new-instance v7, Lj2/a;

    .line 144
    .line 145
    const-string v8, "video/mp4"

    .line 146
    .line 147
    invoke-direct {v7, v6, v1, v8, v5}, Lj2/a;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_a
    if-nez v4, :cond_b

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_b
    new-instance p0, Lj2/b;

    .line 161
    .line 162
    new-array v0, v2, [Lj2/a;

    .line 163
    .line 164
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, [Lj2/a;

    .line 169
    .line 170
    invoke-direct {p0, v1, v2, v0}, Lj2/b;-><init>(Ljava/lang/String;Z[Lj2/a;)V

    .line 171
    .line 172
    .line 173
    move-object v1, p0

    .line 174
    :goto_5
    return-object v1
.end method

.method public static e(Lb3/h;ILm2/j;)V
    .locals 4

    .line 1
    add-int/lit8 p1, p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lb3/h;->q(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lb3/h;->b()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const v0, 0xffffff

    .line 11
    .line 12
    .line 13
    and-int/2addr p1, v0

    .line 14
    and-int/lit8 v0, p1, 0x1

    .line 15
    .line 16
    if-nez v0, :cond_4

    .line 17
    .line 18
    and-int/lit8 p1, p1, 0x2

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    move p1, v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move p1, v1

    .line 27
    :goto_0
    invoke-virtual {p0}, Lb3/h;->k()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget v3, p2, Lm2/j;->e:I

    .line 32
    .line 33
    if-ne v2, v3, :cond_3

    .line 34
    .line 35
    iget-object v3, p2, Lm2/j;->m:[Z

    .line 36
    .line 37
    invoke-static {v3, v1, v2, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 38
    .line 39
    .line 40
    iget p1, p0, Lb3/h;->b:I

    .line 41
    .line 42
    iget v2, p0, Lb3/h;->a:I

    .line 43
    .line 44
    sub-int/2addr p1, v2

    .line 45
    iget-object v2, p2, Lm2/j;->p:Lb3/h;

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    iget v2, v2, Lb3/h;->b:I

    .line 50
    .line 51
    if-ge v2, p1, :cond_2

    .line 52
    .line 53
    :cond_1
    new-instance v2, Lb3/h;

    .line 54
    .line 55
    invoke-direct {v2, p1}, Lb3/h;-><init>(I)V

    .line 56
    .line 57
    .line 58
    iput-object v2, p2, Lm2/j;->p:Lb3/h;

    .line 59
    .line 60
    :cond_2
    iput p1, p2, Lm2/j;->o:I

    .line 61
    .line 62
    iput-boolean v0, p2, Lm2/j;->l:Z

    .line 63
    .line 64
    iput-boolean v0, p2, Lm2/j;->q:Z

    .line 65
    .line 66
    iget-object v0, p2, Lm2/j;->p:Lb3/h;

    .line 67
    .line 68
    iget-object v0, v0, Lb3/h;->c:Ljava/io/Serializable;

    .line 69
    .line 70
    check-cast v0, [B

    .line 71
    .line 72
    invoke-virtual {p0, v0, v1, p1}, Lb3/h;->a([BII)V

    .line 73
    .line 74
    .line 75
    iget-object p0, p2, Lm2/j;->p:Lb3/h;

    .line 76
    .line 77
    invoke-virtual {p0, v1}, Lb3/h;->q(I)V

    .line 78
    .line 79
    .line 80
    iput-boolean v1, p2, Lm2/j;->q:Z

    .line 81
    .line 82
    return-void

    .line 83
    :cond_3
    new-instance p0, Lf2/z;

    .line 84
    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v0, "Length mismatch: "

    .line 88
    .line 89
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v0, ", "

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget p2, p2, Lm2/j;->e:I

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-direct {p0, p1}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_4
    new-instance p0, Lf2/z;

    .line 114
    .line 115
    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    .line 116
    .line 117
    invoke-direct {p0, p1}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0
.end method


# virtual methods
.method public final a(Lk2/f;)I
    .locals 34

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    :goto_0
    iget v2, v1, Lm2/g;->n:I

    .line 6
    .line 7
    iget-object v3, v1, Lm2/g;->l:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    iget-object v4, v1, Lm2/g;->c:Landroid/util/SparseArray;

    .line 10
    .line 11
    const/4 v6, 0x2

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v9, 0x1

    .line 14
    const/4 v10, 0x0

    .line 15
    const v11, 0x656d7367

    .line 16
    .line 17
    .line 18
    const v12, 0x73696478

    .line 19
    .line 20
    .line 21
    if-eqz v2, :cond_36

    .line 22
    .line 23
    iget-object v13, v1, Lm2/g;->m:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    iget-object v15, v1, Lm2/g;->i:Lb3/l;

    .line 26
    .line 27
    if-eq v2, v9, :cond_27

    .line 28
    .line 29
    const/4 v3, 0x3

    .line 30
    if-eq v2, v6, :cond_21

    .line 31
    .line 32
    const/4 v11, 0x6

    .line 33
    if-ne v2, v3, :cond_f

    .line 34
    .line 35
    iget-object v2, v1, Lm2/g;->x:Lm2/f;

    .line 36
    .line 37
    if-nez v2, :cond_6

    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    move-object v14, v7

    .line 44
    move v12, v10

    .line 45
    const-wide v16, 0x7fffffffffffffffL

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    :goto_1
    if-ge v12, v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v20

    .line 56
    move-object/from16 v5, v20

    .line 57
    .line 58
    check-cast v5, Lm2/f;

    .line 59
    .line 60
    iget v6, v5, Lm2/f;->h:I

    .line 61
    .line 62
    iget-object v8, v5, Lm2/f;->b:Lm2/j;

    .line 63
    .line 64
    iget v9, v8, Lm2/j;->d:I

    .line 65
    .line 66
    if-ne v6, v9, :cond_0

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_0
    iget-object v8, v8, Lm2/j;->f:[J

    .line 70
    .line 71
    aget-wide v24, v8, v6

    .line 72
    .line 73
    cmp-long v6, v24, v16

    .line 74
    .line 75
    if-gez v6, :cond_1

    .line 76
    .line 77
    move-object v14, v5

    .line 78
    move-wide/from16 v16, v24

    .line 79
    .line 80
    :cond_1
    :goto_2
    add-int/lit8 v12, v12, 0x1

    .line 81
    .line 82
    const/4 v6, 0x2

    .line 83
    const/4 v9, 0x1

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    if-nez v14, :cond_4

    .line 86
    .line 87
    iget-wide v2, v1, Lm2/g;->s:J

    .line 88
    .line 89
    iget-wide v4, v0, Lk2/f;->d:J

    .line 90
    .line 91
    sub-long/2addr v2, v4

    .line 92
    long-to-int v2, v2

    .line 93
    if-ltz v2, :cond_3

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Lk2/f;->f(I)V

    .line 96
    .line 97
    .line 98
    iput v10, v1, Lm2/g;->n:I

    .line 99
    .line 100
    iput v10, v1, Lm2/g;->q:I

    .line 101
    .line 102
    move v9, v10

    .line 103
    goto/16 :goto_12

    .line 104
    .line 105
    :cond_3
    new-instance v0, Lf2/z;

    .line 106
    .line 107
    const-string v2, "Offset to end of mdat was negative."

    .line 108
    .line 109
    invoke-direct {v0, v2}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v0

    .line 113
    :cond_4
    iget-object v2, v14, Lm2/f;->b:Lm2/j;

    .line 114
    .line 115
    iget-object v2, v2, Lm2/j;->f:[J

    .line 116
    .line 117
    iget v4, v14, Lm2/f;->h:I

    .line 118
    .line 119
    aget-wide v4, v2, v4

    .line 120
    .line 121
    iget-wide v8, v0, Lk2/f;->d:J

    .line 122
    .line 123
    sub-long/2addr v4, v8

    .line 124
    long-to-int v2, v4

    .line 125
    if-gez v2, :cond_5

    .line 126
    .line 127
    move v2, v10

    .line 128
    :cond_5
    invoke-virtual {v0, v2}, Lk2/f;->f(I)V

    .line 129
    .line 130
    .line 131
    iput-object v14, v1, Lm2/g;->x:Lm2/f;

    .line 132
    .line 133
    :cond_6
    iget-object v2, v1, Lm2/g;->x:Lm2/f;

    .line 134
    .line 135
    iget-object v4, v2, Lm2/f;->b:Lm2/j;

    .line 136
    .line 137
    iget-object v4, v4, Lm2/j;->h:[I

    .line 138
    .line 139
    iget v5, v2, Lm2/f;->f:I

    .line 140
    .line 141
    aget v4, v4, v5

    .line 142
    .line 143
    iput v4, v1, Lm2/g;->y:I

    .line 144
    .line 145
    iget v6, v2, Lm2/f;->i:I

    .line 146
    .line 147
    if-ge v5, v6, :cond_c

    .line 148
    .line 149
    invoke-virtual {v0, v4}, Lk2/f;->f(I)V

    .line 150
    .line 151
    .line 152
    iget-object v2, v1, Lm2/g;->x:Lm2/f;

    .line 153
    .line 154
    invoke-virtual {v2}, Lm2/f;->a()Lm2/i;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    if-nez v4, :cond_7

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_7
    iget-object v5, v2, Lm2/f;->b:Lm2/j;

    .line 162
    .line 163
    iget-object v6, v5, Lm2/j;->p:Lb3/h;

    .line 164
    .line 165
    iget v4, v4, Lm2/i;->d:I

    .line 166
    .line 167
    if-eqz v4, :cond_8

    .line 168
    .line 169
    invoke-virtual {v6, v4}, Lb3/h;->r(I)V

    .line 170
    .line 171
    .line 172
    :cond_8
    iget v2, v2, Lm2/f;->f:I

    .line 173
    .line 174
    iget-boolean v4, v5, Lm2/j;->l:Z

    .line 175
    .line 176
    if-eqz v4, :cond_9

    .line 177
    .line 178
    iget-object v4, v5, Lm2/j;->m:[Z

    .line 179
    .line 180
    aget-boolean v2, v4, v2

    .line 181
    .line 182
    if-eqz v2, :cond_9

    .line 183
    .line 184
    const/4 v2, 0x1

    .line 185
    goto :goto_3

    .line 186
    :cond_9
    move v2, v10

    .line 187
    :goto_3
    if-eqz v2, :cond_a

    .line 188
    .line 189
    invoke-virtual {v6}, Lb3/h;->m()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    mul-int/2addr v2, v11

    .line 194
    invoke-virtual {v6, v2}, Lb3/h;->r(I)V

    .line 195
    .line 196
    .line 197
    :cond_a
    :goto_4
    iget-object v2, v1, Lm2/g;->x:Lm2/f;

    .line 198
    .line 199
    invoke-virtual {v2}, Lm2/f;->b()Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-nez v2, :cond_b

    .line 204
    .line 205
    iput-object v7, v1, Lm2/g;->x:Lm2/f;

    .line 206
    .line 207
    :cond_b
    iput v3, v1, Lm2/g;->n:I

    .line 208
    .line 209
    :goto_5
    const/4 v9, 0x1

    .line 210
    goto/16 :goto_12

    .line 211
    .line 212
    :cond_c
    iget-object v2, v2, Lm2/f;->d:Lm2/h;

    .line 213
    .line 214
    iget v2, v2, Lm2/h;->f:I

    .line 215
    .line 216
    const/4 v5, 0x1

    .line 217
    if-ne v2, v5, :cond_d

    .line 218
    .line 219
    add-int/lit8 v4, v4, -0x8

    .line 220
    .line 221
    iput v4, v1, Lm2/g;->y:I

    .line 222
    .line 223
    const/16 v2, 0x8

    .line 224
    .line 225
    invoke-virtual {v0, v2}, Lk2/f;->f(I)V

    .line 226
    .line 227
    .line 228
    :cond_d
    iget-object v2, v1, Lm2/g;->x:Lm2/f;

    .line 229
    .line 230
    iget-object v2, v2, Lm2/f;->d:Lm2/h;

    .line 231
    .line 232
    iget-object v2, v2, Lm2/h;->e:Lf2/t;

    .line 233
    .line 234
    iget-object v2, v2, Lf2/t;->i:Ljava/lang/String;

    .line 235
    .line 236
    const-string v4, "audio/ac4"

    .line 237
    .line 238
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-eqz v2, :cond_e

    .line 243
    .line 244
    iget-object v2, v1, Lm2/g;->x:Lm2/f;

    .line 245
    .line 246
    iget v4, v1, Lm2/g;->y:I

    .line 247
    .line 248
    const/4 v5, 0x7

    .line 249
    invoke-virtual {v2, v4, v5}, Lm2/f;->c(II)I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    iput v2, v1, Lm2/g;->z:I

    .line 254
    .line 255
    iget v2, v1, Lm2/g;->y:I

    .line 256
    .line 257
    iget-object v4, v1, Lm2/g;->h:Lb3/h;

    .line 258
    .line 259
    invoke-virtual {v4, v5}, Lb3/h;->n(I)V

    .line 260
    .line 261
    .line 262
    iget-object v6, v4, Lb3/h;->c:Ljava/io/Serializable;

    .line 263
    .line 264
    check-cast v6, [B

    .line 265
    .line 266
    const/16 v8, -0x54

    .line 267
    .line 268
    aput-byte v8, v6, v10

    .line 269
    .line 270
    const/16 v8, 0x40

    .line 271
    .line 272
    const/4 v9, 0x1

    .line 273
    aput-byte v8, v6, v9

    .line 274
    .line 275
    const/4 v8, -0x1

    .line 276
    const/4 v9, 0x2

    .line 277
    aput-byte v8, v6, v9

    .line 278
    .line 279
    aput-byte v8, v6, v3

    .line 280
    .line 281
    shr-int/lit8 v8, v2, 0x10

    .line 282
    .line 283
    and-int/lit16 v8, v8, 0xff

    .line 284
    .line 285
    int-to-byte v8, v8

    .line 286
    const/4 v9, 0x4

    .line 287
    aput-byte v8, v6, v9

    .line 288
    .line 289
    shr-int/lit8 v8, v2, 0x8

    .line 290
    .line 291
    and-int/lit16 v8, v8, 0xff

    .line 292
    .line 293
    int-to-byte v8, v8

    .line 294
    const/4 v9, 0x5

    .line 295
    aput-byte v8, v6, v9

    .line 296
    .line 297
    and-int/lit16 v2, v2, 0xff

    .line 298
    .line 299
    int-to-byte v2, v2

    .line 300
    aput-byte v2, v6, v11

    .line 301
    .line 302
    iget-object v2, v1, Lm2/g;->x:Lm2/f;

    .line 303
    .line 304
    iget-object v2, v2, Lm2/f;->a:Lk2/o;

    .line 305
    .line 306
    invoke-interface {v2, v5, v4}, Lk2/o;->d(ILb3/h;)V

    .line 307
    .line 308
    .line 309
    iget v2, v1, Lm2/g;->z:I

    .line 310
    .line 311
    add-int/2addr v2, v5

    .line 312
    goto :goto_6

    .line 313
    :cond_e
    iget-object v2, v1, Lm2/g;->x:Lm2/f;

    .line 314
    .line 315
    iget v4, v1, Lm2/g;->y:I

    .line 316
    .line 317
    invoke-virtual {v2, v4, v10}, Lm2/f;->c(II)I

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    :goto_6
    iput v2, v1, Lm2/g;->z:I

    .line 322
    .line 323
    iget v4, v1, Lm2/g;->y:I

    .line 324
    .line 325
    add-int/2addr v4, v2

    .line 326
    iput v4, v1, Lm2/g;->y:I

    .line 327
    .line 328
    const/4 v2, 0x4

    .line 329
    iput v2, v1, Lm2/g;->n:I

    .line 330
    .line 331
    iput v10, v1, Lm2/g;->A:I

    .line 332
    .line 333
    :cond_f
    iget-object v2, v1, Lm2/g;->x:Lm2/f;

    .line 334
    .line 335
    iget-object v4, v2, Lm2/f;->b:Lm2/j;

    .line 336
    .line 337
    iget-object v5, v2, Lm2/f;->d:Lm2/h;

    .line 338
    .line 339
    iget-object v6, v2, Lm2/f;->a:Lk2/o;

    .line 340
    .line 341
    iget v2, v2, Lm2/f;->f:I

    .line 342
    .line 343
    iget-object v8, v4, Lm2/j;->j:[J

    .line 344
    .line 345
    aget-wide v16, v8, v2

    .line 346
    .line 347
    iget-object v8, v4, Lm2/j;->i:[I

    .line 348
    .line 349
    aget v8, v8, v2

    .line 350
    .line 351
    int-to-long v8, v8

    .line 352
    add-long v16, v16, v8

    .line 353
    .line 354
    const-wide/16 v8, 0x3e8

    .line 355
    .line 356
    mul-long v8, v8, v16

    .line 357
    .line 358
    if-eqz v15, :cond_10

    .line 359
    .line 360
    invoke-virtual {v15, v8, v9}, Lb3/l;->a(J)J

    .line 361
    .line 362
    .line 363
    move-result-wide v8

    .line 364
    :cond_10
    iget v12, v5, Lm2/h;->i:I

    .line 365
    .line 366
    if-eqz v12, :cond_1a

    .line 367
    .line 368
    iget-object v14, v1, Lm2/g;->e:Lb3/h;

    .line 369
    .line 370
    iget-object v3, v14, Lb3/h;->c:Ljava/io/Serializable;

    .line 371
    .line 372
    check-cast v3, [B

    .line 373
    .line 374
    aput-byte v10, v3, v10

    .line 375
    .line 376
    const/16 v16, 0x1

    .line 377
    .line 378
    aput-byte v10, v3, v16

    .line 379
    .line 380
    const/16 v16, 0x2

    .line 381
    .line 382
    aput-byte v10, v3, v16

    .line 383
    .line 384
    add-int/lit8 v7, v12, 0x1

    .line 385
    .line 386
    rsub-int/lit8 v12, v12, 0x4

    .line 387
    .line 388
    :goto_7
    iget v11, v1, Lm2/g;->z:I

    .line 389
    .line 390
    iget v10, v1, Lm2/g;->y:I

    .line 391
    .line 392
    if-ge v11, v10, :cond_19

    .line 393
    .line 394
    iget v10, v1, Lm2/g;->A:I

    .line 395
    .line 396
    const-string v11, "video/hevc"

    .line 397
    .line 398
    move-object/from16 v31, v15

    .line 399
    .line 400
    iget-object v15, v5, Lm2/h;->e:Lf2/t;

    .line 401
    .line 402
    if-nez v10, :cond_17

    .line 403
    .line 404
    move-object/from16 v16, v5

    .line 405
    .line 406
    const/4 v5, 0x0

    .line 407
    invoke-virtual {v0, v3, v12, v7, v5}, Lk2/f;->e([BIIZ)Z

    .line 408
    .line 409
    .line 410
    invoke-virtual {v14, v5}, Lb3/h;->q(I)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v14}, Lb3/h;->b()I

    .line 414
    .line 415
    .line 416
    move-result v10

    .line 417
    const/4 v5, 0x1

    .line 418
    if-lt v10, v5, :cond_16

    .line 419
    .line 420
    add-int/lit8 v10, v10, -0x1

    .line 421
    .line 422
    iput v10, v1, Lm2/g;->A:I

    .line 423
    .line 424
    iget-object v10, v1, Lm2/g;->d:Lb3/h;

    .line 425
    .line 426
    const/4 v5, 0x0

    .line 427
    invoke-virtual {v10, v5}, Lb3/h;->q(I)V

    .line 428
    .line 429
    .line 430
    const/4 v5, 0x4

    .line 431
    invoke-interface {v6, v5, v10}, Lk2/o;->d(ILb3/h;)V

    .line 432
    .line 433
    .line 434
    const/4 v10, 0x1

    .line 435
    invoke-interface {v6, v10, v14}, Lk2/o;->d(ILb3/h;)V

    .line 436
    .line 437
    .line 438
    iget-object v10, v1, Lm2/g;->E:[Lk2/o;

    .line 439
    .line 440
    array-length v10, v10

    .line 441
    if-lez v10, :cond_14

    .line 442
    .line 443
    iget-object v10, v15, Lf2/t;->i:Ljava/lang/String;

    .line 444
    .line 445
    aget-byte v15, v3, v5

    .line 446
    .line 447
    sget-object v5, Lb3/f;->a:[B

    .line 448
    .line 449
    const-string v5, "video/avc"

    .line 450
    .line 451
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result v5

    .line 455
    if-eqz v5, :cond_11

    .line 456
    .line 457
    and-int/lit8 v5, v15, 0x1f

    .line 458
    .line 459
    move-object/from16 v17, v3

    .line 460
    .line 461
    const/4 v3, 0x6

    .line 462
    if-eq v5, v3, :cond_12

    .line 463
    .line 464
    goto :goto_8

    .line 465
    :cond_11
    move-object/from16 v17, v3

    .line 466
    .line 467
    const/4 v3, 0x6

    .line 468
    :goto_8
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v5

    .line 472
    if-eqz v5, :cond_13

    .line 473
    .line 474
    and-int/lit8 v5, v15, 0x7e

    .line 475
    .line 476
    const/4 v10, 0x1

    .line 477
    shr-int/2addr v5, v10

    .line 478
    const/16 v10, 0x27

    .line 479
    .line 480
    if-ne v5, v10, :cond_13

    .line 481
    .line 482
    :cond_12
    const/4 v5, 0x1

    .line 483
    goto :goto_9

    .line 484
    :cond_13
    const/4 v5, 0x0

    .line 485
    :goto_9
    if-eqz v5, :cond_15

    .line 486
    .line 487
    const/4 v5, 0x1

    .line 488
    goto :goto_a

    .line 489
    :cond_14
    move-object/from16 v17, v3

    .line 490
    .line 491
    const/4 v3, 0x6

    .line 492
    :cond_15
    const/4 v5, 0x0

    .line 493
    :goto_a
    iput-boolean v5, v1, Lm2/g;->B:Z

    .line 494
    .line 495
    iget v5, v1, Lm2/g;->z:I

    .line 496
    .line 497
    const/16 v18, 0x5

    .line 498
    .line 499
    add-int/lit8 v5, v5, 0x5

    .line 500
    .line 501
    iput v5, v1, Lm2/g;->z:I

    .line 502
    .line 503
    iget v5, v1, Lm2/g;->y:I

    .line 504
    .line 505
    add-int/2addr v5, v12

    .line 506
    iput v5, v1, Lm2/g;->y:I

    .line 507
    .line 508
    move/from16 v22, v7

    .line 509
    .line 510
    goto :goto_c

    .line 511
    :cond_16
    new-instance v0, Lf2/z;

    .line 512
    .line 513
    const-string v2, "Invalid NAL length"

    .line 514
    .line 515
    invoke-direct {v0, v2}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    throw v0

    .line 519
    :cond_17
    move-object/from16 v17, v3

    .line 520
    .line 521
    move-object/from16 v16, v5

    .line 522
    .line 523
    const/4 v3, 0x6

    .line 524
    const/16 v18, 0x5

    .line 525
    .line 526
    iget-boolean v5, v1, Lm2/g;->B:Z

    .line 527
    .line 528
    if-eqz v5, :cond_18

    .line 529
    .line 530
    iget-object v5, v1, Lm2/g;->f:Lb3/h;

    .line 531
    .line 532
    invoke-virtual {v5, v10}, Lb3/h;->n(I)V

    .line 533
    .line 534
    .line 535
    iget-object v10, v5, Lb3/h;->c:Ljava/io/Serializable;

    .line 536
    .line 537
    check-cast v10, [B

    .line 538
    .line 539
    iget v3, v1, Lm2/g;->A:I

    .line 540
    .line 541
    move/from16 v22, v7

    .line 542
    .line 543
    const/4 v7, 0x0

    .line 544
    invoke-virtual {v0, v10, v7, v3, v7}, Lk2/f;->e([BIIZ)Z

    .line 545
    .line 546
    .line 547
    iget v3, v1, Lm2/g;->A:I

    .line 548
    .line 549
    invoke-interface {v6, v3, v5}, Lk2/o;->d(ILb3/h;)V

    .line 550
    .line 551
    .line 552
    iget v3, v1, Lm2/g;->A:I

    .line 553
    .line 554
    iget-object v7, v5, Lb3/h;->c:Ljava/io/Serializable;

    .line 555
    .line 556
    check-cast v7, [B

    .line 557
    .line 558
    iget v10, v5, Lb3/h;->b:I

    .line 559
    .line 560
    invoke-static {v7, v10}, Lb3/f;->e([BI)I

    .line 561
    .line 562
    .line 563
    move-result v7

    .line 564
    iget-object v10, v15, Lf2/t;->i:Ljava/lang/String;

    .line 565
    .line 566
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v10

    .line 570
    invoke-virtual {v5, v10}, Lb3/h;->q(I)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v5, v7}, Lb3/h;->p(I)V

    .line 574
    .line 575
    .line 576
    iget-object v7, v1, Lm2/g;->E:[Lk2/o;

    .line 577
    .line 578
    invoke-static {v8, v9, v5, v7}, Lcom/google/android/gms/internal/play_billing/i0;->n(JLb3/h;[Lk2/o;)V

    .line 579
    .line 580
    .line 581
    goto :goto_b

    .line 582
    :cond_18
    move/from16 v22, v7

    .line 583
    .line 584
    const/4 v3, 0x0

    .line 585
    invoke-interface {v6, v0, v10, v3}, Lk2/o;->a(Lk2/f;IZ)I

    .line 586
    .line 587
    .line 588
    move-result v5

    .line 589
    move v3, v5

    .line 590
    :goto_b
    iget v5, v1, Lm2/g;->z:I

    .line 591
    .line 592
    add-int/2addr v5, v3

    .line 593
    iput v5, v1, Lm2/g;->z:I

    .line 594
    .line 595
    iget v5, v1, Lm2/g;->A:I

    .line 596
    .line 597
    sub-int/2addr v5, v3

    .line 598
    iput v5, v1, Lm2/g;->A:I

    .line 599
    .line 600
    :goto_c
    move-object/from16 v5, v16

    .line 601
    .line 602
    move-object/from16 v3, v17

    .line 603
    .line 604
    move/from16 v7, v22

    .line 605
    .line 606
    move-object/from16 v15, v31

    .line 607
    .line 608
    const/4 v10, 0x0

    .line 609
    goto/16 :goto_7

    .line 610
    .line 611
    :cond_19
    move-object/from16 v31, v15

    .line 612
    .line 613
    goto :goto_e

    .line 614
    :cond_1a
    move-object/from16 v31, v15

    .line 615
    .line 616
    :goto_d
    iget v3, v1, Lm2/g;->z:I

    .line 617
    .line 618
    iget v5, v1, Lm2/g;->y:I

    .line 619
    .line 620
    if-ge v3, v5, :cond_1b

    .line 621
    .line 622
    sub-int/2addr v5, v3

    .line 623
    const/4 v3, 0x0

    .line 624
    invoke-interface {v6, v0, v5, v3}, Lk2/o;->a(Lk2/f;IZ)I

    .line 625
    .line 626
    .line 627
    move-result v5

    .line 628
    iget v3, v1, Lm2/g;->z:I

    .line 629
    .line 630
    add-int/2addr v3, v5

    .line 631
    iput v3, v1, Lm2/g;->z:I

    .line 632
    .line 633
    goto :goto_d

    .line 634
    :cond_1b
    :goto_e
    iget-object v3, v4, Lm2/j;->k:[Z

    .line 635
    .line 636
    aget-boolean v2, v3, v2

    .line 637
    .line 638
    iget-object v3, v1, Lm2/g;->x:Lm2/f;

    .line 639
    .line 640
    invoke-virtual {v3}, Lm2/f;->a()Lm2/i;

    .line 641
    .line 642
    .line 643
    move-result-object v3

    .line 644
    if-eqz v3, :cond_1c

    .line 645
    .line 646
    const/high16 v4, 0x40000000    # 2.0f

    .line 647
    .line 648
    or-int/2addr v2, v4

    .line 649
    iget-object v3, v3, Lm2/i;->c:Lk2/n;

    .line 650
    .line 651
    move/from16 v27, v2

    .line 652
    .line 653
    move-object/from16 v30, v3

    .line 654
    .line 655
    goto :goto_f

    .line 656
    :cond_1c
    move/from16 v27, v2

    .line 657
    .line 658
    const/16 v30, 0x0

    .line 659
    .line 660
    :goto_f
    iget v2, v1, Lm2/g;->y:I

    .line 661
    .line 662
    const/16 v29, 0x0

    .line 663
    .line 664
    move-object/from16 v24, v6

    .line 665
    .line 666
    move-wide/from16 v25, v8

    .line 667
    .line 668
    move/from16 v28, v2

    .line 669
    .line 670
    invoke-interface/range {v24 .. v30}, Lk2/o;->b(JIIILk2/n;)V

    .line 671
    .line 672
    .line 673
    :goto_10
    invoke-virtual {v13}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 674
    .line 675
    .line 676
    move-result v2

    .line 677
    if-nez v2, :cond_1f

    .line 678
    .line 679
    invoke-virtual {v13}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v2

    .line 683
    check-cast v2, Lm2/e;

    .line 684
    .line 685
    iget v3, v1, Lm2/g;->t:I

    .line 686
    .line 687
    iget v4, v2, Lm2/e;->b:I

    .line 688
    .line 689
    sub-int/2addr v3, v4

    .line 690
    iput v3, v1, Lm2/g;->t:I

    .line 691
    .line 692
    iget-wide v3, v2, Lm2/e;->a:J

    .line 693
    .line 694
    add-long/2addr v3, v8

    .line 695
    move-object/from16 v5, v31

    .line 696
    .line 697
    if-eqz v31, :cond_1d

    .line 698
    .line 699
    invoke-virtual {v5, v3, v4}, Lb3/l;->a(J)J

    .line 700
    .line 701
    .line 702
    move-result-wide v3

    .line 703
    :cond_1d
    iget-object v6, v1, Lm2/g;->D:[Lk2/o;

    .line 704
    .line 705
    array-length v7, v6

    .line 706
    const/4 v10, 0x0

    .line 707
    :goto_11
    if-ge v10, v7, :cond_1e

    .line 708
    .line 709
    aget-object v14, v6, v10

    .line 710
    .line 711
    const/16 v17, 0x1

    .line 712
    .line 713
    iget v11, v2, Lm2/e;->b:I

    .line 714
    .line 715
    iget v12, v1, Lm2/g;->t:I

    .line 716
    .line 717
    const/16 v20, 0x0

    .line 718
    .line 719
    move-wide v15, v3

    .line 720
    move/from16 v18, v11

    .line 721
    .line 722
    move/from16 v19, v12

    .line 723
    .line 724
    invoke-interface/range {v14 .. v20}, Lk2/o;->b(JIIILk2/n;)V

    .line 725
    .line 726
    .line 727
    add-int/lit8 v10, v10, 0x1

    .line 728
    .line 729
    goto :goto_11

    .line 730
    :cond_1e
    move-object/from16 v31, v5

    .line 731
    .line 732
    goto :goto_10

    .line 733
    :cond_1f
    iget-object v2, v1, Lm2/g;->x:Lm2/f;

    .line 734
    .line 735
    invoke-virtual {v2}, Lm2/f;->b()Z

    .line 736
    .line 737
    .line 738
    move-result v2

    .line 739
    if-nez v2, :cond_20

    .line 740
    .line 741
    const/4 v2, 0x0

    .line 742
    iput-object v2, v1, Lm2/g;->x:Lm2/f;

    .line 743
    .line 744
    :cond_20
    const/4 v2, 0x3

    .line 745
    iput v2, v1, Lm2/g;->n:I

    .line 746
    .line 747
    goto/16 :goto_5

    .line 748
    .line 749
    :goto_12
    if-eqz v9, :cond_24

    .line 750
    .line 751
    const/4 v2, 0x0

    .line 752
    return v2

    .line 753
    :cond_21
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 754
    .line 755
    .line 756
    move-result v2

    .line 757
    const/4 v3, 0x0

    .line 758
    const/4 v7, 0x0

    .line 759
    const-wide v11, 0x7fffffffffffffffL

    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    :goto_13
    if-ge v3, v2, :cond_23

    .line 765
    .line 766
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v5

    .line 770
    check-cast v5, Lm2/f;

    .line 771
    .line 772
    iget-object v5, v5, Lm2/f;->b:Lm2/j;

    .line 773
    .line 774
    iget-boolean v6, v5, Lm2/j;->q:Z

    .line 775
    .line 776
    if-eqz v6, :cond_22

    .line 777
    .line 778
    iget-wide v5, v5, Lm2/j;->c:J

    .line 779
    .line 780
    cmp-long v8, v5, v11

    .line 781
    .line 782
    if-gez v8, :cond_22

    .line 783
    .line 784
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v7

    .line 788
    check-cast v7, Lm2/f;

    .line 789
    .line 790
    move-wide v11, v5

    .line 791
    :cond_22
    add-int/lit8 v3, v3, 0x1

    .line 792
    .line 793
    goto :goto_13

    .line 794
    :cond_23
    if-nez v7, :cond_25

    .line 795
    .line 796
    const/4 v2, 0x3

    .line 797
    iput v2, v1, Lm2/g;->n:I

    .line 798
    .line 799
    :cond_24
    :goto_14
    move-object v7, v1

    .line 800
    goto/16 :goto_28

    .line 801
    .line 802
    :cond_25
    iget-wide v2, v0, Lk2/f;->d:J

    .line 803
    .line 804
    sub-long/2addr v11, v2

    .line 805
    long-to-int v2, v11

    .line 806
    if-ltz v2, :cond_26

    .line 807
    .line 808
    invoke-virtual {v0, v2}, Lk2/f;->f(I)V

    .line 809
    .line 810
    .line 811
    iget-object v2, v7, Lm2/f;->b:Lm2/j;

    .line 812
    .line 813
    iget-object v3, v2, Lm2/j;->p:Lb3/h;

    .line 814
    .line 815
    iget-object v3, v3, Lb3/h;->c:Ljava/io/Serializable;

    .line 816
    .line 817
    check-cast v3, [B

    .line 818
    .line 819
    iget v4, v2, Lm2/j;->o:I

    .line 820
    .line 821
    const/4 v5, 0x0

    .line 822
    invoke-virtual {v0, v3, v5, v4, v5}, Lk2/f;->e([BIIZ)Z

    .line 823
    .line 824
    .line 825
    iget-object v3, v2, Lm2/j;->p:Lb3/h;

    .line 826
    .line 827
    invoke-virtual {v3, v5}, Lb3/h;->q(I)V

    .line 828
    .line 829
    .line 830
    iput-boolean v5, v2, Lm2/j;->q:Z

    .line 831
    .line 832
    goto :goto_14

    .line 833
    :cond_26
    new-instance v0, Lf2/z;

    .line 834
    .line 835
    const-string v2, "Offset to encryption data was negative."

    .line 836
    .line 837
    invoke-direct {v0, v2}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 838
    .line 839
    .line 840
    throw v0

    .line 841
    :cond_27
    move-object v5, v15

    .line 842
    iget-wide v6, v1, Lm2/g;->p:J

    .line 843
    .line 844
    long-to-int v2, v6

    .line 845
    iget v4, v1, Lm2/g;->q:I

    .line 846
    .line 847
    sub-int/2addr v2, v4

    .line 848
    iget-object v4, v1, Lm2/g;->r:Lb3/h;

    .line 849
    .line 850
    if-eqz v4, :cond_35

    .line 851
    .line 852
    iget-object v4, v4, Lb3/h;->c:Ljava/io/Serializable;

    .line 853
    .line 854
    check-cast v4, [B

    .line 855
    .line 856
    const/16 v6, 0x8

    .line 857
    .line 858
    const/4 v7, 0x0

    .line 859
    invoke-virtual {v0, v4, v6, v2, v7}, Lk2/f;->e([BIIZ)Z

    .line 860
    .line 861
    .line 862
    new-instance v2, Lm2/b;

    .line 863
    .line 864
    iget v4, v1, Lm2/g;->o:I

    .line 865
    .line 866
    iget-object v6, v1, Lm2/g;->r:Lb3/h;

    .line 867
    .line 868
    invoke-direct {v2, v4, v6}, Lm2/b;-><init>(ILb3/h;)V

    .line 869
    .line 870
    .line 871
    iget-wide v7, v0, Lk2/f;->d:J

    .line 872
    .line 873
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 874
    .line 875
    .line 876
    move-result v4

    .line 877
    if-nez v4, :cond_28

    .line 878
    .line 879
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    move-result-object v3

    .line 883
    check-cast v3, Lm2/a;

    .line 884
    .line 885
    iget-object v3, v3, Lm2/a;->d:Ljava/util/ArrayList;

    .line 886
    .line 887
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    .line 889
    .line 890
    move-object v7, v1

    .line 891
    goto/16 :goto_1d

    .line 892
    .line 893
    :cond_28
    iget v2, v2, Li2/a;->b:I

    .line 894
    .line 895
    if-ne v2, v12, :cond_2c

    .line 896
    .line 897
    const/16 v3, 0x8

    .line 898
    .line 899
    invoke-virtual {v6, v3}, Lb3/h;->q(I)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v6}, Lb3/h;->b()I

    .line 903
    .line 904
    .line 905
    move-result v2

    .line 906
    shr-int/lit8 v2, v2, 0x18

    .line 907
    .line 908
    and-int/lit16 v2, v2, 0xff

    .line 909
    .line 910
    const/4 v3, 0x4

    .line 911
    invoke-virtual {v6, v3}, Lb3/h;->r(I)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v6}, Lb3/h;->i()J

    .line 915
    .line 916
    .line 917
    move-result-wide v3

    .line 918
    if-nez v2, :cond_29

    .line 919
    .line 920
    invoke-virtual {v6}, Lb3/h;->i()J

    .line 921
    .line 922
    .line 923
    move-result-wide v9

    .line 924
    invoke-virtual {v6}, Lb3/h;->i()J

    .line 925
    .line 926
    .line 927
    move-result-wide v11

    .line 928
    goto :goto_15

    .line 929
    :cond_29
    invoke-virtual {v6}, Lb3/h;->l()J

    .line 930
    .line 931
    .line 932
    move-result-wide v9

    .line 933
    invoke-virtual {v6}, Lb3/h;->l()J

    .line 934
    .line 935
    .line 936
    move-result-wide v11

    .line 937
    :goto_15
    move-wide v15, v9

    .line 938
    add-long/2addr v7, v11

    .line 939
    const-wide/32 v11, 0xf4240

    .line 940
    .line 941
    .line 942
    move-wide v9, v15

    .line 943
    move-wide v13, v3

    .line 944
    invoke-static/range {v9 .. v14}, Lb3/n;->h(JJJ)J

    .line 945
    .line 946
    .line 947
    move-result-wide v17

    .line 948
    const/4 v2, 0x2

    .line 949
    invoke-virtual {v6, v2}, Lb3/h;->r(I)V

    .line 950
    .line 951
    .line 952
    invoke-virtual {v6}, Lb3/h;->m()I

    .line 953
    .line 954
    .line 955
    move-result v2

    .line 956
    new-array v5, v2, [I

    .line 957
    .line 958
    new-array v13, v2, [J

    .line 959
    .line 960
    new-array v14, v2, [J

    .line 961
    .line 962
    new-array v11, v2, [J

    .line 963
    .line 964
    move-wide/from16 v20, v17

    .line 965
    .line 966
    const/4 v15, 0x0

    .line 967
    :goto_16
    if-ge v15, v2, :cond_2b

    .line 968
    .line 969
    invoke-virtual {v6}, Lb3/h;->b()I

    .line 970
    .line 971
    .line 972
    move-result v12

    .line 973
    const/high16 v16, -0x80000000

    .line 974
    .line 975
    and-int v16, v12, v16

    .line 976
    .line 977
    if-nez v16, :cond_2a

    .line 978
    .line 979
    invoke-virtual {v6}, Lb3/h;->i()J

    .line 980
    .line 981
    .line 982
    move-result-wide v24

    .line 983
    const v16, 0x7fffffff

    .line 984
    .line 985
    .line 986
    and-int v12, v12, v16

    .line 987
    .line 988
    aput v12, v5, v15

    .line 989
    .line 990
    aput-wide v7, v13, v15

    .line 991
    .line 992
    aput-wide v20, v11, v15

    .line 993
    .line 994
    add-long v20, v9, v24

    .line 995
    .line 996
    const-wide/32 v24, 0xf4240

    .line 997
    .line 998
    .line 999
    move-wide/from16 v9, v20

    .line 1000
    .line 1001
    move/from16 v16, v2

    .line 1002
    .line 1003
    move-object v2, v11

    .line 1004
    move-wide/from16 v11, v24

    .line 1005
    .line 1006
    move-object/from16 v24, v0

    .line 1007
    .line 1008
    move-object v0, v13

    .line 1009
    move-object v1, v14

    .line 1010
    move-wide v13, v3

    .line 1011
    invoke-static/range {v9 .. v14}, Lb3/n;->h(JJJ)J

    .line 1012
    .line 1013
    .line 1014
    move-result-wide v9

    .line 1015
    aget-wide v11, v2, v15

    .line 1016
    .line 1017
    sub-long v11, v9, v11

    .line 1018
    .line 1019
    aput-wide v11, v1, v15

    .line 1020
    .line 1021
    const/4 v11, 0x4

    .line 1022
    invoke-virtual {v6, v11}, Lb3/h;->r(I)V

    .line 1023
    .line 1024
    .line 1025
    aget v12, v5, v15

    .line 1026
    .line 1027
    int-to-long v12, v12

    .line 1028
    add-long/2addr v7, v12

    .line 1029
    add-int/lit8 v15, v15, 0x1

    .line 1030
    .line 1031
    move-object v13, v0

    .line 1032
    move-object v14, v1

    .line 1033
    move-object v11, v2

    .line 1034
    move/from16 v2, v16

    .line 1035
    .line 1036
    move-object/from16 v0, v24

    .line 1037
    .line 1038
    move-object/from16 v1, p0

    .line 1039
    .line 1040
    move-wide/from16 v32, v9

    .line 1041
    .line 1042
    move-wide/from16 v9, v20

    .line 1043
    .line 1044
    move-wide/from16 v20, v32

    .line 1045
    .line 1046
    goto :goto_16

    .line 1047
    :cond_2a
    new-instance v0, Lf2/z;

    .line 1048
    .line 1049
    const-string v1, "Unhandled indirect reference"

    .line 1050
    .line 1051
    invoke-direct {v0, v1}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 1052
    .line 1053
    .line 1054
    throw v0

    .line 1055
    :cond_2b
    move-object/from16 v24, v0

    .line 1056
    .line 1057
    move-object v2, v11

    .line 1058
    move-object v0, v13

    .line 1059
    move-object v1, v14

    .line 1060
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v3

    .line 1064
    new-instance v4, Lk2/d;

    .line 1065
    .line 1066
    invoke-direct {v4, v5, v0, v1, v2}, Lk2/d;-><init>([I[J[J[J)V

    .line 1067
    .line 1068
    .line 1069
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v0

    .line 1073
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1074
    .line 1075
    check-cast v1, Ljava/lang/Long;

    .line 1076
    .line 1077
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 1078
    .line 1079
    .line 1080
    move-result-wide v1

    .line 1081
    move-object/from16 v7, p0

    .line 1082
    .line 1083
    iput-wide v1, v7, Lm2/g;->w:J

    .line 1084
    .line 1085
    iget-object v1, v7, Lm2/g;->C:Lk2/i;

    .line 1086
    .line 1087
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1088
    .line 1089
    check-cast v0, Lk2/m;

    .line 1090
    .line 1091
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1092
    .line 1093
    .line 1094
    const/4 v0, 0x1

    .line 1095
    iput-boolean v0, v7, Lm2/g;->F:Z

    .line 1096
    .line 1097
    goto :goto_17

    .line 1098
    :cond_2c
    move-object/from16 v24, v0

    .line 1099
    .line 1100
    move-object v7, v1

    .line 1101
    if-ne v2, v11, :cond_34

    .line 1102
    .line 1103
    iget-object v0, v7, Lm2/g;->D:[Lk2/o;

    .line 1104
    .line 1105
    if-eqz v0, :cond_34

    .line 1106
    .line 1107
    array-length v0, v0

    .line 1108
    if-nez v0, :cond_2d

    .line 1109
    .line 1110
    :goto_17
    move-object/from16 v0, v24

    .line 1111
    .line 1112
    goto/16 :goto_1d

    .line 1113
    .line 1114
    :cond_2d
    const/16 v0, 0x8

    .line 1115
    .line 1116
    invoke-virtual {v6, v0}, Lb3/h;->q(I)V

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {v6}, Lb3/h;->b()I

    .line 1120
    .line 1121
    .line 1122
    move-result v0

    .line 1123
    shr-int/lit8 v0, v0, 0x18

    .line 1124
    .line 1125
    and-int/lit16 v0, v0, 0xff

    .line 1126
    .line 1127
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    if-eqz v0, :cond_2f

    .line 1133
    .line 1134
    const/4 v3, 0x1

    .line 1135
    if-eq v0, v3, :cond_2e

    .line 1136
    .line 1137
    goto :goto_17

    .line 1138
    :cond_2e
    invoke-virtual {v6}, Lb3/h;->i()J

    .line 1139
    .line 1140
    .line 1141
    move-result-wide v3

    .line 1142
    invoke-virtual {v6}, Lb3/h;->l()J

    .line 1143
    .line 1144
    .line 1145
    move-result-wide v14

    .line 1146
    const-wide/32 v16, 0xf4240

    .line 1147
    .line 1148
    .line 1149
    move-wide/from16 v18, v3

    .line 1150
    .line 1151
    invoke-static/range {v14 .. v19}, Lb3/n;->h(JJJ)J

    .line 1152
    .line 1153
    .line 1154
    move-result-wide v8

    .line 1155
    invoke-virtual {v6}, Lb3/h;->i()J

    .line 1156
    .line 1157
    .line 1158
    move-result-wide v14

    .line 1159
    const-wide/16 v16, 0x3e8

    .line 1160
    .line 1161
    invoke-static/range {v14 .. v19}, Lb3/n;->h(JJJ)J

    .line 1162
    .line 1163
    .line 1164
    move-result-wide v3

    .line 1165
    invoke-virtual {v6}, Lb3/h;->i()J

    .line 1166
    .line 1167
    .line 1168
    move-result-wide v10

    .line 1169
    invoke-virtual {v6}, Lb3/h;->e()Ljava/lang/String;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v0

    .line 1173
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v6}, Lb3/h;->e()Ljava/lang/String;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v12

    .line 1180
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1181
    .line 1182
    .line 1183
    move-wide v14, v10

    .line 1184
    move-wide v10, v1

    .line 1185
    goto :goto_19

    .line 1186
    :cond_2f
    invoke-virtual {v6}, Lb3/h;->e()Ljava/lang/String;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v0

    .line 1190
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v6}, Lb3/h;->e()Ljava/lang/String;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v12

    .line 1197
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1198
    .line 1199
    .line 1200
    invoke-virtual {v6}, Lb3/h;->i()J

    .line 1201
    .line 1202
    .line 1203
    move-result-wide v3

    .line 1204
    invoke-virtual {v6}, Lb3/h;->i()J

    .line 1205
    .line 1206
    .line 1207
    move-result-wide v14

    .line 1208
    const-wide/32 v16, 0xf4240

    .line 1209
    .line 1210
    .line 1211
    move-wide/from16 v18, v3

    .line 1212
    .line 1213
    invoke-static/range {v14 .. v19}, Lb3/n;->h(JJJ)J

    .line 1214
    .line 1215
    .line 1216
    move-result-wide v8

    .line 1217
    iget-wide v10, v7, Lm2/g;->w:J

    .line 1218
    .line 1219
    cmp-long v14, v10, v1

    .line 1220
    .line 1221
    if-eqz v14, :cond_30

    .line 1222
    .line 1223
    add-long/2addr v10, v8

    .line 1224
    goto :goto_18

    .line 1225
    :cond_30
    move-wide v10, v1

    .line 1226
    :goto_18
    invoke-virtual {v6}, Lb3/h;->i()J

    .line 1227
    .line 1228
    .line 1229
    move-result-wide v14

    .line 1230
    const-wide/16 v16, 0x3e8

    .line 1231
    .line 1232
    move-wide/from16 v18, v3

    .line 1233
    .line 1234
    invoke-static/range {v14 .. v19}, Lb3/n;->h(JJJ)J

    .line 1235
    .line 1236
    .line 1237
    move-result-wide v3

    .line 1238
    invoke-virtual {v6}, Lb3/h;->i()J

    .line 1239
    .line 1240
    .line 1241
    move-result-wide v14

    .line 1242
    move-wide/from16 v32, v8

    .line 1243
    .line 1244
    move-wide v8, v10

    .line 1245
    move-wide/from16 v10, v32

    .line 1246
    .line 1247
    :goto_19
    iget v1, v6, Lb3/h;->b:I

    .line 1248
    .line 1249
    iget v2, v6, Lb3/h;->a:I

    .line 1250
    .line 1251
    sub-int/2addr v1, v2

    .line 1252
    new-array v2, v1, [B

    .line 1253
    .line 1254
    move-object/from16 v31, v5

    .line 1255
    .line 1256
    const/4 v5, 0x0

    .line 1257
    invoke-virtual {v6, v2, v5, v1}, Lb3/h;->a([BII)V

    .line 1258
    .line 1259
    .line 1260
    new-instance v1, Lq2/a;

    .line 1261
    .line 1262
    new-instance v1, Lb3/h;

    .line 1263
    .line 1264
    iget-object v5, v7, Lm2/g;->j:Ln2/a0;

    .line 1265
    .line 1266
    iget-object v6, v5, Ln2/a0;->g:Ljava/lang/Object;

    .line 1267
    .line 1268
    check-cast v6, Ljava/io/ByteArrayOutputStream;

    .line 1269
    .line 1270
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1271
    .line 1272
    .line 1273
    :try_start_0
    iget-object v6, v5, Ln2/a0;->h:Ljava/lang/Object;

    .line 1274
    .line 1275
    check-cast v6, Ljava/io/DataOutputStream;

    .line 1276
    .line 1277
    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1278
    .line 1279
    .line 1280
    const/4 v0, 0x0

    .line 1281
    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1282
    .line 1283
    .line 1284
    iget-object v0, v5, Ln2/a0;->h:Ljava/lang/Object;

    .line 1285
    .line 1286
    check-cast v0, Ljava/io/DataOutputStream;

    .line 1287
    .line 1288
    invoke-virtual {v0, v12}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1289
    .line 1290
    .line 1291
    const/4 v6, 0x0

    .line 1292
    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1293
    .line 1294
    .line 1295
    iget-object v0, v5, Ln2/a0;->h:Ljava/lang/Object;

    .line 1296
    .line 1297
    check-cast v0, Ljava/io/DataOutputStream;

    .line 1298
    .line 1299
    invoke-static {v0, v3, v4}, Ln2/a0;->f(Ljava/io/DataOutputStream;J)V

    .line 1300
    .line 1301
    .line 1302
    iget-object v0, v5, Ln2/a0;->h:Ljava/lang/Object;

    .line 1303
    .line 1304
    check-cast v0, Ljava/io/DataOutputStream;

    .line 1305
    .line 1306
    invoke-static {v0, v14, v15}, Ln2/a0;->f(Ljava/io/DataOutputStream;J)V

    .line 1307
    .line 1308
    .line 1309
    iget-object v0, v5, Ln2/a0;->h:Ljava/lang/Object;

    .line 1310
    .line 1311
    check-cast v0, Ljava/io/DataOutputStream;

    .line 1312
    .line 1313
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1314
    .line 1315
    .line 1316
    iget-object v0, v5, Ln2/a0;->h:Ljava/lang/Object;

    .line 1317
    .line 1318
    check-cast v0, Ljava/io/DataOutputStream;

    .line 1319
    .line 1320
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 1321
    .line 1322
    .line 1323
    iget-object v0, v5, Ln2/a0;->g:Ljava/lang/Object;

    .line 1324
    .line 1325
    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 1326
    .line 1327
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1328
    .line 1329
    .line 1330
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1331
    invoke-direct {v1, v0}, Lb3/h;-><init>([B)V

    .line 1332
    .line 1333
    .line 1334
    iget v0, v1, Lb3/h;->b:I

    .line 1335
    .line 1336
    iget v2, v1, Lb3/h;->a:I

    .line 1337
    .line 1338
    sub-int/2addr v0, v2

    .line 1339
    iget-object v2, v7, Lm2/g;->D:[Lk2/o;

    .line 1340
    .line 1341
    array-length v3, v2

    .line 1342
    const/4 v4, 0x0

    .line 1343
    :goto_1a
    if-ge v4, v3, :cond_31

    .line 1344
    .line 1345
    aget-object v5, v2, v4

    .line 1346
    .line 1347
    const/4 v6, 0x0

    .line 1348
    invoke-virtual {v1, v6}, Lb3/h;->q(I)V

    .line 1349
    .line 1350
    .line 1351
    invoke-interface {v5, v0, v1}, Lk2/o;->d(ILb3/h;)V

    .line 1352
    .line 1353
    .line 1354
    add-int/lit8 v4, v4, 0x1

    .line 1355
    .line 1356
    goto :goto_1a

    .line 1357
    :cond_31
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    cmp-long v1, v8, v4

    .line 1363
    .line 1364
    if-nez v1, :cond_32

    .line 1365
    .line 1366
    new-instance v1, Lm2/e;

    .line 1367
    .line 1368
    invoke-direct {v1, v10, v11, v0}, Lm2/e;-><init>(JI)V

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual {v13, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1372
    .line 1373
    .line 1374
    iget v1, v7, Lm2/g;->t:I

    .line 1375
    .line 1376
    add-int/2addr v1, v0

    .line 1377
    iput v1, v7, Lm2/g;->t:I

    .line 1378
    .line 1379
    goto :goto_1c

    .line 1380
    :cond_32
    if-eqz v31, :cond_33

    .line 1381
    .line 1382
    move-object/from16 v1, v31

    .line 1383
    .line 1384
    invoke-virtual {v1, v8, v9}, Lb3/l;->a(J)J

    .line 1385
    .line 1386
    .line 1387
    move-result-wide v8

    .line 1388
    :cond_33
    iget-object v1, v7, Lm2/g;->D:[Lk2/o;

    .line 1389
    .line 1390
    array-length v2, v1

    .line 1391
    const/4 v10, 0x0

    .line 1392
    :goto_1b
    if-ge v10, v2, :cond_34

    .line 1393
    .line 1394
    aget-object v18, v1, v10

    .line 1395
    .line 1396
    const/16 v21, 0x1

    .line 1397
    .line 1398
    const/16 v23, 0x0

    .line 1399
    .line 1400
    const/16 v24, 0x0

    .line 1401
    .line 1402
    move-wide/from16 v19, v8

    .line 1403
    .line 1404
    move/from16 v22, v0

    .line 1405
    .line 1406
    invoke-interface/range {v18 .. v24}, Lk2/o;->b(JIIILk2/n;)V

    .line 1407
    .line 1408
    .line 1409
    add-int/lit8 v10, v10, 0x1

    .line 1410
    .line 1411
    goto :goto_1b

    .line 1412
    :catch_0
    move-exception v0

    .line 1413
    new-instance v1, Ljava/lang/RuntimeException;

    .line 1414
    .line 1415
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 1416
    .line 1417
    .line 1418
    throw v1

    .line 1419
    :cond_34
    :goto_1c
    move-object/from16 v0, p1

    .line 1420
    .line 1421
    goto :goto_1d

    .line 1422
    :cond_35
    move-object v7, v1

    .line 1423
    invoke-virtual {v0, v2}, Lk2/f;->f(I)V

    .line 1424
    .line 1425
    .line 1426
    :goto_1d
    iget-wide v1, v0, Lk2/f;->d:J

    .line 1427
    .line 1428
    invoke-virtual {v7, v1, v2}, Lm2/g;->f(J)V

    .line 1429
    .line 1430
    .line 1431
    goto/16 :goto_28

    .line 1432
    .line 1433
    :cond_36
    move-object v7, v1

    .line 1434
    iget v1, v7, Lm2/g;->q:I

    .line 1435
    .line 1436
    iget-object v2, v7, Lm2/g;->k:Lb3/h;

    .line 1437
    .line 1438
    if-nez v1, :cond_38

    .line 1439
    .line 1440
    iget-object v1, v2, Lb3/h;->c:Ljava/io/Serializable;

    .line 1441
    .line 1442
    check-cast v1, [B

    .line 1443
    .line 1444
    const/16 v5, 0x8

    .line 1445
    .line 1446
    const/4 v6, 0x1

    .line 1447
    const/4 v8, 0x0

    .line 1448
    invoke-virtual {v0, v1, v8, v5, v6}, Lk2/f;->e([BIIZ)Z

    .line 1449
    .line 1450
    .line 1451
    move-result v1

    .line 1452
    if-nez v1, :cond_37

    .line 1453
    .line 1454
    move v9, v8

    .line 1455
    goto/16 :goto_27

    .line 1456
    .line 1457
    :cond_37
    iput v5, v7, Lm2/g;->q:I

    .line 1458
    .line 1459
    invoke-virtual {v2, v8}, Lb3/h;->q(I)V

    .line 1460
    .line 1461
    .line 1462
    invoke-virtual {v2}, Lb3/h;->i()J

    .line 1463
    .line 1464
    .line 1465
    move-result-wide v5

    .line 1466
    iput-wide v5, v7, Lm2/g;->p:J

    .line 1467
    .line 1468
    invoke-virtual {v2}, Lb3/h;->b()I

    .line 1469
    .line 1470
    .line 1471
    move-result v1

    .line 1472
    iput v1, v7, Lm2/g;->o:I

    .line 1473
    .line 1474
    :cond_38
    iget-wide v5, v7, Lm2/g;->p:J

    .line 1475
    .line 1476
    const-wide/16 v8, 0x1

    .line 1477
    .line 1478
    cmp-long v1, v5, v8

    .line 1479
    .line 1480
    if-nez v1, :cond_39

    .line 1481
    .line 1482
    iget-object v1, v2, Lb3/h;->c:Ljava/io/Serializable;

    .line 1483
    .line 1484
    check-cast v1, [B

    .line 1485
    .line 1486
    const/16 v5, 0x8

    .line 1487
    .line 1488
    const/4 v6, 0x0

    .line 1489
    invoke-virtual {v0, v1, v5, v5, v6}, Lk2/f;->e([BIIZ)Z

    .line 1490
    .line 1491
    .line 1492
    iget v1, v7, Lm2/g;->q:I

    .line 1493
    .line 1494
    add-int/2addr v1, v5

    .line 1495
    iput v1, v7, Lm2/g;->q:I

    .line 1496
    .line 1497
    invoke-virtual {v2}, Lb3/h;->l()J

    .line 1498
    .line 1499
    .line 1500
    move-result-wide v5

    .line 1501
    goto :goto_1e

    .line 1502
    :cond_39
    const-wide/16 v8, 0x0

    .line 1503
    .line 1504
    cmp-long v1, v5, v8

    .line 1505
    .line 1506
    if-nez v1, :cond_3b

    .line 1507
    .line 1508
    iget-wide v5, v0, Lk2/f;->c:J

    .line 1509
    .line 1510
    const-wide/16 v8, -0x1

    .line 1511
    .line 1512
    cmp-long v1, v5, v8

    .line 1513
    .line 1514
    if-nez v1, :cond_3a

    .line 1515
    .line 1516
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1517
    .line 1518
    .line 1519
    move-result v1

    .line 1520
    if-nez v1, :cond_3a

    .line 1521
    .line 1522
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v1

    .line 1526
    check-cast v1, Lm2/a;

    .line 1527
    .line 1528
    iget-wide v5, v1, Lm2/a;->c:J

    .line 1529
    .line 1530
    :cond_3a
    cmp-long v1, v5, v8

    .line 1531
    .line 1532
    if-eqz v1, :cond_3b

    .line 1533
    .line 1534
    iget-wide v8, v0, Lk2/f;->d:J

    .line 1535
    .line 1536
    sub-long/2addr v5, v8

    .line 1537
    iget v1, v7, Lm2/g;->q:I

    .line 1538
    .line 1539
    int-to-long v8, v1

    .line 1540
    add-long/2addr v5, v8

    .line 1541
    :goto_1e
    iput-wide v5, v7, Lm2/g;->p:J

    .line 1542
    .line 1543
    :cond_3b
    iget-wide v5, v7, Lm2/g;->p:J

    .line 1544
    .line 1545
    iget v1, v7, Lm2/g;->q:I

    .line 1546
    .line 1547
    int-to-long v8, v1

    .line 1548
    cmp-long v1, v5, v8

    .line 1549
    .line 1550
    if-ltz v1, :cond_4a

    .line 1551
    .line 1552
    iget-wide v5, v0, Lk2/f;->d:J

    .line 1553
    .line 1554
    sub-long/2addr v5, v8

    .line 1555
    iget v1, v7, Lm2/g;->o:I

    .line 1556
    .line 1557
    const v8, 0x6d6f6f66

    .line 1558
    .line 1559
    .line 1560
    if-ne v1, v8, :cond_3c

    .line 1561
    .line 1562
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 1563
    .line 1564
    .line 1565
    move-result v1

    .line 1566
    const/4 v9, 0x0

    .line 1567
    :goto_1f
    if-ge v9, v1, :cond_3c

    .line 1568
    .line 1569
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1570
    .line 1571
    .line 1572
    move-result-object v10

    .line 1573
    check-cast v10, Lm2/f;

    .line 1574
    .line 1575
    iget-object v10, v10, Lm2/f;->b:Lm2/j;

    .line 1576
    .line 1577
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1578
    .line 1579
    .line 1580
    iput-wide v5, v10, Lm2/j;->c:J

    .line 1581
    .line 1582
    iput-wide v5, v10, Lm2/j;->b:J

    .line 1583
    .line 1584
    add-int/lit8 v9, v9, 0x1

    .line 1585
    .line 1586
    goto :goto_1f

    .line 1587
    :cond_3c
    iget v1, v7, Lm2/g;->o:I

    .line 1588
    .line 1589
    const v4, 0x6d646174

    .line 1590
    .line 1591
    .line 1592
    if-ne v1, v4, :cond_3e

    .line 1593
    .line 1594
    const/4 v4, 0x0

    .line 1595
    iput-object v4, v7, Lm2/g;->x:Lm2/f;

    .line 1596
    .line 1597
    iget-wide v1, v7, Lm2/g;->p:J

    .line 1598
    .line 1599
    add-long/2addr v5, v1

    .line 1600
    iput-wide v5, v7, Lm2/g;->s:J

    .line 1601
    .line 1602
    iget-boolean v1, v7, Lm2/g;->F:Z

    .line 1603
    .line 1604
    if-nez v1, :cond_3d

    .line 1605
    .line 1606
    iget-object v1, v7, Lm2/g;->C:Lk2/i;

    .line 1607
    .line 1608
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1609
    .line 1610
    .line 1611
    const/4 v1, 0x1

    .line 1612
    iput-boolean v1, v7, Lm2/g;->F:Z

    .line 1613
    .line 1614
    :cond_3d
    const/4 v1, 0x2

    .line 1615
    iput v1, v7, Lm2/g;->n:I

    .line 1616
    .line 1617
    const/4 v9, 0x1

    .line 1618
    goto/16 :goto_27

    .line 1619
    .line 1620
    :cond_3e
    const v4, 0x6d6f6f76

    .line 1621
    .line 1622
    .line 1623
    if-eq v1, v4, :cond_40

    .line 1624
    .line 1625
    const v4, 0x7472616b

    .line 1626
    .line 1627
    .line 1628
    if-eq v1, v4, :cond_40

    .line 1629
    .line 1630
    const v4, 0x6d646961

    .line 1631
    .line 1632
    .line 1633
    if-eq v1, v4, :cond_40

    .line 1634
    .line 1635
    const v4, 0x6d696e66

    .line 1636
    .line 1637
    .line 1638
    if-eq v1, v4, :cond_40

    .line 1639
    .line 1640
    const v4, 0x7374626c

    .line 1641
    .line 1642
    .line 1643
    if-eq v1, v4, :cond_40

    .line 1644
    .line 1645
    if-eq v1, v8, :cond_40

    .line 1646
    .line 1647
    const v4, 0x74726166

    .line 1648
    .line 1649
    .line 1650
    if-eq v1, v4, :cond_40

    .line 1651
    .line 1652
    const v4, 0x6d766578

    .line 1653
    .line 1654
    .line 1655
    if-eq v1, v4, :cond_40

    .line 1656
    .line 1657
    const v4, 0x65647473

    .line 1658
    .line 1659
    .line 1660
    if-ne v1, v4, :cond_3f

    .line 1661
    .line 1662
    goto :goto_20

    .line 1663
    :cond_3f
    const/4 v5, 0x0

    .line 1664
    goto :goto_21

    .line 1665
    :cond_40
    :goto_20
    const/4 v5, 0x1

    .line 1666
    :goto_21
    if-eqz v5, :cond_42

    .line 1667
    .line 1668
    iget-wide v4, v0, Lk2/f;->d:J

    .line 1669
    .line 1670
    iget-wide v8, v7, Lm2/g;->p:J

    .line 1671
    .line 1672
    add-long/2addr v4, v8

    .line 1673
    const-wide/16 v8, 0x8

    .line 1674
    .line 1675
    sub-long/2addr v4, v8

    .line 1676
    new-instance v2, Lm2/a;

    .line 1677
    .line 1678
    invoke-direct {v2, v4, v5, v1}, Lm2/a;-><init>(JI)V

    .line 1679
    .line 1680
    .line 1681
    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 1682
    .line 1683
    .line 1684
    iget-wide v1, v7, Lm2/g;->p:J

    .line 1685
    .line 1686
    iget v3, v7, Lm2/g;->q:I

    .line 1687
    .line 1688
    int-to-long v8, v3

    .line 1689
    cmp-long v1, v1, v8

    .line 1690
    .line 1691
    if-nez v1, :cond_41

    .line 1692
    .line 1693
    invoke-virtual {v7, v4, v5}, Lm2/g;->f(J)V

    .line 1694
    .line 1695
    .line 1696
    goto :goto_22

    .line 1697
    :cond_41
    const/4 v1, 0x0

    .line 1698
    iput v1, v7, Lm2/g;->n:I

    .line 1699
    .line 1700
    iput v1, v7, Lm2/g;->q:I

    .line 1701
    .line 1702
    :goto_22
    const/4 v1, 0x1

    .line 1703
    goto/16 :goto_26

    .line 1704
    .line 1705
    :cond_42
    const v3, 0x68646c72    # 4.3148E24f

    .line 1706
    .line 1707
    .line 1708
    if-eq v1, v3, :cond_44

    .line 1709
    .line 1710
    const v3, 0x6d646864

    .line 1711
    .line 1712
    .line 1713
    if-eq v1, v3, :cond_44

    .line 1714
    .line 1715
    const v3, 0x6d766864

    .line 1716
    .line 1717
    .line 1718
    if-eq v1, v3, :cond_44

    .line 1719
    .line 1720
    if-eq v1, v12, :cond_44

    .line 1721
    .line 1722
    const v3, 0x73747364

    .line 1723
    .line 1724
    .line 1725
    if-eq v1, v3, :cond_44

    .line 1726
    .line 1727
    const v3, 0x74666474

    .line 1728
    .line 1729
    .line 1730
    if-eq v1, v3, :cond_44

    .line 1731
    .line 1732
    const v3, 0x74666864

    .line 1733
    .line 1734
    .line 1735
    if-eq v1, v3, :cond_44

    .line 1736
    .line 1737
    const v3, 0x746b6864

    .line 1738
    .line 1739
    .line 1740
    if-eq v1, v3, :cond_44

    .line 1741
    .line 1742
    const v3, 0x74726578

    .line 1743
    .line 1744
    .line 1745
    if-eq v1, v3, :cond_44

    .line 1746
    .line 1747
    const v3, 0x7472756e

    .line 1748
    .line 1749
    .line 1750
    if-eq v1, v3, :cond_44

    .line 1751
    .line 1752
    const v3, 0x70737368    # 3.013775E29f

    .line 1753
    .line 1754
    .line 1755
    if-eq v1, v3, :cond_44

    .line 1756
    .line 1757
    const v3, 0x7361697a

    .line 1758
    .line 1759
    .line 1760
    if-eq v1, v3, :cond_44

    .line 1761
    .line 1762
    const v3, 0x7361696f

    .line 1763
    .line 1764
    .line 1765
    if-eq v1, v3, :cond_44

    .line 1766
    .line 1767
    const v3, 0x73656e63

    .line 1768
    .line 1769
    .line 1770
    if-eq v1, v3, :cond_44

    .line 1771
    .line 1772
    const v3, 0x75756964

    .line 1773
    .line 1774
    .line 1775
    if-eq v1, v3, :cond_44

    .line 1776
    .line 1777
    const v3, 0x73626770

    .line 1778
    .line 1779
    .line 1780
    if-eq v1, v3, :cond_44

    .line 1781
    .line 1782
    const v3, 0x73677064

    .line 1783
    .line 1784
    .line 1785
    if-eq v1, v3, :cond_44

    .line 1786
    .line 1787
    const v3, 0x656c7374

    .line 1788
    .line 1789
    .line 1790
    if-eq v1, v3, :cond_44

    .line 1791
    .line 1792
    const v3, 0x6d656864

    .line 1793
    .line 1794
    .line 1795
    if-eq v1, v3, :cond_44

    .line 1796
    .line 1797
    if-ne v1, v11, :cond_43

    .line 1798
    .line 1799
    goto :goto_23

    .line 1800
    :cond_43
    const/4 v5, 0x0

    .line 1801
    goto :goto_24

    .line 1802
    :cond_44
    :goto_23
    const/4 v5, 0x1

    .line 1803
    :goto_24
    const-wide/32 v3, 0x7fffffff

    .line 1804
    .line 1805
    .line 1806
    if-eqz v5, :cond_47

    .line 1807
    .line 1808
    iget v1, v7, Lm2/g;->q:I

    .line 1809
    .line 1810
    const/16 v5, 0x8

    .line 1811
    .line 1812
    if-ne v1, v5, :cond_46

    .line 1813
    .line 1814
    iget-wide v5, v7, Lm2/g;->p:J

    .line 1815
    .line 1816
    cmp-long v1, v5, v3

    .line 1817
    .line 1818
    if-gtz v1, :cond_45

    .line 1819
    .line 1820
    new-instance v1, Lb3/h;

    .line 1821
    .line 1822
    long-to-int v3, v5

    .line 1823
    invoke-direct {v1, v3}, Lb3/h;-><init>(I)V

    .line 1824
    .line 1825
    .line 1826
    iput-object v1, v7, Lm2/g;->r:Lb3/h;

    .line 1827
    .line 1828
    iget-object v2, v2, Lb3/h;->c:Ljava/io/Serializable;

    .line 1829
    .line 1830
    check-cast v2, [B

    .line 1831
    .line 1832
    iget-object v1, v1, Lb3/h;->c:Ljava/io/Serializable;

    .line 1833
    .line 1834
    check-cast v1, [B

    .line 1835
    .line 1836
    const/16 v3, 0x8

    .line 1837
    .line 1838
    const/4 v4, 0x0

    .line 1839
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1840
    .line 1841
    .line 1842
    goto :goto_25

    .line 1843
    :cond_45
    new-instance v0, Lf2/z;

    .line 1844
    .line 1845
    const-string v1, "Leaf atom with length > 2147483647 (unsupported)."

    .line 1846
    .line 1847
    invoke-direct {v0, v1}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 1848
    .line 1849
    .line 1850
    throw v0

    .line 1851
    :cond_46
    new-instance v0, Lf2/z;

    .line 1852
    .line 1853
    const-string v1, "Leaf atom defines extended atom size (unsupported)."

    .line 1854
    .line 1855
    invoke-direct {v0, v1}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 1856
    .line 1857
    .line 1858
    throw v0

    .line 1859
    :cond_47
    iget-wide v1, v7, Lm2/g;->p:J

    .line 1860
    .line 1861
    cmp-long v1, v1, v3

    .line 1862
    .line 1863
    if-gtz v1, :cond_49

    .line 1864
    .line 1865
    const/4 v1, 0x0

    .line 1866
    iput-object v1, v7, Lm2/g;->r:Lb3/h;

    .line 1867
    .line 1868
    :goto_25
    const/4 v1, 0x1

    .line 1869
    iput v1, v7, Lm2/g;->n:I

    .line 1870
    .line 1871
    :goto_26
    move v9, v1

    .line 1872
    :goto_27
    if-nez v9, :cond_48

    .line 1873
    .line 1874
    const/4 v1, -0x1

    .line 1875
    return v1

    .line 1876
    :cond_48
    :goto_28
    move-object v1, v7

    .line 1877
    goto/16 :goto_0

    .line 1878
    .line 1879
    :cond_49
    new-instance v0, Lf2/z;

    .line 1880
    .line 1881
    const-string v1, "Skipping atom with length > 2147483647 (unsupported)."

    .line 1882
    .line 1883
    invoke-direct {v0, v1}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 1884
    .line 1885
    .line 1886
    throw v0

    .line 1887
    :cond_4a
    new-instance v0, Lf2/z;

    .line 1888
    .line 1889
    const-string v1, "Atom size less than header length (unsupported)."

    .line 1890
    .line 1891
    invoke-direct {v0, v1}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 1892
    .line 1893
    .line 1894
    throw v0
.end method

.method public final b(Lw2/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm2/g;->C:Lk2/i;

    return-void
.end method

.method public final c(Lk2/f;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-wide v1, v0, Lk2/f;->c:J

    .line 4
    .line 5
    const-wide/16 v3, -0x1

    .line 6
    .line 7
    cmp-long v5, v1, v3

    .line 8
    .line 9
    const-wide/16 v6, 0x1000

    .line 10
    .line 11
    if-eqz v5, :cond_1

    .line 12
    .line 13
    cmp-long v8, v1, v6

    .line 14
    .line 15
    if-lez v8, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-wide v6, v1

    .line 19
    :cond_1
    :goto_0
    long-to-int v6, v6

    .line 20
    new-instance v7, Lb3/h;

    .line 21
    .line 22
    const/16 v8, 0x40

    .line 23
    .line 24
    invoke-direct {v7, v8}, Lb3/h;-><init>(I)V

    .line 25
    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    move v9, v8

    .line 29
    move v10, v9

    .line 30
    :goto_1
    if-ge v9, v6, :cond_13

    .line 31
    .line 32
    const/16 v12, 0x8

    .line 33
    .line 34
    invoke-virtual {v7, v12}, Lb3/h;->n(I)V

    .line 35
    .line 36
    .line 37
    iget-object v13, v7, Lb3/h;->c:Ljava/io/Serializable;

    .line 38
    .line 39
    check-cast v13, [B

    .line 40
    .line 41
    invoke-virtual {v0, v13, v8, v12, v8}, Lk2/f;->b([BIIZ)Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {v7}, Lb3/h;->i()J

    .line 45
    .line 46
    .line 47
    move-result-wide v13

    .line 48
    invoke-virtual {v7}, Lb3/h;->b()I

    .line 49
    .line 50
    .line 51
    move-result v15

    .line 52
    const-wide/16 v16, 0x1

    .line 53
    .line 54
    cmp-long v16, v13, v16

    .line 55
    .line 56
    if-nez v16, :cond_2

    .line 57
    .line 58
    iget-object v13, v7, Lb3/h;->c:Ljava/io/Serializable;

    .line 59
    .line 60
    check-cast v13, [B

    .line 61
    .line 62
    invoke-virtual {v0, v13, v12, v12, v8}, Lk2/f;->b([BIIZ)Z

    .line 63
    .line 64
    .line 65
    const/16 v13, 0x10

    .line 66
    .line 67
    invoke-virtual {v7, v13}, Lb3/h;->p(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7}, Lb3/h;->d()J

    .line 71
    .line 72
    .line 73
    move-result-wide v16

    .line 74
    move-wide/from16 v3, v16

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    const-wide/16 v16, 0x0

    .line 78
    .line 79
    cmp-long v16, v13, v16

    .line 80
    .line 81
    if-nez v16, :cond_3

    .line 82
    .line 83
    cmp-long v16, v1, v3

    .line 84
    .line 85
    if-eqz v16, :cond_3

    .line 86
    .line 87
    iget-wide v13, v0, Lk2/f;->d:J

    .line 88
    .line 89
    iget v3, v0, Lk2/f;->f:I

    .line 90
    .line 91
    int-to-long v3, v3

    .line 92
    add-long/2addr v13, v3

    .line 93
    sub-long v3, v1, v13

    .line 94
    .line 95
    int-to-long v13, v12

    .line 96
    add-long/2addr v13, v3

    .line 97
    :cond_3
    move-wide v3, v13

    .line 98
    move v13, v12

    .line 99
    :goto_2
    int-to-long v11, v13

    .line 100
    cmp-long v18, v3, v11

    .line 101
    .line 102
    if-gez v18, :cond_4

    .line 103
    .line 104
    goto/16 :goto_a

    .line 105
    .line 106
    :cond_4
    add-int/2addr v9, v13

    .line 107
    const v13, 0x6d6f6f76

    .line 108
    .line 109
    .line 110
    if-ne v15, v13, :cond_6

    .line 111
    .line 112
    long-to-int v3, v3

    .line 113
    add-int/2addr v6, v3

    .line 114
    if-eqz v5, :cond_5

    .line 115
    .line 116
    int-to-long v3, v6

    .line 117
    cmp-long v3, v3, v1

    .line 118
    .line 119
    if-lez v3, :cond_5

    .line 120
    .line 121
    long-to-int v3, v1

    .line 122
    move v6, v3

    .line 123
    :cond_5
    :goto_3
    const-wide/16 v3, -0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_6
    const v13, 0x6d6f6f66

    .line 127
    .line 128
    .line 129
    if-eq v15, v13, :cond_12

    .line 130
    .line 131
    const v13, 0x6d766578

    .line 132
    .line 133
    .line 134
    if-ne v15, v13, :cond_7

    .line 135
    .line 136
    goto/16 :goto_c

    .line 137
    .line 138
    :cond_7
    move v13, v15

    .line 139
    int-to-long v14, v9

    .line 140
    add-long/2addr v14, v3

    .line 141
    sub-long/2addr v14, v11

    .line 142
    move/from16 v19, v9

    .line 143
    .line 144
    int-to-long v8, v6

    .line 145
    cmp-long v8, v14, v8

    .line 146
    .line 147
    if-ltz v8, :cond_8

    .line 148
    .line 149
    const/4 v4, 0x0

    .line 150
    goto/16 :goto_d

    .line 151
    .line 152
    :cond_8
    sub-long/2addr v3, v11

    .line 153
    long-to-int v3, v3

    .line 154
    add-int v9, v19, v3

    .line 155
    .line 156
    const v4, 0x66747970

    .line 157
    .line 158
    .line 159
    if-ne v13, v4, :cond_10

    .line 160
    .line 161
    const/16 v4, 0x8

    .line 162
    .line 163
    if-ge v3, v4, :cond_9

    .line 164
    .line 165
    goto :goto_a

    .line 166
    :cond_9
    invoke-virtual {v7, v3}, Lb3/h;->n(I)V

    .line 167
    .line 168
    .line 169
    iget-object v4, v7, Lb3/h;->c:Ljava/io/Serializable;

    .line 170
    .line 171
    check-cast v4, [B

    .line 172
    .line 173
    const/4 v8, 0x0

    .line 174
    invoke-virtual {v0, v4, v8, v3, v8}, Lk2/f;->b([BIIZ)Z

    .line 175
    .line 176
    .line 177
    div-int/lit8 v3, v3, 0x4

    .line 178
    .line 179
    const/4 v8, 0x0

    .line 180
    :goto_4
    if-ge v8, v3, :cond_f

    .line 181
    .line 182
    const/4 v4, 0x1

    .line 183
    if-ne v8, v4, :cond_a

    .line 184
    .line 185
    const/4 v4, 0x4

    .line 186
    invoke-virtual {v7, v4}, Lb3/h;->r(I)V

    .line 187
    .line 188
    .line 189
    goto :goto_8

    .line 190
    :cond_a
    invoke-virtual {v7}, Lb3/h;->b()I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    ushr-int/lit8 v11, v4, 0x8

    .line 195
    .line 196
    const v12, 0x336770

    .line 197
    .line 198
    .line 199
    if-ne v11, v12, :cond_b

    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_b
    sget-object v11, Lc1/b;->t:[I

    .line 203
    .line 204
    const/4 v12, 0x0

    .line 205
    :goto_5
    const/16 v13, 0x1a

    .line 206
    .line 207
    if-ge v12, v13, :cond_d

    .line 208
    .line 209
    aget v13, v11, v12

    .line 210
    .line 211
    if-ne v13, v4, :cond_c

    .line 212
    .line 213
    :goto_6
    const/16 v18, 0x1

    .line 214
    .line 215
    goto :goto_7

    .line 216
    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_d
    const/16 v18, 0x0

    .line 220
    .line 221
    :goto_7
    if-eqz v18, :cond_e

    .line 222
    .line 223
    const/4 v10, 0x1

    .line 224
    goto :goto_9

    .line 225
    :cond_e
    :goto_8
    add-int/lit8 v8, v8, 0x1

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_f
    :goto_9
    if-nez v10, :cond_11

    .line 229
    .line 230
    :goto_a
    const/4 v8, 0x0

    .line 231
    goto :goto_f

    .line 232
    :cond_10
    if-eqz v3, :cond_11

    .line 233
    .line 234
    const/4 v4, 0x0

    .line 235
    invoke-virtual {v0, v3, v4}, Lk2/f;->a(IZ)Z

    .line 236
    .line 237
    .line 238
    goto :goto_b

    .line 239
    :cond_11
    const/4 v4, 0x0

    .line 240
    :goto_b
    move v8, v4

    .line 241
    goto :goto_3

    .line 242
    :cond_12
    :goto_c
    move v4, v8

    .line 243
    const/4 v0, 0x1

    .line 244
    goto :goto_e

    .line 245
    :cond_13
    move v4, v8

    .line 246
    :goto_d
    move v0, v4

    .line 247
    :goto_e
    if-eqz v10, :cond_14

    .line 248
    .line 249
    const/4 v1, 0x1

    .line 250
    if-ne v1, v0, :cond_14

    .line 251
    .line 252
    move v8, v1

    .line 253
    goto :goto_f

    .line 254
    :cond_14
    move v8, v4

    .line 255
    :goto_f
    return v8
.end method

.method public final f(J)V
    .locals 49

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    :cond_0
    :goto_0
    iget-object v2, v0, Lm2/g;->l:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-nez v3, :cond_60

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Lm2/a;

    .line 17
    .line 18
    iget-wide v3, v3, Lm2/a;->c:J

    .line 19
    .line 20
    cmp-long v3, v3, p1

    .line 21
    .line 22
    if-nez v3, :cond_60

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lm2/a;

    .line 29
    .line 30
    iget v4, v3, Li2/a;->b:I

    .line 31
    .line 32
    iget-object v5, v0, Lm2/g;->c:Landroid/util/SparseArray;

    .line 33
    .line 34
    iget-object v6, v3, Lm2/a;->d:Ljava/util/ArrayList;

    .line 35
    .line 36
    iget-object v7, v3, Lm2/a;->e:Ljava/util/ArrayList;

    .line 37
    .line 38
    const v8, 0x6d6f6f76

    .line 39
    .line 40
    .line 41
    const/16 v9, 0xc

    .line 42
    .line 43
    if-ne v4, v8, :cond_11

    .line 44
    .line 45
    invoke-static {v6}, Lm2/g;->d(Ljava/util/ArrayList;)Lj2/b;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const v4, 0x6d766578

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v4}, Lm2/a;->c(I)Lm2/a;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    new-instance v6, Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object v8, v4, Lm2/a;->d:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    const/4 v10, 0x0

    .line 68
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    move-wide/from16 v16, v11

    .line 74
    .line 75
    :goto_1
    if-ge v10, v8, :cond_4

    .line 76
    .line 77
    iget-object v11, v4, Lm2/a;->d:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    check-cast v11, Lm2/b;

    .line 84
    .line 85
    iget v12, v11, Li2/a;->b:I

    .line 86
    .line 87
    const v13, 0x74726578

    .line 88
    .line 89
    .line 90
    iget-object v11, v11, Lm2/b;->c:Lb3/h;

    .line 91
    .line 92
    if-ne v12, v13, :cond_1

    .line 93
    .line 94
    invoke-virtual {v11, v9}, Lb3/h;->q(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v11}, Lb3/h;->b()I

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    invoke-virtual {v11}, Lb3/h;->k()I

    .line 102
    .line 103
    .line 104
    move-result v12

    .line 105
    add-int/lit8 v12, v12, -0x1

    .line 106
    .line 107
    invoke-virtual {v11}, Lb3/h;->k()I

    .line 108
    .line 109
    .line 110
    move-result v13

    .line 111
    invoke-virtual {v11}, Lb3/h;->k()I

    .line 112
    .line 113
    .line 114
    move-result v14

    .line 115
    invoke-virtual {v11}, Lb3/h;->b()I

    .line 116
    .line 117
    .line 118
    move-result v11

    .line 119
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    new-instance v15, Lm2/d;

    .line 124
    .line 125
    invoke-direct {v15, v12, v13, v14, v11}, Lm2/d;-><init>(IIII)V

    .line 126
    .line 127
    .line 128
    invoke-static {v9, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v11, Ljava/lang/Integer;

    .line 135
    .line 136
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v11

    .line 140
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 141
    .line 142
    invoke-virtual {v6, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_1
    const v9, 0x6d656864

    .line 147
    .line 148
    .line 149
    if-ne v12, v9, :cond_3

    .line 150
    .line 151
    const/16 v9, 0x8

    .line 152
    .line 153
    invoke-virtual {v11, v9}, Lb3/h;->q(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v11}, Lb3/h;->b()I

    .line 157
    .line 158
    .line 159
    move-result v9

    .line 160
    shr-int/lit8 v9, v9, 0x18

    .line 161
    .line 162
    and-int/lit16 v9, v9, 0xff

    .line 163
    .line 164
    if-nez v9, :cond_2

    .line 165
    .line 166
    invoke-virtual {v11}, Lb3/h;->i()J

    .line 167
    .line 168
    .line 169
    move-result-wide v11

    .line 170
    goto :goto_2

    .line 171
    :cond_2
    invoke-virtual {v11}, Lb3/h;->l()J

    .line 172
    .line 173
    .line 174
    move-result-wide v11

    .line 175
    :goto_2
    move-wide/from16 v16, v11

    .line 176
    .line 177
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 178
    .line 179
    const/16 v9, 0xc

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_4
    new-instance v4, Landroid/util/SparseArray;

    .line 183
    .line 184
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    const/4 v9, 0x0

    .line 192
    :goto_4
    if-ge v9, v8, :cond_7

    .line 193
    .line 194
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    check-cast v10, Lm2/a;

    .line 199
    .line 200
    iget v11, v10, Li2/a;->b:I

    .line 201
    .line 202
    const v12, 0x7472616b

    .line 203
    .line 204
    .line 205
    if-ne v11, v12, :cond_6

    .line 206
    .line 207
    const v11, 0x6d766864

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, v11}, Lm2/a;->d(I)Lm2/b;

    .line 211
    .line 212
    .line 213
    move-result-object v11

    .line 214
    iget v12, v0, Lm2/g;->a:I

    .line 215
    .line 216
    and-int/lit8 v12, v12, 0x10

    .line 217
    .line 218
    if-eqz v12, :cond_5

    .line 219
    .line 220
    const/4 v12, 0x1

    .line 221
    goto :goto_5

    .line 222
    :cond_5
    const/4 v12, 0x0

    .line 223
    :goto_5
    move v15, v12

    .line 224
    move-wide/from16 v12, v16

    .line 225
    .line 226
    move-object v14, v2

    .line 227
    invoke-static/range {v10 .. v15}, Lm2/c;->d(Lm2/a;Lm2/b;JLj2/b;Z)Lm2/h;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    if-eqz v10, :cond_6

    .line 232
    .line 233
    iget v11, v10, Lm2/h;->a:I

    .line 234
    .line 235
    invoke-virtual {v4, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_7
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-nez v3, :cond_d

    .line 250
    .line 251
    const/4 v3, 0x0

    .line 252
    :goto_6
    if-ge v3, v2, :cond_9

    .line 253
    .line 254
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    check-cast v7, Lm2/h;

    .line 259
    .line 260
    new-instance v8, Lm2/f;

    .line 261
    .line 262
    iget-object v9, v0, Lm2/g;->C:Lk2/i;

    .line 263
    .line 264
    iget v10, v7, Lm2/h;->b:I

    .line 265
    .line 266
    check-cast v9, Lw2/p;

    .line 267
    .line 268
    invoke-virtual {v9, v3, v10}, Lw2/p;->C(II)Lk2/o;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    invoke-direct {v8, v9}, Lm2/f;-><init>(Lk2/o;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 276
    .line 277
    .line 278
    move-result v10

    .line 279
    iget v11, v7, Lm2/h;->a:I

    .line 280
    .line 281
    const/4 v12, 0x1

    .line 282
    if-ne v10, v12, :cond_8

    .line 283
    .line 284
    const/4 v10, 0x0

    .line 285
    invoke-virtual {v6, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v10

    .line 289
    goto :goto_7

    .line 290
    :cond_8
    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v10

    .line 294
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    :goto_7
    check-cast v10, Lm2/d;

    .line 298
    .line 299
    iput-object v7, v8, Lm2/f;->d:Lm2/h;

    .line 300
    .line 301
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    iput-object v10, v8, Lm2/f;->e:Lm2/d;

    .line 305
    .line 306
    iget-object v10, v7, Lm2/h;->e:Lf2/t;

    .line 307
    .line 308
    invoke-interface {v9, v10}, Lk2/o;->c(Lf2/t;)V

    .line 309
    .line 310
    .line 311
    iget-object v9, v8, Lm2/f;->b:Lm2/j;

    .line 312
    .line 313
    const/4 v10, 0x0

    .line 314
    iput v10, v9, Lm2/j;->d:I

    .line 315
    .line 316
    const-wide/16 v12, 0x0

    .line 317
    .line 318
    iput-wide v12, v9, Lm2/j;->r:J

    .line 319
    .line 320
    iput-boolean v10, v9, Lm2/j;->l:Z

    .line 321
    .line 322
    iput-boolean v10, v9, Lm2/j;->q:Z

    .line 323
    .line 324
    const/4 v12, 0x0

    .line 325
    iput-object v12, v9, Lm2/j;->n:Lm2/i;

    .line 326
    .line 327
    iput v10, v8, Lm2/f;->f:I

    .line 328
    .line 329
    iput v10, v8, Lm2/f;->h:I

    .line 330
    .line 331
    iput v10, v8, Lm2/f;->g:I

    .line 332
    .line 333
    iput v10, v8, Lm2/f;->i:I

    .line 334
    .line 335
    invoke-virtual {v5, v11, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    iget-wide v8, v0, Lm2/g;->v:J

    .line 339
    .line 340
    iget-wide v10, v7, Lm2/h;->d:J

    .line 341
    .line 342
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 343
    .line 344
    .line 345
    move-result-wide v7

    .line 346
    iput-wide v7, v0, Lm2/g;->v:J

    .line 347
    .line 348
    add-int/lit8 v3, v3, 0x1

    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_9
    iget-object v2, v1, Lm2/g;->D:[Lk2/o;

    .line 352
    .line 353
    iget-object v3, v1, Lm2/g;->c:Landroid/util/SparseArray;

    .line 354
    .line 355
    if-nez v2, :cond_b

    .line 356
    .line 357
    const/4 v2, 0x2

    .line 358
    new-array v2, v2, [Lk2/o;

    .line 359
    .line 360
    iput-object v2, v1, Lm2/g;->D:[Lk2/o;

    .line 361
    .line 362
    iget v4, v1, Lm2/g;->a:I

    .line 363
    .line 364
    const/4 v5, 0x4

    .line 365
    and-int/2addr v4, v5

    .line 366
    if-eqz v4, :cond_a

    .line 367
    .line 368
    iget-object v4, v1, Lm2/g;->C:Lk2/i;

    .line 369
    .line 370
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 371
    .line 372
    .line 373
    move-result v6

    .line 374
    check-cast v4, Lw2/p;

    .line 375
    .line 376
    invoke-virtual {v4, v6, v5}, Lw2/p;->C(II)Lk2/o;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    const/4 v5, 0x0

    .line 381
    aput-object v4, v2, v5

    .line 382
    .line 383
    const/4 v2, 0x1

    .line 384
    goto :goto_8

    .line 385
    :cond_a
    const/4 v2, 0x0

    .line 386
    :goto_8
    iget-object v4, v1, Lm2/g;->D:[Lk2/o;

    .line 387
    .line 388
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    check-cast v2, [Lk2/o;

    .line 393
    .line 394
    iput-object v2, v1, Lm2/g;->D:[Lk2/o;

    .line 395
    .line 396
    array-length v4, v2

    .line 397
    const/4 v5, 0x0

    .line 398
    :goto_9
    if-ge v5, v4, :cond_b

    .line 399
    .line 400
    aget-object v6, v2, v5

    .line 401
    .line 402
    sget-object v7, Lm2/g;->H:Lf2/t;

    .line 403
    .line 404
    invoke-interface {v6, v7}, Lk2/o;->c(Lf2/t;)V

    .line 405
    .line 406
    .line 407
    add-int/lit8 v5, v5, 0x1

    .line 408
    .line 409
    goto :goto_9

    .line 410
    :cond_b
    iget-object v2, v1, Lm2/g;->E:[Lk2/o;

    .line 411
    .line 412
    if-nez v2, :cond_c

    .line 413
    .line 414
    iget-object v2, v1, Lm2/g;->b:Ljava/util/List;

    .line 415
    .line 416
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    new-array v4, v4, [Lk2/o;

    .line 421
    .line 422
    iput-object v4, v1, Lm2/g;->E:[Lk2/o;

    .line 423
    .line 424
    const/4 v4, 0x0

    .line 425
    :goto_a
    iget-object v5, v1, Lm2/g;->E:[Lk2/o;

    .line 426
    .line 427
    array-length v5, v5

    .line 428
    if-ge v4, v5, :cond_c

    .line 429
    .line 430
    iget-object v5, v1, Lm2/g;->C:Lk2/i;

    .line 431
    .line 432
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 433
    .line 434
    .line 435
    move-result v6

    .line 436
    add-int/lit8 v6, v6, 0x1

    .line 437
    .line 438
    add-int/2addr v6, v4

    .line 439
    const/4 v7, 0x3

    .line 440
    check-cast v5, Lw2/p;

    .line 441
    .line 442
    invoke-virtual {v5, v6, v7}, Lw2/p;->C(II)Lk2/o;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v6

    .line 450
    check-cast v6, Lf2/t;

    .line 451
    .line 452
    invoke-interface {v5, v6}, Lk2/o;->c(Lf2/t;)V

    .line 453
    .line 454
    .line 455
    iget-object v6, v1, Lm2/g;->E:[Lk2/o;

    .line 456
    .line 457
    aput-object v5, v6, v4

    .line 458
    .line 459
    add-int/lit8 v4, v4, 0x1

    .line 460
    .line 461
    goto :goto_a

    .line 462
    :cond_c
    iget-object v2, v0, Lm2/g;->C:Lk2/i;

    .line 463
    .line 464
    check-cast v2, Lw2/p;

    .line 465
    .line 466
    invoke-virtual {v2}, Lw2/p;->j()V

    .line 467
    .line 468
    .line 469
    goto :goto_e

    .line 470
    :cond_d
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 471
    .line 472
    .line 473
    move-result v3

    .line 474
    if-ne v3, v2, :cond_e

    .line 475
    .line 476
    const/4 v3, 0x1

    .line 477
    goto :goto_b

    .line 478
    :cond_e
    const/4 v3, 0x0

    .line 479
    :goto_b
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 480
    .line 481
    .line 482
    const/4 v3, 0x0

    .line 483
    :goto_c
    if-ge v3, v2, :cond_10

    .line 484
    .line 485
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v7

    .line 489
    check-cast v7, Lm2/h;

    .line 490
    .line 491
    iget v8, v7, Lm2/h;->a:I

    .line 492
    .line 493
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v8

    .line 497
    check-cast v8, Lm2/f;

    .line 498
    .line 499
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 500
    .line 501
    .line 502
    move-result v9

    .line 503
    const/4 v10, 0x1

    .line 504
    if-ne v9, v10, :cond_f

    .line 505
    .line 506
    const/4 v9, 0x0

    .line 507
    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v9

    .line 511
    goto :goto_d

    .line 512
    :cond_f
    iget v9, v7, Lm2/h;->a:I

    .line 513
    .line 514
    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v9

    .line 518
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 519
    .line 520
    .line 521
    :goto_d
    check-cast v9, Lm2/d;

    .line 522
    .line 523
    iput-object v7, v8, Lm2/f;->d:Lm2/h;

    .line 524
    .line 525
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 526
    .line 527
    .line 528
    iput-object v9, v8, Lm2/f;->e:Lm2/d;

    .line 529
    .line 530
    iget-object v9, v8, Lm2/f;->a:Lk2/o;

    .line 531
    .line 532
    iget-object v7, v7, Lm2/h;->e:Lf2/t;

    .line 533
    .line 534
    invoke-interface {v9, v7}, Lk2/o;->c(Lf2/t;)V

    .line 535
    .line 536
    .line 537
    iget-object v7, v8, Lm2/f;->b:Lm2/j;

    .line 538
    .line 539
    const/4 v9, 0x0

    .line 540
    iput v9, v7, Lm2/j;->d:I

    .line 541
    .line 542
    const-wide/16 v10, 0x0

    .line 543
    .line 544
    iput-wide v10, v7, Lm2/j;->r:J

    .line 545
    .line 546
    iput-boolean v9, v7, Lm2/j;->l:Z

    .line 547
    .line 548
    iput-boolean v9, v7, Lm2/j;->q:Z

    .line 549
    .line 550
    const/4 v10, 0x0

    .line 551
    iput-object v10, v7, Lm2/j;->n:Lm2/i;

    .line 552
    .line 553
    iput v9, v8, Lm2/f;->f:I

    .line 554
    .line 555
    iput v9, v8, Lm2/f;->h:I

    .line 556
    .line 557
    iput v9, v8, Lm2/f;->g:I

    .line 558
    .line 559
    iput v9, v8, Lm2/f;->i:I

    .line 560
    .line 561
    add-int/lit8 v3, v3, 0x1

    .line 562
    .line 563
    goto :goto_c

    .line 564
    :cond_10
    :goto_e
    move-object/from16 v5, p0

    .line 565
    .line 566
    goto/16 :goto_0

    .line 567
    .line 568
    :cond_11
    const v8, 0x6d6f6f66

    .line 569
    .line 570
    .line 571
    if-ne v4, v8, :cond_5f

    .line 572
    .line 573
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 574
    .line 575
    .line 576
    move-result v2

    .line 577
    const/4 v3, 0x0

    .line 578
    move v4, v3

    .line 579
    move-object v3, v1

    .line 580
    move-object v1, v0

    .line 581
    :goto_f
    if-ge v4, v2, :cond_57

    .line 582
    .line 583
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v8

    .line 587
    check-cast v8, Lm2/a;

    .line 588
    .line 589
    iget v9, v8, Li2/a;->b:I

    .line 590
    .line 591
    const v10, 0x74726166

    .line 592
    .line 593
    .line 594
    if-ne v9, v10, :cond_56

    .line 595
    .line 596
    const v9, 0x74666864

    .line 597
    .line 598
    .line 599
    invoke-virtual {v8, v9}, Lm2/a;->d(I)Lm2/b;

    .line 600
    .line 601
    .line 602
    move-result-object v9

    .line 603
    iget-object v9, v9, Lm2/b;->c:Lb3/h;

    .line 604
    .line 605
    const/16 v10, 0x8

    .line 606
    .line 607
    invoke-virtual {v9, v10}, Lb3/h;->q(I)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v9}, Lb3/h;->b()I

    .line 611
    .line 612
    .line 613
    move-result v10

    .line 614
    const v11, 0xffffff

    .line 615
    .line 616
    .line 617
    and-int/2addr v10, v11

    .line 618
    invoke-virtual {v9}, Lb3/h;->b()I

    .line 619
    .line 620
    .line 621
    move-result v11

    .line 622
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 623
    .line 624
    .line 625
    move-result v12

    .line 626
    const/4 v13, 0x1

    .line 627
    if-ne v12, v13, :cond_12

    .line 628
    .line 629
    const/4 v11, 0x0

    .line 630
    invoke-virtual {v5, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v11

    .line 634
    goto :goto_10

    .line 635
    :cond_12
    invoke-virtual {v5, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object v11

    .line 639
    :goto_10
    check-cast v11, Lm2/f;

    .line 640
    .line 641
    if-nez v11, :cond_13

    .line 642
    .line 643
    const/4 v11, 0x0

    .line 644
    move-object/from16 v16, v0

    .line 645
    .line 646
    goto :goto_15

    .line 647
    :cond_13
    and-int/lit8 v12, v10, 0x1

    .line 648
    .line 649
    iget-object v13, v11, Lm2/f;->b:Lm2/j;

    .line 650
    .line 651
    if-eqz v12, :cond_14

    .line 652
    .line 653
    invoke-virtual {v9}, Lb3/h;->l()J

    .line 654
    .line 655
    .line 656
    move-result-wide v14

    .line 657
    iput-wide v14, v13, Lm2/j;->b:J

    .line 658
    .line 659
    iput-wide v14, v13, Lm2/j;->c:J

    .line 660
    .line 661
    :cond_14
    iget-object v12, v11, Lm2/f;->e:Lm2/d;

    .line 662
    .line 663
    and-int/lit8 v14, v10, 0x2

    .line 664
    .line 665
    if-eqz v14, :cond_15

    .line 666
    .line 667
    invoke-virtual {v9}, Lb3/h;->k()I

    .line 668
    .line 669
    .line 670
    move-result v14

    .line 671
    add-int/lit8 v14, v14, -0x1

    .line 672
    .line 673
    goto :goto_11

    .line 674
    :cond_15
    iget v14, v12, Lm2/d;->a:I

    .line 675
    .line 676
    :goto_11
    and-int/lit8 v15, v10, 0x8

    .line 677
    .line 678
    if-eqz v15, :cond_16

    .line 679
    .line 680
    invoke-virtual {v9}, Lb3/h;->k()I

    .line 681
    .line 682
    .line 683
    move-result v15

    .line 684
    goto :goto_12

    .line 685
    :cond_16
    iget v15, v12, Lm2/d;->b:I

    .line 686
    .line 687
    :goto_12
    and-int/lit8 v16, v10, 0x10

    .line 688
    .line 689
    if-eqz v16, :cond_17

    .line 690
    .line 691
    invoke-virtual {v9}, Lb3/h;->k()I

    .line 692
    .line 693
    .line 694
    move-result v16

    .line 695
    move/from16 v48, v16

    .line 696
    .line 697
    move-object/from16 v16, v0

    .line 698
    .line 699
    move/from16 v0, v48

    .line 700
    .line 701
    goto :goto_13

    .line 702
    :cond_17
    move-object/from16 v16, v0

    .line 703
    .line 704
    iget v0, v12, Lm2/d;->c:I

    .line 705
    .line 706
    :goto_13
    and-int/lit8 v10, v10, 0x20

    .line 707
    .line 708
    if-eqz v10, :cond_18

    .line 709
    .line 710
    invoke-virtual {v9}, Lb3/h;->k()I

    .line 711
    .line 712
    .line 713
    move-result v9

    .line 714
    goto :goto_14

    .line 715
    :cond_18
    iget v9, v12, Lm2/d;->d:I

    .line 716
    .line 717
    :goto_14
    new-instance v10, Lm2/d;

    .line 718
    .line 719
    invoke-direct {v10, v14, v15, v0, v9}, Lm2/d;-><init>(IIII)V

    .line 720
    .line 721
    .line 722
    iput-object v10, v13, Lm2/j;->a:Lm2/d;

    .line 723
    .line 724
    :goto_15
    if-nez v11, :cond_19

    .line 725
    .line 726
    goto/16 :goto_38

    .line 727
    .line 728
    :cond_19
    iget-object v0, v11, Lm2/f;->b:Lm2/j;

    .line 729
    .line 730
    iget-wide v9, v0, Lm2/j;->r:J

    .line 731
    .line 732
    const/4 v3, 0x0

    .line 733
    iput v3, v0, Lm2/j;->d:I

    .line 734
    .line 735
    const-wide/16 v12, 0x0

    .line 736
    .line 737
    iput-wide v12, v0, Lm2/j;->r:J

    .line 738
    .line 739
    iput-boolean v3, v0, Lm2/j;->l:Z

    .line 740
    .line 741
    iput-boolean v3, v0, Lm2/j;->q:Z

    .line 742
    .line 743
    const/4 v12, 0x0

    .line 744
    iput-object v12, v0, Lm2/j;->n:Lm2/i;

    .line 745
    .line 746
    iput v3, v11, Lm2/f;->f:I

    .line 747
    .line 748
    iput v3, v11, Lm2/f;->h:I

    .line 749
    .line 750
    iput v3, v11, Lm2/f;->g:I

    .line 751
    .line 752
    iput v3, v11, Lm2/f;->i:I

    .line 753
    .line 754
    const v3, 0x74666474

    .line 755
    .line 756
    .line 757
    invoke-virtual {v8, v3}, Lm2/a;->d(I)Lm2/b;

    .line 758
    .line 759
    .line 760
    move-result-object v12

    .line 761
    iget v1, v1, Lm2/g;->a:I

    .line 762
    .line 763
    if-eqz v12, :cond_1b

    .line 764
    .line 765
    and-int/lit8 v12, v1, 0x2

    .line 766
    .line 767
    if-nez v12, :cond_1b

    .line 768
    .line 769
    invoke-virtual {v8, v3}, Lm2/a;->d(I)Lm2/b;

    .line 770
    .line 771
    .line 772
    move-result-object v3

    .line 773
    iget-object v3, v3, Lm2/b;->c:Lb3/h;

    .line 774
    .line 775
    const/16 v9, 0x8

    .line 776
    .line 777
    invoke-virtual {v3, v9}, Lb3/h;->q(I)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v3}, Lb3/h;->b()I

    .line 781
    .line 782
    .line 783
    move-result v9

    .line 784
    shr-int/lit8 v9, v9, 0x18

    .line 785
    .line 786
    and-int/lit16 v9, v9, 0xff

    .line 787
    .line 788
    const/4 v10, 0x1

    .line 789
    if-ne v9, v10, :cond_1a

    .line 790
    .line 791
    invoke-virtual {v3}, Lb3/h;->l()J

    .line 792
    .line 793
    .line 794
    move-result-wide v9

    .line 795
    goto :goto_16

    .line 796
    :cond_1a
    invoke-virtual {v3}, Lb3/h;->i()J

    .line 797
    .line 798
    .line 799
    move-result-wide v9

    .line 800
    :cond_1b
    :goto_16
    iget-object v3, v8, Lm2/a;->d:Ljava/util/ArrayList;

    .line 801
    .line 802
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 803
    .line 804
    .line 805
    move-result v12

    .line 806
    const/4 v13, 0x0

    .line 807
    const/4 v14, 0x0

    .line 808
    const/4 v15, 0x0

    .line 809
    move/from16 v17, v2

    .line 810
    .line 811
    :goto_17
    const v2, 0x7472756e

    .line 812
    .line 813
    .line 814
    if-ge v15, v12, :cond_1d

    .line 815
    .line 816
    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    move-result-object v16

    .line 820
    move-object/from16 v18, v7

    .line 821
    .line 822
    move-object/from16 v7, v16

    .line 823
    .line 824
    check-cast v7, Lm2/b;

    .line 825
    .line 826
    move-wide/from16 v19, v9

    .line 827
    .line 828
    iget v9, v7, Li2/a;->b:I

    .line 829
    .line 830
    if-ne v9, v2, :cond_1c

    .line 831
    .line 832
    iget-object v2, v7, Lm2/b;->c:Lb3/h;

    .line 833
    .line 834
    const/16 v7, 0xc

    .line 835
    .line 836
    invoke-virtual {v2, v7}, Lb3/h;->q(I)V

    .line 837
    .line 838
    .line 839
    invoke-virtual {v2}, Lb3/h;->k()I

    .line 840
    .line 841
    .line 842
    move-result v2

    .line 843
    if-lez v2, :cond_1c

    .line 844
    .line 845
    add-int/2addr v13, v2

    .line 846
    add-int/lit8 v14, v14, 0x1

    .line 847
    .line 848
    :cond_1c
    add-int/lit8 v15, v15, 0x1

    .line 849
    .line 850
    move-object/from16 v7, v18

    .line 851
    .line 852
    move-wide/from16 v9, v19

    .line 853
    .line 854
    goto :goto_17

    .line 855
    :cond_1d
    move-object/from16 v18, v7

    .line 856
    .line 857
    move-wide/from16 v19, v9

    .line 858
    .line 859
    const/4 v7, 0x0

    .line 860
    iput v7, v11, Lm2/f;->h:I

    .line 861
    .line 862
    iput v7, v11, Lm2/f;->g:I

    .line 863
    .line 864
    iput v7, v11, Lm2/f;->f:I

    .line 865
    .line 866
    iput v14, v0, Lm2/j;->d:I

    .line 867
    .line 868
    iput v13, v0, Lm2/j;->e:I

    .line 869
    .line 870
    iget-object v7, v0, Lm2/j;->g:[I

    .line 871
    .line 872
    if-eqz v7, :cond_1e

    .line 873
    .line 874
    array-length v7, v7

    .line 875
    if-ge v7, v14, :cond_1f

    .line 876
    .line 877
    :cond_1e
    new-array v7, v14, [J

    .line 878
    .line 879
    iput-object v7, v0, Lm2/j;->f:[J

    .line 880
    .line 881
    new-array v7, v14, [I

    .line 882
    .line 883
    iput-object v7, v0, Lm2/j;->g:[I

    .line 884
    .line 885
    :cond_1f
    iget-object v7, v0, Lm2/j;->h:[I

    .line 886
    .line 887
    if-eqz v7, :cond_20

    .line 888
    .line 889
    array-length v7, v7

    .line 890
    if-ge v7, v13, :cond_21

    .line 891
    .line 892
    :cond_20
    mul-int/lit8 v13, v13, 0x7d

    .line 893
    .line 894
    div-int/lit8 v13, v13, 0x64

    .line 895
    .line 896
    new-array v7, v13, [I

    .line 897
    .line 898
    iput-object v7, v0, Lm2/j;->h:[I

    .line 899
    .line 900
    new-array v7, v13, [I

    .line 901
    .line 902
    iput-object v7, v0, Lm2/j;->i:[I

    .line 903
    .line 904
    new-array v7, v13, [J

    .line 905
    .line 906
    iput-object v7, v0, Lm2/j;->j:[J

    .line 907
    .line 908
    new-array v7, v13, [Z

    .line 909
    .line 910
    iput-object v7, v0, Lm2/j;->k:[Z

    .line 911
    .line 912
    new-array v7, v13, [Z

    .line 913
    .line 914
    iput-object v7, v0, Lm2/j;->m:[Z

    .line 915
    .line 916
    :cond_21
    const/4 v7, 0x0

    .line 917
    const/4 v9, 0x0

    .line 918
    const/4 v10, 0x0

    .line 919
    :goto_18
    if-ge v7, v12, :cond_36

    .line 920
    .line 921
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 922
    .line 923
    .line 924
    move-result-object v13

    .line 925
    check-cast v13, Lm2/b;

    .line 926
    .line 927
    iget v14, v13, Li2/a;->b:I

    .line 928
    .line 929
    if-ne v14, v2, :cond_35

    .line 930
    .line 931
    add-int/lit8 v2, v9, 0x1

    .line 932
    .line 933
    iget-object v13, v13, Lm2/b;->c:Lb3/h;

    .line 934
    .line 935
    const/16 v14, 0x8

    .line 936
    .line 937
    invoke-virtual {v13, v14}, Lb3/h;->q(I)V

    .line 938
    .line 939
    .line 940
    invoke-virtual {v13}, Lb3/h;->b()I

    .line 941
    .line 942
    .line 943
    move-result v14

    .line 944
    const v15, 0xffffff

    .line 945
    .line 946
    .line 947
    and-int/2addr v14, v15

    .line 948
    iget-object v15, v11, Lm2/f;->d:Lm2/h;

    .line 949
    .line 950
    move/from16 v16, v2

    .line 951
    .line 952
    iget-object v2, v0, Lm2/j;->a:Lm2/d;

    .line 953
    .line 954
    move/from16 v21, v12

    .line 955
    .line 956
    iget-object v12, v0, Lm2/j;->g:[I

    .line 957
    .line 958
    invoke-virtual {v13}, Lb3/h;->k()I

    .line 959
    .line 960
    .line 961
    move-result v22

    .line 962
    aput v22, v12, v9

    .line 963
    .line 964
    iget-object v12, v0, Lm2/j;->f:[J

    .line 965
    .line 966
    move-object/from16 v22, v5

    .line 967
    .line 968
    move-object/from16 v23, v6

    .line 969
    .line 970
    iget-wide v5, v0, Lm2/j;->b:J

    .line 971
    .line 972
    aput-wide v5, v12, v9

    .line 973
    .line 974
    and-int/lit8 v24, v14, 0x1

    .line 975
    .line 976
    if-eqz v24, :cond_22

    .line 977
    .line 978
    move/from16 v24, v4

    .line 979
    .line 980
    invoke-virtual {v13}, Lb3/h;->b()I

    .line 981
    .line 982
    .line 983
    move-result v4

    .line 984
    move-object/from16 v25, v3

    .line 985
    .line 986
    int-to-long v3, v4

    .line 987
    add-long/2addr v5, v3

    .line 988
    aput-wide v5, v12, v9

    .line 989
    .line 990
    goto :goto_19

    .line 991
    :cond_22
    move-object/from16 v25, v3

    .line 992
    .line 993
    move/from16 v24, v4

    .line 994
    .line 995
    :goto_19
    and-int/lit8 v3, v14, 0x4

    .line 996
    .line 997
    if-eqz v3, :cond_23

    .line 998
    .line 999
    const/4 v3, 0x1

    .line 1000
    goto :goto_1a

    .line 1001
    :cond_23
    const/4 v3, 0x0

    .line 1002
    :goto_1a
    iget v4, v2, Lm2/d;->d:I

    .line 1003
    .line 1004
    if-eqz v3, :cond_24

    .line 1005
    .line 1006
    invoke-virtual {v13}, Lb3/h;->k()I

    .line 1007
    .line 1008
    .line 1009
    move-result v4

    .line 1010
    :cond_24
    and-int/lit16 v5, v14, 0x100

    .line 1011
    .line 1012
    if-eqz v5, :cond_25

    .line 1013
    .line 1014
    const/4 v5, 0x1

    .line 1015
    goto :goto_1b

    .line 1016
    :cond_25
    const/4 v5, 0x0

    .line 1017
    :goto_1b
    and-int/lit16 v6, v14, 0x200

    .line 1018
    .line 1019
    if-eqz v6, :cond_26

    .line 1020
    .line 1021
    const/4 v6, 0x1

    .line 1022
    goto :goto_1c

    .line 1023
    :cond_26
    const/4 v6, 0x0

    .line 1024
    :goto_1c
    and-int/lit16 v12, v14, 0x400

    .line 1025
    .line 1026
    if-eqz v12, :cond_27

    .line 1027
    .line 1028
    const/4 v12, 0x1

    .line 1029
    goto :goto_1d

    .line 1030
    :cond_27
    const/4 v12, 0x0

    .line 1031
    :goto_1d
    and-int/lit16 v14, v14, 0x800

    .line 1032
    .line 1033
    if-eqz v14, :cond_28

    .line 1034
    .line 1035
    const/4 v14, 0x1

    .line 1036
    goto :goto_1e

    .line 1037
    :cond_28
    const/4 v14, 0x0

    .line 1038
    :goto_1e
    move/from16 v26, v4

    .line 1039
    .line 1040
    iget-object v4, v15, Lm2/h;->g:[J

    .line 1041
    .line 1042
    if-eqz v4, :cond_2a

    .line 1043
    .line 1044
    move-object/from16 v27, v8

    .line 1045
    .line 1046
    array-length v8, v4

    .line 1047
    move-object/from16 v28, v11

    .line 1048
    .line 1049
    const/4 v11, 0x1

    .line 1050
    if-ne v8, v11, :cond_29

    .line 1051
    .line 1052
    const/4 v8, 0x0

    .line 1053
    aget-wide v29, v4, v8

    .line 1054
    .line 1055
    const-wide/16 v31, 0x0

    .line 1056
    .line 1057
    cmp-long v4, v29, v31

    .line 1058
    .line 1059
    if-nez v4, :cond_29

    .line 1060
    .line 1061
    iget-object v4, v15, Lm2/h;->h:[J

    .line 1062
    .line 1063
    aget-wide v29, v4, v8

    .line 1064
    .line 1065
    const-wide/16 v31, 0x3e8

    .line 1066
    .line 1067
    move v4, v7

    .line 1068
    iget-wide v7, v15, Lm2/h;->c:J

    .line 1069
    .line 1070
    move-wide/from16 v33, v7

    .line 1071
    .line 1072
    invoke-static/range {v29 .. v34}, Lb3/n;->h(JJJ)J

    .line 1073
    .line 1074
    .line 1075
    move-result-wide v7

    .line 1076
    goto :goto_20

    .line 1077
    :cond_29
    move v4, v7

    .line 1078
    goto :goto_1f

    .line 1079
    :cond_2a
    move v4, v7

    .line 1080
    move-object/from16 v27, v8

    .line 1081
    .line 1082
    move-object/from16 v28, v11

    .line 1083
    .line 1084
    :goto_1f
    const-wide/16 v7, 0x0

    .line 1085
    .line 1086
    :goto_20
    iget-object v11, v0, Lm2/j;->h:[I

    .line 1087
    .line 1088
    move/from16 v29, v4

    .line 1089
    .line 1090
    iget-object v4, v0, Lm2/j;->i:[I

    .line 1091
    .line 1092
    move-object/from16 v30, v11

    .line 1093
    .line 1094
    iget-object v11, v0, Lm2/j;->j:[J

    .line 1095
    .line 1096
    move-object/from16 v31, v11

    .line 1097
    .line 1098
    iget-object v11, v0, Lm2/j;->k:[Z

    .line 1099
    .line 1100
    move-object/from16 v32, v11

    .line 1101
    .line 1102
    iget v11, v15, Lm2/h;->b:I

    .line 1103
    .line 1104
    move-wide/from16 v33, v7

    .line 1105
    .line 1106
    const/4 v7, 0x2

    .line 1107
    if-ne v11, v7, :cond_2b

    .line 1108
    .line 1109
    and-int/lit8 v7, v1, 0x1

    .line 1110
    .line 1111
    if-eqz v7, :cond_2b

    .line 1112
    .line 1113
    const/4 v7, 0x1

    .line 1114
    goto :goto_21

    .line 1115
    :cond_2b
    const/4 v7, 0x0

    .line 1116
    :goto_21
    iget-object v8, v0, Lm2/j;->g:[I

    .line 1117
    .line 1118
    aget v8, v8, v9

    .line 1119
    .line 1120
    add-int/2addr v8, v10

    .line 1121
    move/from16 v35, v10

    .line 1122
    .line 1123
    iget-wide v10, v15, Lm2/h;->c:J

    .line 1124
    .line 1125
    move-wide/from16 v41, v10

    .line 1126
    .line 1127
    if-lez v9, :cond_2c

    .line 1128
    .line 1129
    iget-wide v9, v0, Lm2/j;->r:J

    .line 1130
    .line 1131
    goto :goto_22

    .line 1132
    :cond_2c
    move-wide/from16 v9, v19

    .line 1133
    .line 1134
    :goto_22
    move/from16 v11, v35

    .line 1135
    .line 1136
    :goto_23
    if-ge v11, v8, :cond_34

    .line 1137
    .line 1138
    if-eqz v5, :cond_2d

    .line 1139
    .line 1140
    invoke-virtual {v13}, Lb3/h;->k()I

    .line 1141
    .line 1142
    .line 1143
    move-result v15

    .line 1144
    goto :goto_24

    .line 1145
    :cond_2d
    iget v15, v2, Lm2/d;->b:I

    .line 1146
    .line 1147
    :goto_24
    if-eqz v6, :cond_2e

    .line 1148
    .line 1149
    invoke-virtual {v13}, Lb3/h;->k()I

    .line 1150
    .line 1151
    .line 1152
    move-result v35

    .line 1153
    move/from16 v43, v1

    .line 1154
    .line 1155
    move/from16 v1, v35

    .line 1156
    .line 1157
    goto :goto_25

    .line 1158
    :cond_2e
    move/from16 v43, v1

    .line 1159
    .line 1160
    iget v1, v2, Lm2/d;->c:I

    .line 1161
    .line 1162
    :goto_25
    if-nez v11, :cond_2f

    .line 1163
    .line 1164
    if-eqz v3, :cond_2f

    .line 1165
    .line 1166
    move/from16 v44, v3

    .line 1167
    .line 1168
    move/from16 v3, v26

    .line 1169
    .line 1170
    goto :goto_26

    .line 1171
    :cond_2f
    if-eqz v12, :cond_30

    .line 1172
    .line 1173
    invoke-virtual {v13}, Lb3/h;->b()I

    .line 1174
    .line 1175
    .line 1176
    move-result v35

    .line 1177
    move/from16 v44, v3

    .line 1178
    .line 1179
    move/from16 v3, v35

    .line 1180
    .line 1181
    goto :goto_26

    .line 1182
    :cond_30
    move/from16 v44, v3

    .line 1183
    .line 1184
    iget v3, v2, Lm2/d;->d:I

    .line 1185
    .line 1186
    :goto_26
    move-object/from16 v45, v2

    .line 1187
    .line 1188
    if-eqz v14, :cond_31

    .line 1189
    .line 1190
    invoke-virtual {v13}, Lb3/h;->b()I

    .line 1191
    .line 1192
    .line 1193
    move-result v2

    .line 1194
    move/from16 v46, v5

    .line 1195
    .line 1196
    move/from16 v47, v6

    .line 1197
    .line 1198
    int-to-long v5, v2

    .line 1199
    const-wide/16 v35, 0x3e8

    .line 1200
    .line 1201
    mul-long v5, v5, v35

    .line 1202
    .line 1203
    div-long v5, v5, v41

    .line 1204
    .line 1205
    long-to-int v2, v5

    .line 1206
    aput v2, v4, v11

    .line 1207
    .line 1208
    goto :goto_27

    .line 1209
    :cond_31
    move/from16 v46, v5

    .line 1210
    .line 1211
    move/from16 v47, v6

    .line 1212
    .line 1213
    const/4 v2, 0x0

    .line 1214
    aput v2, v4, v11

    .line 1215
    .line 1216
    :goto_27
    const-wide/16 v37, 0x3e8

    .line 1217
    .line 1218
    move-wide/from16 v35, v9

    .line 1219
    .line 1220
    move-wide/from16 v39, v41

    .line 1221
    .line 1222
    invoke-static/range {v35 .. v40}, Lb3/n;->h(JJJ)J

    .line 1223
    .line 1224
    .line 1225
    move-result-wide v5

    .line 1226
    sub-long v5, v5, v33

    .line 1227
    .line 1228
    aput-wide v5, v31, v11

    .line 1229
    .line 1230
    aput v1, v30, v11

    .line 1231
    .line 1232
    shr-int/lit8 v1, v3, 0x10

    .line 1233
    .line 1234
    and-int/lit8 v1, v1, 0x1

    .line 1235
    .line 1236
    if-nez v1, :cond_33

    .line 1237
    .line 1238
    if-eqz v7, :cond_32

    .line 1239
    .line 1240
    if-nez v11, :cond_33

    .line 1241
    .line 1242
    :cond_32
    const/4 v1, 0x1

    .line 1243
    goto :goto_28

    .line 1244
    :cond_33
    const/4 v1, 0x0

    .line 1245
    :goto_28
    aput-boolean v1, v32, v11

    .line 1246
    .line 1247
    int-to-long v1, v15

    .line 1248
    add-long/2addr v9, v1

    .line 1249
    add-int/lit8 v11, v11, 0x1

    .line 1250
    .line 1251
    move/from16 v1, v43

    .line 1252
    .line 1253
    move/from16 v3, v44

    .line 1254
    .line 1255
    move-object/from16 v2, v45

    .line 1256
    .line 1257
    move/from16 v5, v46

    .line 1258
    .line 1259
    move/from16 v6, v47

    .line 1260
    .line 1261
    goto :goto_23

    .line 1262
    :cond_34
    move/from16 v43, v1

    .line 1263
    .line 1264
    iput-wide v9, v0, Lm2/j;->r:J

    .line 1265
    .line 1266
    move v10, v8

    .line 1267
    move/from16 v9, v16

    .line 1268
    .line 1269
    goto :goto_29

    .line 1270
    :cond_35
    move/from16 v43, v1

    .line 1271
    .line 1272
    move-object/from16 v25, v3

    .line 1273
    .line 1274
    move/from16 v24, v4

    .line 1275
    .line 1276
    move-object/from16 v22, v5

    .line 1277
    .line 1278
    move-object/from16 v23, v6

    .line 1279
    .line 1280
    move/from16 v29, v7

    .line 1281
    .line 1282
    move-object/from16 v27, v8

    .line 1283
    .line 1284
    move/from16 v35, v10

    .line 1285
    .line 1286
    move-object/from16 v28, v11

    .line 1287
    .line 1288
    move/from16 v21, v12

    .line 1289
    .line 1290
    :goto_29
    add-int/lit8 v7, v29, 0x1

    .line 1291
    .line 1292
    const v2, 0x7472756e

    .line 1293
    .line 1294
    .line 1295
    move/from16 v12, v21

    .line 1296
    .line 1297
    move-object/from16 v5, v22

    .line 1298
    .line 1299
    move-object/from16 v6, v23

    .line 1300
    .line 1301
    move/from16 v4, v24

    .line 1302
    .line 1303
    move-object/from16 v3, v25

    .line 1304
    .line 1305
    move-object/from16 v8, v27

    .line 1306
    .line 1307
    move-object/from16 v11, v28

    .line 1308
    .line 1309
    move/from16 v1, v43

    .line 1310
    .line 1311
    goto/16 :goto_18

    .line 1312
    .line 1313
    :cond_36
    move-object/from16 v25, v3

    .line 1314
    .line 1315
    move/from16 v24, v4

    .line 1316
    .line 1317
    move-object/from16 v22, v5

    .line 1318
    .line 1319
    move-object/from16 v23, v6

    .line 1320
    .line 1321
    move-object/from16 v27, v8

    .line 1322
    .line 1323
    iget-object v1, v11, Lm2/f;->d:Lm2/h;

    .line 1324
    .line 1325
    iget-object v2, v0, Lm2/j;->a:Lm2/d;

    .line 1326
    .line 1327
    iget v2, v2, Lm2/d;->a:I

    .line 1328
    .line 1329
    iget-object v1, v1, Lm2/h;->j:[Lm2/i;

    .line 1330
    .line 1331
    if-nez v1, :cond_37

    .line 1332
    .line 1333
    const/4 v1, 0x0

    .line 1334
    goto :goto_2a

    .line 1335
    :cond_37
    aget-object v1, v1, v2

    .line 1336
    .line 1337
    :goto_2a
    const v2, 0x7361697a

    .line 1338
    .line 1339
    .line 1340
    move-object/from16 v8, v27

    .line 1341
    .line 1342
    invoke-virtual {v8, v2}, Lm2/a;->d(I)Lm2/b;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v2

    .line 1346
    if-eqz v2, :cond_40

    .line 1347
    .line 1348
    iget v3, v1, Lm2/i;->d:I

    .line 1349
    .line 1350
    iget-object v2, v2, Lm2/b;->c:Lb3/h;

    .line 1351
    .line 1352
    const/16 v4, 0x8

    .line 1353
    .line 1354
    invoke-virtual {v2, v4}, Lb3/h;->q(I)V

    .line 1355
    .line 1356
    .line 1357
    invoke-virtual {v2}, Lb3/h;->b()I

    .line 1358
    .line 1359
    .line 1360
    move-result v5

    .line 1361
    const v6, 0xffffff

    .line 1362
    .line 1363
    .line 1364
    and-int/2addr v5, v6

    .line 1365
    const/4 v6, 0x1

    .line 1366
    and-int/2addr v5, v6

    .line 1367
    if-ne v5, v6, :cond_38

    .line 1368
    .line 1369
    invoke-virtual {v2, v4}, Lb3/h;->r(I)V

    .line 1370
    .line 1371
    .line 1372
    :cond_38
    invoke-virtual {v2}, Lb3/h;->h()I

    .line 1373
    .line 1374
    .line 1375
    move-result v4

    .line 1376
    invoke-virtual {v2}, Lb3/h;->k()I

    .line 1377
    .line 1378
    .line 1379
    move-result v5

    .line 1380
    iget v6, v0, Lm2/j;->e:I

    .line 1381
    .line 1382
    if-ne v5, v6, :cond_3f

    .line 1383
    .line 1384
    if-nez v4, :cond_3a

    .line 1385
    .line 1386
    iget-object v4, v0, Lm2/j;->m:[Z

    .line 1387
    .line 1388
    const/4 v6, 0x0

    .line 1389
    const/4 v7, 0x0

    .line 1390
    :goto_2b
    if-ge v6, v5, :cond_3c

    .line 1391
    .line 1392
    invoke-virtual {v2}, Lb3/h;->h()I

    .line 1393
    .line 1394
    .line 1395
    move-result v9

    .line 1396
    add-int/2addr v7, v9

    .line 1397
    if-le v9, v3, :cond_39

    .line 1398
    .line 1399
    const/4 v9, 0x1

    .line 1400
    goto :goto_2c

    .line 1401
    :cond_39
    const/4 v9, 0x0

    .line 1402
    :goto_2c
    aput-boolean v9, v4, v6

    .line 1403
    .line 1404
    add-int/lit8 v6, v6, 0x1

    .line 1405
    .line 1406
    goto :goto_2b

    .line 1407
    :cond_3a
    if-le v4, v3, :cond_3b

    .line 1408
    .line 1409
    const/4 v2, 0x1

    .line 1410
    goto :goto_2d

    .line 1411
    :cond_3b
    const/4 v2, 0x0

    .line 1412
    :goto_2d
    mul-int/2addr v4, v5

    .line 1413
    const/4 v3, 0x0

    .line 1414
    add-int/lit8 v7, v4, 0x0

    .line 1415
    .line 1416
    iget-object v4, v0, Lm2/j;->m:[Z

    .line 1417
    .line 1418
    invoke-static {v4, v3, v5, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1419
    .line 1420
    .line 1421
    :cond_3c
    iget-object v2, v0, Lm2/j;->p:Lb3/h;

    .line 1422
    .line 1423
    if-eqz v2, :cond_3d

    .line 1424
    .line 1425
    iget v2, v2, Lb3/h;->b:I

    .line 1426
    .line 1427
    if-ge v2, v7, :cond_3e

    .line 1428
    .line 1429
    :cond_3d
    new-instance v2, Lb3/h;

    .line 1430
    .line 1431
    invoke-direct {v2, v7}, Lb3/h;-><init>(I)V

    .line 1432
    .line 1433
    .line 1434
    iput-object v2, v0, Lm2/j;->p:Lb3/h;

    .line 1435
    .line 1436
    :cond_3e
    iput v7, v0, Lm2/j;->o:I

    .line 1437
    .line 1438
    const/4 v2, 0x1

    .line 1439
    iput-boolean v2, v0, Lm2/j;->l:Z

    .line 1440
    .line 1441
    iput-boolean v2, v0, Lm2/j;->q:Z

    .line 1442
    .line 1443
    goto :goto_2e

    .line 1444
    :cond_3f
    new-instance v1, Lf2/z;

    .line 1445
    .line 1446
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1447
    .line 1448
    const-string v3, "Length mismatch: "

    .line 1449
    .line 1450
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1451
    .line 1452
    .line 1453
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1454
    .line 1455
    .line 1456
    const-string v3, ", "

    .line 1457
    .line 1458
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    .line 1460
    .line 1461
    iget v0, v0, Lm2/j;->e:I

    .line 1462
    .line 1463
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1464
    .line 1465
    .line 1466
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v0

    .line 1470
    invoke-direct {v1, v0}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 1471
    .line 1472
    .line 1473
    throw v1

    .line 1474
    :cond_40
    :goto_2e
    const v2, 0x7361696f

    .line 1475
    .line 1476
    .line 1477
    invoke-virtual {v8, v2}, Lm2/a;->d(I)Lm2/b;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v2

    .line 1481
    if-eqz v2, :cond_44

    .line 1482
    .line 1483
    iget-object v2, v2, Lm2/b;->c:Lb3/h;

    .line 1484
    .line 1485
    const/16 v3, 0x8

    .line 1486
    .line 1487
    invoke-virtual {v2, v3}, Lb3/h;->q(I)V

    .line 1488
    .line 1489
    .line 1490
    invoke-virtual {v2}, Lb3/h;->b()I

    .line 1491
    .line 1492
    .line 1493
    move-result v4

    .line 1494
    const v5, 0xffffff

    .line 1495
    .line 1496
    .line 1497
    and-int/2addr v5, v4

    .line 1498
    const/4 v6, 0x1

    .line 1499
    and-int/2addr v5, v6

    .line 1500
    if-ne v5, v6, :cond_41

    .line 1501
    .line 1502
    invoke-virtual {v2, v3}, Lb3/h;->r(I)V

    .line 1503
    .line 1504
    .line 1505
    :cond_41
    invoke-virtual {v2}, Lb3/h;->k()I

    .line 1506
    .line 1507
    .line 1508
    move-result v3

    .line 1509
    if-ne v3, v6, :cond_43

    .line 1510
    .line 1511
    shr-int/lit8 v3, v4, 0x18

    .line 1512
    .line 1513
    and-int/lit16 v3, v3, 0xff

    .line 1514
    .line 1515
    iget-wide v4, v0, Lm2/j;->c:J

    .line 1516
    .line 1517
    if-nez v3, :cond_42

    .line 1518
    .line 1519
    invoke-virtual {v2}, Lb3/h;->i()J

    .line 1520
    .line 1521
    .line 1522
    move-result-wide v2

    .line 1523
    goto :goto_2f

    .line 1524
    :cond_42
    invoke-virtual {v2}, Lb3/h;->l()J

    .line 1525
    .line 1526
    .line 1527
    move-result-wide v2

    .line 1528
    :goto_2f
    add-long/2addr v4, v2

    .line 1529
    iput-wide v4, v0, Lm2/j;->c:J

    .line 1530
    .line 1531
    goto :goto_30

    .line 1532
    :cond_43
    new-instance v0, Lf2/z;

    .line 1533
    .line 1534
    const-string v1, "Unexpected saio entry count: "

    .line 1535
    .line 1536
    invoke-static {v1, v3}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v1

    .line 1540
    invoke-direct {v0, v1}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 1541
    .line 1542
    .line 1543
    throw v0

    .line 1544
    :cond_44
    :goto_30
    const v2, 0x73656e63

    .line 1545
    .line 1546
    .line 1547
    invoke-virtual {v8, v2}, Lm2/a;->d(I)Lm2/b;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v2

    .line 1551
    if-eqz v2, :cond_45

    .line 1552
    .line 1553
    iget-object v2, v2, Lm2/b;->c:Lb3/h;

    .line 1554
    .line 1555
    const/4 v3, 0x0

    .line 1556
    invoke-static {v2, v3, v0}, Lm2/g;->e(Lb3/h;ILm2/j;)V

    .line 1557
    .line 1558
    .line 1559
    :cond_45
    const v2, 0x73626770

    .line 1560
    .line 1561
    .line 1562
    invoke-virtual {v8, v2}, Lm2/a;->d(I)Lm2/b;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v2

    .line 1566
    const v3, 0x73677064

    .line 1567
    .line 1568
    .line 1569
    invoke-virtual {v8, v3}, Lm2/a;->d(I)Lm2/b;

    .line 1570
    .line 1571
    .line 1572
    move-result-object v3

    .line 1573
    if-eqz v2, :cond_52

    .line 1574
    .line 1575
    if-eqz v3, :cond_52

    .line 1576
    .line 1577
    if-eqz v1, :cond_46

    .line 1578
    .line 1579
    iget-object v1, v1, Lm2/i;->b:Ljava/lang/String;

    .line 1580
    .line 1581
    goto :goto_31

    .line 1582
    :cond_46
    const/4 v1, 0x0

    .line 1583
    :goto_31
    move-object v6, v1

    .line 1584
    iget-object v1, v2, Lm2/b;->c:Lb3/h;

    .line 1585
    .line 1586
    const/16 v2, 0x8

    .line 1587
    .line 1588
    invoke-virtual {v1, v2}, Lb3/h;->q(I)V

    .line 1589
    .line 1590
    .line 1591
    invoke-virtual {v1}, Lb3/h;->b()I

    .line 1592
    .line 1593
    .line 1594
    move-result v2

    .line 1595
    invoke-virtual {v1}, Lb3/h;->b()I

    .line 1596
    .line 1597
    .line 1598
    move-result v4

    .line 1599
    const v5, 0x73656967

    .line 1600
    .line 1601
    .line 1602
    if-eq v4, v5, :cond_47

    .line 1603
    .line 1604
    goto/16 :goto_35

    .line 1605
    .line 1606
    :cond_47
    shr-int/lit8 v2, v2, 0x18

    .line 1607
    .line 1608
    and-int/lit16 v2, v2, 0xff

    .line 1609
    .line 1610
    const/4 v4, 0x1

    .line 1611
    if-ne v2, v4, :cond_48

    .line 1612
    .line 1613
    const/4 v2, 0x4

    .line 1614
    invoke-virtual {v1, v2}, Lb3/h;->r(I)V

    .line 1615
    .line 1616
    .line 1617
    :cond_48
    invoke-virtual {v1}, Lb3/h;->b()I

    .line 1618
    .line 1619
    .line 1620
    move-result v1

    .line 1621
    if-ne v1, v4, :cond_51

    .line 1622
    .line 1623
    iget-object v1, v3, Lm2/b;->c:Lb3/h;

    .line 1624
    .line 1625
    const/16 v2, 0x8

    .line 1626
    .line 1627
    invoke-virtual {v1, v2}, Lb3/h;->q(I)V

    .line 1628
    .line 1629
    .line 1630
    invoke-virtual {v1}, Lb3/h;->b()I

    .line 1631
    .line 1632
    .line 1633
    move-result v2

    .line 1634
    invoke-virtual {v1}, Lb3/h;->b()I

    .line 1635
    .line 1636
    .line 1637
    move-result v3

    .line 1638
    if-eq v3, v5, :cond_49

    .line 1639
    .line 1640
    goto/16 :goto_35

    .line 1641
    .line 1642
    :cond_49
    shr-int/lit8 v2, v2, 0x18

    .line 1643
    .line 1644
    and-int/lit16 v2, v2, 0xff

    .line 1645
    .line 1646
    if-ne v2, v4, :cond_4b

    .line 1647
    .line 1648
    invoke-virtual {v1}, Lb3/h;->i()J

    .line 1649
    .line 1650
    .line 1651
    move-result-wide v2

    .line 1652
    const-wide/16 v4, 0x0

    .line 1653
    .line 1654
    cmp-long v2, v2, v4

    .line 1655
    .line 1656
    if-eqz v2, :cond_4a

    .line 1657
    .line 1658
    goto :goto_32

    .line 1659
    :cond_4a
    new-instance v0, Lf2/z;

    .line 1660
    .line 1661
    const-string v1, "Variable length description in sgpd found (unsupported)"

    .line 1662
    .line 1663
    invoke-direct {v0, v1}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 1664
    .line 1665
    .line 1666
    throw v0

    .line 1667
    :cond_4b
    const/4 v3, 0x2

    .line 1668
    if-lt v2, v3, :cond_4c

    .line 1669
    .line 1670
    const/4 v2, 0x4

    .line 1671
    invoke-virtual {v1, v2}, Lb3/h;->r(I)V

    .line 1672
    .line 1673
    .line 1674
    :cond_4c
    :goto_32
    invoke-virtual {v1}, Lb3/h;->i()J

    .line 1675
    .line 1676
    .line 1677
    move-result-wide v2

    .line 1678
    const-wide/16 v4, 0x1

    .line 1679
    .line 1680
    cmp-long v2, v2, v4

    .line 1681
    .line 1682
    if-nez v2, :cond_50

    .line 1683
    .line 1684
    const/4 v2, 0x1

    .line 1685
    invoke-virtual {v1, v2}, Lb3/h;->r(I)V

    .line 1686
    .line 1687
    .line 1688
    invoke-virtual {v1}, Lb3/h;->h()I

    .line 1689
    .line 1690
    .line 1691
    move-result v3

    .line 1692
    and-int/lit16 v4, v3, 0xf0

    .line 1693
    .line 1694
    shr-int/lit8 v9, v4, 0x4

    .line 1695
    .line 1696
    and-int/lit8 v10, v3, 0xf

    .line 1697
    .line 1698
    invoke-virtual {v1}, Lb3/h;->h()I

    .line 1699
    .line 1700
    .line 1701
    move-result v3

    .line 1702
    if-ne v3, v2, :cond_4d

    .line 1703
    .line 1704
    const/4 v2, 0x1

    .line 1705
    goto :goto_33

    .line 1706
    :cond_4d
    const/4 v2, 0x0

    .line 1707
    :goto_33
    move v5, v2

    .line 1708
    if-nez v5, :cond_4e

    .line 1709
    .line 1710
    goto :goto_35

    .line 1711
    :cond_4e
    invoke-virtual {v1}, Lb3/h;->h()I

    .line 1712
    .line 1713
    .line 1714
    move-result v7

    .line 1715
    const/16 v2, 0x10

    .line 1716
    .line 1717
    new-array v8, v2, [B

    .line 1718
    .line 1719
    const/4 v3, 0x0

    .line 1720
    invoke-virtual {v1, v8, v3, v2}, Lb3/h;->a([BII)V

    .line 1721
    .line 1722
    .line 1723
    if-nez v7, :cond_4f

    .line 1724
    .line 1725
    invoke-virtual {v1}, Lb3/h;->h()I

    .line 1726
    .line 1727
    .line 1728
    move-result v2

    .line 1729
    new-array v4, v2, [B

    .line 1730
    .line 1731
    invoke-virtual {v1, v4, v3, v2}, Lb3/h;->a([BII)V

    .line 1732
    .line 1733
    .line 1734
    const/4 v1, 0x1

    .line 1735
    move-object v11, v4

    .line 1736
    goto :goto_34

    .line 1737
    :cond_4f
    const/4 v1, 0x1

    .line 1738
    const/4 v2, 0x0

    .line 1739
    move-object v11, v2

    .line 1740
    :goto_34
    iput-boolean v1, v0, Lm2/j;->l:Z

    .line 1741
    .line 1742
    new-instance v1, Lm2/i;

    .line 1743
    .line 1744
    move-object v4, v1

    .line 1745
    invoke-direct/range {v4 .. v11}, Lm2/i;-><init>(ZLjava/lang/String;I[BII[B)V

    .line 1746
    .line 1747
    .line 1748
    iput-object v1, v0, Lm2/j;->n:Lm2/i;

    .line 1749
    .line 1750
    goto :goto_35

    .line 1751
    :cond_50
    new-instance v0, Lf2/z;

    .line 1752
    .line 1753
    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    .line 1754
    .line 1755
    invoke-direct {v0, v1}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 1756
    .line 1757
    .line 1758
    throw v0

    .line 1759
    :cond_51
    new-instance v0, Lf2/z;

    .line 1760
    .line 1761
    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    .line 1762
    .line 1763
    invoke-direct {v0, v1}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 1764
    .line 1765
    .line 1766
    throw v0

    .line 1767
    :cond_52
    :goto_35
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    .line 1768
    .line 1769
    .line 1770
    move-result v1

    .line 1771
    const/4 v2, 0x0

    .line 1772
    :goto_36
    if-ge v2, v1, :cond_55

    .line 1773
    .line 1774
    move-object/from16 v3, v25

    .line 1775
    .line 1776
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v4

    .line 1780
    check-cast v4, Lm2/b;

    .line 1781
    .line 1782
    iget v5, v4, Li2/a;->b:I

    .line 1783
    .line 1784
    const v6, 0x75756964

    .line 1785
    .line 1786
    .line 1787
    if-ne v5, v6, :cond_54

    .line 1788
    .line 1789
    iget-object v4, v4, Lm2/b;->c:Lb3/h;

    .line 1790
    .line 1791
    const/16 v5, 0x8

    .line 1792
    .line 1793
    invoke-virtual {v4, v5}, Lb3/h;->q(I)V

    .line 1794
    .line 1795
    .line 1796
    move-object/from16 v5, p0

    .line 1797
    .line 1798
    iget-object v6, v5, Lm2/g;->g:[B

    .line 1799
    .line 1800
    const/16 v7, 0x10

    .line 1801
    .line 1802
    const/4 v8, 0x0

    .line 1803
    invoke-virtual {v4, v6, v8, v7}, Lb3/h;->a([BII)V

    .line 1804
    .line 1805
    .line 1806
    sget-object v8, Lm2/g;->G:[B

    .line 1807
    .line 1808
    invoke-static {v6, v8}, Ljava/util/Arrays;->equals([B[B)Z

    .line 1809
    .line 1810
    .line 1811
    move-result v6

    .line 1812
    if-nez v6, :cond_53

    .line 1813
    .line 1814
    goto :goto_37

    .line 1815
    :cond_53
    invoke-static {v4, v7, v0}, Lm2/g;->e(Lb3/h;ILm2/j;)V

    .line 1816
    .line 1817
    .line 1818
    goto :goto_37

    .line 1819
    :cond_54
    move-object/from16 v5, p0

    .line 1820
    .line 1821
    :goto_37
    add-int/lit8 v2, v2, 0x1

    .line 1822
    .line 1823
    move-object/from16 v25, v3

    .line 1824
    .line 1825
    goto :goto_36

    .line 1826
    :cond_55
    move-object/from16 v5, p0

    .line 1827
    .line 1828
    move-object v0, v5

    .line 1829
    move-object v1, v0

    .line 1830
    move-object v3, v1

    .line 1831
    goto :goto_39

    .line 1832
    :cond_56
    move-object/from16 v16, v0

    .line 1833
    .line 1834
    :goto_38
    move/from16 v17, v2

    .line 1835
    .line 1836
    move/from16 v24, v4

    .line 1837
    .line 1838
    move-object/from16 v22, v5

    .line 1839
    .line 1840
    move-object/from16 v23, v6

    .line 1841
    .line 1842
    move-object/from16 v18, v7

    .line 1843
    .line 1844
    move-object/from16 v5, p0

    .line 1845
    .line 1846
    move-object/from16 v0, v16

    .line 1847
    .line 1848
    :goto_39
    add-int/lit8 v4, v24, 0x1

    .line 1849
    .line 1850
    move/from16 v2, v17

    .line 1851
    .line 1852
    move-object/from16 v7, v18

    .line 1853
    .line 1854
    move-object/from16 v5, v22

    .line 1855
    .line 1856
    move-object/from16 v6, v23

    .line 1857
    .line 1858
    goto/16 :goto_f

    .line 1859
    .line 1860
    :cond_57
    move-object/from16 v16, v0

    .line 1861
    .line 1862
    move-object/from16 v22, v5

    .line 1863
    .line 1864
    move-object/from16 v23, v6

    .line 1865
    .line 1866
    move-object/from16 v5, p0

    .line 1867
    .line 1868
    invoke-static/range {v23 .. v23}, Lm2/g;->d(Ljava/util/ArrayList;)Lj2/b;

    .line 1869
    .line 1870
    .line 1871
    move-result-object v0

    .line 1872
    if-eqz v0, :cond_5a

    .line 1873
    .line 1874
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    .line 1875
    .line 1876
    .line 1877
    move-result v2

    .line 1878
    const/4 v4, 0x0

    .line 1879
    :goto_3a
    if-ge v4, v2, :cond_5a

    .line 1880
    .line 1881
    move-object/from16 v6, v22

    .line 1882
    .line 1883
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1884
    .line 1885
    .line 1886
    move-result-object v7

    .line 1887
    check-cast v7, Lm2/f;

    .line 1888
    .line 1889
    iget-object v8, v7, Lm2/f;->d:Lm2/h;

    .line 1890
    .line 1891
    iget-object v9, v7, Lm2/f;->b:Lm2/j;

    .line 1892
    .line 1893
    iget-object v9, v9, Lm2/j;->a:Lm2/d;

    .line 1894
    .line 1895
    iget v9, v9, Lm2/d;->a:I

    .line 1896
    .line 1897
    iget-object v10, v8, Lm2/h;->j:[Lm2/i;

    .line 1898
    .line 1899
    if-nez v10, :cond_58

    .line 1900
    .line 1901
    const/4 v9, 0x0

    .line 1902
    goto :goto_3b

    .line 1903
    :cond_58
    aget-object v9, v10, v9

    .line 1904
    .line 1905
    :goto_3b
    if-eqz v9, :cond_59

    .line 1906
    .line 1907
    iget-object v9, v9, Lm2/i;->b:Ljava/lang/String;

    .line 1908
    .line 1909
    goto :goto_3c

    .line 1910
    :cond_59
    const/4 v9, 0x0

    .line 1911
    :goto_3c
    iget-object v8, v8, Lm2/h;->e:Lf2/t;

    .line 1912
    .line 1913
    invoke-virtual {v0, v9}, Lj2/b;->a(Ljava/lang/String;)Lj2/b;

    .line 1914
    .line 1915
    .line 1916
    move-result-object v9

    .line 1917
    iget-object v10, v8, Lf2/t;->g:Lp2/b;

    .line 1918
    .line 1919
    invoke-virtual {v8, v9, v10}, Lf2/t;->a(Lj2/b;Lp2/b;)Lf2/t;

    .line 1920
    .line 1921
    .line 1922
    move-result-object v8

    .line 1923
    iget-object v7, v7, Lm2/f;->a:Lk2/o;

    .line 1924
    .line 1925
    invoke-interface {v7, v8}, Lk2/o;->c(Lf2/t;)V

    .line 1926
    .line 1927
    .line 1928
    add-int/lit8 v4, v4, 0x1

    .line 1929
    .line 1930
    move-object/from16 v22, v6

    .line 1931
    .line 1932
    goto :goto_3a

    .line 1933
    :cond_5a
    move-object/from16 v6, v22

    .line 1934
    .line 1935
    iget-wide v7, v1, Lm2/g;->u:J

    .line 1936
    .line 1937
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 1938
    .line 1939
    .line 1940
    .line 1941
    .line 1942
    cmp-long v0, v7, v9

    .line 1943
    .line 1944
    if-eqz v0, :cond_5e

    .line 1945
    .line 1946
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 1947
    .line 1948
    .line 1949
    move-result v0

    .line 1950
    const/4 v2, 0x0

    .line 1951
    :goto_3d
    if-ge v2, v0, :cond_5d

    .line 1952
    .line 1953
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1954
    .line 1955
    .line 1956
    move-result-object v4

    .line 1957
    check-cast v4, Lm2/f;

    .line 1958
    .line 1959
    iget-wide v7, v1, Lm2/g;->u:J

    .line 1960
    .line 1961
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1962
    .line 1963
    .line 1964
    invoke-static {v7, v8}, Lf2/d;->b(J)J

    .line 1965
    .line 1966
    .line 1967
    move-result-wide v7

    .line 1968
    iget v9, v4, Lm2/f;->f:I

    .line 1969
    .line 1970
    :goto_3e
    iget-object v10, v4, Lm2/f;->b:Lm2/j;

    .line 1971
    .line 1972
    iget v11, v10, Lm2/j;->e:I

    .line 1973
    .line 1974
    if-ge v9, v11, :cond_5c

    .line 1975
    .line 1976
    iget-object v11, v10, Lm2/j;->j:[J

    .line 1977
    .line 1978
    aget-wide v12, v11, v9

    .line 1979
    .line 1980
    iget-object v11, v10, Lm2/j;->i:[I

    .line 1981
    .line 1982
    aget v11, v11, v9

    .line 1983
    .line 1984
    int-to-long v14, v11

    .line 1985
    add-long/2addr v12, v14

    .line 1986
    cmp-long v11, v12, v7

    .line 1987
    .line 1988
    if-gez v11, :cond_5c

    .line 1989
    .line 1990
    iget-object v10, v10, Lm2/j;->k:[Z

    .line 1991
    .line 1992
    aget-boolean v10, v10, v9

    .line 1993
    .line 1994
    if-eqz v10, :cond_5b

    .line 1995
    .line 1996
    iput v9, v4, Lm2/f;->i:I

    .line 1997
    .line 1998
    :cond_5b
    add-int/lit8 v9, v9, 0x1

    .line 1999
    .line 2000
    goto :goto_3e

    .line 2001
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    .line 2002
    .line 2003
    goto :goto_3d

    .line 2004
    :cond_5d
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 2005
    .line 2006
    .line 2007
    .line 2008
    .line 2009
    iput-wide v6, v1, Lm2/g;->u:J

    .line 2010
    .line 2011
    :cond_5e
    move-object v1, v3

    .line 2012
    move-object/from16 v0, v16

    .line 2013
    .line 2014
    goto/16 :goto_0

    .line 2015
    .line 2016
    :cond_5f
    move-object/from16 v5, p0

    .line 2017
    .line 2018
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 2019
    .line 2020
    .line 2021
    move-result v4

    .line 2022
    if-nez v4, :cond_0

    .line 2023
    .line 2024
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 2025
    .line 2026
    .line 2027
    move-result-object v2

    .line 2028
    check-cast v2, Lm2/a;

    .line 2029
    .line 2030
    iget-object v2, v2, Lm2/a;->e:Ljava/util/ArrayList;

    .line 2031
    .line 2032
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2033
    .line 2034
    .line 2035
    goto/16 :goto_0

    .line 2036
    .line 2037
    :cond_60
    move-object/from16 v5, p0

    .line 2038
    .line 2039
    const/4 v0, 0x0

    .line 2040
    iput v0, v1, Lm2/g;->n:I

    .line 2041
    .line 2042
    iput v0, v1, Lm2/g;->q:I

    .line 2043
    .line 2044
    return-void
.end method
