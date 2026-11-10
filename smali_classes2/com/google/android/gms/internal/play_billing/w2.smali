.class public final Lcom/google/android/gms/internal/play_billing/w2;
.super Lcom/google/android/gms/internal/play_billing/l0;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/q0;

.field private static final zzd:Lcom/google/android/gms/internal/play_billing/w2;


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/play_billing/p0;

.field private zzi:Lcom/google/android/gms/internal/play_billing/r0;

.field private zzj:Lcom/google/android/gms/internal/play_billing/p2;

.field private zzk:Z

.field private zzl:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly0/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly0/i;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/w2;->zzb:Lcom/google/android/gms/internal/play_billing/q0;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/w2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/w2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/w2;->zzd:Lcom/google/android/gms/internal/play_billing/w2;

    const-class v1, Lcom/google/android/gms/internal/play_billing/w2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/l0;->i(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/l0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/l0;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/w2;->zzf:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/play_billing/m0;->d:Lcom/google/android/gms/internal/play_billing/m0;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/w2;->zzh:Lcom/google/android/gms/internal/play_billing/p0;

    .line 11
    .line 12
    sget-object v0, Lcom/google/android/gms/internal/play_billing/r1;->d:Lcom/google/android/gms/internal/play_billing/r1;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/w2;->zzi:Lcom/google/android/gms/internal/play_billing/r0;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic n()Lcom/google/android/gms/internal/play_billing/w2;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/w2;->zzd:Lcom/google/android/gms/internal/play_billing/w2;

    return-object v0
.end method


# virtual methods
.method public final m(I)Ljava/lang/Object;
    .locals 11

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/w2;->zzd:Lcom/google/android/gms/internal/play_billing/w2;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/u2;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/u2;-><init>()V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/w2;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/w2;-><init>()V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_3
    const-string v0, "zze"

    .line 35
    .line 36
    const-string v1, "zzf"

    .line 37
    .line 38
    const-string v2, "zzg"

    .line 39
    .line 40
    sget-object v3, Lcom/google/android/gms/internal/play_billing/v2;->a:Lcom/google/android/gms/internal/play_billing/v2;

    .line 41
    .line 42
    const-string v4, "zzh"

    .line 43
    .line 44
    sget-object v5, Lcom/google/android/gms/internal/play_billing/q2;->a:Lcom/google/android/gms/internal/play_billing/q2;

    .line 45
    .line 46
    const-string v6, "zzi"

    .line 47
    .line 48
    const-class v7, Lcom/google/android/gms/internal/play_billing/e3;

    .line 49
    .line 50
    const-string v8, "zzj"

    .line 51
    .line 52
    const-string v9, "zzk"

    .line 53
    .line 54
    const-string v10, "zzl"

    .line 55
    .line 56
    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    sget-object v0, Lcom/google/android/gms/internal/play_billing/w2;->zzd:Lcom/google/android/gms/internal/play_billing/w2;

    .line 61
    .line 62
    new-instance v1, Lcom/google/android/gms/internal/play_billing/s1;

    .line 63
    .line 64
    const-string v2, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u180c\u0001\u0003\u082c\u0004\u001b\u0005\u1009\u0002\u0006\u1007\u0003\u0007\u1007\u0004"

    .line 65
    .line 66
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/s1;-><init>(Lcom/google/android/gms/internal/play_billing/l0;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_4
    const/4 p1, 0x1

    .line 71
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1
.end method
