.class public abstract Lcom/google/android/gms/internal/play_billing/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk1/a;


# static fields
.field public static a:Lh/a; = null

.field public static b:Lh/a; = null

.field public static c:Ljava/lang/ThreadGroup; = null

.field public static final d:[I

.field public static final e:[Ljava/lang/Object;

.field public static final f:[I

.field public static final g:Ll1/a;

.field public static h:I = -0x1

.field public static i:Z

.field public static j:Ljava/lang/String;

.field public static final k:Lc/a;

.field public static final l:Lc/a;

.field public static final m:[Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static final o:Lc/a;

.field public static p:Z

.field public static q:Ljava/io/File;

.field public static r:Ljava/io/File;

.field public static s:Ljava/io/File;

.field public static t:Ljava/io/File;

.field public static u:Ljava/io/File;

.field public static v:[Ljava/io/File;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    sput-object v1, Lcom/google/android/gms/internal/play_billing/i0;->d:[I

    .line 6
    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->e:[Ljava/lang/Object;

    .line 10
    .line 11
    const/16 v0, 0xe

    .line 12
    .line 13
    new-array v0, v0, [I

    .line 14
    .line 15
    .line 16
    fill-array-data v0, :array_0

    .line 17
    .line 18
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->f:[I

    .line 19
    .line 20
    new-instance v0, Ll1/a;

    .line 21
    const/4 v1, 0x2

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Ll1/a;-><init>(I)V

    .line 25
    .line 26
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->g:Ll1/a;

    .line 27
    .line 28
    new-instance v0, Lc/a;

    .line 29
    const/4 v1, 0x5

    .line 30
    const/4 v2, 0x0

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Lc/a;-><init>(II)V

    .line 34
    .line 35
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->k:Lc/a;

    .line 36
    .line 37
    new-instance v0, Lc/a;

    .line 38
    const/4 v1, 0x7

    .line 39
    const/4 v2, 0x0

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1, v2}, Lc/a;-><init>(II)V

    .line 43
    .line 44
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->l:Lc/a;

    .line 45
    .line 46
    const-string v0, "RjQ1OTNGOTEzREFFRDQwQTM2RTJFMUVCQzdBREQ0QUQ2QUE2OUM1Qw"

    .line 47
    .line 48
    .line 49
    filled-new-array {v0}, [Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->m:[Ljava/lang/String;

    .line 53
    .line 54
    new-instance v0, Lc/a;

    .line 55
    .line 56
    const/16 v1, 0x9

    .line 57
    const/4 v2, 0x0

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v1, v2}, Lc/a;-><init>(II)V

    .line 61
    .line 62
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->o:Lc/a;

    .line 63
    return-void

    .line 64
    nop

    .line 65
    :array_0
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A0(Landroid/os/Parcel;II)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/i0;->a0(Landroid/os/Parcel;I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance v0, Landroidx/fragment/app/b;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Expected size "

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string p2, " got "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string p1, " (0x"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p1, ")"

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v1, p1}, La1/b;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p1, p0}, Landroidx/fragment/app/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 46
    throw v0
.end method

.method public static B(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    :goto_0
    if-eqz v0, :cond_1

    .line 4
    .line 5
    instance-of v1, v0, Ljava/net/UnknownHostException;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    .line 17
    :goto_1
    if-eqz v0, :cond_2

    .line 18
    .line 19
    const-string p0, "UnknownHostException (no network)"

    .line 20
    goto :goto_2

    .line 21
    .line 22
    .line 23
    :cond_2
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    .line 30
    const-string v0, "\t"

    .line 31
    .line 32
    const-string v1, "    "

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    .line 38
    .line 39
    :goto_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    const-string v0, "\n  "

    .line 45
    .line 46
    const-string v1, "\n"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 50
    :cond_3
    return-void
.end method

.method public static B0(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p1, v1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static C(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const/16 v0, 0xb

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    const/4 p0, 0x0

    .line 17
    :goto_0
    return-object p0
.end method

.method public static D(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance v0, Landroidx/fragment/app/b;

    .line 10
    .line 11
    const-string v1, "Overread allowed size end="

    .line 12
    .line 13
    .line 14
    invoke-static {v1, p1}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p1, p0}, Landroidx/fragment/app/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 19
    throw v0
.end method

.method public static E(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0
.end method

.method public static F()Ljava/security/PublicKey;
    .locals 3

    .line 1
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA0wvk/CE/j+KyOYvhpMIebnNdifyRZEeRvAsKrybliBKgOUCZYf22DUuOahLY/xIIMhpTBtZ0n9IHG0m1/4OSyhgGECuITvMx3vzNxhV+YB4KwZ/DR0K0GCHrtgUx/jyBX8+LhLKQZH56PSf+h3TEXP/QZfsVOugaGtZL89UtYQaQC4+rY8rxGIbm9gtwdgIohF10tEgeccZKpbB9gmD/6JJzNXzBapNhxuG8lw3NIhfSwR1DrPqfpv++VJ0SpKMxHJN5OTq5x3E8/tFwpCszhgr2Cg5sVPMuZz01KhoSQc/XySVj3EteIoECHywn6S18iyyjhB5psJPG8uFhWZNhUQIDAQAB"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid key specification: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAP"

    invoke-static {v1, v0}, Lo1/m;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static G(I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    const v2, 0x46180400    # 9729.0f

    invoke-static {p0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    invoke-static {p0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    const v2, 0x47012f00    # 33071.0f

    invoke-static {p0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2803

    invoke-static {p0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const-string p0, "generateTexture"

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/i0;->j(Ljava/lang/String;)V

    return v0
.end method

.method public static H(Landroid/content/Context;)[Ljava/lang/String;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v2, 0x1c

    .line 6
    .line 7
    if-lt v1, v2, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    const/high16 v2, 0x8000000

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Lj/f;->c(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningInfo;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lj/f;->l(Landroid/content/pm/SigningInfo;)Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Lj/f;->n(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;

    .line 35
    move-result-object p0

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-static {p0}, Lj/f;->t(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;

    .line 40
    move-result-object p0

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    const/16 v2, 0x40

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 55
    move-result-object p0

    .line 56
    .line 57
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    :goto_0
    array-length v1, p0

    .line 59
    .line 60
    new-array v1, v1, [Ljava/lang/String;

    .line 61
    const/4 v2, 0x0

    .line 62
    move v3, v2

    .line 63
    :goto_1
    array-length v4, p0

    .line 64
    .line 65
    if-ge v3, v4, :cond_3

    .line 66
    .line 67
    aget-object v4, p0, v3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 71
    move-result-object v4

    .line 72
    .line 73
    :try_start_1
    const-string v5, "SHA1"

    .line 74
    .line 75
    .line 76
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 77
    move-result-object v5
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    .line 84
    move-result-object v4

    .line 85
    goto :goto_2

    .line 86
    :catch_0
    move-exception v4

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    move-object v4, v0

    .line 91
    .line 92
    :goto_2
    const/16 v5, 0x10

    .line 93
    .line 94
    new-array v5, v5, [C

    .line 95
    .line 96
    .line 97
    fill-array-data v5, :array_0

    .line 98
    array-length v6, v4

    .line 99
    .line 100
    shl-int/lit8 v6, v6, 0x1

    .line 101
    .line 102
    new-array v7, v6, [C

    .line 103
    move v8, v2

    .line 104
    .line 105
    :goto_3
    if-ge v8, v6, :cond_2

    .line 106
    .line 107
    shr-int/lit8 v9, v8, 0x1

    .line 108
    .line 109
    aget-byte v9, v4, v9

    .line 110
    .line 111
    and-int/lit16 v9, v9, 0xff

    .line 112
    .line 113
    ushr-int/lit8 v10, v9, 0x4

    .line 114
    .line 115
    aget-char v10, v5, v10

    .line 116
    .line 117
    aput-char v10, v7, v8

    .line 118
    .line 119
    add-int/lit8 v10, v8, 0x1

    .line 120
    .line 121
    and-int/lit8 v9, v9, 0xf

    .line 122
    .line 123
    aget-char v9, v5, v9

    .line 124
    .line 125
    aput-char v9, v7, v10

    .line 126
    .line 127
    add-int/lit8 v8, v8, 0x2

    .line 128
    goto :goto_3

    .line 129
    .line 130
    :cond_2
    new-instance v4, Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([C)V

    .line 134
    .line 135
    aput-object v4, v1, v3

    .line 136
    .line 137
    add-int/lit8 v3, v3, 0x1

    .line 138
    goto :goto_1

    .line 139
    :cond_3
    return-object v1

    .line 140
    :catch_1
    move-exception p0

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    return-object v0

    .line 145
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static I(Lcom/nomone/vr_desktop/LaunchActivity;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    const-string v1, "assets/"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, p1}, La1/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    return-object v0
.end method

.method public static J()I
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lo1/a1;

    invoke-direct {v1}, Lo1/a1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_1
    return v0
.end method

.method public static K()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static L(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 13

    .line 1
    .line 2
    new-instance v0, Ljava/util/Locale;

    .line 3
    .line 4
    const-string v1, "en"

    .line 5
    .line 6
    const-string v2, "US"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    const-string v0, "<pre>"

    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    sget-object v3, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 21
    .line 22
    const-string v4, "App Info"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v3, v4}, La1/b;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    sget-object v3, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 36
    .line 37
    const-string v4, "<br>========"

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v3, v4}, La1/b;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    sget-object v3, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v3, "<br>Installation ID  : "

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    sget-object v3, Lo1/y;->a:Landroid/content/SharedPreferences;

    .line 61
    .line 62
    if-nez v3, :cond_0

    .line 63
    .line 64
    .line 65
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    sput-object v3, Lo1/y;->a:Landroid/content/SharedPreferences;

    .line 69
    .line 70
    :cond_0
    sget-object v3, Lo1/y;->a:Landroid/content/SharedPreferences;

    .line 71
    .line 72
    const-string v4, "Installation ID"

    .line 73
    const/4 v5, 0x0

    .line 74
    .line 75
    .line 76
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v3

    .line 78
    .line 79
    if-nez v3, :cond_1

    .line 80
    .line 81
    .line 82
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 83
    move-result-object v3

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 88
    .line 89
    .line 90
    invoke-static {v4, v3}, Lo1/y;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 100
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    sget-object v3, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v3, "<br>Installation date: "

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    new-instance v3, Ljava/util/Date;

    .line 117
    .line 118
    sget-object v4, Lo1/y;->a:Landroid/content/SharedPreferences;

    .line 119
    .line 120
    const-string v6, "Server signature"

    .line 121
    .line 122
    const-wide/16 v7, 0x0

    .line 123
    .line 124
    .line 125
    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 126
    move-result-wide v6

    .line 127
    .line 128
    .line 129
    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 130
    .line 131
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 132
    .line 133
    const-string v6, "yyyy-MM-dd HH:mm:ss"

    .line 134
    .line 135
    .line 136
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 137
    move-result-object v7

    .line 138
    .line 139
    .line 140
    invoke-direct {v4, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 141
    .line 142
    const-string v6, "UTC"

    .line 143
    .line 144
    .line 145
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 146
    move-result-object v6

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 153
    move-result-object v3

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 163
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    sget-object v3, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string v3, "<br>Installing app   : "

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 181
    move-result-object v3

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 185
    move-result-object v4

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    move-result-object v3

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 193
    move-result-object v4

    .line 194
    const/4 v6, 0x0

    .line 195
    .line 196
    .line 197
    :try_start_0
    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 198
    move-result-object v3

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 202
    move-result-object v3

    .line 203
    .line 204
    .line 205
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 206
    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    goto :goto_0

    .line 208
    :catch_0
    move-object v3, v5

    .line 209
    .line 210
    .line 211
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string v3, " ("

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 220
    move-result-object v3

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 224
    move-result-object v4

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    move-result-object v3

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string v3, ")"

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object v0

    .line 241
    .line 242
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 243
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    sget-object v3, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 250
    .line 251
    const-string v4, "<br>Version name     : 1.9.3-GooglePlay"

    .line 252
    .line 253
    .line 254
    invoke-static {v0, v3, v4}, La1/b;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    move-result-object v0

    .line 256
    .line 257
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 258
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .line 264
    sget-object v3, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 265
    .line 266
    const-string v4, "<br>Version code     : 49"

    .line 267
    .line 268
    .line 269
    invoke-static {v0, v3, v4}, La1/b;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    move-result-object v0

    .line 271
    .line 272
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 273
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    sget-object v3, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    const-string v3, "<br>Installation ABI : "

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/i0;->M(Landroid/content/Context;)Ljava/lang/String;

    .line 291
    move-result-object v3

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    move-result-object v0

    .line 299
    .line 300
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 301
    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .line 307
    sget-object v3, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    const-string v3, "<br>Localization lang: "

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 319
    move-result-object v3

    .line 320
    .line 321
    const/high16 v4, 0x7f0b0000

    .line 322
    .line 323
    .line 324
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 325
    move-result-object v3

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    move-result-object v0

    .line 333
    .line 334
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/i0;->V(Landroid/content/Context;)Z

    .line 338
    move-result v0

    .line 339
    .line 340
    const/16 v3, 0xc

    .line 341
    .line 342
    const/16 v4, 0xb

    .line 343
    .line 344
    const-string v7, "Scroll y correction"

    .line 345
    const/4 v8, 0x1

    .line 346
    .line 347
    if-eqz v0, :cond_5

    .line 348
    .line 349
    if-nez p1, :cond_7

    .line 350
    .line 351
    new-instance p1, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .line 356
    sget-object v0, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 357
    .line 358
    const-string v9, "<br>CRACKED!         : true"

    .line 359
    .line 360
    .line 361
    invoke-static {p1, v0, v9}, La1/b;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 362
    move-result-object p1

    .line 363
    .line 364
    sput-object p1, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 365
    .line 366
    new-instance p1, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .line 371
    sget-object v0, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    const-string v0, "<br>Signature changed: "

    .line 377
    .line 378
    .line 379
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/i0;->q0(Landroid/content/Context;)Z

    .line 383
    move-result v0

    .line 384
    .line 385
    if-eqz v0, :cond_2

    .line 386
    .line 387
    const-string v0, "false"

    .line 388
    goto :goto_2

    .line 389
    .line 390
    .line 391
    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/i0;->H(Landroid/content/Context;)[Ljava/lang/String;

    .line 392
    move-result-object v0

    .line 393
    .line 394
    if-nez v0, :cond_3

    .line 395
    move-object v0, v5

    .line 396
    goto :goto_2

    .line 397
    .line 398
    :cond_3
    aget-object v9, v0, v6

    .line 399
    move v10, v8

    .line 400
    :goto_1
    array-length v11, v0

    .line 401
    .line 402
    if-ge v10, v11, :cond_4

    .line 403
    .line 404
    new-instance v11, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    const-string v9, ","

    .line 413
    .line 414
    .line 415
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    aget-object v9, v0, v10

    .line 418
    .line 419
    .line 420
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    move-result-object v9

    .line 425
    .line 426
    add-int/lit8 v10, v10, 0x1

    .line 427
    goto :goto_1

    .line 428
    :cond_4
    move-object v0, v9

    .line 429
    .line 430
    .line 431
    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    goto :goto_4

    .line 433
    .line 434
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .line 439
    sget-object v0, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    const-string v0, "<br>Purchased        : "

    .line 445
    .line 446
    .line 447
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-static {v7, v4}, Lo1/y;->c(Ljava/lang/String;I)I

    .line 451
    move-result v0

    .line 452
    .line 453
    if-ne v0, v3, :cond_6

    .line 454
    move v0, v8

    .line 455
    goto :goto_3

    .line 456
    :cond_6
    move v0, v6

    .line 457
    .line 458
    .line 459
    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    :goto_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    move-result-object p1

    .line 464
    .line 465
    sput-object p1, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    :cond_7
    invoke-static {v7, v4}, Lo1/y;->c(Ljava/lang/String;I)I

    .line 469
    move-result p1

    .line 470
    .line 471
    if-ne p1, v3, :cond_8

    .line 472
    move p1, v8

    .line 473
    goto :goto_5

    .line 474
    :cond_8
    move p1, v6

    .line 475
    .line 476
    :goto_5
    if-eqz p1, :cond_9

    .line 477
    .line 478
    new-instance p1, Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .line 483
    sget-object v0, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    const-string v0, "<br>Order ID         : "

    .line 489
    .line 490
    .line 491
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    sget-object v0, Lo1/y;->a:Landroid/content/SharedPreferences;

    .line 494
    .line 495
    const-string v3, "Border ID"

    .line 496
    .line 497
    .line 498
    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 499
    move-result-object v0

    .line 500
    .line 501
    .line 502
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    move-result-object p1

    .line 507
    .line 508
    sput-object p1, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 509
    .line 510
    :cond_9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 511
    .line 512
    const/16 v0, 0x1f

    .line 513
    .line 514
    if-lt p1, v0, :cond_a

    .line 515
    .line 516
    new-instance p1, Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .line 521
    sget-object v3, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    const-string v3, "<br>PPK fixed        : "

    .line 527
    .line 528
    .line 529
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-static {}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->p()Z

    .line 533
    move-result v3

    .line 534
    .line 535
    .line 536
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 540
    move-result-object p1

    .line 541
    .line 542
    sput-object p1, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 543
    .line 544
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    .line 549
    sget-object v3, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    const-string v3, "<br>Hardware acc.    : "

    .line 555
    .line 556
    .line 557
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    sget-object v3, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g:Ljava/lang/String;

    .line 560
    .line 561
    const-string v3, "Settings_Linux_HardwareAcceleration"

    .line 562
    .line 563
    .line 564
    invoke-static {v3, v6}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 565
    move-result v3

    .line 566
    .line 567
    .line 568
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 572
    move-result-object p1

    .line 573
    .line 574
    sput-object p1, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 575
    .line 576
    new-instance p1, Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    .line 581
    sget-object v3, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    const-string v3, "<br>Safe mode        : "

    .line 587
    .line 588
    .line 589
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    const-string v3, "Settings_Linux_SafeMode"

    .line 592
    .line 593
    .line 594
    invoke-static {v3, v6}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 595
    move-result v3

    .line 596
    .line 597
    .line 598
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 602
    move-result-object p1

    .line 603
    .line 604
    sput-object p1, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 605
    .line 606
    new-instance p1, Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    .line 611
    sget-object v3, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    const-string v3, "<br>HrdwrBuff aligned: "

    .line 617
    .line 618
    .line 619
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    sget-object v3, Lcom/nomone/vr_desktop/X11/NomX;->a:Lcom/nomone/browser_module/OpenGLView;

    .line 622
    .line 623
    const-string v3, "Info_AHardwareBuffer16ByteAligned"

    .line 624
    .line 625
    .line 626
    invoke-static {v3, v8}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 627
    move-result v3

    .line 628
    .line 629
    .line 630
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 634
    move-result-object p1

    .line 635
    .line 636
    sput-object p1, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 637
    .line 638
    new-instance p1, Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    .line 643
    sget-object v3, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 644
    .line 645
    const-string v4, "<br>"

    .line 646
    .line 647
    .line 648
    invoke-static {p1, v3, v4}, La1/b;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 649
    move-result-object p1

    .line 650
    .line 651
    sput-object p1, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 652
    .line 653
    new-instance p1, Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 657
    .line 658
    sget-object v3, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 659
    .line 660
    const-string v7, "<br>Device Info"

    .line 661
    .line 662
    .line 663
    invoke-static {p1, v3, v7}, La1/b;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 664
    move-result-object p1

    .line 665
    .line 666
    sput-object p1, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 667
    .line 668
    new-instance p1, Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 672
    .line 673
    sget-object v3, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 674
    .line 675
    const-string v7, "<br>==========="

    .line 676
    .line 677
    .line 678
    invoke-static {p1, v3, v7}, La1/b;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 679
    move-result-object p1

    .line 680
    .line 681
    sput-object p1, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 682
    .line 683
    new-instance p1, Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 687
    .line 688
    sget-object v3, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    new-instance v3, Ljava/util/Locale;

    .line 697
    .line 698
    .line 699
    invoke-direct {v3, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    .line 702
    .line 703
    const-string v2, "Name             : "

    .line 704
    .line 705
    .line 706
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/i0;->K()Ljava/lang/String;

    .line 710
    move-result-object v2

    .line 711
    .line 712
    .line 713
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 717
    move-result-object v1

    .line 718
    .line 719
    sput-object v1, Lcom/google/android/gms/internal/play_billing/i0;->j:Ljava/lang/String;

    .line 720
    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 725
    .line 726
    sget-object v2, Lcom/google/android/gms/internal/play_billing/i0;->j:Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    const-string v2, "<br>Android          : "

    .line 732
    .line 733
    .line 734
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    const-class v2, Landroid/os/Build$VERSION_CODES;

    .line 737
    .line 738
    .line 739
    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    .line 740
    move-result-object v4

    .line 741
    array-length v7, v4

    .line 742
    move v9, v6

    .line 743
    .line 744
    :goto_6
    if-ge v9, v7, :cond_c

    .line 745
    .line 746
    aget-object v10, v4, v9

    .line 747
    .line 748
    .line 749
    :try_start_1
    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 750
    move-result v11

    .line 751
    .line 752
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 753
    .line 754
    if-ne v11, v12, :cond_b

    .line 755
    .line 756
    .line 757
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 758
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 759
    goto :goto_7

    .line 760
    :catch_1
    move-exception v10

    .line 761
    .line 762
    .line 763
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 764
    .line 765
    :cond_b
    add-int/lit8 v9, v9, 0x1

    .line 766
    goto :goto_6

    .line 767
    .line 768
    :cond_c
    const-string v2, "Unknown"

    .line 769
    .line 770
    .line 771
    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 775
    move-result-object v1

    .line 776
    .line 777
    sput-object v1, Lcom/google/android/gms/internal/play_billing/i0;->j:Ljava/lang/String;

    .line 778
    .line 779
    new-instance v1, Ljava/lang/StringBuilder;

    .line 780
    .line 781
    .line 782
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 783
    .line 784
    sget-object v2, Lcom/google/android/gms/internal/play_billing/i0;->j:Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    .line 789
    const-string v2, "<br>Ram              : "

    .line 790
    .line 791
    .line 792
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    .line 794
    .line 795
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/i0;->R(Landroid/content/Context;)J

    .line 796
    move-result-wide v9

    .line 797
    .line 798
    .line 799
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/play_billing/i0;->k0(J)Ljava/lang/String;

    .line 800
    move-result-object v2

    .line 801
    .line 802
    .line 803
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 807
    move-result-object v1

    .line 808
    .line 809
    sput-object v1, Lcom/google/android/gms/internal/play_billing/i0;->j:Ljava/lang/String;

    .line 810
    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 815
    .line 816
    sget-object v2, Lcom/google/android/gms/internal/play_billing/i0;->j:Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    const-string v2, "<br>ABI              : "

    .line 822
    .line 823
    .line 824
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    .line 826
    const-string v2, "os.arch"

    .line 827
    .line 828
    .line 829
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 830
    move-result-object v2

    .line 831
    .line 832
    .line 833
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    .line 835
    .line 836
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 837
    move-result-object v1

    .line 838
    .line 839
    sput-object v1, Lcom/google/android/gms/internal/play_billing/i0;->j:Ljava/lang/String;

    .line 840
    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    .line 842
    .line 843
    .line 844
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 845
    .line 846
    sget-object v2, Lcom/google/android/gms/internal/play_billing/i0;->j:Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    const-string v2, "<br>Cores            : "

    .line 852
    .line 853
    .line 854
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/i0;->J()I

    .line 858
    move-result v2

    .line 859
    .line 860
    .line 861
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 862
    .line 863
    .line 864
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 865
    move-result-object v1

    .line 866
    .line 867
    sput-object v1, Lcom/google/android/gms/internal/play_billing/i0;->j:Ljava/lang/String;

    .line 868
    .line 869
    new-instance v1, Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 873
    .line 874
    sget-object v2, Lcom/google/android/gms/internal/play_billing/i0;->j:Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    .line 879
    const-string v2, "<br>Chipset          : "

    .line 880
    .line 881
    .line 882
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    .line 884
    new-instance v2, Ljava/util/ArrayList;

    .line 885
    .line 886
    .line 887
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 888
    .line 889
    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    .line 894
    .line 895
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 896
    move-result-object v4

    .line 897
    .line 898
    const-string v7, "getprop ro.board.platform"

    .line 899
    .line 900
    .line 901
    invoke-virtual {v4, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 902
    move-result-object v4

    .line 903
    .line 904
    new-instance v7, Ljava/io/BufferedReader;

    .line 905
    .line 906
    new-instance v9, Ljava/io/InputStreamReader;

    .line 907
    .line 908
    .line 909
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 910
    move-result-object v4

    .line 911
    .line 912
    .line 913
    invoke-direct {v9, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 914
    .line 915
    .line 916
    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 917
    .line 918
    .line 919
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 920
    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 921
    .line 922
    .line 923
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 924
    goto :goto_9

    .line 925
    :catch_2
    move-exception v7

    .line 926
    goto :goto_8

    .line 927
    :catch_3
    move-exception v4

    .line 928
    move-object v7, v4

    .line 929
    move-object v4, v5

    .line 930
    .line 931
    .line 932
    :goto_8
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 933
    .line 934
    :goto_9
    if-eqz v4, :cond_d

    .line 935
    .line 936
    .line 937
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 938
    move-result v7

    .line 939
    .line 940
    if-lez v7, :cond_d

    .line 941
    .line 942
    .line 943
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    .line 945
    :cond_d
    :try_start_4
    new-instance v4, Ljava/io/BufferedReader;

    .line 946
    .line 947
    new-instance v7, Ljava/io/FileReader;

    .line 948
    .line 949
    const-string v9, "/proc/cpuinfo"

    .line 950
    .line 951
    .line 952
    invoke-direct {v7, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 953
    .line 954
    .line 955
    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 956
    .line 957
    .line 958
    :cond_e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 959
    move-result-object v7

    .line 960
    .line 961
    if-eqz v7, :cond_f

    .line 962
    .line 963
    const-string v9, "Hardware"

    .line 964
    .line 965
    .line 966
    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 967
    move-result v9

    .line 968
    .line 969
    if-eqz v9, :cond_e

    .line 970
    .line 971
    const-string v4, ":"

    .line 972
    .line 973
    .line 974
    invoke-virtual {v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 975
    move-result-object v4

    .line 976
    .line 977
    aget-object v4, v4, v8

    .line 978
    .line 979
    .line 980
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 981
    move-result-object v5

    .line 982
    goto :goto_a

    .line 983
    .line 984
    .line 985
    :cond_f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 986
    goto :goto_a

    .line 987
    :catch_4
    move-exception v4

    .line 988
    .line 989
    .line 990
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 991
    .line 992
    :goto_a
    if-eqz v5, :cond_10

    .line 993
    .line 994
    .line 995
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 996
    move-result v4

    .line 997
    .line 998
    if-lez v4, :cond_10

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1002
    .line 1003
    :cond_10
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1004
    .line 1005
    if-lt v4, v0, :cond_11

    .line 1006
    .line 1007
    .line 1008
    invoke-static {}, Lo1/y0;->b()Ljava/lang/String;

    .line 1009
    move-result-object v0

    .line 1010
    .line 1011
    if-eqz v0, :cond_11

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1015
    move-result v4

    .line 1016
    .line 1017
    if-lez v4, :cond_11

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    .line 1022
    :cond_11
    new-instance v0, Lo1/b1;

    .line 1023
    .line 1024
    .line 1025
    invoke-direct {v0, v2, v6}, Lo1/b1;-><init>(Ljava/io/Serializable;I)V

    .line 1026
    .line 1027
    .line 1028
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1029
    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1031
    .line 1032
    .line 1033
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1037
    move-result-object v2

    .line 1038
    .line 1039
    .line 1040
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1041
    move-result v4

    .line 1042
    .line 1043
    if-eqz v4, :cond_12

    .line 1044
    .line 1045
    .line 1046
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1047
    move-result-object v4

    .line 1048
    .line 1049
    check-cast v4, Ljava/lang/CharSequence;

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1053
    .line 1054
    .line 1055
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1056
    move-result v4

    .line 1057
    .line 1058
    if-eqz v4, :cond_12

    .line 1059
    .line 1060
    const-string v4, ", "

    .line 1061
    .line 1062
    .line 1063
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1064
    goto :goto_b

    .line 1065
    .line 1066
    .line 1067
    :cond_12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1068
    move-result-object v0

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1075
    move-result-object v0

    .line 1076
    .line 1077
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->j:Ljava/lang/String;

    .line 1078
    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1080
    .line 1081
    .line 1082
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1083
    .line 1084
    sget-object v1, Lcom/google/android/gms/internal/play_billing/i0;->j:Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    const-string v1, "<br>Storage          : "

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 1096
    move-result-object v1

    .line 1097
    .line 1098
    .line 1099
    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    .line 1100
    move-result-wide v1

    .line 1101
    .line 1102
    .line 1103
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/i0;->k0(J)Ljava/lang/String;

    .line 1104
    move-result-object v1

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1111
    move-result-object v0

    .line 1112
    .line 1113
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->j:Ljava/lang/String;

    .line 1114
    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1116
    .line 1117
    .line 1118
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1119
    .line 1120
    sget-object v1, Lcom/google/android/gms/internal/play_billing/i0;->j:Ljava/lang/String;

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    .line 1125
    const-string v1, "<br>Free space       : "

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 1132
    move-result-object v1

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    .line 1136
    move-result-wide v1

    .line 1137
    .line 1138
    .line 1139
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/i0;->k0(J)Ljava/lang/String;

    .line 1140
    move-result-object v1

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1147
    move-result-object v0

    .line 1148
    .line 1149
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->j:Ljava/lang/String;

    .line 1150
    .line 1151
    :try_start_5
    const-string v0, "phone"

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1155
    move-result-object v0

    .line 1156
    .line 1157
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1158
    .line 1159
    .line 1160
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    .line 1161
    move-result-object v0

    .line 1162
    .line 1163
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1164
    .line 1165
    .line 1166
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1167
    .line 1168
    sget-object v2, Lcom/google/android/gms/internal/play_billing/i0;->j:Ljava/lang/String;

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    .line 1173
    const-string v2, "<br>SIM country      : "

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1183
    move-result-object v0

    .line 1184
    .line 1185
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->j:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1186
    .line 1187
    :catch_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1188
    .line 1189
    .line 1190
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1191
    .line 1192
    sget-object v1, Lcom/google/android/gms/internal/play_billing/i0;->j:Ljava/lang/String;

    .line 1193
    .line 1194
    .line 1195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    .line 1197
    const-string v1, "<br>Locale country   : "

    .line 1198
    .line 1199
    .line 1200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    .line 1202
    .line 1203
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/i0;->N(Landroid/content/Context;)Ljava/util/Locale;

    .line 1204
    move-result-object v1

    .line 1205
    .line 1206
    .line 1207
    invoke-virtual {v1, v3}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    .line 1208
    move-result-object v1

    .line 1209
    .line 1210
    .line 1211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1215
    move-result-object v0

    .line 1216
    .line 1217
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i0;->j:Ljava/lang/String;

    .line 1218
    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1220
    .line 1221
    .line 1222
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1223
    .line 1224
    sget-object v1, Lcom/google/android/gms/internal/play_billing/i0;->j:Ljava/lang/String;

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    .line 1229
    const-string v1, "<br>Locale language  : "

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    .line 1234
    .line 1235
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/i0;->N(Landroid/content/Context;)Ljava/util/Locale;

    .line 1236
    move-result-object p0

    .line 1237
    .line 1238
    .line 1239
    invoke-virtual {p0, v3}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    .line 1240
    move-result-object p0

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1247
    move-result-object p0

    .line 1248
    .line 1249
    sput-object p0, Lcom/google/android/gms/internal/play_billing/i0;->j:Ljava/lang/String;

    .line 1250
    .line 1251
    .line 1252
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    .line 1254
    .line 1255
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1256
    move-result-object p0

    .line 1257
    .line 1258
    sput-object p0, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 1259
    .line 1260
    new-instance p0, Ljava/lang/StringBuilder;

    .line 1261
    .line 1262
    .line 1263
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1264
    .line 1265
    sget-object p1, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 1266
    .line 1267
    const-string v0, "</pre>"

    .line 1268
    .line 1269
    .line 1270
    invoke-static {p0, p1, v0}, La1/b;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1271
    move-result-object p0

    .line 1272
    .line 1273
    sput-object p0, Lcom/google/android/gms/internal/play_billing/i0;->n:Ljava/lang/String;

    .line 1274
    return-object p0
.end method

.method public static M(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "/lib_arch.so"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p0, v1}, La1/b;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    .line 27
    move-result p0

    .line 28
    .line 29
    new-array p0, p0, [B

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    move-object p0, v0

    .line 42
    .line 43
    :goto_0
    if-nez p0, :cond_0

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 50
    :goto_1
    return-object v0
.end method

.method public static N(Landroid/content/Context;)Ljava/util/Locale;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static O(Lcom/nomone/vr_desktop/LaunchActivity;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/i0;->N(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static P(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/play_billing/i0;->r:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Q(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1a

    .line 5
    .line 6
    const-string v2, "TRuntime."

    .line 7
    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 16
    move-result v0

    .line 17
    .line 18
    const/16 v1, 0x17

    .line 19
    .line 20
    if-le v0, v1, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    :cond_0
    return-object p0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static R(Landroid/content/Context;)J
    .locals 2

    .line 1
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v0
.end method

.method public static S(Ljava/lang/String;)[I
    .locals 10

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [I

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    aput v3, v0, v2

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x23

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    const/16 v4, 0x3f

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v3, :cond_2

    if-le v4, v1, :cond_3

    :cond_2
    move v4, v1

    :cond_3
    const/16 v5, 0x2f

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v3, :cond_4

    if-le v6, v4, :cond_5

    :cond_4
    move v6, v4

    :cond_5
    const/16 v7, 0x3a

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-le v7, v6, :cond_6

    move v7, v3

    :cond_6
    add-int/lit8 v6, v7, 0x2

    const/4 v8, 0x1

    if-ge v6, v4, :cond_7

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_7

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_7

    move v6, v8

    goto :goto_1

    :cond_7
    move v6, v2

    :goto_1
    if-eqz v6, :cond_9

    add-int/lit8 v6, v7, 0x3

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    if-eq p0, v3, :cond_8

    if-le p0, v4, :cond_a

    :cond_8
    move p0, v4

    goto :goto_2

    :cond_9
    add-int/lit8 p0, v7, 0x1

    :cond_a
    :goto_2
    aput v7, v0, v2

    aput p0, v0, v8

    const/4 p0, 0x2

    aput v4, v0, p0

    const/4 p0, 0x3

    aput v1, v0, p0

    return-object v0
.end method

.method public static T(Landroid/content/Context;Z)V
    .locals 10

    .line 1
    .line 2
    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/i0;->p:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance p1, Ljava/io/File;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    sput-object p1, Lcom/google/android/gms/internal/play_billing/i0;->q:Ljava/io/File;

    .line 21
    .line 22
    new-instance p1, Ljava/io/File;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, "/data/data/"

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "/files"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    sput-object p1, Lcom/google/android/gms/internal/play_billing/i0;->r:Ljava/io/File;

    .line 51
    .line 52
    new-instance p1, Ljava/io/File;

    .line 53
    .line 54
    sget-object v0, Lcom/google/android/gms/internal/play_billing/i0;->r:Ljava/io/File;

    .line 55
    .line 56
    const-string v1, "common"

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .line 61
    sput-object p1, Lcom/google/android/gms/internal/play_billing/i0;->s:Ljava/io/File;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 65
    .line 66
    new-instance p1, Ljava/io/File;

    .line 67
    .line 68
    sget-object v0, Lcom/google/android/gms/internal/play_billing/i0;->r:Ljava/io/File;

    .line 69
    .line 70
    const-string v1, "commonh"

    .line 71
    .line 72
    .line 73
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .line 75
    sput-object p1, Lcom/google/android/gms/internal/play_billing/i0;->t:Ljava/io/File;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 79
    .line 80
    .line 81
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    sput-object p1, Lcom/google/android/gms/internal/play_billing/i0;->u:Ljava/io/File;

    .line 85
    const/4 p1, 0x0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    .line 92
    .line 93
    .line 94
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    const/4 v1, 0x1

    .line 96
    move v2, v1

    .line 97
    :goto_0
    array-length v3, p1

    .line 98
    const/4 v4, 0x0

    .line 99
    .line 100
    if-ge v2, v3, :cond_9

    .line 101
    .line 102
    aget-object v3, p1, v2

    .line 103
    .line 104
    if-eqz v3, :cond_8

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 108
    move-result-object v5

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 112
    move-result v6

    .line 113
    move v7, v4

    .line 114
    .line 115
    :goto_1
    if-ge v7, v6, :cond_2

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v7}, Ljava/lang/String;->codePointAt(I)I

    .line 119
    move-result v8

    .line 120
    .line 121
    .line 122
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(I)Z

    .line 123
    move-result v9

    .line 124
    .line 125
    if-nez v9, :cond_1

    .line 126
    move v5, v4

    .line 127
    goto :goto_2

    .line 128
    .line 129
    .line 130
    :cond_1
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    .line 131
    move-result v8

    .line 132
    add-int/2addr v7, v8

    .line 133
    goto :goto_1

    .line 134
    :cond_2
    move v5, v1

    .line 135
    .line 136
    :goto_2
    if-eqz v5, :cond_3

    .line 137
    goto :goto_5

    .line 138
    .line 139
    :cond_3
    :goto_3
    const-string v5, "storage"

    .line 140
    .line 141
    if-eqz v3, :cond_5

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 145
    move-result-object v6

    .line 146
    .line 147
    if-eqz v6, :cond_4

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 151
    move-result-object v6

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 155
    move-result-object v6

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result v6

    .line 160
    .line 161
    if-eqz v6, :cond_4

    .line 162
    move v6, v1

    .line 163
    goto :goto_4

    .line 164
    :cond_4
    move v6, v4

    .line 165
    .line 166
    :goto_4
    if-nez v6, :cond_5

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 170
    move-result-object v3

    .line 171
    goto :goto_3

    .line 172
    .line 173
    :cond_5
    if-eqz v3, :cond_6

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 177
    move-result-object v6

    .line 178
    .line 179
    if-eqz v6, :cond_6

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 183
    move-result-object v6

    .line 184
    .line 185
    .line 186
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 187
    move-result-object v6

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    move-result v5

    .line 192
    .line 193
    if-eqz v5, :cond_6

    .line 194
    move v4, v1

    .line 195
    .line 196
    :cond_6
    if-eqz v4, :cond_7

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string v5, "final externalStorages: "

    .line 204
    .line 205
    .line 206
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object v3

    .line 214
    .line 215
    const-string v4, "sdf"

    .line 216
    .line 217
    .line 218
    invoke-static {v4, v3}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    :cond_8
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 221
    goto :goto_0

    .line 222
    .line 223
    .line 224
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 225
    move-result p1

    .line 226
    .line 227
    if-nez p1, :cond_a

    .line 228
    .line 229
    new-array p1, v4, [Ljava/io/File;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 233
    move-result-object p1

    .line 234
    .line 235
    check-cast p1, [Ljava/io/File;

    .line 236
    .line 237
    sput-object p1, Lcom/google/android/gms/internal/play_billing/i0;->v:[Ljava/io/File;

    .line 238
    .line 239
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    sget-object v0, Lcom/google/android/gms/internal/play_billing/i0;->s:Ljava/io/File;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string v0, "/bin"

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    move-result-object p1

    .line 257
    .line 258
    const-string v0, "bin"

    .line 259
    .line 260
    .line 261
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/i0;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    new-instance p1, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    sget-object v0, Lcom/google/android/gms/internal/play_billing/i0;->s:Ljava/io/File;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string v0, "/lib"

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    move-result-object p1

    .line 281
    .line 282
    const-string v2, "lib"

    .line 283
    .line 284
    .line 285
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/i0;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    sget-object v2, Lcom/google/android/gms/internal/play_billing/i0;->s:Ljava/io/File;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    const-string v2, "/lib/dri"

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    move-result-object p1

    .line 305
    .line 306
    const-string v2, "libdri"

    .line 307
    .line 308
    .line 309
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/i0;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    new-instance p1, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .line 316
    sget-object v2, Lcom/google/android/gms/internal/play_billing/i0;->s:Ljava/io/File;

    .line 317
    .line 318
    .line 319
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    move-result-object p1

    .line 327
    .line 328
    const-string v0, "adb"

    .line 329
    .line 330
    .line 331
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/i0;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    new-instance p1, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    sget-object v0, Lcom/google/android/gms/internal/play_billing/i0;->s:Ljava/io/File;

    .line 339
    .line 340
    .line 341
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    const-string v0, "/proc"

    .line 344
    .line 345
    .line 346
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    move-result-object p1

    .line 351
    .line 352
    const-string v0, "proc"

    .line 353
    .line 354
    .line 355
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/i0;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    new-instance p1, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .line 362
    sget-object v0, Lcom/google/android/gms/internal/play_billing/i0;->q:Ljava/io/File;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    const-string v0, "/lib_libdri_zink_dri.so.so"

    .line 368
    .line 369
    .line 370
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    move-result-object p1

    .line 375
    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .line 381
    sget-object v3, Lcom/google/android/gms/internal/play_billing/i0;->s:Ljava/io/File;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    const-string v3, "/lib/dri/swrast_dri.so"

    .line 387
    .line 388
    .line 389
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    move-result-object v2

    .line 394
    .line 395
    .line 396
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/i0;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .line 398
    new-instance p1, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .line 403
    sget-object v2, Lcom/google/android/gms/internal/play_billing/i0;->q:Ljava/io/File;

    .line 404
    .line 405
    .line 406
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    move-result-object p1

    .line 414
    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .line 420
    sget-object v2, Lcom/google/android/gms/internal/play_billing/i0;->s:Ljava/io/File;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    const-string v2, "/lib/dri/kms_swrast_dri.so"

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    move-result-object v0

    .line 433
    .line 434
    .line 435
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/i0;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .line 437
    new-instance p1, Ljava/io/File;

    .line 438
    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .line 444
    sget-object v2, Lcom/google/android/gms/internal/play_billing/i0;->t:Ljava/io/File;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    const-string v2, "/.config/pulse"

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    move-result-object v0

    .line 457
    .line 458
    .line 459
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 463
    .line 464
    .line 465
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 466
    move-result-object v0

    .line 467
    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    .line 473
    .line 474
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 475
    move-result-object v3

    .line 476
    .line 477
    .line 478
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    const-string v3, "/client.conf"

    .line 481
    .line 482
    .line 483
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    move-result-object v2

    .line 488
    .line 489
    const-string v3, "PulseAudio/client.conf"

    .line 490
    .line 491
    .line 492
    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/play_billing/i0;->p(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 493
    .line 494
    .line 495
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 496
    move-result-object v0

    .line 497
    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .line 503
    .line 504
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 505
    move-result-object v3

    .line 506
    .line 507
    .line 508
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    const-string v3, "/daemon.conf"

    .line 511
    .line 512
    .line 513
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    move-result-object v2

    .line 518
    .line 519
    const-string v3, "PulseAudio/daemon.conf"

    .line 520
    .line 521
    .line 522
    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/play_billing/i0;->p(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 523
    .line 524
    .line 525
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 526
    move-result-object v0

    .line 527
    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 532
    .line 533
    .line 534
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 535
    move-result-object v3

    .line 536
    .line 537
    .line 538
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    const-string v3, "/default.pa"

    .line 541
    .line 542
    .line 543
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 547
    move-result-object v2

    .line 548
    .line 549
    const-string v3, "PulseAudio/default.pa"

    .line 550
    .line 551
    .line 552
    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/play_billing/i0;->p(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 553
    .line 554
    .line 555
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 556
    move-result-object v0

    .line 557
    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .line 563
    .line 564
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 565
    move-result-object p1

    .line 566
    .line 567
    .line 568
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    const-string p1, "/system.pa"

    .line 571
    .line 572
    .line 573
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 577
    move-result-object p1

    .line 578
    .line 579
    const-string v2, "PulseAudio/system.pa"

    .line 580
    .line 581
    .line 582
    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/i0;->p(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 583
    .line 584
    .line 585
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 586
    move-result-object p0

    .line 587
    .line 588
    new-instance p1, Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    .line 593
    sget-object v0, Lcom/google/android/gms/internal/play_billing/i0;->s:Ljava/io/File;

    .line 594
    .line 595
    .line 596
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    const-string v0, "/share/X11"

    .line 599
    .line 600
    .line 601
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 605
    move-result-object p1

    .line 606
    .line 607
    const-string v0, "X11"

    .line 608
    .line 609
    .line 610
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/i0;->q(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 611
    .line 612
    sput-boolean v1, Lcom/google/android/gms/internal/play_billing/i0;->p:Z

    .line 613
    return-void
.end method

.method public static U(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 18
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    .line 22
    new-instance p1, Ljava/lang/RuntimeException;

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 26
    throw p1

    .line 27
    .line 28
    :cond_0
    new-instance v0, Ld3/o0;

    .line 29
    const/4 v1, 0x3

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Ld3/o0;-><init>(I)V

    .line 33
    .line 34
    new-instance v1, Ld3/o0;

    .line 35
    const/4 v2, 0x2

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v2}, Ld3/o0;-><init>(I)V

    .line 39
    .line 40
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    .line 41
    const/4 v3, 0x1

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 45
    .line 46
    new-instance v4, Ld3/s0;

    .line 47
    .line 48
    .line 49
    invoke-direct {v4, v0, p1, v1, v2}, Ld3/s0;-><init>(Ld3/o0;Ljava/util/concurrent/Callable;Ld3/o0;Ljava/util/concurrent/CountDownLatch;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    const/4 p0, 0x0

    .line 54
    move p1, p0

    .line 55
    .line 56
    .line 57
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 67
    .line 68
    :cond_1
    iget-object p1, v1, Ld3/o0;->g:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p1, Ljava/lang/Exception;

    .line 71
    .line 72
    if-nez p1, :cond_2

    .line 73
    .line 74
    iget-object p0, v0, Ld3/o0;->g:Ljava/lang/Object;

    .line 75
    return-object p0

    .line 76
    .line 77
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 78
    .line 79
    iget-object v0, v1, Ld3/o0;->g:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, Ljava/lang/Exception;

    .line 82
    .line 83
    .line 84
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 85
    .line 86
    iget-object v0, v1, Ld3/o0;->g:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, Ljava/lang/Exception;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 96
    move-result-object v1

    .line 97
    array-length v2, v0

    .line 98
    array-length v3, v1

    .line 99
    add-int/2addr v2, v3

    .line 100
    .line 101
    new-array v2, v2, [Ljava/lang/StackTraceElement;

    .line 102
    array-length v3, v0

    .line 103
    .line 104
    .line 105
    invoke-static {v0, p0, v2, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    array-length v0, v0

    .line 107
    array-length v3, v1

    .line 108
    .line 109
    .line 110
    invoke-static {v1, p0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 114
    throw p1

    .line 115
    :catch_1
    move p1, v3

    .line 116
    goto :goto_0
.end method

.method public static V(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    return v0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/i0;->q0(Landroid/content/Context;)Z

    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    return v0

    .line 9
    .line 10
    :cond_0
    sget-object p0, Lo1/y;->a:Landroid/content/SharedPreferences;

    .line 11
    .line 12
    const-string v1, "Border ID"

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    if-nez p0, :cond_1

    .line 21
    return v1

    .line 22
    .line 23
    :cond_1
    const-string v2, "GPA."

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 33
    move-result p0

    .line 34
    .line 35
    const/16 v2, 0x18

    .line 36
    .line 37
    if-eq p0, v2, :cond_2

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move v0, v1

    .line 40
    :cond_3
    :goto_0
    return v0
.end method

.method public static W(Ljava/lang/String;)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_c

    .line 4
    .line 5
    sget-object v1, Lcom/google/android/gms/internal/play_billing/i0;->b:Lh/a;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    const-string v2, "/"

    .line 11
    const/4 v3, 0x1

    .line 12
    .line 13
    :try_start_0
    new-instance v4, Ljava/net/URI;

    .line 14
    .line 15
    .line 16
    invoke-direct {v4, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 20
    move-result-object v4

    .line 21
    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    const-string v5, "\\."

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 34
    move-result-object v5

    .line 35
    array-length v6, v5

    .line 36
    const/4 v7, 0x2

    .line 37
    .line 38
    if-ge v6, v7, :cond_1

    .line 39
    .line 40
    goto/16 :goto_4

    .line 41
    :cond_1
    array-length v6, v5

    .line 42
    sub-int/2addr v6, v3

    .line 43
    .line 44
    aget-object v6, v5, v6

    .line 45
    .line 46
    const-string v8, "porn"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v8

    .line 51
    .line 52
    if-nez v8, :cond_a

    .line 53
    .line 54
    const-string v8, "sex"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v8

    .line 59
    .line 60
    if-nez v8, :cond_a

    .line 61
    .line 62
    const-string v8, "sexy"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v8

    .line 67
    .line 68
    if-nez v8, :cond_a

    .line 69
    .line 70
    const-string v8, "adult"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v8

    .line 75
    .line 76
    if-nez v8, :cond_a

    .line 77
    .line 78
    const-string v8, "dating"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v8

    .line 83
    .line 84
    if-nez v8, :cond_a

    .line 85
    .line 86
    const-string v8, "xxx"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v6

    .line 91
    .line 92
    if-eqz v6, :cond_2

    .line 93
    .line 94
    goto/16 :goto_3

    .line 95
    .line 96
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    array-length v8, v5

    .line 101
    sub-int/2addr v8, v7

    .line 102
    .line 103
    aget-object v8, v5, v8

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v8, "."

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    array-length v8, v5

    .line 113
    sub-int/2addr v8, v3

    .line 114
    .line 115
    aget-object v5, v5, v8

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v5

    .line 123
    .line 124
    iget-object v6, v1, Lh/a;->g:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v6, Ljava/util/HashSet;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 130
    move-result v5

    .line 131
    .line 132
    if-eqz v5, :cond_3

    .line 133
    .line 134
    goto/16 :goto_3

    .line 135
    .line 136
    :cond_3
    const-string v5, "www."

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 140
    move-result v5

    .line 141
    .line 142
    if-eqz v5, :cond_4

    .line 143
    const/4 v5, 0x4

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 147
    move-result-object v4

    .line 148
    goto :goto_0

    .line 149
    .line 150
    :cond_4
    const-string v5, "m."

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 154
    move-result v5

    .line 155
    .line 156
    if-eqz v5, :cond_5

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 160
    move-result-object v4

    .line 161
    goto :goto_0

    .line 162
    .line 163
    :cond_5
    const-string v5, "members."

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 167
    move-result v5

    .line 168
    .line 169
    if-eqz v5, :cond_6

    .line 170
    .line 171
    const/16 v5, 0x8

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 175
    move-result-object v4

    .line 176
    .line 177
    :cond_6
    :goto_0
    iget-object v5, v1, Lh/a;->g:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v5, Ljava/util/HashSet;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 183
    move-result v5

    .line 184
    .line 185
    if-eqz v5, :cond_7

    .line 186
    :goto_1
    goto :goto_3

    .line 187
    .line 188
    .line 189
    :cond_7
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 190
    move-result v5

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 194
    move-result v6

    .line 195
    add-int/2addr v5, v6

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 199
    move-result-object p0

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 203
    move-result v5

    .line 204
    .line 205
    if-ge v5, v7, :cond_8

    .line 206
    goto :goto_4

    .line 207
    .line 208
    .line 209
    :cond_8
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 210
    move-result-object p0

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 214
    move-result-object p0

    .line 215
    move v5, v0

    .line 216
    .line 217
    :goto_2
    if-ge v5, v7, :cond_b

    .line 218
    array-length v6, p0

    .line 219
    .line 220
    if-ge v5, v6, :cond_b

    .line 221
    .line 222
    new-instance v6, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    aget-object v4, p0, v5

    .line 234
    .line 235
    .line 236
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object v4

    .line 241
    .line 242
    iget-object v6, v1, Lh/a;->g:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v6, Ljava/util/HashSet;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 248
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .line 250
    if-eqz v6, :cond_9

    .line 251
    goto :goto_1

    .line 252
    .line 253
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 254
    goto :goto_2

    .line 255
    :cond_a
    :goto_3
    move p0, v3

    .line 256
    goto :goto_5

    .line 257
    :catch_0
    move-exception p0

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 261
    :cond_b
    :goto_4
    move p0, v0

    .line 262
    .line 263
    :goto_5
    if-eqz p0, :cond_c

    .line 264
    move v0, v3

    .line 265
    :cond_c
    return v0
.end method

.method public static X(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    new-array v3, v1, [B

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p0, 0x0

    :cond_1
    sub-int v5, v1, p0

    invoke-virtual {v4, v3, p0, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    if-ne v5, v2, :cond_2

    return-object v0

    :cond_2
    add-int/2addr p0, v5

    if-lt p0, v1, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static Y(Landroid/os/Parcel;I)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i0;->A0(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static Z(Landroid/os/Parcel;I)I
    .locals 1

    .line 1
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i0;->A0(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public static a0(Landroid/os/Parcel;I)I
    .locals 2

    .line 1
    const/high16 v0, -0x10000

    and-int v1, p1, v0

    if-eq v1, v0, :cond_0

    shr-int/lit8 p0, p1, 0x10

    int-to-char p0, p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public static b(IILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x0

    filled-new-array {p2}, [I

    move-result-object v0

    const v1, 0x8b81

    invoke-static {p0, v1, v0, p2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    :cond_0
    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/i0;->h()V

    return-void
.end method

.method public static b0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 14
    move-result p1

    .line 15
    .line 16
    new-array p1, p1, [B

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    const/4 p1, 0x0

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 32
    return-object v0
.end method

.method public static c(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const-string v4, ""

    :goto_0
    invoke-virtual {p0, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v1

    :cond_5
    :goto_1
    return v2
.end method

.method public static c0(Ljava/lang/StringBuilder;II)Ljava/lang/String;
    .locals 7

    .line 1
    if-lt p1, p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    move v0, p1

    move v2, v0

    :goto_0
    if-gt v0, p2, :cond_7

    if-ne v0, p2, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_6

    add-int/lit8 v3, v0, 0x1

    :goto_1
    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x2e

    if-ne v0, v4, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_3

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    sub-int/2addr v3, v2

    sub-int/2addr p2, v3

    goto :goto_4

    :cond_3
    add-int/lit8 v6, v2, 0x2

    if-ne v0, v6, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_5

    add-int/lit8 v2, v2, -0x2

    const-string v0, "/"

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    move v2, p1

    :goto_2
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    sub-int/2addr v3, v2

    sub-int/2addr p2, v3

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    :goto_3
    move v2, v0

    :goto_4
    move v0, v2

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(II[I)I
    .locals 3

    .line 1
    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p0, :cond_2

    add-int v1, v0, p0

    ushr-int/lit8 v1, v1, 0x1

    aget v2, p2, v1

    if-ge v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_0

    :cond_0
    if-le v2, p1, :cond_1

    add-int/lit8 v1, v1, -0x1

    move p0, v1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    not-int p0, v0

    return p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e0(Ljava/lang/String;Ljava/lang/String;ZZLq1/z;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/i0;->c:Ljava/lang/ThreadGroup;

    new-instance v2, Lq1/y;

    invoke-direct {v2, p0, p1, p2, p4}, Lq1/y;-><init>(Ljava/lang/String;Ljava/lang/String;ZLq1/z;)V

    const-string p0, "reportThread"

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static f(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 5
    move-result v1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    const-string v1, " attempts"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v0}, Lo1/y;->c(Ljava/lang/String;I)I

    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    add-int/2addr v2, v3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v1}, Lo1/y;->g(ILjava/lang/String;)V

    .line 28
    .line 29
    if-le v2, v3, :cond_1

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string p2, "<pre><br>Attempt #: "

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string p2, ".</pre>"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    :cond_1
    new-instance v1, Lh0/b;

    .line 57
    .line 58
    const/16 v2, 0xc

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, p0, v2}, Lh0/b;-><init>(Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1, p2, v3, v0, v1}, Lcom/google/android/gms/internal/play_billing/i0;->e0(Ljava/lang/String;Ljava/lang/String;ZZLq1/z;)V

    .line 65
    return-void
.end method

.method public static g(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static g0(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 10

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    move-object p0, v1

    .line 11
    .line 12
    :cond_0
    if-nez p1, :cond_1

    .line 13
    move-object p1, v1

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/i0;->S(Ljava/lang/String;)[I

    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    aget v3, v1, v2

    .line 21
    const/4 v4, 0x1

    .line 22
    const/4 v5, -0x1

    .line 23
    const/4 v6, 0x2

    .line 24
    .line 25
    if-eq v3, v5, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    aget p0, v1, v4

    .line 31
    .line 32
    aget p1, v1, v6

    .line 33
    .line 34
    .line 35
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/i0;->c0(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    .line 41
    goto/16 :goto_4

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/i0;->S(Ljava/lang/String;)[I

    .line 45
    move-result-object v3

    .line 46
    const/4 v7, 0x3

    .line 47
    .line 48
    aget v8, v1, v7

    .line 49
    .line 50
    if-nez v8, :cond_3

    .line 51
    .line 52
    aget v1, v3, v7

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-virtual {v0, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_3
    aget v7, v1, v6

    .line 62
    .line 63
    if-nez v7, :cond_4

    .line 64
    .line 65
    aget v1, v3, v6

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :cond_4
    aget v7, v1, v4

    .line 69
    .line 70
    if-eqz v7, :cond_5

    .line 71
    .line 72
    aget v3, v3, v2

    .line 73
    add-int/2addr v3, v4

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    aget p0, v1, v4

    .line 82
    add-int/2addr p0, v3

    .line 83
    .line 84
    aget p1, v1, v6

    .line 85
    add-int/2addr v3, p1

    .line 86
    .line 87
    .line 88
    invoke-static {v0, p0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->c0(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    goto :goto_4

    .line 91
    .line 92
    .line 93
    :cond_5
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 94
    move-result v7

    .line 95
    .line 96
    const/16 v8, 0x2f

    .line 97
    .line 98
    if-ne v7, v8, :cond_6

    .line 99
    .line 100
    aget v5, v3, v4

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p0, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    aget p0, v3, v4

    .line 109
    .line 110
    aget p1, v1, v6

    .line 111
    add-int/2addr p1, p0

    .line 112
    .line 113
    .line 114
    :goto_2
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/i0;->c0(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 116
    goto :goto_4

    .line 117
    .line 118
    :cond_6
    aget v7, v3, v2

    .line 119
    add-int/2addr v7, v6

    .line 120
    .line 121
    aget v9, v3, v4

    .line 122
    .line 123
    if-ge v7, v9, :cond_7

    .line 124
    .line 125
    aget v7, v3, v6

    .line 126
    .line 127
    if-ne v9, v7, :cond_7

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, p0, v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    aget p0, v3, v4

    .line 139
    .line 140
    aget p1, v1, v6

    .line 141
    add-int/2addr p1, p0

    .line 142
    add-int/2addr p1, v4

    .line 143
    goto :goto_2

    .line 144
    .line 145
    :cond_7
    aget v7, v3, v6

    .line 146
    sub-int/2addr v7, v4

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->lastIndexOf(II)I

    .line 150
    move-result v7

    .line 151
    .line 152
    if-ne v7, v5, :cond_8

    .line 153
    .line 154
    aget v5, v3, v4

    .line 155
    goto :goto_3

    .line 156
    .line 157
    :cond_8
    add-int/lit8 v5, v7, 0x1

    .line 158
    .line 159
    .line 160
    :goto_3
    invoke-virtual {v0, p0, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    aget p0, v3, v4

    .line 166
    .line 167
    aget p1, v1, v6

    .line 168
    add-int/2addr v5, p1

    .line 169
    .line 170
    .line 171
    invoke-static {v0, p0, v5}, Lcom/google/android/gms/internal/play_billing/i0;->c0(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    .line 172
    move-result-object p0

    .line 173
    .line 174
    .line 175
    :goto_4
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 176
    move-result-object p0

    .line 177
    return-object p0
.end method

.method public static h()V
    .locals 1

    .line 1
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static h0([Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lo1/c1;)V
    .locals 6

    .line 1
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i0;->i0([Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/ThreadGroup;Lo1/c1;)V

    return-void
.end method

.method public static i(Le1/d;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null current looper"

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Must be called on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " thread, but got "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method public static i0([Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/ThreadGroup;Lo1/c1;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/ProcessBuilder;

    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    if-lez v1, :cond_2

    aget-object v1, p0, v2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move v1, p1

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ln1/a;

    invoke-direct {v1, v0, p5, p2, p1}, Ln1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    if-eqz p3, :cond_3

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "runCommand: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p0, p0, v2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p4, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ln1/a;->run()V

    :goto_1
    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x505

    if-ne v0, v1, :cond_0

    new-instance v0, Landroidx/fragment/app/b;

    invoke-direct {v0, p0}, Landroidx/fragment/app/b;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": GLES20 error: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    throw v0

    :cond_1
    return-void
.end method

.method public static j0(Lcom/nomone/vr_desktop/LaunchActivity;I)V
    .locals 5

    .line 1
    sput p1, Lcom/google/android/gms/internal/play_billing/i0;->h:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/play_billing/i0;->i:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-gt v1, v2, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const v3, 0x1020002

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x9

    const/high16 v4, 0x43340000    # 180.0f

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setRotation(F)V

    sput-boolean v2, Lcom/google/android/gms/internal/play_billing/i0;->i:Z

    move p1, v2

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setRotation(F)V

    sput-boolean v2, Lcom/google/android/gms/internal/play_billing/i0;->i:Z

    move p1, v0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    :cond_4
    :goto_2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public static k(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k0(J)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    long-to-double p0, p0

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.1f GBs"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v0, 0xf4240

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    long-to-double p0, p0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.1f MBs"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-ltz v0, :cond_2

    long-to-double p0, p0

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.1f KBs"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " bytes"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l0(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/i0;->a0(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static m(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static m0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "mailto:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "market://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static n(JLb3/h;[Lk2/o;)V
    .locals 10

    .line 1
    .line 2
    :goto_0
    iget v0, p2, Lb3/h;->b:I

    .line 3
    .line 4
    iget v1, p2, Lb3/h;->a:I

    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    if-le v0, v1, :cond_d

    .line 9
    const/4 v0, 0x0

    .line 10
    move v2, v0

    .line 11
    .line 12
    :cond_0
    iget v3, p2, Lb3/h;->b:I

    .line 13
    .line 14
    iget v4, p2, Lb3/h;->a:I

    .line 15
    sub-int/2addr v3, v4

    .line 16
    .line 17
    const/16 v4, 0xff

    .line 18
    const/4 v5, -0x1

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    move v3, v5

    .line 22
    goto :goto_1

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p2}, Lb3/h;->h()I

    .line 26
    move-result v3

    .line 27
    add-int/2addr v2, v3

    .line 28
    .line 29
    if-eq v3, v4, :cond_0

    .line 30
    move v3, v2

    .line 31
    :goto_1
    move v2, v0

    .line 32
    .line 33
    :cond_2
    iget v6, p2, Lb3/h;->b:I

    .line 34
    .line 35
    iget v7, p2, Lb3/h;->a:I

    .line 36
    sub-int/2addr v6, v7

    .line 37
    .line 38
    if-nez v6, :cond_3

    .line 39
    move v2, v5

    .line 40
    goto :goto_2

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-virtual {p2}, Lb3/h;->h()I

    .line 44
    move-result v6

    .line 45
    add-int/2addr v2, v6

    .line 46
    .line 47
    if-eq v6, v4, :cond_2

    .line 48
    .line 49
    :goto_2
    iget v4, p2, Lb3/h;->a:I

    .line 50
    .line 51
    add-int v6, v4, v2

    .line 52
    .line 53
    if-eq v2, v5, :cond_b

    .line 54
    .line 55
    iget v5, p2, Lb3/h;->b:I

    .line 56
    sub-int/2addr v5, v4

    .line 57
    .line 58
    if-le v2, v5, :cond_4

    .line 59
    goto :goto_6

    .line 60
    :cond_4
    const/4 v4, 0x4

    .line 61
    .line 62
    if-ne v3, v4, :cond_c

    .line 63
    .line 64
    const/16 v3, 0x8

    .line 65
    .line 66
    if-lt v2, v3, :cond_c

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Lb3/h;->h()I

    .line 70
    move-result v2

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Lb3/h;->m()I

    .line 74
    move-result v3

    .line 75
    .line 76
    const/16 v4, 0x31

    .line 77
    .line 78
    if-ne v3, v4, :cond_5

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Lb3/h;->b()I

    .line 82
    move-result v5

    .line 83
    goto :goto_3

    .line 84
    :cond_5
    move v5, v0

    .line 85
    .line 86
    .line 87
    :goto_3
    invoke-virtual {p2}, Lb3/h;->h()I

    .line 88
    move-result v7

    .line 89
    .line 90
    const/16 v8, 0x2f

    .line 91
    .line 92
    if-ne v3, v8, :cond_6

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v1}, Lb3/h;->r(I)V

    .line 96
    .line 97
    :cond_6
    const/16 v9, 0xb5

    .line 98
    .line 99
    if-ne v2, v9, :cond_8

    .line 100
    .line 101
    if-eq v3, v4, :cond_7

    .line 102
    .line 103
    if-ne v3, v8, :cond_8

    .line 104
    :cond_7
    const/4 v2, 0x3

    .line 105
    .line 106
    if-ne v7, v2, :cond_8

    .line 107
    move v2, v1

    .line 108
    goto :goto_4

    .line 109
    :cond_8
    move v2, v0

    .line 110
    .line 111
    :goto_4
    if-ne v3, v4, :cond_a

    .line 112
    .line 113
    .line 114
    const v3, 0x47413934

    .line 115
    .line 116
    if-ne v5, v3, :cond_9

    .line 117
    goto :goto_5

    .line 118
    :cond_9
    move v1, v0

    .line 119
    :goto_5
    and-int/2addr v2, v1

    .line 120
    .line 121
    :cond_a
    if-eqz v2, :cond_c

    .line 122
    .line 123
    .line 124
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/i0;->o(JLb3/h;[Lk2/o;)V

    .line 125
    goto :goto_7

    .line 126
    .line 127
    :cond_b
    :goto_6
    iget v6, p2, Lb3/h;->b:I

    .line 128
    .line 129
    .line 130
    :cond_c
    :goto_7
    invoke-virtual {p2, v6}, Lb3/h;->q(I)V

    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    :cond_d
    return-void
.end method

.method public static n0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "content://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/i0;->m0(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static o(JLb3/h;[Lk2/o;)V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lb3/h;->h()I

    .line 4
    move-result v0

    .line 5
    .line 6
    and-int/lit8 v1, v0, 0x40

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    move v1, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v2

    .line 14
    .line 15
    :goto_0
    if-nez v1, :cond_1

    .line 16
    return-void

    .line 17
    .line 18
    :cond_1
    and-int/lit8 v0, v0, 0x1f

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v3}, Lb3/h;->r(I)V

    .line 22
    .line 23
    mul-int/lit8 v0, v0, 0x3

    .line 24
    .line 25
    iget v1, p2, Lb3/h;->a:I

    .line 26
    array-length v3, p3

    .line 27
    .line 28
    :goto_1
    if-ge v2, v3, :cond_2

    .line 29
    .line 30
    aget-object v4, p3, v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v1}, Lb3/h;->q(I)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v4, v0, p2}, Lk2/o;->d(ILb3/h;)V

    .line 37
    const/4 v7, 0x1

    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v10, 0x0

    .line 40
    move-wide v5, p0

    .line 41
    move v8, v0

    .line 42
    .line 43
    .line 44
    invoke-interface/range {v4 .. v10}, Lk2/o;->b(JIIILk2/n;)V

    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    return-void
.end method

.method public static o0(Landroid/os/Parcel;)I
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/play_billing/i0;->a0(Landroid/os/Parcel;I)I

    .line 8
    move-result v1

    .line 9
    int-to-char v2, v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 13
    move-result v3

    .line 14
    .line 15
    const/16 v4, 0x4f45

    .line 16
    .line 17
    if-ne v2, v4, :cond_1

    .line 18
    add-int/2addr v1, v3

    .line 19
    .line 20
    if-lt v1, v3, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    .line 24
    move-result v0

    .line 25
    .line 26
    if-gt v1, v0, :cond_0

    .line 27
    return v1

    .line 28
    .line 29
    :cond_0
    new-instance v0, Landroidx/fragment/app/b;

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v4, "Size read is invalid start="

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v3, " end="

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 55
    throw v0

    .line 56
    .line 57
    :cond_1
    new-instance v1, Landroidx/fragment/app/b;

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    const-string v2, "Expected object header. Got 0x"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, v0, p0}, Landroidx/fragment/app/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 75
    throw v1
.end method

.method public static p(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 5
    move-result-object p0

    .line 6
    .line 7
    new-instance p1, Ljava/io/File;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 14
    .line 15
    new-instance p1, Ljava/io/FileOutputStream;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    const/16 p2, 0x400

    .line 21
    .line 22
    new-array p2, p2, [B

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    .line 26
    move-result v1

    .line 27
    const/4 v2, -0x1

    .line 28
    .line 29
    if-eq v1, v2, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    return v0
.end method

.method public static p0(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .line 1
    const-string v0, "IAP"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v1, "SHA1withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v1, p2}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Signature verification failed..."

    invoke-static {v0, p0}, Lo1/m;->g(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    const-string p0, "Signature exception."

    goto :goto_0

    :catch_1
    const-string p0, "Invalid key specification."

    :goto_0
    invoke-static {v0, p0}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    const-string p0, "Base64 decoding failed."

    invoke-static {v0, p0}, Lo1/m;->g(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static q(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 1
    .line 2
    const-string v0, "/"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    .line 7
    move-result-object v2

    .line 8
    .line 9
    new-instance v3, Ljava/io/File;

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 16
    array-length v3, v2

    .line 17
    const/4 v4, 0x1

    .line 18
    move v5, v1

    .line 19
    .line 20
    :goto_0
    if-ge v5, v3, :cond_1

    .line 21
    .line 22
    aget-object v6, v2, v5

    .line 23
    .line 24
    new-instance v7, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v7

    .line 41
    .line 42
    new-instance v8, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    .line 60
    .line 61
    :try_start_1
    invoke-virtual {p0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 62
    move-result-object v8

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    move v8, v1

    .line 67
    goto :goto_1

    .line 68
    .line 69
    .line 70
    :catch_0
    :try_start_2
    invoke-static {p0, v7}, Lcom/google/android/gms/internal/play_billing/i0;->c(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    .line 71
    move-result v8

    .line 72
    .line 73
    :goto_1
    if-eqz v8, :cond_0

    .line 74
    .line 75
    .line 76
    invoke-static {p0, v7, v6}, Lcom/google/android/gms/internal/play_billing/i0;->q(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    move-result v6

    .line 78
    goto :goto_2

    .line 79
    .line 80
    .line 81
    :cond_0
    invoke-static {p0, v7, v6}, Lcom/google/android/gms/internal/play_billing/i0;->p(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 83
    :goto_2
    and-int/2addr v4, v6

    .line 84
    .line 85
    add-int/lit8 v5, v5, 0x1

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    return v4

    .line 88
    :catch_1
    move-exception p0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    return v1
.end method

.method public static q0(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    return v0

    .line 1
    .line 2
    sget-object v0, Lcom/google/android/gms/internal/play_billing/i0;->m:[Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    filled-new-array {v0}, [Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/i0;->H(Landroid/content/Context;)[Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    array-length v2, p0

    .line 19
    const/4 v3, 0x1

    .line 20
    .line 21
    if-eq v2, v3, :cond_0

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_0
    aget-object v0, v0, v1

    .line 25
    array-length v2, p0

    .line 26
    sub-int/2addr v2, v3

    .line 27
    .line 28
    :goto_0
    if-ltz v2, :cond_2

    .line 29
    .line 30
    aget-object v4, p0, v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v4

    .line 35
    .line 36
    if-eqz v4, :cond_1

    .line 37
    move v1, v3

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    :goto_1
    return v1
.end method

.method public static r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static r0(Landroid/os/Parcel;IZ)V
    .locals 1

    .line 1
    .line 2
    const/high16 v0, 0x40000

    .line 3
    or-int/2addr p1, v0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    return-void
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :try_start_0
    invoke-static {p0, p1}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static s0(Landroid/os/Parcel;II)V
    .locals 1

    .line 1
    .line 2
    const/high16 v0, 0x40000

    .line 3
    or-int/2addr p1, v0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    return-void
.end method

.method public static t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lib_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/play_billing/i0;->q:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/i0;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static t0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/i0;->x0(Landroid/os/Parcel;I)I

    move-result p1

    invoke-interface {p2, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/i0;->z0(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static u(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/i0;->a0(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p2
.end method

.method public static u0(Landroid/os/Parcel;ILjava/lang/String;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/i0;->x0(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/i0;->z0(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static v(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/i0;->a0(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static v0(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V
    .locals 4

    .line 1
    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/i0;->x0(Landroid/os/Parcel;I)I

    move-result p1

    array-length v0, p2

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    if-nez v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-static {p0, v3, p3}, Lcom/google/android/gms/internal/play_billing/i0;->B0(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/i0;->z0(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static w(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/i0;->a0(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p2

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p2
.end method

.method public static w0(Landroid/os/Parcel;ILjava/util/List;)V
    .locals 4

    .line 1
    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/i0;->x0(Landroid/os/Parcel;I)I

    move-result p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    if-nez v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-static {p0, v3, v1}, Lcom/google/android/gms/internal/play_billing/i0;->B0(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/i0;->z0(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/i0;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static x0(Landroid/os/Parcel;I)I
    .locals 1

    .line 1
    const/high16 v0, -0x10000

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    return p0
.end method

.method public static y(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 6
    move-result-object p0

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {p0, v1}, Landroid/util/Base64;->decode([BI)[B

    .line 12
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    const/4 p0, 0x0

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 22
    return-object v0
.end method

.method public static y0()Lcom/google/android/gms/internal/play_billing/e0;
    .locals 13

    .line 1
    const-class v0, Lcom/google/android/gms/internal/play_billing/i0;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/play_billing/e0;

    invoke-virtual {v2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s.BlazeGenerated%sLoader"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader"

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-static {v3, v4, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, La1/b;->j(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    throw v5

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :catch_1
    move-exception v3

    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :catch_2
    move-exception v3

    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :catch_3
    move-exception v3

    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    :catch_4
    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/e0;

    return-object v0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    return-object v5

    :cond_3
    :try_start_3
    const-string v0, "combine"

    new-array v3, v4, [Ljava/lang/Class;

    const-class v4, Ljava/util/Collection;

    aput-object v4, v3, v6

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/e0;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :try_start_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, La1/b;->j(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/util/ServiceConfigurationError; {:try_start_4 .. :try_end_4} :catch_8

    throw v5

    :catch_8
    move-exception v3

    move-object v12, v3

    const-class v3, Lcom/google/android/gms/internal/play_billing/b0;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v9, "com.google.protobuf.GeneratedExtensionRegistryLoader"

    const-string v10, "load"

    const-string v11, "Unable to load "

    invoke-virtual {v11, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v7 .. v12}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static z(Ljava/io/File;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const-string v0, "rm -r "

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    new-instance v0, Ljava/io/BufferedReader;

    .line 29
    .line 30
    new-instance v1, Ljava/io/InputStreamReader;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    :goto_0
    return-void
.end method

.method public static z0(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    sub-int v1, v0, p1

    add-int/lit8 p1, p1, -0x4

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method


# virtual methods
.method public abstract A()V
.end method

.method public abstract a(Landroidx/lifecycle/m;)V
.end method

.method public abstract d0(Landroidx/lifecycle/m;)V
.end method
