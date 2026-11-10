.class public final Lcom/google/android/gms/internal/play_billing/h3;
.super Lcom/google/android/gms/internal/play_billing/l0;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/h3;


# instance fields
.field private zzd:I

.field private zze:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/h3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/h3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/h3;->zzb:Lcom/google/android/gms/internal/play_billing/h3;

    const-class v1, Lcom/google/android/gms/internal/play_billing/h3;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/l0;->i(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/l0;)V

    return-void
.end method

.method public static synthetic n()Lcom/google/android/gms/internal/play_billing/h3;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/h3;->zzb:Lcom/google/android/gms/internal/play_billing/h3;

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
    const/4 v1, 0x0

    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/play_billing/h3;->zzb:Lcom/google/android/gms/internal/play_billing/h3;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/u2;

    .line 23
    .line 24
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/play_billing/u2;-><init>(Lcom/google/android/gms/internal/play_billing/t2;)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/h3;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/h3;-><init>()V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_3
    const-string p1, "zzd"

    .line 35
    .line 36
    const-string v0, "zze"

    .line 37
    .line 38
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget-object v0, Lcom/google/android/gms/internal/play_billing/h3;->zzb:Lcom/google/android/gms/internal/play_billing/h3;

    .line 43
    .line 44
    new-instance v1, Lcom/google/android/gms/internal/play_billing/s1;

    .line 45
    .line 46
    const-string v2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u1004\u0000"

    .line 47
    .line 48
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/s1;-><init>(Lcom/google/android/gms/internal/play_billing/l0;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-object v1

    .line 52
    :cond_4
    const/4 p1, 0x1

    .line 53
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method
