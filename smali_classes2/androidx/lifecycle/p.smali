.class public final Landroidx/lifecycle/p;
.super Lcom/google/android/gms/internal/play_billing/i0;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:Z

.field public final C:Ljava/util/ArrayList;

.field public final D:Z

.field public final w:Le/a;

.field public x:Landroidx/lifecycle/i;

.field public final y:Ljava/lang/ref/WeakReference;

.field public z:I


# direct methods
.method public constructor <init>(Landroidx/lifecycle/n;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/i0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Le/a;

    .line 5
    .line 6
    invoke-direct {v0}, Le/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/lifecycle/p;->w:Le/a;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroidx/lifecycle/p;->z:I

    .line 13
    .line 14
    iput-boolean v0, p0, Landroidx/lifecycle/p;->A:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Landroidx/lifecycle/p;->B:Z

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/lifecycle/p;->C:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroidx/lifecycle/p;->y:Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    sget-object p1, Landroidx/lifecycle/i;->b:Landroidx/lifecycle/i;

    .line 33
    .line 34
    iput-object p1, p0, Landroidx/lifecycle/p;->x:Landroidx/lifecycle/i;

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Landroidx/lifecycle/p;->D:Z

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final C0(Landroidx/lifecycle/m;)Landroidx/lifecycle/i;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/p;->w:Le/a;

    .line 2
    .line 3
    iget-object v1, v0, Le/a;->e:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Le/a;->e:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Le/c;

    .line 19
    .line 20
    iget-object p1, p1, Le/c;->d:Le/c;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, v2

    .line 24
    :goto_0
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p1, Le/c;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Landroidx/lifecycle/o;

    .line 29
    .line 30
    iget-object p1, p1, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/i;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object p1, v2

    .line 34
    :goto_1
    iget-object v0, p0, Landroidx/lifecycle/p;->C:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/lit8 v1, v1, -0x1

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v2, v0

    .line 53
    check-cast v2, Landroidx/lifecycle/i;

    .line 54
    .line 55
    :cond_2
    iget-object v0, p0, Landroidx/lifecycle/p;->x:Landroidx/lifecycle/i;

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-gez v1, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    move-object p1, v0

    .line 67
    :goto_2
    if-eqz v2, :cond_4

    .line 68
    .line 69
    invoke-virtual {v2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-gez v0, :cond_4

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_4
    move-object v2, p1

    .line 77
    :goto_3
    return-object v2
.end method

.method public final D0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/p;->D:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    sget-object v0, Ld/a;->D:Ld/a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-class v0, Ld/a;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v1, Ld/a;->D:Ld/a;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Ld/a;

    .line 18
    .line 19
    invoke-direct {v1}, Ld/a;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v1, Ld/a;->D:Ld/a;

    .line 23
    .line 24
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :goto_0
    sget-object v0, Ld/a;->D:Ld/a;

    .line 26
    .line 27
    iget-object v0, v0, Ld/a;->C:Ld/c;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-ne v0, v1, :cond_2

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const/4 v0, 0x0

    .line 49
    :goto_1
    if-eqz v0, :cond_3

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v1, "Method "

    .line 55
    .line 56
    const-string v2, " must be called on the main thread"

    .line 57
    .line 58
    invoke-static {v1, p1, v2}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw p1

    .line 69
    :cond_4
    :goto_2
    return-void
.end method

.method public final E0(Landroidx/lifecycle/h;)V
    .locals 1

    .line 1
    const-string v0, "handleLifecycleEvent"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/p;->D0(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/lifecycle/h;->a()Landroidx/lifecycle/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/p;->F0(Landroidx/lifecycle/i;)V

    return-void
.end method

.method public final F0(Landroidx/lifecycle/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/p;->x:Landroidx/lifecycle/i;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/lifecycle/p;->x:Landroidx/lifecycle/i;

    iget-boolean p1, p0, Landroidx/lifecycle/p;->A:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Landroidx/lifecycle/p;->z:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Landroidx/lifecycle/p;->A:Z

    invoke-virtual {p0}, Landroidx/lifecycle/p;->G0()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/p;->A:Z

    return-void

    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroidx/lifecycle/p;->B:Z

    return-void
.end method

.method public final G0()V
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/p;->y:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/n;

    .line 8
    .line 9
    if-eqz v0, :cond_f

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/p;->w:Le/a;

    .line 12
    .line 13
    iget v2, v1, Le/g;->d:I

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v2, v1, Le/g;->a:Le/c;

    .line 21
    .line 22
    iget-object v2, v2, Le/c;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Landroidx/lifecycle/o;

    .line 25
    .line 26
    iget-object v2, v2, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/i;

    .line 27
    .line 28
    iget-object v5, v1, Le/g;->b:Le/c;

    .line 29
    .line 30
    iget-object v5, v5, Le/c;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v5, Landroidx/lifecycle/o;

    .line 33
    .line 34
    iget-object v5, v5, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/i;

    .line 35
    .line 36
    if-ne v2, v5, :cond_2

    .line 37
    .line 38
    iget-object v2, p0, Landroidx/lifecycle/p;->x:Landroidx/lifecycle/i;

    .line 39
    .line 40
    if-ne v2, v5, :cond_2

    .line 41
    .line 42
    :goto_0
    move v2, v3

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v2, v4

    .line 45
    :goto_1
    iput-boolean v4, p0, Landroidx/lifecycle/p;->B:Z

    .line 46
    .line 47
    if-nez v2, :cond_e

    .line 48
    .line 49
    iget-object v2, p0, Landroidx/lifecycle/p;->x:Landroidx/lifecycle/i;

    .line 50
    .line 51
    iget-object v4, v1, Le/g;->a:Le/c;

    .line 52
    .line 53
    iget-object v4, v4, Le/c;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v4, Landroidx/lifecycle/o;

    .line 56
    .line 57
    iget-object v4, v4, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/i;

    .line 58
    .line 59
    invoke-virtual {v2, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    const/4 v4, 0x0

    .line 64
    const/4 v5, 0x3

    .line 65
    const/4 v6, 0x2

    .line 66
    iget-object v7, p0, Landroidx/lifecycle/p;->C:Ljava/util/ArrayList;

    .line 67
    .line 68
    iget-object v8, v1, Le/a;->e:Ljava/util/HashMap;

    .line 69
    .line 70
    iget-object v9, v1, Le/g;->c:Ljava/util/WeakHashMap;

    .line 71
    .line 72
    if-gez v2, :cond_8

    .line 73
    .line 74
    new-instance v2, Le/b;

    .line 75
    .line 76
    iget-object v10, v1, Le/g;->b:Le/c;

    .line 77
    .line 78
    iget-object v11, v1, Le/g;->a:Le/c;

    .line 79
    .line 80
    invoke-direct {v2, v10, v11, v3}, Le/b;-><init>(Le/c;Le/c;I)V

    .line 81
    .line 82
    .line 83
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-virtual {v9, v2, v10}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    :cond_3
    invoke-virtual {v2}, Le/e;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    if-eqz v10, :cond_8

    .line 93
    .line 94
    iget-boolean v10, p0, Landroidx/lifecycle/p;->B:Z

    .line 95
    .line 96
    if-nez v10, :cond_8

    .line 97
    .line 98
    invoke-virtual {v2}, Le/e;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    check-cast v10, Ljava/util/Map$Entry;

    .line 103
    .line 104
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    check-cast v11, Landroidx/lifecycle/o;

    .line 109
    .line 110
    :goto_2
    iget-object v12, v11, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/i;

    .line 111
    .line 112
    iget-object v13, p0, Landroidx/lifecycle/p;->x:Landroidx/lifecycle/i;

    .line 113
    .line 114
    invoke-virtual {v12, v13}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    if-lez v12, :cond_3

    .line 119
    .line 120
    iget-boolean v12, p0, Landroidx/lifecycle/p;->B:Z

    .line 121
    .line 122
    if-nez v12, :cond_3

    .line 123
    .line 124
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v12

    .line 128
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    if-eqz v12, :cond_3

    .line 133
    .line 134
    iget-object v12, v11, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/i;

    .line 135
    .line 136
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    if-eq v12, v6, :cond_6

    .line 141
    .line 142
    if-eq v12, v5, :cond_5

    .line 143
    .line 144
    const/4 v13, 0x4

    .line 145
    if-eq v12, v13, :cond_4

    .line 146
    .line 147
    move-object v12, v4

    .line 148
    goto :goto_3

    .line 149
    :cond_4
    sget-object v12, Landroidx/lifecycle/h;->ON_PAUSE:Landroidx/lifecycle/h;

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_5
    sget-object v12, Landroidx/lifecycle/h;->ON_STOP:Landroidx/lifecycle/h;

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_6
    sget-object v12, Landroidx/lifecycle/h;->ON_DESTROY:Landroidx/lifecycle/h;

    .line 156
    .line 157
    :goto_3
    if-eqz v12, :cond_7

    .line 158
    .line 159
    invoke-virtual {v12}, Landroidx/lifecycle/h;->a()Landroidx/lifecycle/i;

    .line 160
    .line 161
    .line 162
    move-result-object v13

    .line 163
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    invoke-virtual {v11, v0, v12}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/h;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 170
    .line 171
    .line 172
    move-result v12

    .line 173
    add-int/lit8 v12, v12, -0x1

    .line 174
    .line 175
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 180
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v2, "no event down from "

    .line 184
    .line 185
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object v2, v11, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/i;

    .line 189
    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw v0

    .line 201
    :cond_8
    iget-object v2, v1, Le/g;->b:Le/c;

    .line 202
    .line 203
    iget-boolean v10, p0, Landroidx/lifecycle/p;->B:Z

    .line 204
    .line 205
    if-nez v10, :cond_0

    .line 206
    .line 207
    if-eqz v2, :cond_0

    .line 208
    .line 209
    iget-object v10, p0, Landroidx/lifecycle/p;->x:Landroidx/lifecycle/i;

    .line 210
    .line 211
    iget-object v2, v2, Le/c;->b:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v2, Landroidx/lifecycle/o;

    .line 214
    .line 215
    iget-object v2, v2, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/i;

    .line 216
    .line 217
    invoke-virtual {v10, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-lez v2, :cond_0

    .line 222
    .line 223
    new-instance v2, Le/d;

    .line 224
    .line 225
    invoke-direct {v2, v1}, Le/d;-><init>(Le/g;)V

    .line 226
    .line 227
    .line 228
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 229
    .line 230
    invoke-virtual {v9, v2, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    :cond_9
    invoke-virtual {v2}, Le/d;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-eqz v1, :cond_0

    .line 238
    .line 239
    iget-boolean v1, p0, Landroidx/lifecycle/p;->B:Z

    .line 240
    .line 241
    if-nez v1, :cond_0

    .line 242
    .line 243
    invoke-virtual {v2}, Le/d;->next()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    check-cast v1, Ljava/util/Map$Entry;

    .line 248
    .line 249
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v9

    .line 253
    check-cast v9, Landroidx/lifecycle/o;

    .line 254
    .line 255
    :goto_4
    iget-object v10, v9, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/i;

    .line 256
    .line 257
    iget-object v11, p0, Landroidx/lifecycle/p;->x:Landroidx/lifecycle/i;

    .line 258
    .line 259
    invoke-virtual {v10, v11}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 260
    .line 261
    .line 262
    move-result v10

    .line 263
    if-gez v10, :cond_9

    .line 264
    .line 265
    iget-boolean v10, p0, Landroidx/lifecycle/p;->B:Z

    .line 266
    .line 267
    if-nez v10, :cond_9

    .line 268
    .line 269
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v10

    .line 273
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v10

    .line 277
    if-eqz v10, :cond_9

    .line 278
    .line 279
    iget-object v10, v9, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/i;

    .line 280
    .line 281
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    iget-object v10, v9, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/i;

    .line 285
    .line 286
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 287
    .line 288
    .line 289
    move-result v10

    .line 290
    if-eq v10, v3, :cond_c

    .line 291
    .line 292
    if-eq v10, v6, :cond_b

    .line 293
    .line 294
    if-eq v10, v5, :cond_a

    .line 295
    .line 296
    move-object v10, v4

    .line 297
    goto :goto_5

    .line 298
    :cond_a
    sget-object v10, Landroidx/lifecycle/h;->ON_RESUME:Landroidx/lifecycle/h;

    .line 299
    .line 300
    goto :goto_5

    .line 301
    :cond_b
    sget-object v10, Landroidx/lifecycle/h;->ON_START:Landroidx/lifecycle/h;

    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_c
    sget-object v10, Landroidx/lifecycle/h;->ON_CREATE:Landroidx/lifecycle/h;

    .line 305
    .line 306
    :goto_5
    if-eqz v10, :cond_d

    .line 307
    .line 308
    invoke-virtual {v9, v0, v10}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/h;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 312
    .line 313
    .line 314
    move-result v10

    .line 315
    add-int/lit8 v10, v10, -0x1

    .line 316
    .line 317
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    goto :goto_4

    .line 321
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 322
    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    const-string v2, "no event up from "

    .line 326
    .line 327
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    iget-object v2, v9, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/i;

    .line 331
    .line 332
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    throw v0

    .line 343
    :cond_e
    return-void

    .line 344
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 345
    .line 346
    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    .line 347
    .line 348
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    throw v0
.end method

.method public final a(Landroidx/lifecycle/m;)V
    .locals 9

    .line 1
    const-string v0, "addObserver"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/lifecycle/p;->D0(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/lifecycle/p;->x:Landroidx/lifecycle/i;

    .line 7
    .line 8
    sget-object v1, Landroidx/lifecycle/i;->a:Landroidx/lifecycle/i;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Landroidx/lifecycle/i;->b:Landroidx/lifecycle/i;

    .line 14
    .line 15
    :goto_0
    new-instance v0, Landroidx/lifecycle/o;

    .line 16
    .line 17
    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/o;-><init>(Landroidx/lifecycle/m;Landroidx/lifecycle/i;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Landroidx/lifecycle/p;->w:Le/a;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Le/a;->e(Ljava/lang/Object;)Le/c;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x1

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget-object v2, v2, Le/c;->b:Ljava/lang/Object;

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    iget-object v2, v1, Le/a;->e:Ljava/util/HashMap;

    .line 34
    .line 35
    new-instance v5, Le/c;

    .line 36
    .line 37
    invoke-direct {v5, p1, v0}, Le/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget v6, v1, Le/g;->d:I

    .line 41
    .line 42
    add-int/2addr v6, v4

    .line 43
    iput v6, v1, Le/g;->d:I

    .line 44
    .line 45
    iget-object v6, v1, Le/g;->b:Le/c;

    .line 46
    .line 47
    if-nez v6, :cond_2

    .line 48
    .line 49
    iput-object v5, v1, Le/g;->a:Le/c;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iput-object v5, v6, Le/c;->c:Le/c;

    .line 53
    .line 54
    iput-object v6, v5, Le/c;->d:Le/c;

    .line 55
    .line 56
    :goto_1
    iput-object v5, v1, Le/g;->b:Le/c;

    .line 57
    .line 58
    invoke-virtual {v2, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-object v2, v3

    .line 62
    :goto_2
    check-cast v2, Landroidx/lifecycle/o;

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    iget-object v2, p0, Landroidx/lifecycle/p;->y:Ljava/lang/ref/WeakReference;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Landroidx/lifecycle/n;

    .line 74
    .line 75
    if-nez v2, :cond_4

    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    iget v5, p0, Landroidx/lifecycle/p;->z:I

    .line 79
    .line 80
    if-nez v5, :cond_6

    .line 81
    .line 82
    iget-boolean v5, p0, Landroidx/lifecycle/p;->A:Z

    .line 83
    .line 84
    if-eqz v5, :cond_5

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_5
    const/4 v5, 0x0

    .line 88
    goto :goto_4

    .line 89
    :cond_6
    :goto_3
    move v5, v4

    .line 90
    :goto_4
    invoke-virtual {p0, p1}, Landroidx/lifecycle/p;->C0(Landroidx/lifecycle/m;)Landroidx/lifecycle/i;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    iget v7, p0, Landroidx/lifecycle/p;->z:I

    .line 95
    .line 96
    add-int/2addr v7, v4

    .line 97
    iput v7, p0, Landroidx/lifecycle/p;->z:I

    .line 98
    .line 99
    :goto_5
    iget-object v7, v0, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/i;

    .line 100
    .line 101
    invoke-virtual {v7, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-gez v6, :cond_b

    .line 106
    .line 107
    iget-object v6, v1, Le/a;->e:Ljava/util/HashMap;

    .line 108
    .line 109
    invoke-virtual {v6, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-eqz v6, :cond_b

    .line 114
    .line 115
    iget-object v6, v0, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/i;

    .line 116
    .line 117
    iget-object v7, p0, Landroidx/lifecycle/p;->C:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    iget-object v6, v0, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/i;

    .line 123
    .line 124
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-eq v6, v4, :cond_9

    .line 129
    .line 130
    const/4 v8, 0x2

    .line 131
    if-eq v6, v8, :cond_8

    .line 132
    .line 133
    const/4 v8, 0x3

    .line 134
    if-eq v6, v8, :cond_7

    .line 135
    .line 136
    move-object v6, v3

    .line 137
    goto :goto_6

    .line 138
    :cond_7
    sget-object v6, Landroidx/lifecycle/h;->ON_RESUME:Landroidx/lifecycle/h;

    .line 139
    .line 140
    goto :goto_6

    .line 141
    :cond_8
    sget-object v6, Landroidx/lifecycle/h;->ON_START:Landroidx/lifecycle/h;

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_9
    sget-object v6, Landroidx/lifecycle/h;->ON_CREATE:Landroidx/lifecycle/h;

    .line 145
    .line 146
    :goto_6
    if-eqz v6, :cond_a

    .line 147
    .line 148
    invoke-virtual {v0, v2, v6}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/h;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    add-int/lit8 v6, v6, -0x1

    .line 156
    .line 157
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, p1}, Landroidx/lifecycle/p;->C0(Landroidx/lifecycle/m;)Landroidx/lifecycle/i;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    goto :goto_5

    .line 165
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 166
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v2, "no event up from "

    .line 170
    .line 171
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, v0, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/i;

    .line 175
    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw p1

    .line 187
    :cond_b
    if-nez v5, :cond_c

    .line 188
    .line 189
    invoke-virtual {p0}, Landroidx/lifecycle/p;->G0()V

    .line 190
    .line 191
    .line 192
    :cond_c
    iget p1, p0, Landroidx/lifecycle/p;->z:I

    .line 193
    .line 194
    sub-int/2addr p1, v4

    .line 195
    iput p1, p0, Landroidx/lifecycle/p;->z:I

    .line 196
    .line 197
    return-void
.end method

.method public final d0(Landroidx/lifecycle/m;)V
    .locals 1

    .line 1
    const-string v0, "removeObserver"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/p;->D0(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/p;->w:Le/a;

    invoke-virtual {v0, p1}, Le/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
