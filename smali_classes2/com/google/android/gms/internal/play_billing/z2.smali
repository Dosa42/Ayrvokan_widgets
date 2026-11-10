.class public final Lcom/google/android/gms/internal/play_billing/z2;
.super Lcom/google/android/gms/internal/play_billing/l0;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/z2;


# instance fields
.field private zzd:I

.field private zze:Z

.field private zzf:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/z2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/z2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/z2;->zzb:Lcom/google/android/gms/internal/play_billing/z2;

    const-class v1, Lcom/google/android/gms/internal/play_billing/z2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/l0;->i(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/l0;)V

    return-void
.end method

.method public static synthetic n()Lcom/google/android/gms/internal/play_billing/z2;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/z2;->zzb:Lcom/google/android/gms/internal/play_billing/z2;

    return-object v0
.end method


# virtual methods
.method public final m(I)Ljava/lang/Object;
    .locals 3

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/z2;->zzb:Lcom/google/android/gms/internal/play_billing/z2;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/u2;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/play_billing/u2;-><init>(I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/z2;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/z2;-><init>()V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_3
    const-string p1, "zzf"

    .line 36
    .line 37
    const-string v0, "zzd"

    .line 38
    .line 39
    const-string v1, "zze"

    .line 40
    .line 41
    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    sget-object v0, Lcom/google/android/gms/internal/play_billing/z2;->zzb:Lcom/google/android/gms/internal/play_billing/z2;

    .line 46
    .line 47
    new-instance v1, Lcom/google/android/gms/internal/play_billing/s1;

    .line 48
    .line 49
    const-string v2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1007\u0001"

    .line 50
    .line 51
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/s1;-><init>(Lcom/google/android/gms/internal/play_billing/l0;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-object v1

    .line 55
    :cond_4
    const/4 p1, 0x1

    .line 56
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method
