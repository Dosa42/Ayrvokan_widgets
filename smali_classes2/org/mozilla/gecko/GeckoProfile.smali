.class public final Lorg/mozilla/gecko/GeckoProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CANARY_CLIENT_ID:Ljava/lang/String; = "c0ffeec0-ffee-c0ff-eec0-ffeec0ffeec0"

.field private static final CLIENT_ID_FILE_PATH:Ljava/lang/String; = "datareporting/state.json"

.field private static final CLIENT_ID_JSON_ATTR:Ljava/lang/String; = "clientID"

.field public static final CUSTOM_PROFILE:Ljava/lang/String; = ""

.field public static final DEFAULT_PROFILE:Ljava/lang/String; = "default"

.field private static final HAD_CANARY_CLIENT_ID_JSON_ATTR:Ljava/lang/String; = "wasCanary"

.field private static final LOGTAG:Ljava/lang/String; = "GeckoProfile"

.field private static final TIMES_PATH:Ljava/lang/String; = "times.json"

.field private static volatile sAcceptDirectoryChanges:Z = true

.field private static sDefaultProfileName:Ljava/lang/String;

.field private static sIntentArgs:Ljava/lang/String;

.field private static final sProfileCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/mozilla/gecko/GeckoProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Ljava/lang/Object;

.field private final mMozillaDir:Ljava/io/File;

.field private final mName:Ljava/lang/String;

