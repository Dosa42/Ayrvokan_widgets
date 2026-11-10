.class public final Lt1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/c;


# instance fields
.field public final f:Landroid/content/Context;

.field public final g:Lh/a;

.field public final h:Lq1/r;


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/LaunchActivity;Lh/a;Lq1/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt1/a;->f:Landroid/content/Context;

    iput-object p2, p0, Lt1/a;->g:Lh/a;

    iput-object p3, p0, Lt1/a;->h:Lq1/r;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "http://localhost:24012/assets/"

    .line 2
    .line 3
    invoke-static {v0, p0}, La1/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Landroidx/fragment/app/h;
    .locals 9

    .line 1
    const-string v0, "/debug"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    const/4 v0, 0x7

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Landroidx/fragment/app/h;

    .line 17
    .line 18
    iget-object v2, p0, Lt1/a;->h:Lq1/r;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string v3, "LISTENERS"

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget-object v4, v2, Lq1/r;->f:Lq1/x;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    iget-object v0, v4, Lq1/x;->f:La2/x;

    .line 34
    .line 35
    new-instance v3, Landroidx/fragment/app/h;

    .line 36
    .line 37
    invoke-direct {v3, v2}, Landroidx/fragment/app/h;-><init>(Lq1/r;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v3}, Lq1/r;->a(La2/r;Landroidx/fragment/app/h;)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_1
    const-string v2, "IPD+"

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const v3, 0x3c23d70a    # 0.01f

    .line 52
    .line 53
    .line 54
    const-string v5, ""

    .line 55
    .line 56
    const/4 v6, 0x1

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    iget-object v0, v4, Lq1/x;->d:Lq1/f;

    .line 60
    .line 61
    iget v2, v0, Lq1/f;->j:F

    .line 62
    .line 63
    add-float/2addr v2, v3

    .line 64
    invoke-virtual {v0, v2}, Lq1/f;->f(F)V

    .line 65
    .line 66
    .line 67
    iget-object v0, v4, Lq1/x;->m:La2/z;

    .line 68
    .line 69
    iput-boolean v6, v0, La2/z;->B:Z

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const-string v2, "IPD-"

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    iget-object v0, v4, Lq1/x;->d:Lq1/f;

    .line 86
    .line 87
    iget v2, v0, Lq1/f;->j:F

    .line 88
    .line 89
    sub-float/2addr v2, v3

    .line 90
    invoke-virtual {v0, v2}, Lq1/f;->f(F)V

    .line 91
    .line 92
    .line 93
    iget-object v0, v4, Lq1/x;->m:La2/z;

    .line 94
    .line 95
    iput-boolean v6, v0, La2/z;->B:Z

    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    iget-object v2, v4, Lq1/x;->d:Lq1/f;

    .line 103
    .line 104
    iget v2, v2, Lq1/f;->j:F

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    const-string v2, "DISPLACEMENT+"

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    const-wide v7, 0x3fb999999999999aL    # 0.1

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    if-eqz v2, :cond_4

    .line 119
    .line 120
    sget v0, Lz1/f;->C:F

    .line 121
    .line 122
    float-to-double v2, v0

    .line 123
    add-double/2addr v2, v7

    .line 124
    double-to-float v0, v2

    .line 125
    sput v0, Lz1/f;->C:F

    .line 126
    .line 127
    iget-object v0, v4, Lq1/x;->d:Lq1/f;

    .line 128
    .line 129
    invoke-virtual {v0}, Lq1/f;->d()V

    .line 130
    .line 131
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_4
    const-string v2, "DISPLACEMENT-"

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_5

    .line 145
    .line 146
    sget v0, Lz1/f;->C:F

    .line 147
    .line 148
    float-to-double v2, v0

    .line 149
    sub-double/2addr v2, v7

    .line 150
    double-to-float v0, v2

    .line 151
    sput v0, Lz1/f;->C:F

    .line 152
    .line 153
    iget-object v0, v4, Lq1/x;->m:La2/z;

    .line 154
    .line 155
    iput-boolean v6, v0, La2/z;->B:Z

    .line 156
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :goto_1
    sget v2, Lz1/f;->C:F

    .line 163
    .line 164
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    goto :goto_4

    .line 172
    :cond_5
    const-string v2, "SHARPEN"

    .line 173
    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_6

    .line 179
    .line 180
    invoke-static {}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->i()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    xor-int/2addr v0, v6

    .line 185
    const-string v2, "Settings_Linux_Sharpen"

    .line 186
    .line 187
    invoke-static {v2, v0}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 188
    .line 189
    .line 190
    iget-object v0, v4, Lq1/x;->m:La2/z;

    .line 191
    .line 192
    iput-boolean v6, v0, La2/z;->B:Z

    .line 193
    .line 194
    :goto_3
    const-string v0, "Done!"

    .line 195
    .line 196
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    goto :goto_5

    .line 201
    :cond_6
    const-string v2, "Unknown debug request: "

    .line 202
    .line 203
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    goto :goto_4

    .line 208
    :goto_5
    const/16 v2, 0x17

    .line 209
    .line 210
    invoke-direct {v1, p1, v0, v2}, Landroidx/fragment/app/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 211
    .line 212
    .line 213
    return-object v1
