.class public final synthetic Lo0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/b;
.implements Lr1/w;
.implements Lu1/y;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo0/j;->f:I

    .line 2
    .line 3
    iput-object p2, p0, Lo0/j;->g:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lo0/j;->h:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lf0/g;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo0/j;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/nomone/giap/GIAP;

    .line 4
    .line 5
    iget-object v1, p0, Lo0/j;->h:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 8
    .line 9
    sget-object v2, Lcom/nomone/giap/GIAP;->h:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget p1, p1, Lf0/g;->b:I

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->a()Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/nomone/giap/GIAP;->g(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget v0, p0, Lo0/j;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Lo0/j;->h:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lo0/j;->g:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    check-cast v2, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;

    .line 12
    .line 13
    check-cast v1, Lq1/f;

    .line 14
    .line 15
    sget-object v0, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->o:[Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v3, "Prompt action: "

    .line 23
    .line 24
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v3, "sdf"

    .line 35
    .line 36
    invoke-static {v3, v0}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Ljava/lang/Thread;

    .line 40
    .line 41
    iget-object v3, v2, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->i:Ljava/lang/ThreadGroup;

    .line 42
    .line 43
    new-instance v4, Ln1/a;

    .line 44
    .line 45
    const/4 v5, 0x2

    .line 46
    invoke-direct {v4, v2, p1, v1, v5}, Ln1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    const-string p1, "contactMirrorsThread"

    .line 50
    .line 51
    invoke-direct {v0, v3, v4, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :goto_0
    check-cast v2, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    .line 59
    .line 60
    check-cast v1, Ljava/lang/String;

    .line 61
    .line 62
    sget-object v0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->y:Ljava/lang/ThreadGroup;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    const-string v0, "Send"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_0

    .line 74
    .line 75
    new-instance p1, Ls1/g;

    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    invoke-direct {p1, v2, v0}, Ls1/g;-><init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;I)V

    .line 79
    .line 80
    .line 81
    const-string v0, "Q3Jhc2g"

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    invoke-static {v0, v1, v2, v2, p1}, Lcom/google/android/gms/internal/play_billing/i0;->e0(Ljava/lang/String;Ljava/lang/String;ZZLq1/z;)V

    .line 85
    .line 86
    .line 87
    :cond_0
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lo0/j;->f:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lo0/j;->h:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v3, p0, Lo0/j;->g:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_1

    .line 12
    :pswitch_0
    check-cast v3, Lo0/l;

    .line 13
    .line 14
    check-cast v2, Ljava/lang/Iterable;

    .line 15
    .line 16
    iget-object v0, v3, Lo0/l;->c:Lp0/d;

    .line 17
    .line 18
    check-cast v0, Lp0/k;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v4, "DELETE FROM events WHERE _id in "

    .line 37
    .line 38
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Lp0/k;->f(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0}, Lp0/k;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-object v1

    .line 64
    :goto_1
    check-cast v3, Lo0/l;

    .line 65
    .line 66
    check-cast v2, Ljava/util/Map;

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_1

    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Ljava/util/Map$Entry;

    .line 90
    .line 91
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Ljava/lang/Integer;

    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    int-to-long v4, v4

    .line 102
    sget-object v6, Lm0/d;->g:Lm0/d;

    .line 103
    .line 104
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Ljava/lang/String;

    .line 109
    .line 110
    iget-object v7, v3, Lo0/l;->i:Lp0/c;

    .line 111
    .line 112
    check-cast v7, Lp0/k;

    .line 113
    .line 114
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    new-instance v8, Lo0/k;

    .line 118
    .line 119
    invoke-direct {v8, v4, v5, v2, v6}, Lo0/k;-><init>(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7, v8}, Lp0/k;->c(Lp0/i;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_1
    return-object v1

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lu1/w;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lo0/j;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La2/i;

    .line 4
    .line 5
    iget-object v1, p0, Lo0/j;->h:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/nomone/GeckoView/MyGeckoView;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget v2, p1, Lu1/w;->a:I

    .line 13
    .line 14
    invoke-static {v2}, Lk0/c;->b(I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v3, v0, La2/i;->G:Lq1/s;

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    packed-switch v2, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    iget-boolean v2, v0, La2/i;->y:Z

    .line 25
    .line 26
    const/16 v3, 0x8

    .line 27
    .line 28
    const/4 v5, 0x3

    .line 29
    const/4 v6, 0x0

    .line 30
    if-eqz v2, :cond_5

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    sget-object p1, Lq1/f;->L:Lo1/j0;

    .line 37
    .line 38
    iget-object v0, v3, Lq1/s;->d:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Ljava/lang/Runnable;

    .line 41
    .line 42
    const-string v1, "removeToggleFullScreenTask"

    .line 43
    .line 44
    const-wide/16 v2, 0x1f4

    .line 45
    .line 46
    invoke-virtual {p1, v0, v1, v2, v3}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_7

    .line 50
    .line 51
    :pswitch_1
    invoke-virtual {v3}, Lq1/s;->b()V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_7

    .line 55
    .line 56
    :goto_0
    iget v1, p1, Lu1/w;->a:I

    .line 57
    .line 58
    iget-object v2, p1, Lu1/w;->b:Lz1/b;

    .line 59
    .line 60
    check-cast v2, Lz1/a;

    .line 61
    .line 62
    iget-object v7, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 63
    .line 64
    invoke-virtual {v7}, Lcom/nomone/GeckoView/MyGeckoView;->getScale()F

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    iget v9, v2, Lz1/a;->a:F

    .line 69
    .line 70
    invoke-static {}, Lcom/nomone/GeckoView/MyGeckoView;->getGlobalDisplayDensity()F

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    mul-float/2addr v10, v8

    .line 75
    div-float/2addr v9, v10

    .line 76
    iget v2, v2, Lz1/a;->b:F

    .line 77
    .line 78
    invoke-static {}, Lcom/nomone/GeckoView/MyGeckoView;->getGlobalDisplayDensity()F

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    mul-float/2addr v10, v8

    .line 83
    div-float/2addr v2, v10

    .line 84
    if-ne v1, v5, :cond_1

    .line 85
    .line 86
    iget-object v1, v0, La2/i;->z:Lq1/b0;

    .line 87
    .line 88
    if-nez v1, :cond_0

    .line 89
    .line 90
    new-instance v1, La2/g;

    .line 91
    .line 92
    invoke-direct {v1, v0}, La2/g;-><init>(La2/i;)V

    .line 93
    .line 94
    .line 95
    iput-object v1, v0, La2/i;->A:La2/g;

    .line 96
    .line 97
    new-instance v3, Lq1/b0;

    .line 98
    .line 99
    sget-object v6, Lq1/f;->L:Lo1/j0;

    .line 100
    .line 101
    const-string v7, "sendHoverMessageTask"

    .line 102
    .line 103
    const/16 v8, 0xc8

    .line 104
    .line 105
    invoke-direct {v3, v6, v1, v7, v8}, Lq1/b0;-><init>(Lo1/j0;Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    iput-object v3, v0, La2/i;->z:Lq1/b0;

    .line 109
    .line 110
    :cond_0
    iget-object v1, v0, La2/i;->A:La2/g;

    .line 111
    .line 112
    iput v9, v1, La2/g;->f:F

    .line 113
    .line 114
    iput v2, v1, La2/g;->g:F

    .line 115
    .line 116
    iget-object v1, v0, La2/i;->z:Lq1/b0;

    .line 117
    .line 118
    invoke-virtual {v1}, Lq1/b0;->a()V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_6

    .line 122
    .line 123
    :cond_1
    if-ne v1, v3, :cond_3

    .line 124
    .line 125
    iget-object v3, v0, La2/i;->z:Lq1/b0;

    .line 126
    .line 127
    if-eqz v3, :cond_3

    .line 128
    .line 129
    monitor-enter v3

    .line 130
    :try_start_0
    iget-boolean v8, v3, Lq1/b0;->b:Z

    .line 131
    .line 132
    if-nez v8, :cond_2

    .line 133
    .line 134
    :goto_1
    monitor-exit v3

    .line 135
    goto :goto_2

    .line 136
    :cond_2
    iget-object v8, v3, Lq1/b0;->c:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v8, Lo1/j0;

    .line 139
    .line 140
    iget-object v10, v3, Lq1/b0;->e:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v10, Ljava/lang/Runnable;

    .line 143
    .line 144
    invoke-virtual {v8, v10}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    .line 145
    .line 146
    .line 147
    iput-boolean v6, v3, Lq1/b0;->b:Z

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :catchall_0
    move-exception p1

    .line 151
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    throw p1

    .line 153
    :cond_3
    :goto_2
    invoke-static {v1}, Lk0/c;->b(I)I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    packed-switch v3, :pswitch_data_1

    .line 158
    .line 159
    .line 160
    const/4 v3, 0x0

    .line 161
    goto :goto_3

    .line 162
    :pswitch_2
    const-string v3, "mouseleave"

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :pswitch_3
    const-string v3, "secondaryup"

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :pswitch_4
    const-string v3, "secondarydown"

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :pswitch_5
    const-string v3, "mouseup"

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :pswitch_6
    const-string v3, "mousedown"

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :pswitch_7
    const-string v3, "mouseover"

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :pswitch_8
    const-string v3, "mousemove"

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :pswitch_9
    const-string v3, "scroll"

    .line 184
    .line 185
    :goto_3
    if-eqz v3, :cond_a

    .line 186
    .line 187
    new-instance v6, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v8, "CursorEvent,"

    .line 190
    .line 191
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v3, ","

    .line 198
    .line 199
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    if-ne v1, v4, :cond_4

    .line 216
    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    iget v2, p1, Lu1/w;->i:F

    .line 229
    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    :cond_4
    invoke-virtual {v7, v2}, Lcom/nomone/GeckoView/MyGeckoView;->g(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    goto :goto_6

    .line 241
    :cond_5
    invoke-virtual {p1}, Lu1/w;->a()Landroid/view/MotionEvent;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    if-eqz v2, :cond_9

    .line 246
    .line 247
    iget v7, p1, Lu1/w;->a:I

    .line 248
    .line 249
    if-eq v7, v4, :cond_7

    .line 250
    .line 251
    if-eq v7, v5, :cond_7

    .line 252
    .line 253
    if-ne v7, v3, :cond_6

    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_6
    move v4, v6

    .line 257
    :cond_7
    :goto_4
    if-eqz v4, :cond_8

    .line 258
    .line 259
    invoke-virtual {v1, v2}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    goto :goto_5

    .line 264
    :cond_8
    invoke-virtual {v1, v2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    :goto_5
    move v4, v1

    .line 269
    goto :goto_6

    .line 270
    :cond_9
    move v4, v6

    .line 271
    :cond_a
    :goto_6
    iget p1, p1, Lu1/w;->a:I

    .line 272
    .line 273
    if-eq p1, v5, :cond_b

    .line 274
    .line 275
    invoke-virtual {v0}, La2/i;->D()V

    .line 276
    .line 277
    .line 278
    :cond_b
    :goto_7
    return v4

    .line 279
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
