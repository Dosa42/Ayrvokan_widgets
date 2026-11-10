.class public final synthetic Lh0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/i;
.implements Lorg/mozilla/geckoview/GeckoResult$Consumer;
.implements Lf2/b;
.implements Lr2/g;
.implements Lo2/f;


# instance fields
.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lh0/c;->f:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget v0, p0, Lh0/c;->f:I

    .line 2
    .line 3
    const-string v1, "OMX.google"

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_2

    .line 9
    :pswitch_0
    check-cast p1, Lo2/a;

    .line 10
    .line 11
    sget-object v0, Lo2/g;->a:Ljava/util/regex/Pattern;

    .line 12
    .line 13
    iget-object p1, p1, Lo2/a;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    const-string v0, "c2.android"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget v0, Lb3/n;->a:I

    .line 31
    .line 32
    const/16 v1, 0x1a

    .line 33
    .line 34
    if-ge v0, v1, :cond_1

    .line 35
    .line 36
    const-string v0, "OMX.MTK.AUDIO.DECODER.RAW"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    const/4 p1, -0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 p1, 0x0

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 49
    :goto_1
    return p1

    .line 50
    :goto_2
    check-cast p1, Lo2/a;

    .line 51
    .line 52
    sget-object v0, Lo2/g;->a:Ljava/util/regex/Pattern;

    .line 53
    .line 54
    iget-object p1, p1, Lo2/a;->a:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    return p1

    .line 61
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lh0/c;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Lorg/mozilla/geckoview/WebExtension;

    .line 8
    .line 9
    sput-object p1, Ln1/c;->a:Lorg/mozilla/geckoview/WebExtension;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Registerrrrrreeeeeeeeeeeeeed!: "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "sdf"

    .line 26
    .line 27
    invoke-static {v0, p1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    sput-boolean p1, Ln1/c;->b:Z

    .line 32
    .line 33
    return-void

    .line 34
    :goto_0
    check-cast p1, Ljava/lang/Throwable;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "Error registering extension: "

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v0, "MessageDelegate"

    .line 51
    .line 52
    invoke-static {v0, p1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lh0/c;->f:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :pswitch_0
    check-cast p1, Landroid/database/Cursor;

    .line 12
    .line 13
    sget-object v0, Lp0/k;->f:Lg0/b;

    .line 14
    .line 15
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :goto_0
    return-object v1

    .line 31
    :pswitch_1
    check-cast p1, Landroid/database/Cursor;

    .line 32
    .line 33
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :pswitch_2
    check-cast p1, Landroid/database/Cursor;

    .line 43
    .line 44
    sget-object v0, Lp0/k;->f:Lg0/b;

    .line 45
    .line 46
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-lez p1, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move v2, v3

    .line 54
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    :pswitch_3
    check-cast p1, Landroid/database/Cursor;

    .line 60
    .line 61
    sget-object v0, Lp0/k;->f:Lg0/b;

    .line 62
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_3

    .line 73
    .line 74
    invoke-static {}, Lj0/k;->a()Lf0/k;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v4, v5}, Lf0/k;->k(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const/4 v5, 0x2

    .line 86
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    invoke-static {v5}, Ls0/a;->b(I)Lg0/c;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v4, v5}, Lf0/k;->l(Lg0/c;)V

    .line 95
    .line 96
    .line 97
    const/4 v5, 0x3

    .line 98
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    if-nez v5, :cond_2

    .line 103
    .line 104
    move-object v5, v1

    .line 105
    goto :goto_3

    .line 106
    :cond_2
    invoke-static {v5, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    :goto_3
    iput-object v5, v4, Lf0/k;->h:Ljava/lang/Object;

    .line 111
    .line 112
    invoke-virtual {v4}, Lf0/k;->b()Lj0/k;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    return-object v0

    .line 121
    :pswitch_4
    check-cast p1, Ljava/lang/Throwable;

    .line 122
    .line 123
    sget-object v0, Lp0/k;->f:Lg0/b;

    .line 124
    .line 125
    new-instance v0, Lq0/a;

    .line 126
    .line 127
    const-string v1, "Timed out while trying to acquire the lock."

    .line 128
    .line 129
    invoke-direct {v0, v1, p1}, Lq0/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :pswitch_5
    check-cast p1, Landroid/database/Cursor;

    .line 134
    .line 135
    sget-object v0, Lp0/k;->f:Lg0/b;

    .line 136
    .line 137
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_4

    .line 142
    .line 143
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 144
    .line 145
    .line 146
    move-result-wide v0

    .line 147
    goto :goto_4

    .line 148
    :cond_4
    const-wide/16 v0, 0x0

    .line 149
    .line 150
    :goto_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    return-object p1

    .line 155
    :pswitch_6
    check-cast p1, Ljava/lang/Throwable;

    .line 156
    .line 157
    sget-object v0, Lp0/k;->f:Lg0/b;

    .line 158
    .line 159
    new-instance v0, Lq0/a;

    .line 160
    .line 161
    const-string v1, "Timed out while trying to open db."

    .line 162
    .line 163
    invoke-direct {v0, v1, p1}, Lq0/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    throw v0

    .line 167
    :pswitch_7
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 168
    .line 169
    sget-object v0, Lp0/k;->f:Lg0/b;

    .line 170
    .line 171
    new-array v0, v3, [Ljava/lang/String;

    .line 172
    .line 173
    const-string v1, "SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id"

    .line 174
    .line 175
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    new-instance v0, Lh0/c;

    .line 180
    .line 181
    const/4 v1, 0x6

    .line 182
    invoke-direct {v0, v1}, Lh0/c;-><init>(I)V

    .line 183
    .line 184
    .line 185
    invoke-static {p1, v0}, Lp0/k;->g(Landroid/database/Cursor;Lp0/i;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    check-cast p1, Ljava/util/List;

    .line 190
    .line 191
    return-object p1

    .line 192
    :goto_5
    check-cast p1, Landroid/database/Cursor;

    .line 193
    .line 194
    sget-object v0, Lp0/k;->f:Lg0/b;

    .line 195
    .line 196
    new-instance v0, Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .line 200
    .line 201
    move v1, v3

    .line 202
    :goto_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eqz v2, :cond_5

    .line 207
    .line 208
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    array-length v2, v2

    .line 216
    add-int/2addr v1, v2

    .line 217
    goto :goto_6

    .line 218
    :cond_5
    new-array p1, v1, [B

    .line 219
    .line 220
    move v1, v3

    .line 221
    move v2, v1

    .line 222
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    if-ge v1, v4, :cond_6

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    check-cast v4, [B

    .line 233
    .line 234
    array-length v5, v4

    .line 235
    invoke-static {v4, v3, p1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    .line 237
    .line 238
    array-length v4, v4

    .line 239
    add-int/2addr v2, v4

    .line 240
    add-int/lit8 v1, v1, 0x1

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_6
    return-object p1

    .line 244
    nop

    .line 245
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lf2/c0;)V
    .locals 1

    .line 1
    iget v0, p0, Lh0/c;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    const/4 v0, 0x1

    .line 8
    invoke-interface {p1, v0}, Lf2/c0;->onPositionDiscontinuity(I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :goto_0
    invoke-interface {p1}, Lf2/c0;->onSeekProcessed()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method
