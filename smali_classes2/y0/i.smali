.class public final Ly0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/a;
.implements Lcom/google/android/gms/internal/play_billing/q0;
.implements Lj2/d;
.implements Lr1/p;
.implements Lw2/g;
.implements Lv2/c;


# static fields
.field public static f:Ly0/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lx2/g;I)V
    .locals 0

    iget-object p1, p1, Lx2/g;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lk2/h;)Lu1/d;
    .locals 5

    .line 1
    new-instance v0, Lu1/d;

    .line 2
    .line 3
    instance-of v1, p0, Ln2/e;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    instance-of v1, p0, Ln2/a;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    instance-of v1, p0, Ln2/c;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    instance-of v1, p0, Ll2/c;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v1, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    move v1, v3

    .line 25
    :goto_1
    instance-of v4, p0, Ln2/c0;

    .line 26
    .line 27
    if-nez v4, :cond_2

    .line 28
    .line 29
    instance-of v4, p0, Lm2/g;

    .line 30
    .line 31
    if-eqz v4, :cond_3

    .line 32
    .line 33
    :cond_2
    move v2, v3

    .line 34
    :cond_3
    invoke-direct {v0, p0, v1, v2}, Lu1/d;-><init>(Lk2/h;ZZ)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public static e(Lb3/l;Lf2/t;Ljava/util/List;)Lm2/g;
    .locals 5

    .line 1
    new-instance v0, Lm2/g;

    .line 2
    .line 3
    iget-object p1, p1, Lf2/t;->g:Lp2/b;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    move v2, v1

    .line 10
    :goto_0
    iget-object v3, p1, Lp2/b;->a:[Lp2/a;

    .line 11
    .line 12
    array-length v4, v3

    .line 13
    if-ge v2, v4, :cond_2

    .line 14
    .line 15
    aget-object v3, v3, v2

    .line 16
    .line 17
    instance-of v4, v3, Lw2/r;

    .line 18
    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    check-cast v3, Lw2/r;

    .line 22
    .line 23
    iget-object p1, v3, Lw2/r;->c:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    xor-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    :goto_1
    move p1, v1

    .line 36
    :goto_2
    if-eqz p1, :cond_3

    .line 37
    .line 38
    const/4 v1, 0x4

    .line 39
    :cond_3
    if-eqz p2, :cond_4

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    :goto_3
    invoke-direct {v0, v1, p0, p2}, Lm2/g;-><init>(ILb3/l;Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public static g(Lf2/t;Ljava/util/List;Lb3/l;)Ln2/c0;
    .locals 9

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x30

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    const-string v2, "application/cea-608"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, -0x1

    .line 12
    const-wide v6, 0x7fffffffffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    invoke-static/range {v1 .. v8}, Lf2/t;->k(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJLjava/util/List;)Lf2/t;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/16 v0, 0x10

    .line 30
    .line 31
    :goto_0
    iget-object p0, p0, Lf2/t;->f:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_8

    .line 38
    .line 39
    sget-object v1, Lb3/c;->a:Ljava/util/ArrayList;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    const/4 v2, 0x0

    .line 43
    if-nez p0, :cond_1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    invoke-static {p0}, Lb3/n;->i(Ljava/lang/String;)[Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    array-length v4, v3

    .line 51
    move v5, v1

    .line 52
    :goto_1
    if-ge v5, v4, :cond_3

    .line 53
    .line 54
    aget-object v6, v3, v5

    .line 55
    .line 56
    invoke-static {v6}, Lb3/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    if-eqz v6, :cond_2

    .line 61
    .line 62
    invoke-static {v6}, Lb3/c;->e(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-eqz v7, :cond_2

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    :goto_2
    move-object v6, v2

    .line 73
    :goto_3
    const-string v3, "audio/mp4a-latm"

    .line 74
    .line 75
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez v3, :cond_4

    .line 80
    .line 81
    or-int/lit8 v0, v0, 0x2

    .line 82
    .line 83
    :cond_4
    if-nez p0, :cond_5

    .line 84
    .line 85
    goto :goto_5

    .line 86
    :cond_5
    invoke-static {p0}, Lb3/n;->i(Ljava/lang/String;)[Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    array-length v3, p0

    .line 91
    :goto_4
    if-ge v1, v3, :cond_7

    .line 92
    .line 93
    aget-object v4, p0, v1

    .line 94
    .line 95
    invoke-static {v4}, Lb3/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    if-eqz v4, :cond_6

    .line 100
    .line 101
    invoke-static {v4}, Lb3/c;->f(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_6

    .line 106
    .line 107
    move-object v2, v4

    .line 108
    goto :goto_5

    .line 109
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_7
    :goto_5
    const-string p0, "video/avc"

    .line 113
    .line 114
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-nez p0, :cond_8

    .line 119
    .line 120
    or-int/lit8 v0, v0, 0x4

    .line 121
    .line 122
    :cond_8
    new-instance p0, Ln2/c0;

    .line 123
    .line 124
    new-instance v1, Ln2/g;

    .line 125
    .line 126
    invoke-direct {v1, v0, p1}, Ln2/g;-><init>(ILjava/util/List;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {p0, p2, v1}, Ln2/c0;-><init>(Lb3/l;Ln2/g;)V

    .line 130
    .line 131
    .line 132
    return-object p0
.end method

.method public static h(Lk2/h;Lk2/f;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-interface {p0, p1}, Lk2/h;->c(Lk2/f;)Z

    .line 3
    .line 4
    .line 5
    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iput v0, p1, Lk2/f;->f:I

    .line 7
    .line 8
    move v0, p0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    iput v0, p1, Lk2/f;->f:I

    .line 12
    .line 13
    throw p0

    .line 14
    :catch_0
    iput v0, p1, Lk2/f;->f:I

    .line 15
    .line 16
    :goto_0
    return v0
.end method

.method public static i([BII)Z
    .locals 8

    .line 1
    :goto_0
    if-ge p1, p2, :cond_0

    .line 2
    .line 3
    aget-byte v0, p0, p1

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-lt p1, p2, :cond_1

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_1
    :goto_1
    if-lt p1, p2, :cond_2

    .line 16
    .line 17
    :goto_2
    move p1, v1

    .line 18
    goto/16 :goto_6

    .line 19
    .line 20
    :cond_2
    add-int/lit8 v2, p1, 0x1

    .line 21
    .line 22
    aget-byte p1, p0, p1

    .line 23
    .line 24
    if-gez p1, :cond_11

    .line 25
    .line 26
    const/16 v3, -0x41

    .line 27
    .line 28
    const/4 v4, -0x1

    .line 29
    const/16 v5, -0x20

    .line 30
    .line 31
    if-ge p1, v5, :cond_4

    .line 32
    .line 33
    if-lt v2, p2, :cond_3

    .line 34
    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :cond_3
    const/16 v5, -0x3e

    .line 38
    .line 39
    if-lt p1, v5, :cond_f

    .line 40
    .line 41
    add-int/lit8 p1, v2, 0x1

    .line 42
    .line 43
    aget-byte v2, p0, v2

    .line 44
    .line 45
    if-le v2, v3, :cond_1

    .line 46
    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    :cond_4
    const/16 v6, -0x10

    .line 50
    .line 51
    if-ge p1, v6, :cond_8

    .line 52
    .line 53
    add-int/lit8 v6, p2, -0x1

    .line 54
    .line 55
    if-lt v2, v6, :cond_5

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_5
    add-int/lit8 v6, v2, 0x1

    .line 59
    .line 60
    aget-byte v2, p0, v2

    .line 61
    .line 62
    if-gt v2, v3, :cond_f

    .line 63
    .line 64
    const/16 v7, -0x60

    .line 65
    .line 66
    if-ne p1, v5, :cond_6

    .line 67
    .line 68
    if-lt v2, v7, :cond_f

    .line 69
    .line 70
    :cond_6
    const/16 v5, -0x13

    .line 71
    .line 72
    if-ne p1, v5, :cond_7

    .line 73
    .line 74
    if-ge v2, v7, :cond_f

    .line 75
    .line 76
    :cond_7
    add-int/lit8 p1, v6, 0x1

    .line 77
    .line 78
    aget-byte v2, p0, v6

    .line 79
    .line 80
    if-le v2, v3, :cond_1

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_8
    add-int/lit8 v5, p2, -0x2

    .line 84
    .line 85
    if-lt v2, v5, :cond_e

    .line 86
    .line 87
    :goto_3
    sget-object p1, Lcom/google/android/gms/internal/play_billing/h2;->a:Ly0/i;

    .line 88
    .line 89
    sub-int/2addr p2, v2

    .line 90
    add-int/lit8 p1, v2, -0x1

    .line 91
    .line 92
    aget-byte p1, p0, p1

    .line 93
    .line 94
    const/16 v5, -0xc

    .line 95
    .line 96
    if-eqz p2, :cond_d

    .line 97
    .line 98
    if-eq p2, v0, :cond_b

    .line 99
    .line 100
    const/4 v6, 0x2

    .line 101
    if-ne p2, v6, :cond_a

    .line 102
    .line 103
    aget-byte p2, p0, v2

    .line 104
    .line 105
    add-int/2addr v2, v0

    .line 106
    aget-byte p0, p0, v2

    .line 107
    .line 108
    if-gt p1, v5, :cond_f

    .line 109
    .line 110
    if-gt p2, v3, :cond_f

    .line 111
    .line 112
    if-le p0, v3, :cond_9

    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_9
    shl-int/lit8 p2, p2, 0x8

    .line 116
    .line 117
    shl-int/lit8 p0, p0, 0x10

    .line 118
    .line 119
    xor-int/2addr p1, p2

    .line 120
    goto :goto_4

    .line 121
    :cond_a
    new-instance p0, Ljava/lang/AssertionError;

    .line 122
    .line 123
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :cond_b
    aget-byte p0, p0, v2

    .line 128
    .line 129
    if-gt p1, v5, :cond_f

    .line 130
    .line 131
    if-le p0, v3, :cond_c

    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_c
    shl-int/lit8 p0, p0, 0x8

    .line 135
    .line 136
    :goto_4
    xor-int/2addr p0, p1

    .line 137
    move p1, p0

    .line 138
    goto :goto_6

    .line 139
    :cond_d
    if-gt p1, v5, :cond_f

    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_e
    add-int/lit8 v5, v2, 0x1

    .line 143
    .line 144
    aget-byte v2, p0, v2

    .line 145
    .line 146
    if-gt v2, v3, :cond_f

    .line 147
    .line 148
    shl-int/lit8 p1, p1, 0x1c

    .line 149
    .line 150
    add-int/lit8 v2, v2, 0x70

    .line 151
    .line 152
    add-int/2addr v2, p1

    .line 153
    shr-int/lit8 p1, v2, 0x1e

    .line 154
    .line 155
    if-nez p1, :cond_f

    .line 156
    .line 157
    add-int/lit8 p1, v5, 0x1

    .line 158
    .line 159
    aget-byte v2, p0, v5

    .line 160
    .line 161
    if-gt v2, v3, :cond_f

    .line 162
    .line 163
    add-int/lit8 v2, p1, 0x1

    .line 164
    .line 165
    aget-byte p1, p0, p1

    .line 166
    .line 167
    if-le p1, v3, :cond_11

    .line 168
    .line 169
    :cond_f
    :goto_5
    move p1, v4

    .line 170
    :goto_6
    if-nez p1, :cond_10

    .line 171
    .line 172
    goto :goto_7

    .line 173
    :cond_10
    move v0, v1

    .line 174
    :goto_7
    return v0

    .line 175
    :cond_11
    move p1, v2

    .line 176
    goto/16 :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    sput-object v0, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->h:Lcom/nomone/vr_desktop/Applications/SettingsApplication;

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    sput-object v0, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->h:Lcom/nomone/vr_desktop/Applications/SettingsApplication;

    return-void
.end method
