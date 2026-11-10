.class public final Lx2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/d0;


# static fields
.field public static final A:Ljava/util/regex/Pattern;

.field public static final B:Ljava/util/regex/Pattern;

.field public static final C:Ljava/util/regex/Pattern;

.field public static final D:Ljava/util/regex/Pattern;

.field public static final E:Ljava/util/regex/Pattern;

.field public static final F:Ljava/util/regex/Pattern;

.field public static final G:Ljava/util/regex/Pattern;

.field public static final H:Ljava/util/regex/Pattern;

.field public static final I:Ljava/util/regex/Pattern;

.field public static final J:Ljava/util/regex/Pattern;

.field public static final K:Ljava/util/regex/Pattern;

.field public static final L:Ljava/util/regex/Pattern;

.field public static final M:Ljava/util/regex/Pattern;

.field public static final N:Ljava/util/regex/Pattern;

.field public static final O:Ljava/util/regex/Pattern;

.field public static final P:Ljava/util/regex/Pattern;

.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;

.field public static final i:Ljava/util/regex/Pattern;

.field public static final j:Ljava/util/regex/Pattern;

.field public static final k:Ljava/util/regex/Pattern;

.field public static final l:Ljava/util/regex/Pattern;

.field public static final m:Ljava/util/regex/Pattern;

.field public static final n:Ljava/util/regex/Pattern;

.field public static final o:Ljava/util/regex/Pattern;

.field public static final p:Ljava/util/regex/Pattern;

.field public static final q:Ljava/util/regex/Pattern;

.field public static final r:Ljava/util/regex/Pattern;

.field public static final s:Ljava/util/regex/Pattern;

.field public static final t:Ljava/util/regex/Pattern;

.field public static final u:Ljava/util/regex/Pattern;

.field public static final v:Ljava/util/regex/Pattern;

.field public static final w:Ljava/util/regex/Pattern;

.field public static final x:Ljava/util/regex/Pattern;

.field public static final y:Ljava/util/regex/Pattern;

.field public static final z:Ljava/util/regex/Pattern;


