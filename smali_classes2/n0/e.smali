.class public final Ln0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll0/b;


# instance fields
.field public final synthetic f:I

.field public final g:Ld2/a;


# direct methods
.method public synthetic constructor <init>(Ld2/a;I)V
    .locals 0

    .line 1
    iput p2, p0, Ln0/e;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Ln0/e;->g:Ld2/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final m()Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Ln0/e;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Ln0/e;->g:Ld2/a;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_0

    .line 9
    .line 10
    :pswitch_0
    invoke-interface {v1}, Ld2/a;->m()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lr0/a;

    .line 15
    .line 16
    new-instance v1, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    sget-object v2, Lg0/c;->a:Lg0/c;

    .line 22
    .line 23
    new-instance v3, Lf0/k;

    .line 24
    .line 25
    const/4 v4, 0x3

    .line 26
    invoke-direct {v3, v4}, Lf0/k;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const-string v6, "Null flags"

    .line 34
    .line 35
    if-eqz v5, :cond_5

    .line 36
    .line 37
    iput-object v5, v3, Lf0/k;->i:Ljava/lang/Object;

    .line 38
    .line 39
    const-wide/16 v7, 0x7530

    .line 40
    .line 41
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    iput-object v5, v3, Lf0/k;->g:Ljava/lang/Object;

    .line 46
    .line 47
    const-wide/32 v7, 0x5265c00

    .line 48
    .line 49
    .line 50
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    iput-object v5, v3, Lf0/k;->h:Ljava/lang/Object;

    .line 55
    .line 56
    invoke-virtual {v3}, Lf0/k;->d()Lo0/c;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    sget-object v2, Lg0/c;->c:Lg0/c;

    .line 64
    .line 65
    new-instance v3, Lf0/k;

    .line 66
    .line 67
    invoke-direct {v3, v4}, Lf0/k;-><init>(I)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    if-eqz v5, :cond_4

    .line 75
    .line 76
    iput-object v5, v3, Lf0/k;->i:Ljava/lang/Object;

    .line 77
    .line 78
    const-wide/16 v9, 0x3e8

    .line 79
    .line 80
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    iput-object v5, v3, Lf0/k;->g:Ljava/lang/Object;

    .line 85
    .line 86
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    iput-object v5, v3, Lf0/k;->h:Ljava/lang/Object;

    .line 91
    .line 92
    invoke-virtual {v3}, Lf0/k;->d()Lo0/c;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    sget-object v2, Lg0/c;->b:Lg0/c;

    .line 100
    .line 101
    new-instance v3, Lf0/k;

    .line 102
    .line 103
    invoke-direct {v3, v4}, Lf0/k;-><init>(I)V

    .line 104
    .line 105
    .line 106
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    if-eqz v4, :cond_3

    .line 111
    .line 112
    iput-object v4, v3, Lf0/k;->i:Ljava/lang/Object;

    .line 113
    .line 114
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    iput-object v4, v3, Lf0/k;->g:Ljava/lang/Object;

    .line 119
    .line 120
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    iput-object v4, v3, Lf0/k;->h:Ljava/lang/Object;

    .line 125
    .line 126
    sget-object v4, Lo0/f;->b:Lo0/f;

    .line 127
    .line 128
    filled-new-array {v4}, [Lo0/f;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    new-instance v5, Ljava/util/HashSet;

    .line 133
    .line 134
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 139
    .line 140
    .line 141
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    if-eqz v4, :cond_2

    .line 146
    .line 147
    iput-object v4, v3, Lf0/k;->i:Ljava/lang/Object;

    .line 148
    .line 149
    invoke-virtual {v3}, Lf0/k;->d()Lo0/c;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    if-eqz v0, :cond_1

    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    invoke-static {}, Lg0/c;->values()[Lg0/c;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    array-length v3, v3

    .line 171
    if-lt v2, v3, :cond_0

    .line 172
    .line 173
    new-instance v2, Ljava/util/HashMap;

    .line 174
    .line 175
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 176
    .line 177
    .line 178
    new-instance v2, Lo0/b;

    .line 179
    .line 180
    invoke-direct {v2, v0, v1}, Lo0/b;-><init>(Lr0/a;Ljava/util/Map;)V

    .line 181
    .line 182
    .line 183
    return-object v2

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 185
    .line 186
    const-string v1, "Not all priorities have been configured"

    .line 187
    .line 188
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw v0

    .line 192
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    .line 193
    .line 194
    const-string v1, "missing required property: clock"

    .line 195
    .line 196
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw v0

    .line 200
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 201
    .line 202
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw v0

    .line 206
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    .line 207
    .line 208
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw v0

    .line 212
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 213
    .line 214
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw v0

    .line 218
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    .line 219
    .line 220
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw v0

    .line 224
    :goto_0
    invoke-interface {v1}, Ld2/a;->m()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Landroid/content/Context;

    .line 229
    .line 230
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    if-eqz v0, :cond_6

    .line 235
    .line 236
    return-object v0

    .line 237
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    .line 238
    .line 239
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 240
    .line 241
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw v0

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
