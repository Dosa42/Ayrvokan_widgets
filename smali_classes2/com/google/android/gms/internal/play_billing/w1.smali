.class public final Lcom/google/android/gms/internal/play_billing/w1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lcom/google/android/gms/internal/play_billing/w1;


# instance fields
.field public a:I

.field public b:[I

.field public c:[Ljava/lang/Object;

.field public d:I

.field public e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/play_billing/w1;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/w1;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/w1;->f:Lcom/google/android/gms/internal/play_billing/w1;

    return-void
.end method

.method public constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/w1;->d:I

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/w1;->b:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/play_billing/w1;->c:[Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/play_billing/w1;->e:Z

    return-void
.end method

.method public static b()Lcom/google/android/gms/internal/play_billing/w1;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/w1;

    const/16 v1, 0x8

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/google/android/gms/internal/play_billing/w1;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/w1;->d:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_6

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:I

    .line 9
    .line 10
    if-ge v0, v2, :cond_5

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/w1;->b:[I

    .line 13
    .line 14
    aget v2, v2, v0

    .line 15
    .line 16
    ushr-int/lit8 v3, v2, 0x3

    .line 17
    .line 18
    and-int/lit8 v2, v2, 0x7

    .line 19
    .line 20
    if-eqz v2, :cond_4

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    if-eq v2, v4, :cond_3

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    if-eq v2, v4, :cond_2

    .line 27
    .line 28
    const/4 v4, 0x3

    .line 29
    if-eq v2, v4, :cond_1

    .line 30
    .line 31
    const/4 v4, 0x5

    .line 32
    if-ne v2, v4, :cond_0

    .line 33
    .line 34
    shl-int/lit8 v2, v3, 0x3

    .line 35
    .line 36
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/w1;->c:[Ljava/lang/Object;

    .line 37
    .line 38
    aget-object v3, v3, v0

    .line 39
    .line 40
    check-cast v3, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    add-int/lit8 v2, v2, 0x4

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    sget v1, Lcom/google/android/gms/internal/play_billing/u0;->a:I

    .line 55
    .line 56
    new-instance v1, Lcom/google/android/gms/internal/play_billing/t0;

    .line 57
    .line 58
    invoke-direct {v1}, Lcom/google/android/gms/internal/play_billing/t0;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_1
    shl-int/lit8 v2, v3, 0x3

    .line 66
    .line 67
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    add-int/2addr v2, v2

    .line 72
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/w1;->c:[Ljava/lang/Object;

    .line 73
    .line 74
    aget-object v3, v3, v0

    .line 75
    .line 76
    check-cast v3, Lcom/google/android/gms/internal/play_billing/w1;

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/w1;->a()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    shl-int/lit8 v2, v3, 0x3

    .line 84
    .line 85
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/w1;->c:[Ljava/lang/Object;

    .line 86
    .line 87
    aget-object v3, v3, v0

    .line 88
    .line 89
    check-cast v3, Lcom/google/android/gms/internal/play_billing/z;

    .line 90
    .line 91
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/z;->i()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    add-int/2addr v4, v3

    .line 104
    add-int/2addr v4, v2

    .line 105
    add-int/2addr v4, v1

    .line 106
    move v1, v4

    .line 107
    goto :goto_3

    .line 108
    :cond_3
    shl-int/lit8 v2, v3, 0x3

    .line 109
    .line 110
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/w1;->c:[Ljava/lang/Object;

    .line 111
    .line 112
    aget-object v3, v3, v0

    .line 113
    .line 114
    check-cast v3, Ljava/lang/Long;

    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 117
    .line 118
    .line 119
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    add-int/lit8 v2, v2, 0x8

    .line 124
    .line 125
    :goto_1
    add-int/2addr v2, v1

    .line 126
    move v1, v2

    .line 127
    goto :goto_3

    .line 128
    :cond_4
    shl-int/lit8 v2, v3, 0x3

    .line 129
    .line 130
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/w1;->c:[Ljava/lang/Object;

    .line 131
    .line 132
    aget-object v3, v3, v0

    .line 133
    .line 134
    check-cast v3, Ljava/lang/Long;

    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 137
    .line 138
    .line 139
    move-result-wide v3

    .line 140
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/b0;->t0(J)I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    :goto_2
    add-int/2addr v3, v2

    .line 149
    add-int/2addr v3, v1

    .line 150
    move v1, v3

    .line 151
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_5
    iput v1, p0, Lcom/google/android/gms/internal/play_billing/w1;->d:I

    .line 156
    .line 157
    return v1

    .line 158
    :cond_6
    return v0
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/w1;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:I

    .line 6
    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/w1;->e(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w1;->b:[I

    .line 13
    .line 14
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:I

    .line 15
    .line 16
    aput p1, v0, v1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/w1;->c:[Ljava/lang/Object;

    .line 19
    .line 20
    aput-object p2, p1, v1

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    iput v1, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:I

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public final d(Lcom/google/android/gms/internal/play_billing/d0;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:I

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:I

    .line 7
    .line 8
    if-ge v0, v1, :cond_5

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/w1;->b:[I

    .line 11
    .line 12
    aget v1, v1, v0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/w1;->c:[Ljava/lang/Object;

    .line 15
    .line 16
    aget-object v2, v2, v0

    .line 17
    .line 18
    and-int/lit8 v3, v1, 0x7

    .line 19
    .line 20
    const/4 v4, 0x3

    .line 21
    ushr-int/2addr v1, v4

    .line 22
    if-eqz v3, :cond_4

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    if-eq v3, v5, :cond_3

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    if-eq v3, v5, :cond_2

    .line 29
    .line 30
    if-eq v3, v4, :cond_1

    .line 31
    .line 32
    const/4 v4, 0x5

    .line 33
    if-ne v3, v4, :cond_0

    .line 34
    .line 35
    check-cast v2, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/play_billing/d0;->k(II)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 46
    .line 47
    sget v0, Lcom/google/android/gms/internal/play_billing/u0;->a:I

    .line 48
    .line 49
    new-instance v0, Lcom/google/android/gms/internal/play_billing/t0;

    .line 50
    .line 51
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/t0;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_1
    iget-object v3, p1, Lcom/google/android/gms/internal/play_billing/d0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    .line 59
    .line 60
    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/internal/play_billing/b0;->k0(II)V

    .line 61
    .line 62
    .line 63
    check-cast v2, Lcom/google/android/gms/internal/play_billing/w1;

    .line 64
    .line 65
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/play_billing/w1;->d(Lcom/google/android/gms/internal/play_billing/d0;)V

    .line 66
    .line 67
    .line 68
    iget-object v2, p1, Lcom/google/android/gms/internal/play_billing/d0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    .line 69
    .line 70
    const/4 v3, 0x4

    .line 71
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/play_billing/b0;->k0(II)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    check-cast v2, Lcom/google/android/gms/internal/play_billing/z;

    .line 76
    .line 77
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/play_billing/d0;->g(ILcom/google/android/gms/internal/play_billing/z;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    check-cast v2, Ljava/lang/Long;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 84
    .line 85
    .line 86
    move-result-wide v2

    .line 87
    invoke-virtual {p1, v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/d0;->l(JI)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    check-cast v2, Ljava/lang/Long;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 94
    .line 95
    .line 96
    move-result-wide v2

    .line 97
    invoke-virtual {p1, v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/d0;->p(JI)V

    .line 98
    .line 99
    .line 100
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_5
    return-void
.end method

.method public final e(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w1;->b:[I

    array-length v1, v0

    if-le p1, v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v1

    if-lt v2, p1, :cond_0

    move p1, v2

    :cond_0
    const/16 v1, 0x8

    if-ge p1, v1, :cond_1

    move p1, v1

    :cond_1
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/w1;->b:[I

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w1;->c:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/w1;->c:[Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/play_billing/w1;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/play_billing/w1;

    iget v2, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:I

    iget v3, p1, Lcom/google/android/gms/internal/play_billing/w1;->a:I

    if-ne v2, v3, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/w1;->b:[I

    iget-object v4, p1, Lcom/google/android/gms/internal/play_billing/w1;->b:[I

    move v5, v1

    :goto_0
    if-ge v5, v2, :cond_4

    aget v6, v3, v5

    aget v7, v4, v5

    if-eq v6, v7, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/w1;->c:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/w1;->c:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:I

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:I

    add-int/lit16 v1, v0, 0x20f

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/w1;->b:[I

    const/4 v3, 0x0

    const/16 v4, 0x11

    move v5, v3

    move v6, v4

    :goto_0
    if-ge v5, v0, :cond_0

    mul-int/lit8 v6, v6, 0x1f

    aget v7, v2, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w1;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:I

    :goto_1
    if-ge v3, v2, :cond_1

    mul-int/lit8 v4, v4, 0x1f

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v4

    return v1
.end method