# instance fields
.field public final f:Lx2/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "AVERAGE-BANDWIDTH=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->g:Ljava/util/regex/Pattern;

    const-string v0, "VIDEO=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->h:Ljava/util/regex/Pattern;

    const-string v0, "AUDIO=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->i:Ljava/util/regex/Pattern;

    const-string v0, "SUBTITLES=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->j:Ljava/util/regex/Pattern;

    const-string v0, "CLOSED-CAPTIONS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->k:Ljava/util/regex/Pattern;

    const-string v0, "[^-]BANDWIDTH=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->l:Ljava/util/regex/Pattern;

    const-string v0, "CHANNELS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->m:Ljava/util/regex/Pattern;

    const-string v0, "CODECS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->n:Ljava/util/regex/Pattern;

    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->o:Ljava/util/regex/Pattern;

    const-string v0, "FRAME-RATE=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->p:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->q:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->r:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-PLAYLIST-TYPE:(.+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->s:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->t:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->u:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:[\\d\\.]+\\b,(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->v:Ljava/util/regex/Pattern;

    const-string v0, "TIME-OFFSET=(-?[\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->w:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->x:Ljava/util/regex/Pattern;

    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->y:Ljava/util/regex/Pattern;

    const-string v0, "METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->z:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMAT=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->A:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMATVERSIONS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->B:Ljava/util/regex/Pattern;

    const-string v0, "URI=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->C:Ljava/util/regex/Pattern;

    const-string v0, "IV=([^,.*]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->D:Ljava/util/regex/Pattern;

    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->E:Ljava/util/regex/Pattern;

    const-string v0, "LANGUAGE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->F:Ljava/util/regex/Pattern;

    const-string v0, "NAME=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->G:Ljava/util/regex/Pattern;

    const-string v0, "GROUP-ID=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->H:Ljava/util/regex/Pattern;

    const-string v0, "CHARACTERISTICS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->I:Ljava/util/regex/Pattern;

    const-string v0, "INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->J:Ljava/util/regex/Pattern;

    const-string v0, "AUTOSELECT"

    invoke-static {v0}, Lx2/i;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->K:Ljava/util/regex/Pattern;

    const-string v0, "DEFAULT"

    invoke-static {v0}, Lx2/i;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->L:Ljava/util/regex/Pattern;

    const-string v0, "FORCED"

    invoke-static {v0}, Lx2/i;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->M:Ljava/util/regex/Pattern;

    const-string v0, "VALUE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->N:Ljava/util/regex/Pattern;

    const-string v0, "IMPORT=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->O:Ljava/util/regex/Pattern;

    const-string v0, "\\{\\$([a-zA-Z0-9\\-_]+)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx2/i;->P:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lx2/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx2/i;->f:Lx2/e;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    const-string v0, "=(NO|YES)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lj2/a;
    .locals 8

    .line 1
    sget-object v0, Lx2/i;->B:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    const-string v1, "1"

    .line 4
    .line 5
    invoke-static {p0, v0, v1, p2}, Lx2/i;->g(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v2, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/16 v3, 0x2c

    .line 16
    .line 17
    const-string v4, "video/mp4"

    .line 18
    .line 19
    sget-object v5, Lx2/i;->C:Ljava/util/regex/Pattern;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-static {p0, v5, p2}, Lx2/i;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance p1, Lj2/a;

    .line 30
    .line 31
    sget-object p2, Lf2/d;->b:Ljava/util/UUID;

    .line 32
    .line 33
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {p1, p2, v7, v4, p0}, Lj2/a;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 46
    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_0
    const-string v2, "com.widevine"

    .line 50
    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    new-instance p1, Lj2/a;

    .line 58
    .line 59
    sget-object p2, Lf2/d;->b:Ljava/util/UUID;

    .line 60
    .line 61
    sget v0, Lb3/n;->a:I

    .line 62
    .line 63
    const-string v0, "UTF-8"

    .line 64
    .line 65
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const-string v0, "hls"

    .line 74
    .line 75
    invoke-direct {p1, p2, v7, v0, p0}, Lj2/a;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 76
    .line 77
    .line 78
    return-object p1

    .line 79
    :cond_1
    const-string v2, "com.microsoft.playready"

    .line 80
    .line 81
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_4

    .line 92
    .line 93
    invoke-static {p0, v5, p2}, Lx2/i;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {p0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    sget-object p1, Lf2/d;->c:Ljava/util/UUID;

    .line 110
    .line 111
    if-eqz p0, :cond_2

    .line 112
    .line 113
    array-length p2, p0

    .line 114
    goto :goto_0

    .line 115
    :cond_2
    move p2, v6

    .line 116
    :goto_0
    add-int/lit8 p2, p2, 0x20

    .line 117
    .line 118
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 123
    .line 124
    .line 125
    const p2, 0x70737368    # 3.013775E29f

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 135
    .line 136
    .line 137
    move-result-wide v1

    .line 138
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 142
    .line 143
    .line 144
    move-result-wide v1

    .line 145
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 146
    .line 147
    .line 148
    if-eqz p0, :cond_3

    .line 149
    .line 150
    array-length p2, p0

    .line 151
    if-eqz p2, :cond_3

    .line 152
    .line 153
    array-length p2, p0

    .line 154
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 158
    .line 159
    .line 160
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    new-instance p2, Lj2/a;

    .line 165
    .line 166
    invoke-direct {p2, p1, v7, v4, p0}, Lj2/a;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 167
    .line 168
    .line 169
    return-object p2

    .line 170
    :cond_4
    return-object v7
.end method

.method public static d(Lf0/k;Ljava/lang/String;)Lx2/e;
    .locals 41

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    new-instance v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v11, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v4, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v5, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v6, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v7, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v3, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v12, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v8, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    const/4 v10, 0x0

    .line 54
    const/4 v13, 0x0

    .line 55
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lf0/k;->g()Z

    .line 56
    .line 57
    .line 58
    move-result v14

    .line 59
    sget-object v9, Lx2/i;->G:Ljava/util/regex/Pattern;

    .line 60
    .line 61
    if-eqz v14, :cond_10

    .line 62
    .line 63
    invoke-virtual/range {p0 .. p0}, Lf0/k;->j()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v14

    .line 67
    const-string v15, "#EXT"

    .line 68
    .line 69
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v15

    .line 73
    if-eqz v15, :cond_0

    .line 74
    .line 75
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :cond_0
    const-string v15, "#EXT-X-DEFINE"

    .line 79
    .line 80
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v15

    .line 84
    if-eqz v15, :cond_1

    .line 85
    .line 86
    invoke-static {v14, v9, v11}, Lx2/i;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    sget-object v15, Lx2/i;->N:Ljava/util/regex/Pattern;

    .line 91
    .line 92
    invoke-static {v14, v15, v11}, Lx2/i;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v14

    .line 96
    invoke-virtual {v11, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    const-string v9, "#EXT-X-INDEPENDENT-SEGMENTS"

    .line 101
    .line 102
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-eqz v9, :cond_2

    .line 107
    .line 108
    const/4 v10, 0x1

    .line 109
    goto :goto_0

    .line 110
    :cond_2
    const-string v9, "#EXT-X-MEDIA"

    .line 111
    .line 112
    invoke-virtual {v14, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    if-eqz v9, :cond_3

    .line 117
    .line 118
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    :goto_1
    move-object/from16 v20, v5

    .line 122
    .line 123
    move-object/from16 v21, v6

    .line 124
    .line 125
    move-object/from16 v38, v7

    .line 126
    .line 127
    move/from16 v19, v10

    .line 128
    .line 129
    goto/16 :goto_9

    .line 130
    .line 131
    :cond_3
    const-string v9, "#EXT-X-SESSION-KEY"

    .line 132
    .line 133
    invoke-virtual {v14, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    if-eqz v9, :cond_7

    .line 138
    .line 139
    sget-object v9, Lx2/i;->A:Ljava/util/regex/Pattern;

    .line 140
    .line 141
    const-string v15, "identity"

    .line 142
    .line 143
    invoke-static {v14, v9, v15, v11}, Lx2/i;->g(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    invoke-static {v14, v9, v11}, Lx2/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lj2/a;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    if-eqz v9, :cond_6

    .line 152
    .line 153
    sget-object v15, Lx2/i;->z:Ljava/util/regex/Pattern;

    .line 154
    .line 155
    invoke-static {v14, v15, v11}, Lx2/i;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v14

    .line 159
    const-string v15, "SAMPLE-AES-CENC"

    .line 160
    .line 161
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v15

    .line 165
    if-nez v15, :cond_5

    .line 166
    .line 167
    const-string v15, "SAMPLE-AES-CTR"

    .line 168
    .line 169
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v14

    .line 173
    if-eqz v14, :cond_4

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_4
    const-string v14, "cbcs"

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_5
    :goto_2
    const-string v14, "cenc"

    .line 180
    .line 181
    :goto_3
    new-instance v15, Lj2/b;

    .line 182
    .line 183
    filled-new-array {v9}, [Lj2/a;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    move/from16 v19, v10

    .line 188
    .line 189
    const/4 v10, 0x1

    .line 190
    invoke-direct {v15, v14, v10, v9}, Lj2/b;-><init>(Ljava/lang/String;Z[Lj2/a;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    goto/16 :goto_8

    .line 197
    .line 198
    :cond_6
    move/from16 v19, v10

    .line 199
    .line 200
    goto/16 :goto_8

    .line 201
    .line 202
    :cond_7
    move/from16 v19, v10

    .line 203
    .line 204
    const-string v9, "#EXT-X-STREAM-INF"

    .line 205
    .line 206
    invoke-virtual {v14, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    if-eqz v9, :cond_f

    .line 211
    .line 212
    const-string v9, "CLOSED-CAPTIONS=NONE"

    .line 213
    .line 214
    invoke-virtual {v14, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    or-int/2addr v9, v13

    .line 219
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 220
    .line 221
    .line 222
    move-result-object v10

    .line 223
    sget-object v13, Lx2/i;->l:Ljava/util/regex/Pattern;

    .line 224
    .line 225
    invoke-static {v14, v13, v10}, Lx2/i;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v10

    .line 229
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result v10

    .line 233
    sget-object v13, Lx2/i;->g:Ljava/util/regex/Pattern;

    .line 234
    .line 235
    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 236
    .line 237
    .line 238
    move-result-object v13

    .line 239
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    .line 240
    .line 241
    .line 242
    move-result v15

    .line 243
    if-eqz v15, :cond_8

    .line 244
    .line 245
    const/4 v15, 0x1

    .line 246
    invoke-virtual {v13, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v13

    .line 250
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    :cond_8
    sget-object v13, Lx2/i;->n:Ljava/util/regex/Pattern;

    .line 254
    .line 255
    const/4 v15, 0x0

    .line 256
    invoke-static {v14, v13, v15, v11}, Lx2/i;->g(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v24

    .line 260
    sget-object v13, Lx2/i;->o:Ljava/util/regex/Pattern;

    .line 261
    .line 262
    invoke-static {v14, v13, v15, v11}, Lx2/i;->g(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v13

    .line 266
    if-eqz v13, :cond_b

    .line 267
    .line 268
    const-string v15, "x"

    .line 269
    .line 270
    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v13

    .line 274
    const/4 v15, 0x0

    .line 275
    aget-object v20, v13, v15

    .line 276
    .line 277
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    move-result v15

    .line 281
    const/16 v18, 0x1

    .line 282
    .line 283
    aget-object v13, v13, v18

    .line 284
    .line 285
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    move-result v13

    .line 289
    if-lez v15, :cond_a

    .line 290
    .line 291
    if-gtz v13, :cond_9

    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_9
    move/from16 v16, v13

    .line 295
    .line 296
    goto :goto_5

    .line 297
    :cond_a
    :goto_4
    const/4 v15, -0x1

    .line 298
    const/16 v16, -0x1

    .line 299
    .line 300
    :goto_5
    move/from16 v27, v15

    .line 301
    .line 302
    move/from16 v28, v16

    .line 303
    .line 304
    goto :goto_6

    .line 305
    :cond_b
    const/16 v27, -0x1

    .line 306
    .line 307
    const/16 v28, -0x1

    .line 308
    .line 309
    :goto_6
    sget-object v13, Lx2/i;->p:Ljava/util/regex/Pattern;

    .line 310
    .line 311
    const/4 v15, 0x0

    .line 312
    invoke-static {v14, v13, v15, v11}, Lx2/i;->g(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v13

    .line 316
    if-eqz v13, :cond_c

    .line 317
    .line 318
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 319
    .line 320
    .line 321
    move-result v13

    .line 322
    move/from16 v29, v13

    .line 323
    .line 324
    goto :goto_7

    .line 325
    :cond_c
    const/high16 v29, -0x40800000    # -1.0f

    .line 326
    .line 327
    :goto_7
    sget-object v13, Lx2/i;->h:Ljava/util/regex/Pattern;

    .line 328
    .line 329
    invoke-static {v14, v13, v15, v11}, Lx2/i;->g(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v13

    .line 333
    move/from16 v17, v9

    .line 334
    .line 335
    sget-object v9, Lx2/i;->i:Ljava/util/regex/Pattern;

    .line 336
    .line 337
    invoke-static {v14, v9, v15, v11}, Lx2/i;->g(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v9

    .line 341
    move-object/from16 v37, v12

    .line 342
    .line 343
    sget-object v12, Lx2/i;->j:Ljava/util/regex/Pattern;

    .line 344
    .line 345
    invoke-static {v14, v12, v15, v11}, Lx2/i;->g(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v12

    .line 349
    move-object/from16 v38, v7

    .line 350
    .line 351
    sget-object v7, Lx2/i;->k:Ljava/util/regex/Pattern;

    .line 352
    .line 353
    invoke-static {v14, v7, v15, v11}, Lx2/i;->g(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v7

    .line 357
    invoke-virtual/range {p0 .. p0}, Lf0/k;->g()Z

    .line 358
    .line 359
    .line 360
    move-result v14

    .line 361
    if-eqz v14, :cond_e

    .line 362
    .line 363
    invoke-virtual/range {p0 .. p0}, Lf0/k;->j()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v14

    .line 367
    invoke-static {v14, v11}, Lx2/i;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v14

    .line 371
    invoke-static {v1, v14}, Lcom/google/android/gms/internal/play_billing/i0;->g0(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 372
    .line 373
    .line 374
    move-result-object v14

    .line 375
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 376
    .line 377
    .line 378
    move-result v15

    .line 379
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v20

    .line 383
    const/16 v21, 0x0

    .line 384
    .line 385
    const-string v22, "application/x-mpegURL"

    .line 386
    .line 387
    const/16 v23, 0x0

    .line 388
    .line 389
    const/16 v25, 0x0

    .line 390
    .line 391
    const/16 v30, 0x0

    .line 392
    .line 393
    const/16 v31, 0x0

    .line 394
    .line 395
    move/from16 v26, v10

    .line 396
    .line 397
    invoke-static/range {v20 .. v31}, Lf2/t;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lp2/b;IIIFII)Lf2/t;

    .line 398
    .line 399
    .line 400
    move-result-object v32

    .line 401
    new-instance v15, Lx2/d;

    .line 402
    .line 403
    move-object/from16 v30, v15

    .line 404
    .line 405
    move-object/from16 v31, v14

    .line 406
    .line 407
    move-object/from16 v33, v13

    .line 408
    .line 409
    move-object/from16 v34, v9

    .line 410
    .line 411
    move-object/from16 v35, v12

    .line 412
    .line 413
    move-object/from16 v36, v7

    .line 414
    .line 415
    invoke-direct/range {v30 .. v36}, Lx2/d;-><init>(Landroid/net/Uri;Lf2/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v15

    .line 425
    check-cast v15, Ljava/util/ArrayList;

    .line 426
    .line 427
    if-nez v15, :cond_d

    .line 428
    .line 429
    new-instance v15, Ljava/util/ArrayList;

    .line 430
    .line 431
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    :cond_d
    new-instance v14, Lw2/q;

    .line 438
    .line 439
    move-object/from16 v20, v5

    .line 440
    .line 441
    move-object/from16 v21, v6

    .line 442
    .line 443
    int-to-long v5, v10

    .line 444
    move-object/from16 v30, v14

    .line 445
    .line 446
    move-wide/from16 v31, v5

    .line 447
    .line 448
    move-object/from16 v33, v13

    .line 449
    .line 450
    move-object/from16 v34, v9

    .line 451
    .line 452
    move-object/from16 v35, v12

    .line 453
    .line 454
    move-object/from16 v36, v7

    .line 455
    .line 456
    invoke-direct/range {v30 .. v36}, Lw2/q;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move/from16 v13, v17

    .line 463
    .line 464
    goto :goto_a

    .line 465
    :cond_e
    new-instance v0, Lf2/z;

    .line 466
    .line 467
    const-string v1, "#EXT-X-STREAM-INF tag must be followed by another line"

    .line 468
    .line 469
    invoke-direct {v0, v1}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    throw v0

    .line 473
    :cond_f
    :goto_8
    move-object/from16 v20, v5

    .line 474
    .line 475
    move-object/from16 v21, v6

    .line 476
    .line 477
    move-object/from16 v38, v7

    .line 478
    .line 479
    :goto_9
    move-object/from16 v37, v12

    .line 480
    .line 481
    :goto_a
    move/from16 v10, v19

    .line 482
    .line 483
    move-object/from16 v5, v20

    .line 484
    .line 485
    move-object/from16 v6, v21

    .line 486
    .line 487
    move-object/from16 v12, v37

    .line 488
    .line 489
    move-object/from16 v7, v38

    .line 490
    .line 491
    goto/16 :goto_0

    .line 492
    .line 493
    :cond_10
    move-object/from16 v20, v5

    .line 494
    .line 495
    move-object/from16 v21, v6

    .line 496
    .line 497
    move-object/from16 v38, v7

    .line 498
    .line 499
    move/from16 v19, v10

    .line 500
    .line 501
    move-object/from16 v37, v12

    .line 502
    .line 503
    new-instance v5, Ljava/util/ArrayList;

    .line 504
    .line 505
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .line 507
    .line 508
    new-instance v6, Ljava/util/HashSet;

    .line 509
    .line 510
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 511
    .line 512
    .line 513
    const/4 v7, 0x0

    .line 514
    :goto_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 515
    .line 516
    .line 517
    move-result v10

    .line 518
    if-ge v7, v10, :cond_13

    .line 519
    .line 520
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v10

    .line 524
    check-cast v10, Lx2/d;

    .line 525
    .line 526
    iget-object v12, v10, Lx2/d;->a:Landroid/net/Uri;

    .line 527
    .line 528
    invoke-virtual {v6, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v12

    .line 532
    if-eqz v12, :cond_12

    .line 533
    .line 534
    iget-object v12, v10, Lx2/d;->b:Lf2/t;

    .line 535
    .line 536
    iget-object v14, v12, Lf2/t;->g:Lp2/b;

    .line 537
    .line 538
    if-nez v14, :cond_11

    .line 539
    .line 540
    const/4 v14, 0x1

    .line 541
    goto :goto_c

    .line 542
    :cond_11
    const/4 v14, 0x0

    .line 543
    :goto_c
    invoke-static {v14}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 544
    .line 545
    .line 546
    new-instance v14, Lw2/r;

    .line 547
    .line 548
    iget-object v15, v10, Lx2/d;->a:Landroid/net/Uri;

    .line 549
    .line 550
    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v15

    .line 554
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 555
    .line 556
    .line 557
    check-cast v15, Ljava/util/List;

    .line 558
    .line 559
    move-object/from16 v22, v0

    .line 560
    .line 561
    const/4 v0, 0x0

    .line 562
    invoke-direct {v14, v0, v0, v15}, Lw2/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 563
    .line 564
    .line 565
    new-instance v0, Lp2/b;

    .line 566
    .line 567
    move-object/from16 p0, v6

    .line 568
    .line 569
    const/4 v15, 0x1

    .line 570
    new-array v6, v15, [Lp2/a;

    .line 571
    .line 572
    const/4 v15, 0x0

    .line 573
    aput-object v14, v6, v15

    .line 574
    .line 575
    invoke-direct {v0, v6}, Lp2/b;-><init>([Lp2/a;)V

    .line 576
    .line 577
    .line 578
    iget-object v6, v12, Lf2/t;->l:Lj2/b;

    .line 579
    .line 580
    invoke-virtual {v12, v6, v0}, Lf2/t;->a(Lj2/b;Lp2/b;)Lf2/t;

    .line 581
    .line 582
    .line 583
    move-result-object v25

    .line 584
    new-instance v0, Lx2/d;

    .line 585
    .line 586
    iget-object v6, v10, Lx2/d;->a:Landroid/net/Uri;

    .line 587
    .line 588
    iget-object v12, v10, Lx2/d;->c:Ljava/lang/String;

    .line 589
    .line 590
    iget-object v14, v10, Lx2/d;->d:Ljava/lang/String;

    .line 591
    .line 592
    iget-object v15, v10, Lx2/d;->e:Ljava/lang/String;

    .line 593
    .line 594
    iget-object v10, v10, Lx2/d;->f:Ljava/lang/String;

    .line 595
    .line 596
    move-object/from16 v23, v0

    .line 597
    .line 598
    move-object/from16 v24, v6

    .line 599
    .line 600
    move-object/from16 v26, v12

    .line 601
    .line 602
    move-object/from16 v27, v14

    .line 603
    .line 604
    move-object/from16 v28, v15

    .line 605
    .line 606
    move-object/from16 v29, v10

    .line 607
    .line 608
    invoke-direct/range {v23 .. v29}, Lx2/d;-><init>(Landroid/net/Uri;Lf2/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    goto :goto_d

    .line 615
    :cond_12
    move-object/from16 v22, v0

    .line 616
    .line 617
    move-object/from16 p0, v6

    .line 618
    .line 619
    :goto_d
    add-int/lit8 v7, v7, 0x1

    .line 620
    .line 621
    move-object/from16 v6, p0

    .line 622
    .line 623
    move-object/from16 v0, v22

    .line 624
    .line 625
    goto :goto_b

    .line 626
    :cond_13
    const/4 v0, 0x0

    .line 627
    const/4 v10, 0x0

    .line 628
    const/4 v15, 0x0

    .line 629
    :goto_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 630
    .line 631
    .line 632
    move-result v6

    .line 633
    if-ge v15, v6, :cond_36

    .line 634
    .line 635
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object v6

    .line 639
    check-cast v6, Ljava/lang/String;

    .line 640
    .line 641
    sget-object v7, Lx2/i;->H:Ljava/util/regex/Pattern;

    .line 642
    .line 643
    invoke-static {v6, v7, v11}, Lx2/i;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v7

    .line 647
    invoke-static {v6, v9, v11}, Lx2/i;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v12

    .line 651
    sget-object v14, Lx2/i;->C:Ljava/util/regex/Pattern;

    .line 652
    .line 653
    move-object/from16 v34, v3

    .line 654
    .line 655
    const/4 v3, 0x0

    .line 656
    invoke-static {v6, v14, v3, v11}, Lx2/i;->g(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v14

    .line 660
    if-nez v14, :cond_14

    .line 661
    .line 662
    move-object v14, v3

    .line 663
    goto :goto_f

    .line 664
    :cond_14
    invoke-static {v1, v14}, Lcom/google/android/gms/internal/play_billing/i0;->g0(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 665
    .line 666
    .line 667
    move-result-object v17

    .line 668
    move-object/from16 v14, v17

    .line 669
    .line 670
    :goto_f
    sget-object v1, Lx2/i;->F:Ljava/util/regex/Pattern;

    .line 671
    .line 672
    invoke-static {v6, v1, v3, v11}, Lx2/i;->g(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    sget-object v3, Lx2/i;->L:Ljava/util/regex/Pattern;

    .line 677
    .line 678
    invoke-static {v6, v3}, Lx2/i;->f(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    .line 679
    .line 680
    .line 681
    move-result v3

    .line 682
    move-object/from16 v35, v9

    .line 683
    .line 684
    sget-object v9, Lx2/i;->M:Ljava/util/regex/Pattern;

    .line 685
    .line 686
    invoke-static {v6, v9}, Lx2/i;->f(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    .line 687
    .line 688
    .line 689
    move-result v9

    .line 690
    if-eqz v9, :cond_15

    .line 691
    .line 692
    or-int/lit8 v3, v3, 0x2

    .line 693
    .line 694
    :cond_15
    sget-object v9, Lx2/i;->K:Ljava/util/regex/Pattern;

    .line 695
    .line 696
    invoke-static {v6, v9}, Lx2/i;->f(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    .line 697
    .line 698
    .line 699
    move-result v9

    .line 700
    if-eqz v9, :cond_16

    .line 701
    .line 702
    or-int/lit8 v3, v3, 0x4

    .line 703
    .line 704
    :cond_16
    sget-object v9, Lx2/i;->I:Ljava/util/regex/Pattern;

    .line 705
    .line 706
    move-object/from16 p0, v10

    .line 707
    .line 708
    const/4 v10, 0x0

    .line 709
    invoke-static {v6, v9, v10, v11}, Lx2/i;->g(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v9

    .line 713
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 714
    .line 715
    .line 716
    move-result v10

    .line 717
    if-eqz v10, :cond_17

    .line 718
    .line 719
    move-object/from16 v36, v5

    .line 720
    .line 721
    const/4 v5, 0x0

    .line 722
    goto :goto_12

    .line 723
    :cond_17
    sget v10, Lb3/n;->a:I

    .line 724
    .line 725
    const-string v10, ","

    .line 726
    .line 727
    move-object/from16 v36, v5

    .line 728
    .line 729
    const/4 v5, -0x1

    .line 730
    invoke-virtual {v9, v10, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v9

    .line 734
    const-string v10, "public.accessibility.describes-video"

    .line 735
    .line 736
    invoke-static {v9, v10}, Lb3/n;->c([Ljava/lang/Object;Ljava/lang/String;)Z

    .line 737
    .line 738
    .line 739
    move-result v10

    .line 740
    if-eqz v10, :cond_18

    .line 741
    .line 742
    const/16 v10, 0x200

    .line 743
    .line 744
    goto :goto_10

    .line 745
    :cond_18
    const/4 v10, 0x0

    .line 746
    :goto_10
    const-string v5, "public.accessibility.transcribes-spoken-dialog"

    .line 747
    .line 748
    invoke-static {v9, v5}, Lb3/n;->c([Ljava/lang/Object;Ljava/lang/String;)Z

    .line 749
    .line 750
    .line 751
    move-result v5

    .line 752
    if-eqz v5, :cond_19

    .line 753
    .line 754
    or-int/lit16 v10, v10, 0x1000

    .line 755
    .line 756
    :cond_19
    const-string v5, "public.accessibility.describes-music-and-sound"

    .line 757
    .line 758
    invoke-static {v9, v5}, Lb3/n;->c([Ljava/lang/Object;Ljava/lang/String;)Z

    .line 759
    .line 760
    .line 761
    move-result v5

    .line 762
    if-eqz v5, :cond_1a

    .line 763
    .line 764
    or-int/lit16 v5, v10, 0x400

    .line 765
    .line 766
    goto :goto_11

    .line 767
    :cond_1a
    move v5, v10

    .line 768
    :goto_11
    const-string v10, "public.easy-to-read"

    .line 769
    .line 770
    invoke-static {v9, v10}, Lb3/n;->c([Ljava/lang/Object;Ljava/lang/String;)Z

    .line 771
    .line 772
    .line 773
    move-result v9

    .line 774
    if-eqz v9, :cond_1b

    .line 775
    .line 776
    or-int/lit16 v5, v5, 0x2000

    .line 777
    .line 778
    :cond_1b
    :goto_12
    new-instance v9, Ljava/lang/StringBuilder;

    .line 779
    .line 780
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    .line 785
    .line 786
    const-string v10, ":"

    .line 787
    .line 788
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    .line 793
    .line 794
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v22

    .line 798
    new-instance v9, Lp2/b;

    .line 799
    .line 800
    move-object/from16 v39, v8

    .line 801
    .line 802
    const/4 v10, 0x1

    .line 803
    new-array v8, v10, [Lp2/a;

    .line 804
    .line 805
    new-instance v10, Lw2/r;

    .line 806
    .line 807
    move/from16 v40, v13

    .line 808
    .line 809
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 810
    .line 811
    .line 812
    move-result-object v13

    .line 813
    invoke-direct {v10, v7, v12, v13}, Lw2/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 814
    .line 815
    .line 816
    const/4 v13, 0x0

    .line 817
    aput-object v10, v8, v13

    .line 818
    .line 819
    invoke-direct {v9, v8}, Lp2/b;-><init>([Lp2/a;)V

    .line 820
    .line 821
    .line 822
    sget-object v8, Lx2/i;->E:Ljava/util/regex/Pattern;

    .line 823
    .line 824
    invoke-static {v6, v8, v11}, Lx2/i;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v8

    .line 828
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 829
    .line 830
    .line 831
    move-result v10

    .line 832
    const/4 v13, 0x2

    .line 833
    sparse-switch v10, :sswitch_data_0

    .line 834
    .line 835
    .line 836
    goto :goto_13

    .line 837
    :sswitch_0
    const-string v10, "VIDEO"

    .line 838
    .line 839
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 840
    .line 841
    .line 842
    move-result v8

    .line 843
    if-nez v8, :cond_1c

    .line 844
    .line 845
    goto :goto_13

    .line 846
    :cond_1c
    const/4 v10, 0x3

    .line 847
    goto :goto_14

    .line 848
    :sswitch_1
    const-string v10, "AUDIO"

    .line 849
    .line 850
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 851
    .line 852
    .line 853
    move-result v8

    .line 854
    if-nez v8, :cond_1d

    .line 855
    .line 856
    goto :goto_13

    .line 857
    :cond_1d
    move v10, v13

    .line 858
    goto :goto_14

    .line 859
    :sswitch_2
    const-string v10, "CLOSED-CAPTIONS"

    .line 860
    .line 861
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 862
    .line 863
    .line 864
    move-result v8

    .line 865
    if-nez v8, :cond_1e

    .line 866
    .line 867
    goto :goto_13

    .line 868
    :cond_1e
    const/4 v10, 0x1

    .line 869
    goto :goto_14

    .line 870
    :sswitch_3
    const-string v10, "SUBTITLES"

    .line 871
    .line 872
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 873
    .line 874
    .line 875
    move-result v8

    .line 876
    if-nez v8, :cond_1f

    .line 877
    .line 878
    goto :goto_13

    .line 879
    :cond_1f
    const/4 v10, 0x0

    .line 880
    goto :goto_14

    .line 881
    :goto_13
    const/4 v10, -0x1

    .line 882
    :goto_14
    if-eqz v10, :cond_31

    .line 883
    .line 884
    const/4 v8, 0x1

    .line 885
    if-eq v10, v8, :cond_2e

    .line 886
    .line 887
    if-eq v10, v13, :cond_26

    .line 888
    .line 889
    const/4 v8, 0x3

    .line 890
    if-eq v10, v8, :cond_20

    .line 891
    .line 892
    goto/16 :goto_19

    .line 893
    .line 894
    :cond_20
    const/4 v1, 0x0

    .line 895
    :goto_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 896
    .line 897
    .line 898
    move-result v6

    .line 899
    if-ge v1, v6, :cond_22

    .line 900
    .line 901
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    move-result-object v6

    .line 905
    check-cast v6, Lx2/d;

    .line 906
    .line 907
    iget-object v8, v6, Lx2/d;->c:Ljava/lang/String;

    .line 908
    .line 909
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 910
    .line 911
    .line 912
    move-result v8

    .line 913
    if-eqz v8, :cond_21

    .line 914
    .line 915
    goto :goto_16

    .line 916
    :cond_21
    add-int/lit8 v1, v1, 0x1

    .line 917
    .line 918
    goto :goto_15

    .line 919
    :cond_22
    const/4 v6, 0x0

    .line 920
    :goto_16
    if-eqz v6, :cond_23

    .line 921
    .line 922
    iget-object v1, v6, Lx2/d;->b:Lf2/t;

    .line 923
    .line 924
    iget-object v6, v1, Lf2/t;->f:Ljava/lang/String;

    .line 925
    .line 926
    invoke-static {v13, v6}, Lb3/n;->d(ILjava/lang/String;)Ljava/lang/String;

    .line 927
    .line 928
    .line 929
    move-result-object v6

    .line 930
    iget v7, v1, Lf2/t;->n:I

    .line 931
    .line 932
    iget v8, v1, Lf2/t;->o:I

    .line 933
    .line 934
    iget v1, v1, Lf2/t;->p:F

    .line 935
    .line 936
    move/from16 v31, v1

    .line 937
    .line 938
    move-object/from16 v26, v6

    .line 939
    .line 940
    move/from16 v29, v7

    .line 941
    .line 942
    move/from16 v30, v8

    .line 943
    .line 944
    goto :goto_17

    .line 945
    :cond_23
    const/16 v26, 0x0

    .line 946
    .line 947
    const/16 v29, -0x1

    .line 948
    .line 949
    const/16 v30, -0x1

    .line 950
    .line 951
    const/high16 v31, -0x40800000    # -1.0f

    .line 952
    .line 953
    :goto_17
    if-eqz v26, :cond_24

    .line 954
    .line 955
    invoke-static/range {v26 .. v26}, Lb3/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 956
    .line 957
    .line 958
    move-result-object v1

    .line 959
    move-object/from16 v25, v1

    .line 960
    .line 961
    goto :goto_18

    .line 962
    :cond_24
    const/16 v25, 0x0

    .line 963
    .line 964
    :goto_18
    const-string v24, "application/x-mpegURL"

    .line 965
    .line 966
    const/16 v27, 0x0

    .line 967
    .line 968
    const/16 v28, -0x1

    .line 969
    .line 970
    move-object/from16 v23, v12

    .line 971
    .line 972
    move/from16 v32, v3

    .line 973
    .line 974
    move/from16 v33, v5

    .line 975
    .line 976
    invoke-static/range {v22 .. v33}, Lf2/t;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lp2/b;IIIFII)Lf2/t;

    .line 977
    .line 978
    .line 979
    move-result-object v1

    .line 980
    iget-object v3, v1, Lf2/t;->l:Lj2/b;

    .line 981
    .line 982
    invoke-virtual {v1, v3, v9}, Lf2/t;->a(Lj2/b;Lp2/b;)Lf2/t;

    .line 983
    .line 984
    .line 985
    move-result-object v1

    .line 986
    if-nez v14, :cond_25

    .line 987
    .line 988
    goto :goto_19

    .line 989
    :cond_25
    new-instance v3, Lx2/c;

    .line 990
    .line 991
    invoke-direct {v3, v14, v1, v12}, Lx2/c;-><init>(Landroid/net/Uri;Lf2/t;Ljava/lang/String;)V

    .line 992
    .line 993
    .line 994
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    .line 996
    .line 997
    :goto_19
    move-object/from16 v8, v20

    .line 998
    .line 999
    :goto_1a
    move-object/from16 v6, v21

    .line 1000
    .line 1001
    goto/16 :goto_26

    .line 1002
    .line 1003
    :cond_26
    const/4 v8, 0x0

    .line 1004
    :goto_1b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1005
    .line 1006
    .line 1007
    move-result v10

    .line 1008
    if-ge v8, v10, :cond_28

    .line 1009
    .line 1010
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v10

    .line 1014
    check-cast v10, Lx2/d;

    .line 1015
    .line 1016
    iget-object v13, v10, Lx2/d;->d:Ljava/lang/String;

    .line 1017
    .line 1018
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1019
    .line 1020
    .line 1021
    move-result v13

    .line 1022
    if-eqz v13, :cond_27

    .line 1023
    .line 1024
    goto :goto_1c

    .line 1025
    :cond_27
    add-int/lit8 v8, v8, 0x1

    .line 1026
    .line 1027
    const/4 v13, 0x2

    .line 1028
    goto :goto_1b

    .line 1029
    :cond_28
    const/4 v10, 0x0

    .line 1030
    :goto_1c
    if-eqz v10, :cond_29

    .line 1031
    .line 1032
    iget-object v7, v10, Lx2/d;->b:Lf2/t;

    .line 1033
    .line 1034
    iget-object v7, v7, Lf2/t;->f:Ljava/lang/String;

    .line 1035
    .line 1036
    const/4 v8, 0x1

    .line 1037
    invoke-static {v8, v7}, Lb3/n;->d(ILjava/lang/String;)Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v7

    .line 1041
    move-object/from16 v26, v7

    .line 1042
    .line 1043
    goto :goto_1d

    .line 1044
    :cond_29
    const/4 v8, 0x1

    .line 1045
    const/16 v26, 0x0

    .line 1046
    .line 1047
    :goto_1d
    if-eqz v26, :cond_2a

    .line 1048
    .line 1049
    invoke-static/range {v26 .. v26}, Lb3/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v7

    .line 1053
    goto :goto_1e

    .line 1054
    :cond_2a
    const/4 v7, 0x0

    .line 1055
    :goto_1e
    sget-object v10, Lx2/i;->m:Ljava/util/regex/Pattern;

    .line 1056
    .line 1057
    const/4 v13, 0x0

    .line 1058
    invoke-static {v6, v10, v13, v11}, Lx2/i;->g(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v6

    .line 1062
    if-eqz v6, :cond_2c

    .line 1063
    .line 1064
    sget v10, Lb3/n;->a:I

    .line 1065
    .line 1066
    const-string v10, "/"

    .line 1067
    .line 1068
    const/4 v8, 0x2

    .line 1069
    invoke-virtual {v6, v10, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v8

    .line 1073
    const/4 v10, 0x0

    .line 1074
    aget-object v8, v8, v10

    .line 1075
    .line 1076
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1077
    .line 1078
    .line 1079
    move-result v8

    .line 1080
    const-string v10, "audio/eac3"

    .line 1081
    .line 1082
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1083
    .line 1084
    .line 1085
    move-result v10

    .line 1086
    if-eqz v10, :cond_2b

    .line 1087
    .line 1088
    const-string v10, "/JOC"

    .line 1089
    .line 1090
    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1091
    .line 1092
    .line 1093
    move-result v6

    .line 1094
    if-eqz v6, :cond_2b

    .line 1095
    .line 1096
    const-string v7, "audio/eac3-joc"

    .line 1097
    .line 1098
    :cond_2b
    move-object/from16 v25, v7

    .line 1099
    .line 1100
    move/from16 v29, v8

    .line 1101
    .line 1102
    goto :goto_1f

    .line 1103
    :cond_2c
    move-object/from16 v25, v7

    .line 1104
    .line 1105
    const/16 v29, -0x1

    .line 1106
    .line 1107
    :goto_1f
    const-string v24, "application/x-mpegURL"

    .line 1108
    .line 1109
    const/16 v27, 0x0

    .line 1110
    .line 1111
    const/16 v28, -0x1

    .line 1112
    .line 1113
    move-object/from16 v23, v12

    .line 1114
    .line 1115
    move/from16 v30, v3

    .line 1116
    .line 1117
    move/from16 v31, v5

    .line 1118
    .line 1119
    move-object/from16 v32, v1

    .line 1120
    .line 1121
    invoke-static/range {v22 .. v32}, Lf2/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lp2/b;IIIILjava/lang/String;)Lf2/t;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v1

    .line 1125
    if-nez v14, :cond_2d

    .line 1126
    .line 1127
    move-object v10, v1

    .line 1128
    move-object/from16 v8, v20

    .line 1129
    .line 1130
    goto :goto_21

    .line 1131
    :cond_2d
    new-instance v3, Lx2/c;

    .line 1132
    .line 1133
    iget-object v5, v1, Lf2/t;->l:Lj2/b;

    .line 1134
    .line 1135
    invoke-virtual {v1, v5, v9}, Lf2/t;->a(Lj2/b;Lp2/b;)Lf2/t;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v1

    .line 1139
    invoke-direct {v3, v14, v1, v12}, Lx2/c;-><init>(Landroid/net/Uri;Lf2/t;Ljava/lang/String;)V

    .line 1140
    .line 1141
    .line 1142
    move-object/from16 v8, v20

    .line 1143
    .line 1144
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1145
    .line 1146
    .line 1147
    goto/16 :goto_1a

    .line 1148
    .line 1149
    :cond_2e
    move-object/from16 v8, v20

    .line 1150
    .line 1151
    const/4 v13, 0x0

    .line 1152
    sget-object v7, Lx2/i;->J:Ljava/util/regex/Pattern;

    .line 1153
    .line 1154
    invoke-static {v6, v7, v11}, Lx2/i;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v6

    .line 1158
    const-string v7, "CC"

    .line 1159
    .line 1160
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1161
    .line 1162
    .line 1163
    move-result v7

    .line 1164
    if-eqz v7, :cond_2f

    .line 1165
    .line 1166
    const/4 v7, 0x2

    .line 1167
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v6

    .line 1171
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1172
    .line 1173
    .line 1174
    move-result v6

    .line 1175
    const-string v7, "application/cea-608"

    .line 1176
    .line 1177
    goto :goto_20

    .line 1178
    :cond_2f
    const/4 v7, 0x7

    .line 1179
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v6

    .line 1183
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1184
    .line 1185
    .line 1186
    move-result v6

    .line 1187
    const-string v7, "application/cea-708"

    .line 1188
    .line 1189
    :goto_20
    move/from16 v30, v6

    .line 1190
    .line 1191
    move-object/from16 v25, v7

    .line 1192
    .line 1193
    if-nez v0, :cond_30

    .line 1194
    .line 1195
    new-instance v0, Ljava/util/ArrayList;

    .line 1196
    .line 1197
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1198
    .line 1199
    .line 1200
    :cond_30
    const/16 v24, 0x0

    .line 1201
    .line 1202
    const/16 v26, 0x0

    .line 1203
    .line 1204
    move-object/from16 v23, v12

    .line 1205
    .line 1206
    move/from16 v27, v3

    .line 1207
    .line 1208
    move/from16 v28, v5

    .line 1209
    .line 1210
    move-object/from16 v29, v1

    .line 1211
    .line 1212
    invoke-static/range {v22 .. v30}, Lf2/t;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lf2/t;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v1

    .line 1216
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1217
    .line 1218
    .line 1219
    move-object/from16 v10, p0

    .line 1220
    .line 1221
    :goto_21
    move-object/from16 v6, v21

    .line 1222
    .line 1223
    goto :goto_27

    .line 1224
    :cond_31
    move-object/from16 v8, v20

    .line 1225
    .line 1226
    const/4 v13, 0x0

    .line 1227
    const/4 v6, 0x0

    .line 1228
    :goto_22
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1229
    .line 1230
    .line 1231
    move-result v10

    .line 1232
    if-ge v6, v10, :cond_33

    .line 1233
    .line 1234
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v10

    .line 1238
    check-cast v10, Lx2/d;

    .line 1239
    .line 1240
    iget-object v13, v10, Lx2/d;->e:Ljava/lang/String;

    .line 1241
    .line 1242
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1243
    .line 1244
    .line 1245
    move-result v13

    .line 1246
    if-eqz v13, :cond_32

    .line 1247
    .line 1248
    goto :goto_23

    .line 1249
    :cond_32
    add-int/lit8 v6, v6, 0x1

    .line 1250
    .line 1251
    const/4 v13, 0x0

    .line 1252
    goto :goto_22

    .line 1253
    :cond_33
    const/4 v10, 0x0

    .line 1254
    :goto_23
    if-eqz v10, :cond_34

    .line 1255
    .line 1256
    iget-object v6, v10, Lx2/d;->b:Lf2/t;

    .line 1257
    .line 1258
    iget-object v6, v6, Lf2/t;->f:Ljava/lang/String;

    .line 1259
    .line 1260
    const/4 v7, 0x3

    .line 1261
    invoke-static {v7, v6}, Lb3/n;->d(ILjava/lang/String;)Ljava/lang/String;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v6

    .line 1265
    invoke-static {v6}, Lb3/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v7

    .line 1269
    move-object/from16 v26, v6

    .line 1270
    .line 1271
    goto :goto_24

    .line 1272
    :cond_34
    const/4 v7, 0x0

    .line 1273
    const/16 v26, 0x0

    .line 1274
    .line 1275
    :goto_24
    if-nez v7, :cond_35

    .line 1276
    .line 1277
    const-string v6, "text/vtt"

    .line 1278
    .line 1279
    move-object/from16 v25, v6

    .line 1280
    .line 1281
    goto :goto_25

    .line 1282
    :cond_35
    move-object/from16 v25, v7

    .line 1283
    .line 1284
    :goto_25
    const-string v24, "application/x-mpegURL"

    .line 1285
    .line 1286
    const/16 v30, -0x1

    .line 1287
    .line 1288
    move-object/from16 v23, v12

    .line 1289
    .line 1290
    move/from16 v27, v3

    .line 1291
    .line 1292
    move/from16 v28, v5

    .line 1293
    .line 1294
    move-object/from16 v29, v1

    .line 1295
    .line 1296
    invoke-static/range {v22 .. v30}, Lf2/t;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lf2/t;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v1

    .line 1300
    iget-object v3, v1, Lf2/t;->l:Lj2/b;

    .line 1301
    .line 1302
    invoke-virtual {v1, v3, v9}, Lf2/t;->a(Lj2/b;Lp2/b;)Lf2/t;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v1

    .line 1306
    new-instance v3, Lx2/c;

    .line 1307
    .line 1308
    invoke-direct {v3, v14, v1, v12}, Lx2/c;-><init>(Landroid/net/Uri;Lf2/t;Ljava/lang/String;)V

    .line 1309
    .line 1310
    .line 1311
    move-object/from16 v6, v21

    .line 1312
    .line 1313
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    .line 1315
    .line 1316
    :goto_26
    move-object/from16 v10, p0

    .line 1317
    .line 1318
    :goto_27
    add-int/lit8 v15, v15, 0x1

    .line 1319
    .line 1320
    move-object/from16 v1, p1

    .line 1321
    .line 1322
    move-object/from16 v21, v6

    .line 1323
    .line 1324
    move-object/from16 v20, v8

    .line 1325
    .line 1326
    move-object/from16 v3, v34

    .line 1327
    .line 1328
    move-object/from16 v9, v35

    .line 1329
    .line 1330
    move-object/from16 v5, v36

    .line 1331
    .line 1332
    move-object/from16 v8, v39

    .line 1333
    .line 1334
    move/from16 v13, v40

    .line 1335
    .line 1336
    goto/16 :goto_e

    .line 1337
    .line 1338
    :cond_36
    move-object/from16 v36, v5

    .line 1339
    .line 1340
    move-object/from16 v39, v8

    .line 1341
    .line 1342
    move-object/from16 p0, v10

    .line 1343
    .line 1344
    move/from16 v40, v13

    .line 1345
    .line 1346
    move-object/from16 v8, v20

    .line 1347
    .line 1348
    move-object/from16 v6, v21

    .line 1349
    .line 1350
    if-eqz v40, :cond_37

    .line 1351
    .line 1352
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v0

    .line 1356
    :cond_37
    move-object v9, v0

    .line 1357
    new-instance v13, Lx2/e;

    .line 1358
    .line 1359
    move-object v0, v13

    .line 1360
    move-object/from16 v1, p1

    .line 1361
    .line 1362
    move-object/from16 v2, v39

    .line 1363
    .line 1364
    move-object/from16 v3, v36

    .line 1365
    .line 1366
    move-object v5, v8

    .line 1367
    move-object/from16 v7, v38

    .line 1368
    .line 1369
    move-object/from16 v8, p0

    .line 1370
    .line 1371
    move/from16 v10, v19

    .line 1372
    .line 1373
    move-object/from16 v12, v37

    .line 1374
    .line 1375
    invoke-direct/range {v0 .. v12}, Lx2/e;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lf2/t;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    .line 1376
    .line 1377
    .line 1378
    return-object v13

    :sswitch_data_0
    .sparse-switch
        -0x392db8c5 -> :sswitch_3
        -0x13dc6572 -> :sswitch_2
        0x3bba3b6 -> :sswitch_1
        0x4de1c5b -> :sswitch_0
    .end sparse-switch
.end method

.method public static e(Lx2/e;Lf0/k;Ljava/lang/String;)Lx2/g;
    .locals 72

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lx2/h;->c:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    move-wide/from16 v46, v28

    move-object/from16 v28, v26

    move-object/from16 v29, v27

    move-wide/from16 v26, v24

    move-object/from16 v24, v22

    move-object/from16 v25, v23

    move-object/from16 v23, v13

    move-wide/from16 v21, v20

    move/from16 v20, v19

    move/from16 v19, v18

    move-wide/from16 v17, v16

    move/from16 v16, v14

    move v14, v12

    move-wide v12, v10

    move-object v10, v8

    move v11, v9

    move v9, v7

    move-wide v7, v4

    :goto_0
    const-wide/16 v30, -0x1

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    move-wide/from16 v48, v30

    move/from16 v45, v32

    move-wide/from16 v64, v33

    move-wide/from16 v70, v17

    move/from16 v18, v16

    move-wide/from16 v16, v7

    move-wide v7, v4

    move-wide/from16 v4, v21

    move/from16 v21, v19

    move/from16 v22, v20

    move-wide/from16 v19, v70

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lf0/k;->g()Z

    move-result v32

    if-eqz v32, :cond_2d

    move-wide/from16 v32, v4

    invoke-virtual/range {p1 .. p1}, Lf0/k;->j()Ljava/lang/String;

    move-result-object v4

    const-string v5, "#EXT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v5, "#EXT-X-PLAYLIST-TYPE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lx2/i;->s:Ljava/util/regex/Pattern;

    invoke-static {v4, v5, v2}, Lx2/i;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "VOD"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v9, 0x1

    goto :goto_2

    :cond_1
    const-string v5, "EVENT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v9, 0x2

    goto :goto_2

    :cond_2
    const-string v5, "#EXT-X-START"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-wide v34, 0x412e848000000000L    # 1000000.0

    if-eqz v5, :cond_4

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    sget-object v7, Lx2/i;->w:Ljava/util/regex/Pattern;

    invoke-static {v4, v7, v5}, Lx2/i;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double v4, v4, v34

    double-to-long v7, v4

    :cond_3
    :goto_2
    move-wide/from16 v4, v32

    goto :goto_1

    :cond_4
    const-string v5, "#EXT-X-MAP"

    .line 2
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    move/from16 v66, v1

    const-string v1, "@"

    move/from16 v67, v14

    sget-object v14, Lx2/i;->C:Ljava/util/regex/Pattern;

    if-eqz v5, :cond_9

    invoke-static {v4, v14, v2}, Lx2/i;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 3
    sget-object v14, Lx2/i;->y:Ljava/util/regex/Pattern;

    move-wide/from16 v68, v7

    const/4 v7, 0x0

    invoke-static {v4, v14, v7, v2}, Lx2/i;->g(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 4
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    array-length v4, v1

    const/4 v14, 0x1

    if-le v4, v14, :cond_5

    aget-object v1, v1, v14

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    :cond_5
    move-wide/from16 v61, v7

    move-wide/from16 v59, v32

    goto :goto_3

    :cond_6
    move-wide/from16 v59, v32

    move-wide/from16 v61, v48

    :goto_3
    if-eqz v24, :cond_8

    if-eqz v25, :cond_7

    goto :goto_4

    :cond_7
    new-instance v0, Lf2/z;

    const-string v1, "The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128."

    invoke-direct {v0, v1}, Lf2/z;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    new-instance v29, Lx2/f;

    const/16 v50, 0x0

    const-wide/16 v51, 0x0

    const/16 v53, -0x1

    const-wide v54, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v56, 0x0

    const/16 v63, 0x0

    move-object/from16 v48, v29

    move-object/from16 v49, v5

    move-object/from16 v57, v24

    move-object/from16 v58, v25

    .line 5
    invoke-direct/range {v48 .. v63}, Lx2/f;-><init>(Ljava/lang/String;Lx2/f;JIJLj2/b;Ljava/lang/String;Ljava/lang/String;JJZ)V

    const-wide/16 v4, 0x0

    move-wide/from16 v48, v30

    :goto_5
    move/from16 v1, v66

    :goto_6
    move/from16 v14, v67

    :goto_7
    move-wide/from16 v7, v68

    goto/16 :goto_1

    :cond_9
    move-wide/from16 v68, v7

    const-string v5, "#EXT-X-TARGETDURATION"

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    sget-object v5, Lx2/i;->q:Ljava/util/regex/Pattern;

    invoke-static {v4, v5, v1}, Lx2/i;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v4, v1

    const-wide/32 v7, 0xf4240

    mul-long v16, v4, v7

    goto :goto_8

    :cond_a
    const-string v5, "#EXT-X-MEDIA-SEQUENCE"

    .line 8
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    sget-object v5, Lx2/i;->t:Ljava/util/regex/Pattern;

    invoke-static {v4, v5, v1}, Lx2/i;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    move-wide/from16 v26, v19

    :goto_8
    move-wide/from16 v4, v32

    goto/16 :goto_12

    :cond_b
    const-string v5, "#EXT-X-VERSION"

    .line 10
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    sget-object v5, Lx2/i;->r:Ljava/util/regex/Pattern;

    invoke-static {v4, v5, v1}, Lx2/i;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    goto :goto_8

    :cond_c
    const-string v5, "#EXT-X-DEFINE"

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 13
    sget-object v1, Lx2/i;->O:Ljava/util/regex/Pattern;

    const/4 v5, 0x0

    invoke-static {v4, v1, v5, v2}, Lx2/i;->g(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 14
    iget-object v0, v0, Lx2/e;->l:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_e

    goto :goto_9

    :cond_d
    sget-object v0, Lx2/i;->G:Ljava/util/regex/Pattern;

    invoke-static {v4, v0, v2}, Lx2/i;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lx2/i;->N:Ljava/util/regex/Pattern;

    invoke-static {v4, v0, v2}, Lx2/i;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    move-object/from16 v50, v3

    move-object/from16 v51, v6

    move/from16 v52, v9

    move-wide/from16 v53, v12

    goto/16 :goto_1b

    :cond_f
    const-string v5, "#EXTINF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    sget-object v5, Lx2/i;->u:Ljava/util/regex/Pattern;

    invoke-static {v4, v5, v1}, Lx2/i;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    mul-double v7, v7, v34

    double-to-long v7, v7

    .line 16
    sget-object v1, Lx2/i;->v:Ljava/util/regex/Pattern;

    const-string v5, ""

    invoke-static {v4, v1, v5, v2}, Lx2/i;->g(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-wide/from16 v64, v7

    goto :goto_8

    :cond_10
    const-string v0, "#EXT-X-KEY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lx2/i;->z:Ljava/util/regex/Pattern;

    invoke-static {v4, v0, v2}, Lx2/i;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lx2/i;->A:Ljava/util/regex/Pattern;

    const-string v5, "identity"

    invoke-static {v4, v1, v5, v2}, Lx2/i;->g(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "NONE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v3}, Ljava/util/TreeMap;->clear()V

    const/4 v0, 0x0

    goto :goto_c

    .line 17
    :cond_11
    sget-object v7, Lx2/i;->D:Ljava/util/regex/Pattern;

    const/4 v8, 0x0

    invoke-static {v4, v7, v8, v2}, Lx2/i;->g(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 18
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v1, "AES-128"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {v4, v14, v2}, Lx2/i;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_12
    if-nez v10, :cond_15

    const-string v5, "SAMPLE-AES-CENC"

    .line 19
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string v5, "SAMPLE-AES-CTR"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_a

    :cond_13
    const-string v0, "cbcs"

    goto :goto_b

    :cond_14
    :goto_a
    const-string v0, "cenc"

    :goto_b
    move-object v10, v0

    .line 20
    :cond_15
    invoke-static {v4, v1, v2}, Lx2/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lj2/a;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v3, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v7

    :goto_c
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object/from16 v25, v0

    move-object/from16 v24, v1

    move-object/from16 v28, v4

    goto :goto_e

    :cond_16
    const/4 v0, 0x0

    :goto_d
    move-object/from16 v24, v0

    move-object/from16 v25, v7

    goto :goto_e

    :cond_17
    const-string v0, "#EXT-X-BYTERANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lx2/i;->x:Ljava/util/regex/Pattern;

    invoke-static {v4, v0, v2}, Lx2/i;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    array-length v1, v0

    const/4 v7, 0x1

    if-le v1, v7, :cond_18

    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide/from16 v32, v0

    :cond_18
    move-wide/from16 v48, v4

    :goto_e
    move-wide/from16 v4, v32

    goto/16 :goto_11

    :cond_19
    const-string v0, "#EXT-X-DISCONTINUITY-SEQUENCE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x3a

    if-eqz v0, :cond_1a

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/4 v14, 0x1

    goto/16 :goto_14

    :cond_1a
    const-string v0, "#EXT-X-DISCONTINUITY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_1b
    const-string v0, "#EXT-X-PROGRAM-DATE-TIME"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-wide/16 v7, 0x0

    cmp-long v0, v12, v7

    if-nez v0, :cond_e

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    sget-object v1, Lb3/n;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_21

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1c

    goto :goto_f

    :cond_1c
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Z"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :goto_f
    const/4 v0, 0x0

    goto :goto_10

    :cond_1d
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    mul-int/lit8 v0, v0, -0x1

    :cond_1e
    :goto_10
    new-instance v4, Ljava/util/GregorianCalendar;

    const-string v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v36, v5, -0x1

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v34, v4

    invoke-virtual/range {v34 .. v40}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1f

    new-instance v7, Ljava/math/BigDecimal;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, "0."

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v7, v1}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    const/16 v5, 0xe

    invoke-virtual {v4, v5, v1}, Ljava/util/Calendar;->set(II)V

    :cond_1f
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    if-eqz v0, :cond_20

    const v1, 0xea60

    mul-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v4, v0

    .line 22
    :cond_20
    invoke-static {v4, v5}, Lf2/d;->a(J)J

    move-result-wide v0

    sub-long v0, v0, v46

    move-wide v12, v0

    goto/16 :goto_e

    :goto_11
    move-object/from16 v0, p0

    :goto_12
    move/from16 v14, v67

    goto :goto_15

    .line 23
    :cond_21
    new-instance v1, Lf2/z;

    const-string v2, "Invalid date/time format: "

    .line 24
    invoke-static {v2, v0}, La1/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-direct {v1, v0}, Lf2/z;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    const-string v0, "#EXT-X-GAP"

    .line 26
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 v45, 0x1

    :goto_13
    move/from16 v14, v67

    goto :goto_14

    :cond_23
    const-string v0, "#EXT-X-INDEPENDENT-SEGMENTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v1, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v4, v32

    goto/16 :goto_6

    :cond_24
    const-string v0, "#EXT-X-ENDLIST"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 v22, 0x1

    goto :goto_13

    :goto_14
    move-object/from16 v0, p0

    move-wide/from16 v4, v32

    :goto_15
    move/from16 v1, v66

    goto/16 :goto_7

    :cond_25
    const-string v0, "#"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    if-nez v24, :cond_26

    const/4 v0, 0x0

    :goto_16
    move-object/from16 v40, v0

    goto :goto_17

    :cond_26
    if-eqz v25, :cond_27

    move-object/from16 v40, v25

    goto :goto_17

    :cond_27
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :goto_17
    const-wide/16 v0, 0x1

    add-long v26, v26, v0

    cmp-long v0, v48, v30

    if-nez v0, :cond_28

    const-wide/16 v7, 0x0

    goto :goto_18

    :cond_28
    move-wide/from16 v7, v32

    :goto_18
    if-nez v28, :cond_2b

    invoke-virtual {v3}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v5, 0x0

    new-array v14, v5, [Lj2/a;

    invoke-interface {v1, v14}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lj2/a;

    new-instance v14, Lj2/b;

    const/4 v5, 0x1

    .line 27
    invoke-direct {v14, v10, v5, v1}, Lj2/b;-><init>(Ljava/lang/String;Z[Lj2/a;)V

    if-nez v23, :cond_2a

    .line 28
    array-length v5, v1

    new-array v5, v5, [Lj2/a;

    move-object/from16 v50, v3

    move-object/from16 v28, v14

    const/4 v3, 0x0

    :goto_19
    array-length v14, v1

    if-ge v3, v14, :cond_29

    aget-object v14, v1, v3

    move-object/from16 v30, v1

    .line 29
    new-instance v1, Lj2/a;

    move-object/from16 v51, v6

    .line 30
    iget-object v6, v14, Lj2/a;->c:Ljava/lang/String;

    move/from16 v52, v9

    .line 31
    iget-object v9, v14, Lj2/a;->d:Ljava/lang/String;

    iget-object v14, v14, Lj2/a;->b:Ljava/util/UUID;

    move-wide/from16 v53, v12

    const/4 v12, 0x0

    invoke-direct {v1, v14, v6, v9, v12}, Lj2/a;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 32
    aput-object v1, v5, v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v30

    move-object/from16 v6, v51

    move/from16 v9, v52

    move-wide/from16 v12, v53

    goto :goto_19

    :cond_29
    move-object/from16 v51, v6

    move/from16 v52, v9

    move-wide/from16 v53, v12

    new-instance v1, Lj2/b;

    const/4 v3, 0x1

    .line 33
    invoke-direct {v1, v10, v3, v5}, Lj2/b;-><init>(Ljava/lang/String;Z[Lj2/a;)V

    move-object/from16 v23, v1

    goto :goto_1a

    :cond_2a
    move-object/from16 v50, v3

    move-object/from16 v51, v6

    move/from16 v52, v9

    move-wide/from16 v53, v12

    move-object/from16 v28, v14

    goto :goto_1a

    :cond_2b
    move-object/from16 v50, v3

    move-object/from16 v51, v6

    move/from16 v52, v9

    move-wide/from16 v53, v12

    .line 34
    :goto_1a
    new-instance v1, Lx2/f;

    invoke-static {v4, v2}, Lx2/i;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v30, v1

    move-object/from16 v32, v29

    move-wide/from16 v33, v64

    move/from16 v35, v11

    move-wide/from16 v36, v46

    move-object/from16 v38, v28

    move-object/from16 v39, v24

    move-wide/from16 v41, v7

    move-wide/from16 v43, v48

    invoke-direct/range {v30 .. v45}, Lx2/f;-><init>(Ljava/lang/String;Lx2/f;JIJLj2/b;Ljava/lang/String;Ljava/lang/String;JJZ)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-long v46, v46, v64

    if-eqz v0, :cond_2c

    add-long v7, v7, v48

    :cond_2c
    move-object/from16 v0, p0

    move-object/from16 v3, v50

    move-object/from16 v6, v51

    move/from16 v9, v52

    move-wide/from16 v12, v53

    move/from16 v1, v66

    move/from16 v14, v67

    move-wide/from16 v4, v68

    move-wide/from16 v70, v16

    move/from16 v16, v18

    move-wide/from16 v17, v19

    move/from16 v19, v21

    move/from16 v20, v22

    move-wide/from16 v21, v7

    move-wide/from16 v7, v70

    goto/16 :goto_0

    :goto_1b
    move-object/from16 v0, p0

    move-wide/from16 v4, v32

    move-object/from16 v3, v50

    move-object/from16 v6, v51

    move/from16 v9, v52

    move-wide/from16 v12, v53

    goto/16 :goto_5

    :cond_2d
    move/from16 v66, v1

    move-object/from16 v51, v6

    move-wide/from16 v68, v7

    move/from16 v52, v9

    move-wide/from16 v53, v12

    move/from16 v67, v14

    const/4 v0, 0x1

    new-instance v1, Lx2/g;

    const-wide/16 v2, 0x0

    cmp-long v2, v53, v2

    if-eqz v2, :cond_2e

    goto :goto_1c

    :cond_2e
    const/4 v0, 0x0

    :goto_1c
    move-object v3, v1

    move/from16 v4, v52

    move-object/from16 v5, p2

    move-object/from16 v6, v51

    move-wide/from16 v7, v68

    move-wide/from16 v9, v53

    move/from16 v11, v67

    move/from16 v12, v18

    move-wide/from16 v13, v19

    move-object v2, v15

    move/from16 v15, v21

    move/from16 v18, v66

    move/from16 v19, v22

    move/from16 v20, v0

    move-object/from16 v21, v23

    move-object/from16 v22, v2

    invoke-direct/range {v3 .. v22}, Lx2/g;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLj2/b;Ljava/util/List;)V

    return-object v1
.end method

.method public static f(Ljava/lang/String;Ljava/util/regex/Pattern;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "YES"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static g(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2, p3}, Lx2/i;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    :goto_0
    return-object p2
.end method

.method public static h(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, p2}, Lx2/i;->g(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    return-object p2

    .line 9
    :cond_0
    new-instance p2, Lf2/z;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Couldn\'t match "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " in "

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {p2, p0}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p2
.end method

.method public static i(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lx2/i;->P:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(Landroid/net/Uri;La3/k;)Ljava/lang/Object;
    .locals 8

    .line 1
    new-instance v0, Ljava/io/BufferedReader;

    .line 2
    .line 3
    new-instance v1, Ljava/io/InputStreamReader;

    .line 4
    .line 5
    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Ljava/util/ArrayDeque;

    .line 12
    .line 13
    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/16 v2, 0xef

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/16 v2, 0xbb

    .line 30
    .line 31
    if-ne v1, v2, :cond_9

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/16 v2, 0xbf

    .line 38
    .line 39
    if-eq v1, v2, :cond_0

    .line 40
    .line 41
    goto :goto_5

    .line 42
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    :cond_1
    :goto_0
    const/4 v2, -0x1

    .line 47
    if-eq v1, v2, :cond_2

    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto/16 :goto_9

    .line 62
    .line 63
    :cond_2
    move v4, v3

    .line 64
    :goto_1
    const/4 v5, 0x7

    .line 65
    if-ge v4, v5, :cond_4

    .line 66
    .line 67
    const-string v5, "#EXTM3U"

    .line 68
    .line 69
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eq v1, v5, :cond_3

    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    add-int/lit8 v4, v4, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    :goto_2
    const/16 v4, 0xd

    .line 84
    .line 85
    const/16 v5, 0xa

    .line 86
    .line 87
    const/4 v6, 0x1

    .line 88
    if-eq v1, v2, :cond_7

    .line 89
    .line 90
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-eqz v7, :cond_7

    .line 95
    .line 96
    sget v7, Lb3/n;->a:I

    .line 97
    .line 98
    if-eq v1, v5, :cond_6

    .line 99
    .line 100
    if-ne v1, v4, :cond_5

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_5
    move v7, v3

    .line 104
    goto :goto_4

    .line 105
    :cond_6
    :goto_3
    move v7, v6

    .line 106
    :goto_4
    if-nez v7, :cond_7

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    goto :goto_2

    .line 113
    :cond_7
    sget v2, Lb3/n;->a:I

    .line 114
    .line 115
    if-eq v1, v5, :cond_8

    .line 116
    .line 117
    if-ne v1, v4, :cond_9

    .line 118
    .line 119
    :cond_8
    move v3, v6

    .line 120
    :cond_9
    :goto_5
    if-eqz v3, :cond_f

    .line 121
    .line 122
    :goto_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-eqz v1, :cond_e

    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_a

    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_a
    const-string v2, "#EXT-X-STREAM-INF"

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_b

    .line 146
    .line 147
    invoke-virtual {p2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    new-instance v1, Lf0/k;

    .line 151
    .line 152
    invoke-direct {v1, p2, v0}, Lf0/k;-><init>(Ljava/util/ArrayDeque;Ljava/io/BufferedReader;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {v1, p1}, Lx2/i;->d(Lf0/k;Ljava/lang/String;)Lx2/e;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    goto :goto_8

    .line 164
    :cond_b
    const-string v2, "#EXT-X-TARGETDURATION"

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-nez v2, :cond_d

    .line 171
    .line 172
    const-string v2, "#EXT-X-MEDIA-SEQUENCE"

    .line 173
    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-nez v2, :cond_d

    .line 179
    .line 180
    const-string v2, "#EXTINF"

    .line 181
    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-nez v2, :cond_d

    .line 187
    .line 188
    const-string v2, "#EXT-X-KEY"

    .line 189
    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    if-nez v2, :cond_d

    .line 195
    .line 196
    const-string v2, "#EXT-X-BYTERANGE"

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-nez v2, :cond_d

    .line 203
    .line 204
    const-string v2, "#EXT-X-DISCONTINUITY"

    .line 205
    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-nez v2, :cond_d

    .line 211
    .line 212
    const-string v2, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 213
    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-nez v2, :cond_d

    .line 219
    .line 220
    const-string v2, "#EXT-X-ENDLIST"

    .line 221
    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_c

    .line 227
    .line 228
    goto :goto_7

    .line 229
    :cond_c
    invoke-virtual {p2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    goto :goto_6

    .line 233
    :cond_d
    :goto_7
    invoke-virtual {p2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    iget-object v1, p0, Lx2/i;->f:Lx2/e;

    .line 237
    .line 238
    new-instance v2, Lf0/k;

    .line 239
    .line 240
    invoke-direct {v2, p2, v0}, Lf0/k;-><init>(Ljava/util/ArrayDeque;Ljava/io/BufferedReader;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-static {v1, v2, p1}, Lx2/i;->e(Lx2/e;Lf0/k;Ljava/lang/String;)Lx2/g;

    .line 248
    .line 249
    .line 250
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :goto_8
    sget p2, Lb3/n;->a:I

    .line 252
    .line 253
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 254
    .line 255
    .line 256
    :catch_0
    return-object p1

    .line 257
    :cond_e
    sget p1, Lb3/n;->a:I

    .line 258
    .line 259
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 260
    .line 261
    .line 262
    :catch_1
    new-instance p1, Lf2/z;

    .line 263
    .line 264
    const-string p2, "Failed to parse the playlist, could not identify any tags."

    .line 265
    .line 266
    invoke-direct {p1, p2}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw p1

    .line 270
    :cond_f
    :try_start_3
    new-instance p1, Lt2/y;

    .line 271
    .line 272
    invoke-direct {p1}, Lt2/y;-><init>()V

    .line 273
    .line 274
    .line 275
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 276
    :goto_9
    sget p2, Lb3/n;->a:I

    .line 277
    .line 278
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 279
    .line 280
    .line 281
    :catch_2
    throw p1
.end method
