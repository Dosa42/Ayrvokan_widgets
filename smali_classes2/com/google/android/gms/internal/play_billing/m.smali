.class public final Lcom/google/android/gms/internal/play_billing/m;
.super Lcom/google/android/gms/internal/play_billing/i;
.source "SourceFile"


# instance fields
.field public final transient c:Lcom/google/android/gms/internal/play_billing/h;

.field public final transient d:Lcom/google/android/gms/internal/play_billing/f;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/h;Lcom/google/android/gms/internal/play_billing/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/i;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/m;->c:Lcom/google/android/gms/internal/play_billing/h;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/m;->d:Lcom/google/android/gms/internal/play_billing/f;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/m;->c:Lcom/google/android/gms/internal/play_billing/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e([Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/m;->d:Lcom/google/android/gms/internal/play_billing/f;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/f;->e([Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/m;->d:Lcom/google/android/gms/internal/play_billing/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/f;->j(I)Lcom/google/android/gms/internal/play_billing/d;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/m;->c:Lcom/google/android/gms/internal/play_billing/h;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/play_billing/o;

    .line 4
    .line 5
    iget v0, v0, Lcom/google/android/gms/internal/play_billing/o;->f:I

    .line 6
    .line 7
    return v0
.end method
