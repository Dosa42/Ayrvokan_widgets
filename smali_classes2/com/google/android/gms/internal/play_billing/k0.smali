.class public abstract Lcom/google/android/gms/internal/play_billing/k0;
.super Lcom/google/android/gms/internal/play_billing/q;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/play_billing/l0;

.field public b:Lcom/google/android/gms/internal/play_billing/l0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/l0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/q;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/k0;->a:Lcom/google/android/gms/internal/play_billing/l0;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/l0;->l()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/l0;->m(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/google/android/gms/internal/play_billing/l0;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v0, "Default instance must be immutable."

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public static e(Lcom/google/android/gms/internal/play_billing/l0;Lcom/google/android/gms/internal/play_billing/l0;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/q1;->c:Lcom/google/android/gms/internal/play_billing/q1;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/q1;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/t1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/t1;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/play_billing/l0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/k0;->b()Lcom/google/android/gms/internal/play_billing/l0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/l0;->k(Lcom/google/android/gms/internal/play_billing/l0;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/play_billing/v1;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/v1;-><init>()V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public final b()Lcom/google/android/gms/internal/play_billing/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/l0;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/l0;->g()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    return-object v0
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/l0;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/k0;->d()V

    :cond_0
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/k0;->a:Lcom/google/android/gms/internal/play_billing/l0;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/l0;->m(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/play_billing/k0;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/k0;->b()Lcom/google/android/gms/internal/play_billing/l0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    .line 15
    .line 16
    return-object v0
.end method

.method public final d()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/k0;->a:Lcom/google/android/gms/internal/play_billing/l0;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/l0;->m(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/play_billing/l0;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/k0;->e(Lcom/google/android/gms/internal/play_billing/l0;Lcom/google/android/gms/internal/play_billing/l0;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    .line 16
    .line 17
    return-void
.end method