.end method

.method public final c(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p2}, Lt1/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    const-string v3, "<include>"

    .line 12
    .line 13
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, -0x1

    .line 18
    if-ne v3, v4, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const-string v5, "</include>"

    .line 22
    .line 23
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-ne v5, v4, :cond_1

    .line 28
    .line 29
    const-string p1, "sdf"

    .line 30
    .line 31
    const-string p2, "Couldn\'t find include closing tag."

    .line 32
    .line 33
    invoke-static {p1, p2}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :cond_1
    add-int/lit8 v4, v3, 0x9

    .line 49
    .line 50
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const-string v6, "/"

    .line 55
    .line 56
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_2

    .line 61
    .line 62
    new-instance v6, Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p0, v4}, Lt1/a;->p(Ljava/lang/String;)Landroidx/fragment/app/h;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    iget-object v4, v4, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v4, [B

    .line 71
    .line 72
    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V

    .line 73
    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_2
    new-instance v7, Ljava/io/File;

    .line 77
    .line 78
    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    if-eqz v7, :cond_3

    .line 86
    .line 87
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    goto :goto_2

    .line 92
    :cond_3
    const-string v6, ""

    .line 93
    .line 94
    :goto_2
    invoke-static {v6, v4}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    :try_start_0
    new-instance v6, Ljava/io/File;

    .line 99
    .line 100
    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    const/4 v7, 0x1

    .line 108
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_3

    .line 113
    :catch_0
    move-exception v6

    .line 114
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    :goto_3
    const-string v6, ".html"

    .line 118
    .line 119
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-eqz v6, :cond_4

    .line 124
    .line 125
    invoke-virtual {p0, v4, p2}, Lt1/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    goto :goto_4

    .line 130
    :cond_4
    invoke-virtual {p0, v4, p2}, Lt1/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    :goto_4
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    add-int/lit8 v2, v5, 0xa

    .line 145
    .line 146
    goto/16 :goto_0
.end method

.method public final d(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_5

    .line 3
    .line 4
    add-int/lit8 p2, p2, -0x1

    .line 5
    .line 6
    iget-object v1, p0, Lt1/a;->f:Landroid/content/Context;

    .line 7
    .line 8
    if-eqz p2, :cond_4

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq p2, v2, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eq p2, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    if-eq p2, v1, :cond_0

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    iget-object p2, p0, Lt1/a;->g:Lh/a;

    .line 21
    .line 22
    iget-object p2, p2, Lh/a;->g:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p2, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/String;

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_1
    return-object v0

    .line 34
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, "/"

    .line 47
    .line 48
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    .line 59
    .line 60
    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    new-array p1, p1, [B

    .line 68
    .line 69
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    move-object p1, v0

    .line 81
    :goto_0
    if-nez p1, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    new-instance v0, Ljava/lang/String;

    .line 85
    .line 86
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 87
    .line 88
    .line 89
    :goto_1
    return-object v0

    .line 90
    :cond_4
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/i0;->b0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    return-object p1

    .line 95
    :cond_5
    throw v0
.end method

.method public final p(Ljava/lang/String;)Landroidx/fragment/app/h;
    .locals 12

    .line 1
    iget-object v0, p0, Lt1/a;->g:Lh/a;

    .line 2
    .line 3
    iget-object v1, p0, Lt1/a;->f:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "/assets"

    .line 6
    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x3

    .line 12
    const/4 v4, 0x2

    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x7

    .line 17
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    move v6, v5

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v2, "/cache"

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    const/4 v2, 0x6

    .line 32
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    move v6, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string v2, "/file"

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    const/4 v2, 0x5

    .line 47
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    move v6, v3

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const-string v2, "/env"

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_12

    .line 60
    .line 61
    const/4 v2, 0x4

    .line 62
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    move-object v11, v6

    .line 67
    move v6, v2

    .line 68
    move-object v2, v11

    .line 69
    :goto_0
    const-string v7, "/"

    .line 70
    .line 71
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-eqz v8, :cond_3

    .line 76
    .line 77
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    :cond_3
    const/4 v8, 0x0

    .line 82
    :try_start_0
    invoke-static {v6}, Lk0/c;->b(I)I

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    if-eqz v9, :cond_6

    .line 87
    .line 88
    if-eq v9, v5, :cond_5

    .line 89
    .line 90
    if-eq v9, v4, :cond_7

    .line 91
    .line 92
    if-eq v9, v3, :cond_4

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    iget-object v9, v0, Lh/a;->g:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v9, Ljava/util/HashMap;

    .line 98
    .line 99
    invoke-virtual {v9, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    goto :goto_2

    .line 104
    :cond_5
    new-instance v9, Ljava/io/File;

    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    invoke-direct {v9, v10, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    goto :goto_2

    .line 118
    :cond_6
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    invoke-static {v9, v2}, Lcom/google/android/gms/internal/play_billing/i0;->c(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_2

    .line 127
    :catch_0
    move-exception v9

    .line 128
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    .line 130
    .line 131
    :cond_7
    :goto_1
    move v9, v8

    .line 132
    :goto_2
    if-nez v9, :cond_8

    .line 133
    .line 134
    invoke-virtual {p0, p1}, Lt1/a;->b(Ljava/lang/String;)Landroidx/fragment/app/h;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    return-object p1

    .line 139
    :cond_8
    :try_start_1
    invoke-static {v6}, Lk0/c;->b(I)I

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-eqz v9, :cond_a

    .line 144
    .line 145
    if-eq v9, v5, :cond_9

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_9
    new-instance v9, Ljava/io/File;

    .line 149
    .line 150
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    invoke-direct {v9, v10, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    goto :goto_3

    .line 162
    :cond_a
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 163
    .line 164
    .line 165
    move-result-object v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 166
    :try_start_2
    invoke-virtual {v9, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 167
    .line 168
    .line 169
    move-result-object v10

    .line 170
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :catch_1
    :try_start_3
    invoke-static {v9, v2}, Lcom/google/android/gms/internal/play_billing/i0;->c(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 178
    goto :goto_3

    .line 179
    :catch_2
    move-exception v9

    .line 180
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 181
    .line 182
    .line 183
    :goto_3
    const/16 v9, 0x17

    .line 184
    .line 185
    if-eqz v8, :cond_c

    .line 186
    .line 187
    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-nez v0, :cond_b

    .line 192
    .line 193
    invoke-virtual {p1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    :cond_b
    const-string v0, "index.html"

    .line 198
    .line 199
    invoke-static {p1, v0}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    const-string v0, "<head><meta http-equiv=\'Refresh\' content=\'0; URL="

    .line 204
    .line 205
    const-string v1, "\'></head>"

    .line 206
    .line 207
    invoke-static {v0, p1, v1}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    new-instance v1, Landroidx/fragment/app/h;

    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-direct {v1, p1, v0, v9}, Landroidx/fragment/app/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 218
    .line 219
    .line 220
    return-object v1

    .line 221
    :cond_c
    const-string v8, ".html"

    .line 222
    .line 223
    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    if-eqz v8, :cond_d

    .line 228
    .line 229
    new-instance v0, Landroidx/fragment/app/h;

    .line 230
    .line 231
    invoke-virtual {p0, v2, v6}, Lt1/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-direct {v0, p1, v1, v9}, Landroidx/fragment/app/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 240
    .line 241
    .line 242
    return-object v0

    .line 243
    :cond_d
    new-instance v8, Landroidx/fragment/app/h;

    .line 244
    .line 245
    invoke-static {v6}, Lk0/c;->b(I)I

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    const/4 v10, 0x0

    .line 250
    if-eqz v6, :cond_10

    .line 251
    .line 252
    if-eq v6, v5, :cond_f

    .line 253
    .line 254
    if-eq v6, v4, :cond_11

    .line 255
    .line 256
    if-eq v6, v3, :cond_e

    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_e
    iget-object v0, v0, Lh/a;->g:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v0, Ljava/util/HashMap;

    .line 262
    .line 263
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    check-cast v0, Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 270
    .line 271
    .line 272
    move-result-object v10

    .line 273
    goto :goto_4

    .line 274
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    :try_start_4
    new-instance v1, Ljava/io/FileInputStream;

    .line 297
    .line 298
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    new-array v0, v0, [B

    .line 306
    .line 307
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 311
    .line 312
    .line 313
    move-object v10, v0

    .line 314
    goto :goto_4

    .line 315
    :catch_3
    move-exception v0

    .line 316
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 317
    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_10
    :try_start_5
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    new-array v1, v1, [B

    .line 333
    .line 334
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 338
    .line 339
    .line 340
    move-object v10, v1

    .line 341
    goto :goto_4

    .line 342
    :catch_4
    move-exception v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 344
    .line 345
    .line 346
    :cond_11
    :goto_4
    invoke-direct {v8, p1, v10, v9}, Landroidx/fragment/app/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 347
    .line 348
    .line 349
    return-object v8

    .line 350
    :cond_12
    invoke-virtual {p0, p1}, Lt1/a;->b(Ljava/lang/String;)Landroidx/fragment/app/h;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    return-object p1
.end method
