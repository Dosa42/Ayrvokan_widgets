.class public final Lcom/google/android/gms/internal/play_billing/b3;
.super Lcom/google/android/gms/internal/play_billing/l0;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/b3;


# instance fields
.field private zzd:I

.field private zze:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/b3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/b3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/b3;->zzb:Lcom/google/android/gms/internal/play_billing/b3;

    const-class v1, Lcom/google/android/gms/internal/play_billing/b3;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/l0;->i(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/l0;)V

    return-void
.end method

.method public static synthetic n()Lcom/google/android/gms/internal/play_billing/b3;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/b3;->zzb:Lcom/google/android/gms/internal/play_billing/b3;

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/b3;->zzb:Lcom/google/android/gms/internal/play_billing/b3;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/u2;

    .line 23
    .line 24
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/play_billing/u2;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/b3;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/b3;-><init>()V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/play_billing/a3;->a:Lcom/google/android/gms/internal/play_billing/a3;

    .line 35
    .line 36
    const-string v0, "zzd"

    .line 37
    .line 38
    const-string v1, "zze"

    .line 39
    .line 40
    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/play_billing/b3;->zzb:Lcom/google/android/gms/internal/play_billing/b3;

    .line 45
    .line 46
    new-instance v1, Lcom/google/android/gms/internal/play_billing/s1;

    .line 47
    .line 48
    const-string v2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u180c\u0000"

    .line 49
    .line 50
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/s1;-><init>(Lcom/google/android/gms/internal/play_billing/l0;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_4
    const/4 p1, 0x1

    .line 55
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method
