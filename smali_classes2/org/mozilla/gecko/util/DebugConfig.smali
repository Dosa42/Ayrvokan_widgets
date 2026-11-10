.class public Lorg/mozilla/gecko/util/DebugConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/mozilla/gecko/annotation/ReflectionTarget;
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "GeckoDebugConfig"


# instance fields
.field protected args:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected env:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected prefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromFile(Ljava/io/File;)Lorg/mozilla/gecko/util/DebugConfig;
    .locals 8

    .line 1
    new-instance v0, Lg3/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lg3/g;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Le3/e;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const-class v3, Lorg/mozilla/gecko/util/DebugConfig;

    .line 10
    .line 11
    invoke-direct {v1, v3, v2, v2}, Le3/e;-><init>(Ljava/lang/Class;Lm3/i;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    new-array v3, v2, [Ljava/lang/Class;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const-class v5, Ljava/lang/String;

    .line 19
    .line 20
    aput-object v5, v3, v4

    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    const-class v7, Ljava/lang/Object;

    .line 24
    .line 25
    aput-object v7, v3, v6

    .line 26
    .line 27
    const-string v7, "prefs"

    .line 28
    .line 29
    invoke-virtual {v1, v7, v3}, Le3/e;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    new-array v2, v2, [Ljava/lang/Class;

    .line 33
    .line 34
    aput-object v5, v2, v4

    .line 35
    .line 36
    aput-object v5, v2, v6

    .line 37
    .line 38
    const-string v3, "env"

    .line 39
    .line 40
    invoke-virtual {v1, v3, v2}, Le3/e;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    new-array v2, v6, [Ljava/lang/Class;

    .line 44
    .line 45
    aput-object v5, v2, v4

    .line 46
    .line 47
    const-string v3, "args"

    .line 48
    .line 49
    invoke-virtual {v1, v3, v2}, Le3/e;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 50
    .line 51
    .line 52
    new-instance v2, Lj0/h;

    .line 53
    .line 54
    invoke-direct {v2, v0}, Lj0/h;-><init>(Lg3/g;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, v2, Lj0/h;->d:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Lg3/c;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lg3/c;->a(Le3/e;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, v2, Lj0/h;->e:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v0, Lp3/c;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 72
    .line 73
    iget-object v4, v0, Lp3/c;->i:Ljava/util/Map;

    .line 74
    .line 75
    if-ne v3, v4, :cond_0

    .line 76
    .line 77
    new-instance v3, Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v3, v0, Lp3/c;->i:Ljava/util/Map;

    .line 83
    .line 84
    :cond_0
    iget-object v3, v1, Le3/e;->c:Lm3/i;

    .line 85
    .line 86
    iget-object v4, v1, Le3/e;->a:Ljava/lang/Class;

    .line 87
    .line 88
    if-eqz v3, :cond_1

    .line 89
    .line 90
    iget-object v5, v0, Lp3/d;->g:Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lm3/i;

    .line 97
    .line 98
    :cond_1
    invoke-virtual {v0}, Lp3/b;->a()Lf2/g;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    iput-object v3, v1, Le3/e;->d:Lf2/g;

    .line 103
    .line 104
    iget-object v0, v0, Lp3/c;->i:Ljava/util/Map;

    .line 105
    .line 106
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Le3/e;

    .line 111
    .line 112
    new-instance v0, Ljava/io/FileInputStream;

    .line 113
    .line 114
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 115
    .line 116
    .line 117
    :try_start_0
    invoke-virtual {v2, v0}, Lj0/h;->d(Ljava/io/FileInputStream;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Lorg/mozilla/gecko/util/DebugConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .line 123
    invoke-static {v0}, Lorg/mozilla/gecko/util/IOUtils;->safeStreamClose(Ljava/io/Closeable;)V

    .line 124
    .line 125
    .line 126
    return-object p0

    .line 127
    :catchall_0
    move-exception p0

    .line 128
    invoke-static {v0}, Lorg/mozilla/gecko/util/IOUtils;->safeStreamClose(Ljava/io/Closeable;)V

    .line 129
    .line 130
    .line 131
    throw p0
.end method


# virtual methods
.method public mergeIntoInitInfo(Lorg/mozilla/gecko/GeckoThread$InitInfo;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/util/DebugConfig;->env:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    iget-object v1, p1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v3, "env"

    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v1, p0, Lorg/mozilla/gecko/util/DebugConfig;->env:Ljava/util/Map;

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Ljava/util/Map$Entry;

    .line 66
    .line 67
    iget-object v4, p1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    .line 68
    .line 69
    invoke-static {v3, v0}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    check-cast v7, Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v7, "="

    .line 88
    .line 89
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v4, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    add-int/lit8 v0, v0, 0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    iget-object v0, p0, Lorg/mozilla/gecko/util/DebugConfig;->args:Ljava/util/List;

    .line 112
    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    new-instance v0, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    iget-object v1, p1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->args:[Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lorg/mozilla/gecko/util/DebugConfig;->args:Ljava/util/List;

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    new-array v1, v1, [Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, [Ljava/lang/String;

    .line 148
    .line 149
    iput-object v0, p1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->args:[Ljava/lang/String;

    .line 150
    .line 151
    :cond_3
    iget-object v0, p0, Lorg/mozilla/gecko/util/DebugConfig;->prefs:Ljava/util/Map;

    .line 152
    .line 153
    if-eqz v0, :cond_4

    .line 154
    .line 155
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    new-instance v0, Ljava/util/HashMap;

    .line 159
    .line 160
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 161
    .line 162
    .line 163
    iget-object v1, p1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->prefs:Ljava/util/Map;

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 166
    .line 167
    .line 168
    iget-object v1, p0, Lorg/mozilla/gecko/util/DebugConfig;->prefs:Ljava/util/Map;

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lorg/mozilla/gecko/util/DebugConfig;->prefs:Ljava/util/Map;

    .line 174
    .line 175
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iput-object v0, p1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->prefs:Ljava/util/Map;

    .line 180
    .line 181
    :cond_4
    return-void
.end method
