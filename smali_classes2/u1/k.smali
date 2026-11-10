.class public final Lu1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lu1/v;

.field public final b:Lo1/j0;

.field public final c:Lu1/e;

.field public d:Z

.field public e:Z

.field public final f:Lu1/j;

.field public final g:Lu1/j;

.field public final h:Lu1/j;

.field public final i:Lu1/j;

.field public final j:Lu1/j;

.field public final k:Lu1/j;

.field public l:J


# direct methods
.method public constructor <init>(Lu1/v;Lo1/j0;Lu1/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu1/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lu1/j;-><init>(Lu1/k;I)V

    new-instance v0, Lu1/j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lu1/j;-><init>(Lu1/k;I)V

    iput-object v0, p0, Lu1/k;->f:Lu1/j;

    new-instance v0, Lu1/j;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lu1/j;-><init>(Lu1/k;I)V

    iput-object v0, p0, Lu1/k;->g:Lu1/j;

    new-instance v0, Lu1/j;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lu1/j;-><init>(Lu1/k;I)V

    iput-object v0, p0, Lu1/k;->h:Lu1/j;

    new-instance v0, Lu1/j;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lu1/j;-><init>(Lu1/k;I)V

    iput-object v0, p0, Lu1/k;->i:Lu1/j;

    new-instance v0, Lu1/j;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lu1/j;-><init>(Lu1/k;I)V

    iput-object v0, p0, Lu1/k;->j:Lu1/j;

    new-instance v0, Lu1/j;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lu1/j;-><init>(Lu1/k;I)V

    iput-object v0, p0, Lu1/k;->k:Lu1/j;

    iput-object p1, p0, Lu1/k;->a:Lu1/v;

    iput-object p2, p0, Lu1/k;->b:Lo1/j0;

    iput-object p3, p0, Lu1/k;->c:Lu1/e;

    return-void
.end method


# virtual methods
.method public final a(IIIZZZ)Z
    .locals 9

    .line 1
    const/16 v0, 0x4f

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq p2, v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0xbd

    .line 8
    .line 9
    if-eq p2, v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x66

    .line 12
    .line 13
    if-eq p2, v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x60

    .line 16
    .line 17
    if-ne p2, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v0, v2

    .line 23
    :goto_1
    const/16 v3, 0x18

    .line 24
    .line 25
    if-eq p2, v3, :cond_3

    .line 26
    .line 27
    const/16 v3, 0x5a

    .line 28
    .line 29
    if-ne p2, v3, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move v3, v1

    .line 33
    goto :goto_3

    .line 34
    :cond_3
    :goto_2
    move v3, v2

    .line 35
    :goto_3
    const/16 v4, 0x19

    .line 36
    .line 37
    if-eq p2, v4, :cond_5

    .line 38
    .line 39
    const/16 v4, 0x59

    .line 40
    .line 41
    if-ne p2, v4, :cond_4

    .line 42
    .line 43
    goto :goto_4

    .line 44
    :cond_4
    move v4, v1

    .line 45
    goto :goto_5

    .line 46
    :cond_5
    :goto_4
    move v4, v2

    .line 47
    :goto_5
    or-int v5, v3, v4

    .line 48
    .line 49
    iget-object v6, p0, Lu1/k;->a:Lu1/v;

    .line 50
    .line 51
    iget-boolean v7, v6, Lu1/v;->h:Z

    .line 52
    .line 53
    iget-object v8, p0, Lu1/k;->c:Lu1/e;

    .line 54
    .line 55
    if-eqz v7, :cond_11

    .line 56
    .line 57
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    if-eqz v0, :cond_c

    .line 61
    .line 62
    if-lez p3, :cond_6

    .line 63
    .line 64
    return v2

    .line 65
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide p2

    .line 69
    iget-wide p4, p0, Lu1/k;->l:J

    .line 70
    .line 71
    sub-long v3, p2, p4

    .line 72
    .line 73
    const-wide/16 v7, 0x28

    .line 74
    .line 75
    cmp-long p6, v3, v7

    .line 76
    .line 77
    if-ltz p6, :cond_7

    .line 78
    .line 79
    iput-wide p2, p0, Lu1/k;->l:J

    .line 80
    .line 81
    goto :goto_6

    .line 82
    :cond_7
    add-long/2addr p4, v7

    .line 83
    iput-wide p4, p0, Lu1/k;->l:J

    .line 84
    .line 85
    move v1, v2

    .line 86
    :goto_6
    if-nez p1, :cond_9

    .line 87
    .line 88
    if-eqz v1, :cond_8

    .line 89
    .line 90
    iget-object p1, p0, Lu1/k;->j:Lu1/j;

    .line 91
    .line 92
    const-string p2, "handleKeyEvent sendCursorDownTask"

    .line 93
    .line 94
    goto :goto_7

    .line 95
    :cond_8
    invoke-virtual {v6}, Lu1/v;->a()V

    .line 96
    .line 97
    .line 98
    goto :goto_8

    .line 99
    :cond_9
    if-ne p1, v2, :cond_b

    .line 100
    .line 101
    if-eqz v1, :cond_a

    .line 102
    .line 103
    iget-object p1, p0, Lu1/k;->k:Lu1/j;

    .line 104
    .line 105
    const-string p2, "handleKeyEvent sendCursorUpTask"

    .line 106
    .line 107
    :goto_7
    sub-long/2addr v7, v3

    .line 108
    iget-object p3, p0, Lu1/k;->b:Lo1/j0;

    .line 109
    .line 110
    invoke-virtual {p3, p1, p2, v7, v8}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 111
    .line 112
    .line 113
    goto :goto_8

    .line 114
    :cond_a
    invoke-virtual {v6}, Lu1/v;->b()V

    .line 115
    .line 116
    .line 117
    :cond_b
    :goto_8
    return v2

    .line 118
    :cond_c
    if-eqz v5, :cond_11

    .line 119
    .line 120
    if-lez p3, :cond_d

    .line 121
    .line 122
    return v2

    .line 123
    :cond_d
    if-eqz p6, :cond_10

    .line 124
    .line 125
    if-nez p1, :cond_f

    .line 126
    .line 127
    if-eqz v3, :cond_e

    .line 128
    .line 129
    invoke-virtual {v8, v2}, Lu1/e;->a(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_9

    .line 133
    :cond_e
    if-eqz v4, :cond_f

    .line 134
    .line 135
    const/4 p1, -0x1

    .line 136
    invoke-virtual {v8, p1}, Lu1/e;->a(I)V

    .line 137
    .line 138
    .line 139
    :cond_f
    :goto_9
    return v2

    .line 140
    :cond_10
    return v1

    .line 141
    :cond_11
    const/16 p3, 0x3d

    .line 142
    .line 143
    const/16 p6, 0x30

    .line 144
    .line 145
    if-eqz p4, :cond_14

    .line 146
    .line 147
    if-eqz p5, :cond_14

    .line 148
    .line 149
    if-eq p2, p6, :cond_13

    .line 150
    .line 151
    if-eq p2, p3, :cond_12

    .line 152
    .line 153
    goto :goto_a

    .line 154
    :cond_12
    const/4 p2, 0x7

    .line 155
    goto :goto_b

    .line 156
    :cond_13
    const/16 p2, 0x8

    .line 157
    .line 158
    goto :goto_b

    .line 159
    :cond_14
    if-eqz p4, :cond_19

    .line 160
    .line 161
    const/16 p4, 0x2e

    .line 162
    .line 163
    if-eq p2, p4, :cond_18

    .line 164
    .line 165
    if-eq p2, p6, :cond_17

    .line 166
    .line 167
    const/16 p4, 0x33

    .line 168
    .line 169
    if-eq p2, p4, :cond_16

    .line 170
    .line 171
    if-eq p2, p3, :cond_15

    .line 172
    .line 173
    goto :goto_a

    .line 174
    :cond_15
    const/4 p2, 0x3

    .line 175
    goto :goto_b

    .line 176
    :cond_16
    const/4 p2, 0x5

    .line 177
    goto :goto_b

    .line 178
    :cond_17
    const/4 p2, 0x4

    .line 179
    goto :goto_b

    .line 180
    :cond_18
    const/4 p2, 0x6

    .line 181
    goto :goto_b

    .line 182
    :cond_19
    const/16 p3, 0x6f

    .line 183
    .line 184
    if-ne p2, p3, :cond_1a

    .line 185
    .line 186
    const/4 p2, 0x2

    .line 187
    goto :goto_b

    .line 188
    :cond_1a
    :goto_a
    move p2, v2

    .line 189
    :goto_b
    if-eq p2, v2, :cond_1b

    .line 190
    .line 191
    if-nez p1, :cond_1b

    .line 192
    .line 193
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    :cond_1b
    return v1
.end method