.field private mProfileDir:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lorg/mozilla/gecko/GeckoProfile;->sProfileCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 4

    const-string v0, "Profile directory must be writable if specified: "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_3

    iput-object p2, p0, Lorg/mozilla/gecko/GeckoProfile;->mName:Ljava/lang/String;

    invoke-static {p1}, Lorg/mozilla/gecko/GeckoProfileDirectories;->getMozillaDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/gecko/GeckoProfile;->mMozillaDir:Ljava/io/File;

    iput-object p3, p0, Lorg/mozilla/gecko/GeckoProfile;->mProfileDir:Ljava/io/File;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :try_start_0
    new-instance p2, Ljava/io/FileWriter;

    new-instance v1, Ljava/io/File;

    const-string v2, ".can-write-sentinel"

    invoke-direct {v1, p3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p2}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    :goto_0
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz p2, :cond_0

    :try_start_4
    invoke-virtual {p2}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_0
    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Profile directory must exist if specified: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unable to create GeckoProfile for empty profile name."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createProfileDir()Ljava/io/File;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/gecko/GeckoProfile;->isCustomProfile()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/mozilla/gecko/GeckoProfile;->mProfileDir:Ljava/io/File;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/GeckoProfile;->mMozillaDir:Ljava/io/File;

    .line 11
    .line 12
    invoke-static {v0}, Lorg/mozilla/gecko/GeckoProfileDirectories;->getProfilesINI(Ljava/io/File;)Lorg/mozilla/gecko/util/INIParser;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_1
    iget-object v1, p0, Lorg/mozilla/gecko/GeckoProfile;->mName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v1}, Lorg/mozilla/gecko/GeckoProfileDirectories;->saltProfileName(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Ljava/io/File;

    .line 23
    .line 24
    iget-object v3, p0, Lorg/mozilla/gecko/GeckoProfile;->mMozillaDir:Ljava/io/File;

    .line 25
    .line 26
    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_6

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    move v4, v3

    .line 43
    :cond_2
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v6, "Profile"

    .line 46
    .line 47
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v0, v5}, Lorg/mozilla/gecko/util/INIParser;->getSection(Ljava/lang/String;)Lorg/mozilla/gecko/util/INISection;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const-string v7, "Default"

    .line 62
    .line 63
    const/4 v8, 0x1

    .line 64
    if-eqz v5, :cond_3

    .line 65
    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    invoke-virtual {v5, v7}, Lorg/mozilla/gecko/util/INISection;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    if-eqz v5, :cond_2

    .line 73
    .line 74
    move v4, v8

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    new-instance v5, Lorg/mozilla/gecko/util/INISection;

    .line 77
    .line 78
    invoke-static {v6, v3}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-direct {v5, v3}, Lorg/mozilla/gecko/util/INISection;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v3, "Name"

    .line 86
    .line 87
    iget-object v6, p0, Lorg/mozilla/gecko/GeckoProfile;->mName:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v5, v3, v6}, Lorg/mozilla/gecko/util/INISection;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    const-string v3, "IsRelative"

    .line 93
    .line 94
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {v5, v3, v6}, Lorg/mozilla/gecko/util/INISection;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    const-string v3, "Path"

    .line 102
    .line 103
    invoke-virtual {v5, v3, v1}, Lorg/mozilla/gecko/util/INISection;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    const-string v1, "General"

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/util/INIParser;->getSection(Ljava/lang/String;)Lorg/mozilla/gecko/util/INISection;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    if-nez v3, :cond_4

    .line 113
    .line 114
    new-instance v3, Lorg/mozilla/gecko/util/INISection;

    .line 115
    .line 116
    invoke-direct {v3, v1}, Lorg/mozilla/gecko/util/INISection;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v1, "StartWithLastProfile"

    .line 120
    .line 121
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-virtual {v3, v1, v6}, Lorg/mozilla/gecko/util/INISection;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v3}, Lorg/mozilla/gecko/util/INIParser;->addSection(Lorg/mozilla/gecko/util/INISection;)V

    .line 129
    .line 130
    .line 131
    :cond_4
    if-nez v4, :cond_5

    .line 132
    .line 133
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v5, v7, v1}, Lorg/mozilla/gecko/util/INISection;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_5
    invoke-virtual {v0, v5}, Lorg/mozilla/gecko/util/INIParser;->addSection(Lorg/mozilla/gecko/util/INISection;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Lorg/mozilla/gecko/util/INIParser;->write()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v2}, Lorg/mozilla/gecko/GeckoProfile;->enqueueInitialization(Ljava/io/File;)V

    .line 147
    .line 148
    .line 149
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 150
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v3, "times.json"

    .line 169
    .line 170
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 181
    .line 182
    const-string v3, "UTF-8"

    .line 183
    .line 184
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-direct {v1, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .line 190
    .line 191
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v3, "{\"created\": "

    .line 197
    .line 198
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 202
    .line 203
    .line 204
    move-result-wide v3

    .line 205
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v3, "}\n"

    .line 209
    .line 210
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    .line 219
    .line 220
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 221
    .line 222
    .line 223
    goto :goto_1

    .line 224
    :catchall_0
    move-exception v0

    .line 225
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 226
    .line 227
    .line 228
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 229
    :catch_0
    :goto_1
    const/4 v0, 0x0

    .line 230
    invoke-static {}, Lorg/mozilla/gecko/GeckoProfile;->generateNewClientId()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-direct {p0, v0, v1}, Lorg/mozilla/gecko/GeckoProfile;->persistNewClientId(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    return-object v2

    .line 238
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 239
    .line 240
    const-string v1, "Unable to create profile."

    .line 241
    .line 242
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    throw v0
.end method

.method private findProfileDir()Ljava/io/File;
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/gecko/GeckoProfile;->isCustomProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoProfile;->mProfileDir:Ljava/io/File;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/GeckoProfile;->mMozillaDir:Ljava/io/File;

    iget-object v1, p0, Lorg/mozilla/gecko/GeckoProfile;->mName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/mozilla/gecko/GeckoProfileDirectories;->findProfileDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private forceCreateLocked()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoProfile;->mProfileDir:Ljava/io/File;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/gecko/GeckoProfile;->findProfileDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/gecko/GeckoProfile;->mProfileDir:Ljava/io/File;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/mozilla/gecko/GeckoProfileDirectories$NoSuchProfileException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-direct {p0}, Lorg/mozilla/gecko/GeckoProfile;->createProfileDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/gecko/GeckoProfile;->mProfileDir:Ljava/io/File;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method public static generateNewClientId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lorg/mozilla/gecko/GeckoProfile;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    sget-object v0, Lorg/mozilla/gecko/GeckoProfile;->sProfileCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/gecko/GeckoProfile;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/mozilla/gecko/GeckoProfile;->get(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lorg/mozilla/gecko/GeckoProfile;

    move-result-object p0

    return-object p0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lorg/mozilla/gecko/GeckoProfile;
    .locals 6
    .annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
    .end annotation

    .line 2
    if-eqz p0, :cond_b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->getActiveProfile()Lorg/mozilla/gecko/GeckoProfile;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1, v1}, Lorg/mozilla/gecko/GeckoProfile;->informIfCustomProfileIsUnavailable(Ljava/lang/String;Z)V

    return-object p2

    :cond_0
    invoke-static {p1, v2}, Lorg/mozilla/gecko/GeckoProfile;->informIfCustomProfileIsUnavailable(Ljava/lang/String;Z)V

    sget-object p1, Lorg/mozilla/gecko/GeckoProfile;->sIntentArgs:Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/mozilla/gecko/GeckoProfile;->initFromArgs(Landroid/content/Context;Ljava/lang/String;)Lorg/mozilla/gecko/GeckoProfile;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_4
    sget-object v3, Lorg/mozilla/gecko/GeckoProfile;->sProfileCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/gecko/GeckoProfile;

    if-nez v4, :cond_5

    :try_start_0
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    new-instance v4, Lorg/mozilla/gecko/GeckoProfile;

    invoke-direct {v4, p0, p1, p2}, Lorg/mozilla/gecko/GeckoProfile;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Lorg/mozilla/gecko/GeckoProfileDirectories$NoMozillaDirectoryException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/gecko/GeckoProfile;

    move-object v5, v4

    move-object v4, p0

    move-object p0, v5

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    const/4 p0, 0x0

    :goto_1
    if-nez v4, :cond_6

    move-object v4, p0

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_9

    :try_start_1
    iget-object p0, v4, Lorg/mozilla/gecko/GeckoProfile;->mProfileDir:Ljava/io/File;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    move v2, v1

    :catch_1
    if-nez v2, :cond_9

    sget-boolean p0, Lorg/mozilla/gecko/GeckoProfile;->sAcceptDirectoryChanges:Z

    if-eqz p0, :cond_8

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-direct {v4, p2}, Lorg/mozilla/gecko/GeckoProfile;->setDir(Ljava/io/File;)V

    goto :goto_3

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Refusing to reuse profile with a different directory."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    invoke-virtual {v4, p2}, Lorg/mozilla/gecko/GeckoProfile;->enqueueInitialization(Ljava/io/File;)V

    :cond_a
    return-object v4

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/gecko/GeckoProfile;
    .locals 1
    .annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
    .end annotation

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-static {p0, p1, v0}, Lorg/mozilla/gecko/GeckoProfile;->get(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lorg/mozilla/gecko/GeckoProfile;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultProfile(Landroid/content/Context;)Lorg/mozilla/gecko/GeckoProfile;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lorg/mozilla/gecko/GeckoProfile;->getDefaultProfileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/mozilla/gecko/GeckoProfile;->get(Landroid/content/Context;Ljava/lang/String;)Lorg/mozilla/gecko/GeckoProfile;

    move-result-object p0
    :try_end_0
    .catch Lorg/mozilla/gecko/GeckoProfileDirectories$NoMozillaDirectoryException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "GeckoProfile"

    const-string v1, "Unable to get default profile name."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getDefaultProfileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoProfile;->sDefaultProfileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/mozilla/gecko/GeckoProfileDirectories;->findDefaultProfileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "default"

    sput-object p0, Lorg/mozilla/gecko/GeckoProfile;->sDefaultProfileName:Ljava/lang/String;

    return-object p0

    :cond_1
    sput-object p0, Lorg/mozilla/gecko/GeckoProfile;->sDefaultProfileName:Ljava/lang/String;

    return-object p0
.end method

.method private static informIfCustomProfileIsUnavailable(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const-string p0, "active"

    goto :goto_0

    :cond_0
    const-string p0, "default"

    :goto_0
    const-string p1, "Custom profile must have a directory specified! Reverting to use the %s profile"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static initFromArgs(Landroid/content/Context;Ljava/lang/String;)Lorg/mozilla/gecko/GeckoProfile;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "-P"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "(?:-P\\s*)(\\w*)(\\s*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_1

    const-string v3, "-profile"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "(?:-profile\\s*)(\\S*)(\\s*)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez v1, :cond_2

    const/4 p1, 0x0

    invoke-static {v2, p1}, Lorg/mozilla/gecko/GeckoProfile;->informIfCustomProfileIsUnavailable(Ljava/lang/String;Z)V

    invoke-static {p0}, Lorg/mozilla/gecko/GeckoProfile;->getDefaultProfile(Landroid/content/Context;)Lorg/mozilla/gecko/GeckoProfile;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0, v2, v1}, Lorg/mozilla/gecko/GeckoProfile;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/gecko/GeckoProfile;

    move-result-object p0

    return-object p0
.end method

.method private static isCanaryClientId(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "c0ffeec0-ffee-c0ff-eec0-ffeec0ffeec0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private persistNewClientId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "datareporting/state.json"

    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/GeckoProfile;->ensureParentDirs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "clientID"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "wasCanary"

    invoke-static {p1}, Lorg/mozilla/gecko/GeckoProfile;->isCanaryClientId(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/gecko/GeckoProfile;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    const-string v0, "Could not create client ID JSON object"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not create client ID parent directories"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setDir(Ljava/io/File;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/mozilla/gecko/GeckoProfile;->mProfileDir:Ljava/io/File;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public enqueueInitialization(Ljava/io/File;)V
    .locals 3
    .annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
    .end annotation

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v1, "name"

    invoke-virtual {p0}, Lorg/mozilla/gecko/GeckoProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "path"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string v1, "Profile:Create"

    invoke-virtual {p1, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public ensureParentDirs(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/mozilla/gecko/GeckoProfile;->getDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public declared-synchronized getDir()Ljava/io/File;
    .locals 1
    .annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/gecko/GeckoProfile;->forceCreateLocked()V

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoProfile;->mProfileDir:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/gecko/GeckoProfile;->getDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public getLock()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoProfile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isCustomProfile()Z
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lorg/mozilla/gecko/GeckoProfile;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/mozilla/gecko/GeckoProfile;->getDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-object p1, v1

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    :goto_0
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_0
    throw p1

    :catch_2
    :goto_1
    if-eqz p1, :cond_1

    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_1
    :goto_2
    return-void
.end method
