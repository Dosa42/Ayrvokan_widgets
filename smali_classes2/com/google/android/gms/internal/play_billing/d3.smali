.class public final Lcom/google/android/gms/internal/play_billing/d3;
.super Lcom/google/android/gms/internal/play_billing/l0;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/d3;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:Lcom/google/android/gms/internal/play_billing/y2;

.field private zzh:Lcom/google/android/gms/internal/play_billing/z2;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/d3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/d3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/d3;->zzb:Lcom/google/android/gms/internal/play_billing/d3;

    const-class v1, Lcom/google/android/gms/internal/play_billing/d3;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/l0;->i(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/l0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/l0;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/d3;->zze:I

    return-void
.end method

.method public static synthetic n(Lcom/google/android/gms/internal/play_billing/d3;Lcom/google/android/gms/internal/play_billing/g3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/d3;->zzf:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/d3;->zze:I

    return-void
.end method

.method public static synthetic o(Lcom/google/android/gms/internal/play_billing/d3;Lcom/google/android/gms/internal/play_billing/y2;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/d3;->zzg:Lcom/google/android/gms/internal/play_billing/y2;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/d3;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/d3;->zzd:I

    return-void
.end method

.method public static synthetic p(Lcom/google/android/gms/internal/play_billing/d3;Lcom/google/android/gms/internal/play_billing/j2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/d3;->zzf:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/d3;->zze:I

    return-void
.end method

.method public static synthetic q(Lcom/google/android/gms/internal/play_billing/d3;Lcom/google/android/gms/internal/play_billing/m2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/d3;->zzf:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/d3;->zze:I

    return-void
.end method

.method public static r()Lcom/google/android/gms/internal/play_billing/c3;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/d3;->zzb:Lcom/google/android/gms/internal/play_billing/d3;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/d3;->m(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/play_billing/k0;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/gms/internal/play_billing/c3;

    .line 11
    .line 12
    return-object v0
.end method

.method public static synthetic s()Lcom/google/android/gms/internal/play_billing/d3;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/d3;->zzb:Lcom/google/android/gms/internal/play_billing/d3;

    return-object v0
.end method


# virtual methods
.method public final m(I)Ljava/lang/Object;
    .locals 9

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/d3;->zzb:Lcom/google/android/gms/internal/play_billing/d3;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/c3;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/c3;-><init>()V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/d3;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/d3;-><init>()V

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
    const-class v4, Lcom/google/android/gms/internal/play_billing/j2;

    .line 43
    .line 44
    const-class v5, Lcom/google/android/gms/internal/play_billing/m2;

    .line 45
    .line 46
    const-class v6, Lcom/google/android/gms/internal/play_billing/g3;

    .line 47
    .line 48
    const-class v7, Lcom/google/android/gms/internal/play_billing/w2;

    .line 49
    .line 50
    const-string v8, "zzh"

    .line 51
    .line 52
    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    sget-object v0, Lcom/google/android/gms/internal/play_billing/d3;->zzb:Lcom/google/android/gms/internal/play_billing/d3;

    .line 57
    .line 58
    new-instance v1, Lcom/google/android/gms/internal/play_billing/s1;

    .line 59
    .line 60
    const-string v2, "\u0001\u0006\u0001\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1009\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006\u1009\u0001"

    .line 61
    .line 62
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/s1;-><init>(Lcom/google/android/gms/internal/play_billing/l0;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-object v1

    .line 66
    :cond_4
    const/4 p1, 0x1

    .line 67
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1
.end method
