.class public Lnom/vrd/Launch;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/ArrayList;

.field public static b:Lo0/n;

.field public static c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnom/vrd/Launch;->a:Ljava/util/ArrayList;

    const/16 v0, 0x3e8

    sput v0, Lnom/vrd/Launch;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Lcom/nomone/vr_desktop/LaunchActivity;)V
    .locals 4

    .line 1
    sget-object v0, Lnom/vrd/Launch;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v0, Lnom/vrd/Launch;->b:Lo0/n;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Lo0/n;

    .line 17
    .line 18
    const/16 v1, 0x18

    .line 19
    .line 20
    invoke-direct {v0, p0, v1}, Lo0/n;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lnom/vrd/Launch;->b:Lo0/n;

    .line 24
    .line 25
    :cond_1
    sget-object p0, Lq1/f;->L:Lo1/j0;

    .line 26
    .line 27
    sget-object v0, Lnom/vrd/Launch;->b:Lo0/n;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lq1/f;->L:Lo1/j0;

    .line 33
    .line 34
    sget-object v0, Lnom/vrd/Launch;->b:Lo0/n;

    .line 35
    .line 36
    sget v1, Lnom/vrd/Launch;->c:I

    .line 37
    .line 38
    int-to-long v1, v1

    .line 39
    const-string v3, "bringFreeFormWindowsToFrontTask"

    .line 40
    .line 41
    invoke-virtual {p0, v0, v3, v1, v2}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 10

    .line 1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const v2, -0x7a3d3c07

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    const/4 v4, 0x1

    .line 21
    const-string v5, "freeform"

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    if-eq v1, v2, :cond_4

    .line 25
    .line 26
    const v2, -0x5ba8f2d0

    .line 27
    .line 28
    .line 29
    if-eq v1, v2, :cond_2

    .line 30
    .line 31
    const v2, -0x41682bac

    .line 32
    .line 33
    .line 34
    if-eq v1, v2, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string v1, "bottom_or_right"

    .line 38
    .line 39
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v1, v3

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    move v1, v4

    .line 56
    goto :goto_1

    .line 57
    :cond_4
    const-string v1, "top_or_left"

    .line 58
    .line 59
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_5

    .line 64
    .line 65
    :goto_0
    const/4 v1, -0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_5
    move v1, v6

    .line 68
    :goto_1
    const-string v2, "android:activity.splitScreenCreateMode"

    .line 69
    .line 70
    const/4 v7, 0x3

    .line 71
    const-string v8, "android.activity.windowingMode"

    .line 72
    .line 73
    if-eqz v1, :cond_9

    .line 74
    .line 75
    if-eq v1, v4, :cond_7

    .line 76
    .line 77
    if-eq v1, v3, :cond_6

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    check-cast p0, Lcom/nomone/vr_desktop/MyApplication;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/nomone/vr_desktop/MyApplication;->a:Lq1/f;

    .line 86
    .line 87
    new-instance p1, Lr1/y;

    .line 88
    .line 89
    invoke-direct {p1, p0}, Lr1/y;-><init>(Lq1/f;)V

    .line 90
    .line 91
    .line 92
    const-string p0, "Wrong launch option"

    .line 93
    .line 94
    iput-object p0, p1, Lr1/y;->d:Ljava/lang/String;

    .line 95
    .line 96
    const-string p0, "The action you specified (<strong>"

    .line 97
    .line 98
    const-string p3, "</strong>) is invalid. You can only use:<ul>  <li>top_or_left or </li>  <li>bottom_or_right or </li>  <li>freeform</li></ul>"

    .line 99
    .line 100
    invoke-static {p0, p2, p3}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    iput-object p0, p1, Lr1/y;->e:Ljava/lang/String;

    .line 105
    .line 106
    const-string p0, "OK"

    .line 107
    .line 108
    invoke-virtual {p1, p0}, Lr1/y;->a(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const/16 p0, 0x1b8

    .line 112
    .line 113
    const/16 p2, 0x118

    .line 114
    .line 115
    invoke-virtual {p1, p0, p2}, Lr1/y;->d(II)V

    .line 116
    .line 117
    .line 118
    const/16 p0, 0xaa

    .line 119
    .line 120
    iput p0, p1, Lr1/y;->i:I

    .line 121
    .line 122
    const/16 p0, 0x1c

    .line 123
    .line 124
    iput p0, p1, Lr1/y;->j:I

    .line 125
    .line 126
    const/4 p0, 0x0

    .line 127
    invoke-static {p1, p0}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_6
    invoke-virtual {v0, v8, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_7
    const/4 v1, 0x5

    .line 139
    invoke-virtual {v0, v8, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 140
    .line 141
    .line 142
    if-nez p3, :cond_8

    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object p3

    .line 148
    check-cast p3, Lcom/nomone/vr_desktop/MyApplication;

    .line 149
    .line 150
    iget-object p3, p3, Lcom/nomone/vr_desktop/MyApplication;->a:Lq1/f;

    .line 151
    .line 152
    new-instance v1, Landroid/graphics/Rect;

    .line 153
    .line 154
    iget v2, p3, Lq1/f;->y:I

    .line 155
    .line 156
    int-to-double v2, v2

    .line 157
    const-wide v6, 0x3fb999999999999aL    # 0.1

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    mul-double v8, v2, v6

    .line 163
    .line 164
    double-to-int v4, v8

    .line 165
    iget p3, p3, Lq1/f;->z:I

    .line 166
    .line 167
    int-to-double v8, p3

    .line 168
    mul-double/2addr v6, v8

    .line 169
    double-to-int p3, v6

    .line 170
    const-wide v6, 0x3fe199999999999aL    # 0.55

    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    mul-double/2addr v2, v6

    .line 176
    double-to-int v2, v2

    .line 177
    mul-double/2addr v8, v6

    .line 178
    double-to-int v3, v8

    .line 179
    invoke-direct {v1, v4, p3, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 180
    .line 181
    .line 182
    move-object p3, v1

    .line 183
    :cond_8
    const-string v1, "android:activity.launchBounds"

    .line 184
    .line 185
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_9
    invoke-virtual {v0, v8, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v2, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 193
    .line 194
    .line 195
    :goto_2
    const/high16 p3, 0x10000000

    .line 196
    .line 197
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 198
    .line 199
    .line 200
    const/high16 p3, 0x20000

    .line 201
    .line 202
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 203
    .line 204
    .line 205
    const/high16 p3, 0x200000

    .line 206
    .line 207
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    .line 209
    .line 210
    const/high16 p3, 0x800000

    .line 211
    .line 212
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result p2

    .line 219
    if-nez p2, :cond_a

    .line 220
    .line 221
    const/16 p2, 0x1000

    .line 222
    .line 223
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 224
    .line 225
    .line 226
    :cond_a
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .line 228
    .line 229
    goto :goto_3

    .line 230
    :catch_0
    move-exception p0

    .line 231
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 232
    .line 233
    .line 234
    :goto_3
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/nomone/vr_desktop/MyApplication;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/nomone/vr_desktop/MyApplication;->a:Lq1/f;

    .line 10
    .line 11
    iget-object v2, v1, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 12
    .line 13
    const-string v3, "package"

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/16 v4, 0x1c

    .line 20
    .line 21
    const/16 v5, 0xaa

    .line 22
    .line 23
    const-string v6, "OK"

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    new-instance v0, Lr1/y;

    .line 29
    .line 30
    invoke-direct {v0, v1}, Lr1/y;-><init>(Lq1/f;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "Launch failed: missing package name"

    .line 34
    .line 35
    iput-object v1, v0, Lr1/y;->d:Ljava/lang/String;

    .line 36
    .line 37
    const-string v1, "Package name not specified. We need a fully-qualified package name."

    .line 38
    .line 39
    iput-object v1, v0, Lr1/y;->e:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v6}, Lr1/y;->a(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/16 v1, 0x1b8

    .line 45
    .line 46
    const/16 v2, 0xc0

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lr1/y;->d(II)V

    .line 49
    .line 50
    .line 51
    iput v5, v0, Lr1/y;->i:I

    .line 52
    .line 53
    iput v4, v0, Lr1/y;->j:I

    .line 54
    .line 55
    invoke-static {v0, v7}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v8, "maintainOnScreen"

    .line 64
    .line 65
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    const-string v1, "idleDuration"

    .line 72
    .line 73
    sget v2, Lnom/vrd/Launch;->c:I

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    sput v1, Lnom/vrd/Launch;->c:I

    .line 80
    .line 81
    const/16 v2, 0x1f4

    .line 82
    .line 83
    if-ge v1, v2, :cond_1

    .line 84
    .line 85
    sput v2, Lnom/vrd/Launch;->c:I

    .line 86
    .line 87
    :cond_1
    const-string v1, "taskId"

    .line 88
    .line 89
    const/4 v2, -0x1

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    sget-object v1, Lnom/vrd/Launch;->a:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_3

    .line 105
    .line 106
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Le2/a;

    .line 111
    .line 112
    iget-object v5, v4, Le2/a;->a:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-eqz v5, :cond_2

    .line 119
    .line 120
    iput v0, v4, Le2/a;->b:I

    .line 121
    .line 122
    goto/16 :goto_1

    .line 123
    .line 124
    :cond_3
    new-instance v2, Le2/a;

    .line 125
    .line 126
    invoke-direct {v2}, Le2/a;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object v3, v2, Le2/a;->a:Ljava/lang/String;

    .line 130
    .line 131
    iput v0, v2, Le2/a;->b:I

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    goto/16 :goto_1

    .line 137
    .line 138
    :cond_4
    const-string v1, "rect"

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    const/4 v8, 0x0

    .line 145
    if-eqz v1, :cond_5

    .line 146
    .line 147
    :try_start_0
    const-string v9, ","

    .line 148
    .line 149
    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    new-instance v9, Landroid/graphics/Rect;

    .line 154
    .line 155
    aget-object v10, v1, v8

    .line 156
    .line 157
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    const/4 v11, 0x1

    .line 162
    aget-object v11, v1, v11

    .line 163
    .line 164
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    const/4 v12, 0x2

    .line 169
    aget-object v12, v1, v12

    .line 170
    .line 171
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v12

    .line 175
    const/4 v13, 0x3

    .line 176
    aget-object v1, v1, v13

    .line 177
    .line 178
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    invoke-direct {v9, v10, v11, v12, v1}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :catch_0
    :cond_5
    move-object v9, v7

    .line 187
    :goto_0
    const-string v1, "activity"

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    const/16 v11, 0x1bd

    .line 202
    .line 203
    const-string v12, "</strong><br></p><p>Please double check. We need at least the fully&shy;-quali&shy;fied app&shy;lication package name, and option&shy;ally the fully quali&shy;fied activity name.</p>"

    .line 204
    .line 205
    const-string v13, "<p>Couldn\'t create a launch intent for the spec&shy;ified package name:<br>&nbsp;&nbsp;&nbsp;&nbsp;<strong>"

    .line 206
    .line 207
    const-string v14, "Wrong launch option"

    .line 208
    .line 209
    if-nez v1, :cond_6

    .line 210
    .line 211
    invoke-virtual {v10, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    if-nez v1, :cond_8

    .line 216
    .line 217
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Lcom/nomone/vr_desktop/MyApplication;

    .line 222
    .line 223
    iget-object v0, v0, Lcom/nomone/vr_desktop/MyApplication;->a:Lq1/f;

    .line 224
    .line 225
    new-instance v1, Lr1/y;

    .line 226
    .line 227
    invoke-direct {v1, v0}, Lr1/y;-><init>(Lq1/f;)V

    .line 228
    .line 229
    .line 230
    iput-object v14, v1, Lr1/y;->d:Ljava/lang/String;

    .line 231
    .line 232
    invoke-static {v13, v3, v12}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    iput-object v0, v1, Lr1/y;->e:Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual {v1, v6}, Lr1/y;->a(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    const/16 v0, 0x127

    .line 242
    .line 243
    invoke-virtual {v1, v11, v0}, Lr1/y;->d(II)V

    .line 244
    .line 245
    .line 246
    iput v5, v1, Lr1/y;->i:I

    .line 247
    .line 248
    iput v4, v1, Lr1/y;->j:I

    .line 249
    .line 250
    invoke-static {v1, v7}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 251
    .line 252
    .line 253
    goto :goto_1

    .line 254
    :cond_6
    new-instance v10, Landroid/content/Intent;

    .line 255
    .line 256
    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 257
    .line 258
    .line 259
    new-instance v15, Landroid/content/ComponentName;

    .line 260
    .line 261
    invoke-direct {v15, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v10, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 268
    .line 269
    .line 270
    move-result-object v15

    .line 271
    invoke-virtual {v15, v10, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 272
    .line 273
    .line 274
    move-result-object v8

    .line 275
    if-nez v8, :cond_7

    .line 276
    .line 277
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    check-cast v0, Lcom/nomone/vr_desktop/MyApplication;

    .line 282
    .line 283
    iget-object v0, v0, Lcom/nomone/vr_desktop/MyApplication;->a:Lq1/f;

    .line 284
    .line 285
    new-instance v2, Lr1/y;

    .line 286
    .line 287
    invoke-direct {v2, v0}, Lr1/y;-><init>(Lq1/f;)V

    .line 288
    .line 289
    .line 290
    iput-object v14, v2, Lr1/y;->d:Ljava/lang/String;

    .line 291
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string v3, "</strong><br></p><p>And activity name:<br>&nbsp;&nbsp;&nbsp;&nbsp;<strong>"

    .line 301
    .line 302
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    iput-object v0, v2, Lr1/y;->e:Ljava/lang/String;

    .line 316
    .line 317
    invoke-virtual {v2, v6}, Lr1/y;->a(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    const/16 v0, 0x163

    .line 321
    .line 322
    invoke-virtual {v2, v11, v0}, Lr1/y;->d(II)V

    .line 323
    .line 324
    .line 325
    iput v5, v2, Lr1/y;->i:I

    .line 326
    .line 327
    iput v4, v2, Lr1/y;->j:I

    .line 328
    .line 329
    invoke-static {v2, v7}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 330
    .line 331
    .line 332
    goto :goto_1

    .line 333
    :cond_7
    move-object v1, v10

    .line 334
    :cond_8
    invoke-static {v2, v1, v0, v9}, Lnom/vrd/Launch;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 335
    .line 336
    .line 337
    :goto_1
    return-void
.end method
