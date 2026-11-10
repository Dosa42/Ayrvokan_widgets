.class public final Lcom/google/android/gms/internal/play_billing/y2;
.super Lcom/google/android/gms/internal/play_billing/l0;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/y2;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/y2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/y2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/y2;->zzb:Lcom/google/android/gms/internal/play_billing/y2;

    const-class v1, Lcom/google/android/gms/internal/play_billing/y2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/l0;->i(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/l0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/l0;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/y2;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/y2;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static synthetic n(Lcom/google/android/gms/internal/play_billing/y2;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/y2;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/y2;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/y2;->zze:Ljava/lang/String;

    return-void
.end method

.method public static synthetic o(Lcom/google/android/gms/internal/play_billing/y2;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/y2;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/y2;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/y2;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static synthetic p(Lcom/google/android/gms/internal/play_billing/y2;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/y2;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/y2;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/y2;->zzg:I

    return-void
.end method

.method public static q()Lcom/google/android/gms/internal/play_billing/x2;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/y2;->zzb:Lcom/google/android/gms/internal/play_billing/y2;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/y2;->m(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/play_billing/k0;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/gms/internal/play_billing/x2;

    .line 11
    .line 12
    return-object v0
.end method

.method public static synthetic r()Lcom/google/android/gms/internal/play_billing/y2;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/y2;->zzb:Lcom/google/android/gms/internal/play_billing/y2;

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/y2;->zzb:Lcom/google/android/gms/internal/play_billing/y2;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/x2;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/x2;-><init>()V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/y2;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/y2;-><init>()V

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
    const-string v1, "zzf"

    .line 39
    .line 40
    const-string v2, "zzg"

    .line 41
    .line 42
    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/play_billing/y2;->zzb:Lcom/google/android/gms/internal/play_billing/y2;

    .line 47
    .line 48
    new-instance v1, Lcom/google/android/gms/internal/play_billing/s1;

    .line 49
    .line 50
    const-string v2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1004\u0002"

    .line 51
    .line 52
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/s1;-><init>(Lcom/google/android/gms/internal/play_billing/l0;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    :cond_4
    const/4 p1, 0x1

    .line 57
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1
.end method
