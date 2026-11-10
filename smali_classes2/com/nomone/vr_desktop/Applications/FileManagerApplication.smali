.class public Lcom/nomone/vr_desktop/Applications/FileManagerApplication;
.super Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String;

.field public static final i:[Ljava/lang/String;


# instance fields
.field public final f:Lq1/f;

.field public g:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    const-string v0, "apps/fileManager/index.html"

    invoke-static {v0}, Lt1/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nomone/vr_desktop/Applications/FileManagerApplication;->h:Ljava/lang/String;

    const-string v1, "txt"

    const-string v2, "srt"

    const-string v3, "mp4"

    const-string v4, "mp3"

    const-string v5, "ogg"

    const-string v6, "jpg"

    const-string v7, "jpeg"

    const-string v8, "bmp"

    const-string v9, "png"

    const-string v10, "gif"

    const-string v11, "cpp"

    const-string v12, "java"

    const-string v13, "cs"

    const-string v14, "py"

    const-string v15, "js"

    const-string v16, "conf"

    const-string v17, "html"

    const-string v18, "css"

    const-string v19, "xml"

    const-string v20, "svg"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nomone/vr_desktop/Applications/FileManagerApplication;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lq1/f;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nomone/vr_desktop/Applications/FileManagerApplication;->f:Lq1/f;

    .line 5
    .line 6
    invoke-static {}, Lcom/nomone/GeckoView/MyGeckoView;->getGlobalDisplayDensity()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    mul-float/2addr v0, v1

    .line 13
    const/high16 v1, 0x43fa0000    # 500.0f

    .line 14
    .line 15
    mul-float/2addr v1, v0

    .line 16
    float-to-int v1, v1

    .line 17
    const/high16 v2, 0x43960000    # 300.0f

    .line 18
    .line 19
    mul-float/2addr v0, v2

    .line 20
    float-to-int v0, v0

    .line 21
    new-instance v2, Lr1/e0;

    .line 22
    .line 23
    sget-object v3, Lcom/nomone/vr_desktop/Applications/FileManagerApplication;->h:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {v2, p1, v3}, Lr1/e0;-><init>(Lq1/f;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput v1, v2, Lr1/q;->e:I

    .line 29
    .line 30
    iput v0, v2, Lr1/q;->f:I

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, v2, Lr1/e0;->r:Z

    .line 34
    .line 35
    const-string v0, "fileManagerTheme"

    .line 36
    .line 37
    iput-object v0, v2, Lr1/e0;->t:Ljava/lang/String;

    .line 38
    .line 39
    iput-boolean p1, v2, Lr1/q;->j:Z

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    iput-boolean p1, v2, Lr1/e0;->s:Z

    .line 43
    .line 44
    invoke-virtual {p0, v2}, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c(Lr1/e0;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 48
    .line 49
    iput-boolean p1, v0, La2/i;->y:Z

    .line 50
    .line 51
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 52
    .line 53
    new-instance v1, Lr1/k;

    .line 54
    .line 55
    invoke-direct {v1, p0, v0}, Lr1/k;-><init>(Lcom/nomone/vr_desktop/Applications/FileManagerApplication;Lcom/nomone/GeckoView/MyGeckoView;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/nomone/GeckoView/MyGeckoView;->a(Ln1/m;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 62
    .line 63
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 64
    .line 65
    new-instance v1, Lr1/j;

    .line 66
    .line 67
    invoke-direct {v1, p0, p1}, Lr1/j;-><init>(Ljava/lang/Object;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/nomone/GeckoView/MyGeckoView;->a(Ln1/m;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FileManagerApplication;->f:Lq1/f;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, v0, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    move-object p1, v1

    .line 18
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    new-instance p1, Lr1/y;

    .line 25
    .line 26
    invoke-direct {p1, v0}, Lr1/y;-><init>(Lq1/f;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "No Can Do!"

    .line 30
    .line 31
    iput-object v0, p1, Lr1/y;->d:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "Permission denied."

    .line 34
    .line 35
    iput-object v0, p1, Lr1/y;->e:Ljava/lang/String;

    .line 36
    .line 37
    const/16 v0, 0x12c

    .line 38
    .line 39
    const/16 v1, 0xa0

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Lr1/y;->d(II)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p0}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    iput-object p1, p0, Lcom/nomone/vr_desktop/Applications/FileManagerApplication;->g:Ljava/io/File;

    .line 49
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v2, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    array-length v3, v1

    .line 61
    const/4 v4, 0x0

    .line 62
    :goto_1
    if-ge v4, v3, :cond_3

    .line 63
    .line 64
    aget-object v5, v1, v4

    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    if-eqz v6, :cond_2

    .line 75
    .line 76
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Lorg/json/JSONObject;

    .line 93
    .line 94
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 95
    .line 96
    .line 97
    :try_start_0
    const-string v3, "path"

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    .line 105
    .line 106
    new-instance p1, Lorg/json/JSONArray;

    .line 107
    .line 108
    invoke-direct {p1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 109
    .line 110
    .line 111
    const-string v2, "folders"

    .line 112
    .line 113
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    .line 115
    .line 116
    new-instance p1, Lorg/json/JSONArray;

    .line 117
    .line 118
    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 119
    .line 120
    .line 121
    const-string v0, "files"

    .line 122
    .line 123
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :catch_0
    move-exception p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    .line 130
    .line 131
    :goto_3
    iget-object p1, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 132
    .line 133
    iget-object p1, p1, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 134
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v2, "updateFilesList(`"

    .line 138
    .line 139
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v1, "`)"

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {p1, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    return-void
.end method
