.class public final Lcom/google/android/gms/internal/play_billing/j2;
.super Lcom/google/android/gms/internal/play_billing/l0;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/j2;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/play_billing/p2;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/j2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/j2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/j2;->zzb:Lcom/google/android/gms/internal/play_billing/j2;

    const-class v1, Lcom/google/android/gms/internal/play_billing/j2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/l0;->i(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/l0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/l0;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/j2;->zze:I

    return-void
.end method

.method public static n([BLcom/google/android/gms/internal/play_billing/e0;)Lcom/google/android/gms/internal/play_billing/j2;
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/j2;->zzb:Lcom/google/android/gms/internal/play_billing/j2;

    .line 2
    .line 3
    array-length v5, p0

    .line 4
    if-nez v5, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x4

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/j2;->m(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/gms/internal/play_billing/l0;

    .line 13
    .line 14
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/play_billing/q1;->c:Lcom/google/android/gms/internal/play_billing/q1;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/q1;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/t1;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    const/4 v4, 0x0

    .line 25
    new-instance v6, Lcom/google/android/gms/internal/play_billing/v;

    .line 26
    .line 27
    invoke-direct {v6, p1}, Lcom/google/android/gms/internal/play_billing/v;-><init>(Lcom/google/android/gms/internal/play_billing/e0;)V

    .line 28
    .line 29
    .line 30
    move-object v1, v7

    .line 31
    move-object v2, v0

    .line 32
    move-object v3, p0

    .line 33
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/t1;->d(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/v;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/play_billing/t1;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/play_billing/u0; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/play_billing/v1; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    :goto_0
    if-eqz v0, :cond_2

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/play_billing/l0;->k(Lcom/google/android/gms/internal/play_billing/l0;Z)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/play_billing/v1;

    .line 50
    .line 51
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/v1;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance p1, Lcom/google/android/gms/internal/play_billing/u0;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/play_billing/u0;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_2
    :goto_1
    check-cast v0, Lcom/google/android/gms/internal/play_billing/j2;

    .line 65
    .line 66
    return-object v0

    .line 67
    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->d()Lcom/google/android/gms/internal/play_billing/u0;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    throw p0

    .line 72
    :catch_1
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    instance-of p1, p1, Lcom/google/android/gms/internal/play_billing/u0;

    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    check-cast p0, Lcom/google/android/gms/internal/play_billing/u0;

    .line 86
    .line 87
    throw p0

    .line 88
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/play_billing/u0;

    .line 89
    .line 90
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/play_billing/u0;-><init>(Ljava/io/IOException;)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :catch_2
    move-exception p0

    .line 95
    new-instance p1, Lcom/google/android/gms/internal/play_billing/u0;

    .line 96
    .line 97
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/play_billing/u0;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :catch_3
    move-exception p0

    .line 106
    throw p0
.end method

.method public static synthetic o(Lcom/google/android/gms/internal/play_billing/j2;Lcom/google/android/gms/internal/play_billing/p2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/j2;->zzh:Lcom/google/android/gms/internal/play_billing/p2;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/j2;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/j2;->zzd:I

    return-void
.end method

.method public static synthetic p(Lcom/google/android/gms/internal/play_billing/j2;I)V
    .locals 0

    .line 1
    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/j2;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/j2;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/j2;->zzd:I

    return-void
.end method

.method public static q()Lcom/google/android/gms/internal/play_billing/i2;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/j2;->zzb:Lcom/google/android/gms/internal/play_billing/j2;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/j2;->m(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/play_billing/k0;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/gms/internal/play_billing/i2;

    .line 11
    .line 12
    return-object v0
.end method

.method public static synthetic r()Lcom/google/android/gms/internal/play_billing/j2;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/j2;->zzb:Lcom/google/android/gms/internal/play_billing/j2;

    return-object v0
.end method


# virtual methods
.method public final m(I)Ljava/lang/Object;
    .locals 7

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    if-eq p1, v0, :cond_3

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x5

    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1

    .line 19
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/play_billing/j2;->zzb:Lcom/google/android/gms/internal/play_billing/j2;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/i2;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/i2;-><init>()V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/j2;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/j2;-><init>()V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_3
    const-string v0, "zzf"

    .line 35
    .line 36
    const-string v1, "zze"

    .line 37
    .line 38
    const-string v2, "zzd"

    .line 39
    .line 40
    const-string v3, "zzg"

    .line 41
    .line 42
    sget-object v4, Lcom/google/android/gms/internal/play_billing/k2;->a:Lcom/google/android/gms/internal/play_billing/k2;

    .line 43
    .line 44
    const-string v5, "zzh"

    .line 45
    .line 46
    const-class v6, Lcom/google/android/gms/internal/play_billing/b3;

    .line 47
    .line 48
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    sget-object v0, Lcom/google/android/gms/internal/play_billing/j2;->zzb:Lcom/google/android/gms/internal/play_billing/j2;

    .line 53
    .line 54
    new-instance v1, Lcom/google/android/gms/internal/play_billing/s1;

    .line 55
    .line 56
    const-string v2, "\u0001\u0003\u0001\u0001\u0001\u0004\u0003\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1009\u0001\u0004<\u0000"

    .line 57
    .line 58
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/s1;-><init>(Lcom/google/android/gms/internal/play_billing/l0;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_4
    const/4 p1, 0x1

    .line 63
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1
.end method
