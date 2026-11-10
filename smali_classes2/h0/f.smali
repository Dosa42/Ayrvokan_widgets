.class public final Lh0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/h;


# instance fields
.field public final a:Lh/a;

.field public final b:Landroid/net/ConnectivityManager;

.field public final c:Landroid/content/Context;

.field public final d:Ljava/net/URL;

.field public final e:Lr0/a;

.field public final f:Lr0/a;

.field public final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr0/a;Lr0/a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ll1/d;

    .line 5
    .line 6
    invoke-direct {v0}, Ll1/d;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Li0/c;->a:Li0/c;

    .line 10
    .line 11
    const-class v2, Li0/p;

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Ll1/d;->a(Ljava/lang/Class;Lj1/d;)Lk1/a;

    .line 14
    .line 15
    .line 16
    const-class v2, Li0/i;

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Ll1/d;->a(Ljava/lang/Class;Lj1/d;)Lk1/a;

    .line 19
    .line 20
    .line 21
    sget-object v1, Li0/f;->a:Li0/f;

    .line 22
    .line 23
    const-class v2, Li0/t;

    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Ll1/d;->a(Ljava/lang/Class;Lj1/d;)Lk1/a;

    .line 26
    .line 27
    .line 28
    const-class v2, Li0/m;

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Ll1/d;->a(Ljava/lang/Class;Lj1/d;)Lk1/a;

    .line 31
    .line 32
    .line 33
    sget-object v1, Li0/d;->a:Li0/d;

    .line 34
    .line 35
    const-class v2, Li0/r;

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Ll1/d;->a(Ljava/lang/Class;Lj1/d;)Lk1/a;

    .line 38
    .line 39
    .line 40
    const-class v2, Li0/j;

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Ll1/d;->a(Ljava/lang/Class;Lj1/d;)Lk1/a;

    .line 43
    .line 44
    .line 45
    sget-object v1, Li0/b;->a:Li0/b;

    .line 46
    .line 47
    const-class v2, Li0/a;

    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Ll1/d;->a(Ljava/lang/Class;Lj1/d;)Lk1/a;

    .line 50
    .line 51
    .line 52
    const-class v2, Li0/h;

    .line 53
    .line 54
    invoke-virtual {v0, v2, v1}, Ll1/d;->a(Ljava/lang/Class;Lj1/d;)Lk1/a;

    .line 55
    .line 56
    .line 57
    sget-object v1, Li0/e;->a:Li0/e;

    .line 58
    .line 59
    const-class v2, Li0/s;

    .line 60
    .line 61
    invoke-virtual {v0, v2, v1}, Ll1/d;->a(Ljava/lang/Class;Lj1/d;)Lk1/a;

    .line 62
    .line 63
    .line 64
    const-class v2, Li0/l;

    .line 65
    .line 66
    invoke-virtual {v0, v2, v1}, Ll1/d;->a(Ljava/lang/Class;Lj1/d;)Lk1/a;

    .line 67
    .line 68
    .line 69
    sget-object v1, Li0/g;->a:Li0/g;

    .line 70
    .line 71
    const-class v2, Li0/w;

    .line 72
    .line 73
    invoke-virtual {v0, v2, v1}, Ll1/d;->a(Ljava/lang/Class;Lj1/d;)Lk1/a;

    .line 74
    .line 75
    .line 76
    const-class v2, Li0/o;

    .line 77
    .line 78
    invoke-virtual {v0, v2, v1}, Ll1/d;->a(Ljava/lang/Class;Lj1/d;)Lk1/a;

    .line 79
    .line 80
    .line 81
    const/4 v1, 0x1

    .line 82
    iput-boolean v1, v0, Ll1/d;->d:Z

    .line 83
    .line 84
    new-instance v1, Lh/a;

    .line 85
    .line 86
    const/4 v2, 0x5

    .line 87
    invoke-direct {v1, v0, v2}, Lh/a;-><init>(Ljava/lang/Object;I)V

    .line 88
    .line 89
    .line 90
    iput-object v1, p0, Lh0/f;->a:Lh/a;

    .line 91
    .line 92
    iput-object p1, p0, Lh0/f;->c:Landroid/content/Context;

    .line 93
    .line 94
    const-string v0, "connectivity"

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 101
    .line 102
    iput-object p1, p0, Lh0/f;->b:Landroid/net/ConnectivityManager;

    .line 103
    .line 104
    sget-object p1, Lh0/a;->c:Ljava/lang/String;

    .line 105
    .line 106
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 107
    .line 108
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Lh0/f;->d:Ljava/net/URL;

    .line 112
    .line 113
    iput-object p3, p0, Lh0/f;->e:Lr0/a;

    .line 114
    .line 115
    iput-object p2, p0, Lh0/f;->f:Lr0/a;

    .line 116
    .line 117
    const p1, 0x1fbd0

    .line 118
    .line 119
    .line 120
    iput p1, p0, Lh0/f;->g:I

    .line 121
    .line 122
    return-void

    .line 123
    :catch_0
    move-exception p2

    .line 124
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 125
    .line 126
    const-string v0, "Invalid url: "

    .line 127
    .line 128
    invoke-static {v0, p1}, La1/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-direct {p3, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    throw p3
.end method


# virtual methods
.method public final a(Lj0/i;)Lj0/i;
    .locals 5

    .line 1
    iget-object v0, p0, Lh0/f;->b:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lj0/i;->c()Lj0/h;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    invoke-virtual {p1}, Lj0/h;->c()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v3, "sdk-version"

    .line 22
    .line 23
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const-string v1, "model"

    .line 27
    .line 28
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, v1, v2}, Lj0/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "hardware"

    .line 34
    .line 35
    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, v1, v2}, Lj0/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v1, "device"

    .line 41
    .line 42
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1, v1, v2}, Lj0/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v1, "product"

    .line 48
    .line 49
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1, v1, v2}, Lj0/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v1, "os-uild"

    .line 55
    .line 56
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, v1, v2}, Lj0/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v1, "manufacturer"

    .line 62
    .line 63
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p1, v1, v2}, Lj0/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v1, "fingerprint"

    .line 69
    .line 70
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p1, v1, v2}, Lj0/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    div-int/lit16 v1, v1, 0x3e8

    .line 95
    .line 96
    int-to-long v1, v1

    .line 97
    invoke-virtual {p1}, Lj0/h;->c()Ljava/util/Map;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v2, "tz-offset"

    .line 106
    .line 107
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    const/4 v1, -0x1

    .line 111
    if-nez v0, :cond_0

    .line 112
    .line 113
    sget-object v2, Li0/v;->a:Landroid/util/SparseArray;

    .line 114
    .line 115
    move v2, v1

    .line 116
    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    :goto_0
    invoke-virtual {p1}, Lj0/h;->c()Ljava/util/Map;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    const-string v4, "net-type"

    .line 130
    .line 131
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    const/4 v2, 0x0

    .line 135
    if-nez v0, :cond_1

    .line 136
    .line 137
    sget-object v0, Li0/u;->a:Landroid/util/SparseArray;

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-ne v0, v1, :cond_2

    .line 145
    .line 146
    sget-object v0, Li0/u;->a:Landroid/util/SparseArray;

    .line 147
    .line 148
    const/16 v0, 0x64

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_2
    sget-object v3, Li0/u;->a:Landroid/util/SparseArray;

    .line 152
    .line 153
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    check-cast v3, Li0/u;

    .line 158
    .line 159
    if-eqz v3, :cond_3

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_3
    :goto_1
    move v0, v2

    .line 163
    :goto_2
    invoke-virtual {p1}, Lj0/h;->c()Ljava/util/Map;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    const-string v4, "mobile-subtype"

    .line 172
    .line 173
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    const-string v3, "country"

    .line 185
    .line 186
    invoke-virtual {p1, v3, v0}, Lj0/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    const-string v3, "locale"

    .line 198
    .line 199
    invoke-virtual {p1, v3, v0}, Lj0/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lh0/f;->c:Landroid/content/Context;

    .line 203
    .line 204
    const-string v3, "phone"

    .line 205
    .line 206
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 211
    .line 212
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    const-string v4, "mcc_mnc"

    .line 217
    .line 218
    invoke-virtual {p1, v4, v3}, Lj0/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :catch_0
    const-string v0, "CctTransportBackend"

    .line 237
    .line 238
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->Q(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    const-string v1, "application_build"

    .line 246
    .line 247
    invoke-virtual {p1, v1, v0}, Lj0/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1}, Lj0/h;->b()Lj0/i;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    return-object p1
.end method
