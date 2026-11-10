.class public final Lz2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Lz2/g;

.field public final d:Z

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Z

.field public final i:I

.field public final j:I

.field public final k:I


# direct methods
.method public constructor <init>(Lf2/t;Lz2/g;I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lz2/f;->c:Lz2/g;

    .line 5
    .line 6
    iget-object v0, p1, Lf2/t;->A:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Lz2/k;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lz2/f;->b:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {p3, v0}, Lz2/k;->e(IZ)Z

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    iput-boolean p3, p0, Lz2/f;->d:Z

    .line 20
    .line 21
    iget-object p3, p2, Lz2/t;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p1, p3, v0}, Lz2/k;->c(Lf2/t;Ljava/lang/String;Z)I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    iput p3, p0, Lz2/f;->e:I

    .line 28
    .line 29
    iget p3, p1, Lf2/t;->c:I

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    and-int/2addr p3, v1

    .line 33
    if-eqz p3, :cond_0

    .line 34
    .line 35
    move p3, v1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move p3, v0

    .line 38
    :goto_0
    iput-boolean p3, p0, Lz2/f;->h:Z

    .line 39
    .line 40
    iget p3, p1, Lf2/t;->v:I

    .line 41
    .line 42
    iput p3, p0, Lz2/f;->i:I

    .line 43
    .line 44
    iget v2, p1, Lf2/t;->w:I

    .line 45
    .line 46
    iput v2, p0, Lz2/f;->j:I

    .line 47
    .line 48
    iget v2, p1, Lf2/t;->e:I

    .line 49
    .line 50
    iput v2, p0, Lz2/f;->k:I

    .line 51
    .line 52
    const/4 v3, -0x1

    .line 53
    if-eq v2, v3, :cond_1

    .line 54
    .line 55
    iget v4, p2, Lz2/g;->q:I

    .line 56
    .line 57
    if-gt v2, v4, :cond_2

    .line 58
    .line 59
    :cond_1
    if-eq p3, v3, :cond_3

    .line 60
    .line 61
    iget p2, p2, Lz2/g;->p:I

    .line 62
    .line 63
    if-gt p3, p2, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move v1, v0

    .line 67
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lz2/f;->a:Z

    .line 68
    .line 69
    sget p2, Lb3/n;->a:I

    .line 70
    .line 71
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    sget p3, Lb3/n;->a:I

    .line 80
    .line 81
    const/16 v1, 0x18

    .line 82
    .line 83
    if-lt p3, v1, :cond_4

    .line 84
    .line 85
    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p2}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    const-string p3, ","

    .line 94
    .line 95
    invoke-virtual {p2, p3, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    goto :goto_3

    .line 100
    :cond_4
    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 101
    .line 102
    const/16 v1, 0x15

    .line 103
    .line 104
    if-lt p3, v1, :cond_5

    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    goto :goto_2

    .line 111
    :cond_5
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    :goto_2
    filled-new-array {p2}, [Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    :goto_3
    move p3, v0

    .line 120
    :goto_4
    array-length v1, p2

    .line 121
    if-ge p3, v1, :cond_6

    .line 122
    .line 123
    aget-object v1, p2, p3

    .line 124
    .line 125
    invoke-static {v1}, Lb3/n;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    aput-object v1, p2, p3

    .line 130
    .line 131
    add-int/lit8 p3, p3, 0x1

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_6
    move p3, v0

    .line 135
    :goto_5
    array-length v1, p2

    .line 136
    if-ge p3, v1, :cond_8

    .line 137
    .line 138
    aget-object v1, p2, p3

    .line 139
    .line 140
    invoke-static {p1, v1, v0}, Lz2/k;->c(Lf2/t;Ljava/lang/String;Z)I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-lez v1, :cond_7

    .line 145
    .line 146
    move v0, v1

    .line 147
    goto :goto_6

    .line 148
    :cond_7
    add-int/lit8 p3, p3, 0x1

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_8
    const p3, 0x7fffffff

    .line 152
    .line 153
    .line 154
    :goto_6
    iput p3, p0, Lz2/f;->f:I

    .line 155
    .line 156
    iput v0, p0, Lz2/f;->g:I

    .line 157
    .line 158
    return-void
.end method


# virtual methods
.method public final a(Lz2/f;)I
    .locals 8

    .line 1
    iget-boolean v0, p1, Lz2/f;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    iget-boolean v3, p0, Lz2/f;->d:Z

    .line 6
    .line 7
    if-eq v3, v0, :cond_1

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v1, v2

    .line 13
    :goto_0
    return v1

    .line 14
    :cond_1
    iget v0, p0, Lz2/f;->e:I

    .line 15
    .line 16
    iget v4, p1, Lz2/f;->e:I

    .line 17
    .line 18
    if-eq v0, v4, :cond_2

    .line 19
    .line 20
    invoke-static {v0, v4}, Lz2/k;->a(II)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_2
    iget-boolean v0, p1, Lz2/f;->a:Z

    .line 26
    .line 27
    iget-boolean v4, p0, Lz2/f;->a:Z

    .line 28
    .line 29
    if-eq v4, v0, :cond_4

    .line 30
    .line 31
    if-eqz v4, :cond_3

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    move v1, v2

    .line 35
    :goto_1
    return v1

    .line 36
    :cond_4
    iget-object v0, p0, Lz2/f;->c:Lz2/g;

    .line 37
    .line 38
    iget-boolean v0, v0, Lz2/g;->v:Z

    .line 39
    .line 40
    iget v5, p0, Lz2/f;->k:I

    .line 41
    .line 42
    iget v6, p1, Lz2/f;->k:I

    .line 43
    .line 44
    if-eqz v0, :cond_6

    .line 45
    .line 46
    invoke-static {v5, v6}, Lz2/k;->b(II)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_6

    .line 51
    .line 52
    if-lez v0, :cond_5

    .line 53
    .line 54
    move v1, v2

    .line 55
    :cond_5
    return v1

    .line 56
    :cond_6
    iget-boolean v0, p1, Lz2/f;->h:Z

    .line 57
    .line 58
    iget-boolean v7, p0, Lz2/f;->h:Z

    .line 59
    .line 60
    if-eq v7, v0, :cond_8

    .line 61
    .line 62
    if-eqz v7, :cond_7

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_7
    move v1, v2

    .line 66
    :goto_2
    return v1

    .line 67
    :cond_8
    iget v0, p0, Lz2/f;->f:I

    .line 68
    .line 69
    iget v7, p1, Lz2/f;->f:I

    .line 70
    .line 71
    if-eq v0, v7, :cond_9

    .line 72
    .line 73
    invoke-static {v0, v7}, Lz2/k;->a(II)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    neg-int p1, p1

    .line 78
    return p1

    .line 79
    :cond_9
    iget v0, p0, Lz2/f;->g:I

    .line 80
    .line 81
    iget v7, p1, Lz2/f;->g:I

    .line 82
    .line 83
    if-eq v0, v7, :cond_a

    .line 84
    .line 85
    invoke-static {v0, v7}, Lz2/k;->a(II)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    return p1

    .line 90
    :cond_a
    if-eqz v4, :cond_b

    .line 91
    .line 92
    if-eqz v3, :cond_b

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_b
    move v1, v2

    .line 96
    :goto_3
    iget v0, p0, Lz2/f;->i:I

    .line 97
    .line 98
    iget v2, p1, Lz2/f;->i:I

    .line 99
    .line 100
    if-eq v0, v2, :cond_c

    .line 101
    .line 102
    invoke-static {v0, v2}, Lz2/k;->a(II)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    mul-int/2addr p1, v1

    .line 107
    return p1

    .line 108
    :cond_c
    iget v0, p0, Lz2/f;->j:I

    .line 109
    .line 110
    iget v2, p1, Lz2/f;->j:I

    .line 111
    .line 112
    if-eq v0, v2, :cond_d

    .line 113
    .line 114
    invoke-static {v0, v2}, Lz2/k;->a(II)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    mul-int/2addr p1, v1

    .line 119
    return p1

    .line 120
    :cond_d
    iget-object v0, p0, Lz2/f;->b:Ljava/lang/String;

    .line 121
    .line 122
    iget-object p1, p1, Lz2/f;->b:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v0, p1}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_e

    .line 129
    .line 130
    invoke-static {v5, v6}, Lz2/k;->a(II)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    mul-int/2addr p1, v1

    .line 135
    return p1

    .line 136
    :cond_e
    const/4 p1, 0x0

    .line 137
    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lz2/f;

    invoke-virtual {p0, p1}, Lz2/f;->a(Lz2/f;)I

    move-result p1

    return p1
.end method
