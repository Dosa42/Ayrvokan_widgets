.class public final Lcom/google/android/gms/internal/play_billing/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/t1;


# instance fields
.field public final a:Lcom/google/android/gms/internal/play_billing/j1;

.field public final b:Lcom/google/android/gms/internal/play_billing/x1;

.field public final c:Lcom/google/android/gms/internal/play_billing/f0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/x1;Lcom/google/android/gms/internal/play_billing/f0;Lcom/google/android/gms/internal/play_billing/j1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/m1;->b:Lcom/google/android/gms/internal/play_billing/x1;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/m1;->c:Lcom/google/android/gms/internal/play_billing/f0;

    iput-object p3, p0, Lcom/google/android/gms/internal/play_billing/m1;->a:Lcom/google/android/gms/internal/play_billing/j1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/play_billing/l0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/m1;->a:Lcom/google/android/gms/internal/play_billing/j1;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/l0;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/l0;

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/l0;->m(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/play_billing/l0;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/play_billing/l0;

    .line 18
    .line 19
    const/4 v1, 0x5

    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/l0;->m(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/google/android/gms/internal/play_billing/k0;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/k0;->b()Lcom/google/android/gms/internal/play_billing/l0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/m1;->b:Lcom/google/android/gms/internal/play_billing/x1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/x1;->c(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/m1;->c:Lcom/google/android/gms/internal/play_billing/f0;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    throw p1
.end method

.method public final c(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/d0;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/play_billing/m1;->c:Lcom/google/android/gms/internal/play_billing/f0;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    throw p1
.end method

.method public final d(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/v;)V
    .locals 0

    .line 1
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/play_billing/l0;

    iget-object p3, p2, Lcom/google/android/gms/internal/play_billing/l0;->zzc:Lcom/google/android/gms/internal/play_billing/w1;

    sget-object p4, Lcom/google/android/gms/internal/play_billing/w1;->f:Lcom/google/android/gms/internal/play_billing/w1;

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/w1;->b()Lcom/google/android/gms/internal/play_billing/w1;

    move-result-object p3

    iput-object p3, p2, Lcom/google/android/gms/internal/play_billing/l0;->zzc:Lcom/google/android/gms/internal/play_billing/w1;

    :goto_0
    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final e(Ljava/lang/Object;)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/m1;->b:Lcom/google/android/gms/internal/play_billing/x1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/google/android/gms/internal/play_billing/l0;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/l0;->zzc:Lcom/google/android/gms/internal/play_billing/w1;

    .line 9
    .line 10
    iget v0, p1, Lcom/google/android/gms/internal/play_billing/w1;->d:I

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    move v1, v0

    .line 17
    :goto_0
    iget v2, p1, Lcom/google/android/gms/internal/play_billing/w1;->a:I

    .line 18
    .line 19
    if-ge v0, v2, :cond_0

    .line 20
    .line 21
    iget-object v2, p1, Lcom/google/android/gms/internal/play_billing/w1;->b:[I

    .line 22
    .line 23
    aget v2, v2, v0

    .line 24
    .line 25
    ushr-int/lit8 v2, v2, 0x3

    .line 26
    .line 27
    iget-object v3, p1, Lcom/google/android/gms/internal/play_billing/w1;->c:[Ljava/lang/Object;

    .line 28
    .line 29
    aget-object v3, v3, v0

    .line 30
    .line 31
    check-cast v3, Lcom/google/android/gms/internal/play_billing/z;

    .line 32
    .line 33
    const/16 v4, 0x8

    .line 34
    .line 35
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    add-int/2addr v4, v4

    .line 40
    const/16 v5, 0x10

    .line 41
    .line 42
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    add-int/2addr v2, v5

    .line 51
    const/16 v5, 0x18

    .line 52
    .line 53
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/z;->i()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    add-int/2addr v6, v3

    .line 66
    add-int/2addr v6, v5

    .line 67
    add-int/2addr v4, v2

    .line 68
    add-int/2addr v4, v6

    .line 69
    add-int/2addr v1, v4

    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    iput v1, p1, Lcom/google/android/gms/internal/play_billing/w1;->d:I

    .line 74
    .line 75
    move v0, v1

    .line 76
    :cond_1
    return v0
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/m1;->b:Lcom/google/android/gms/internal/play_billing/x1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/u1;->u(Lcom/google/android/gms/internal/play_billing/x1;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/m1;->b:Lcom/google/android/gms/internal/play_billing/x1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/google/android/gms/internal/play_billing/l0;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/l0;->zzc:Lcom/google/android/gms/internal/play_billing/w1;

    .line 9
    .line 10
    check-cast p2, Lcom/google/android/gms/internal/play_billing/l0;

    .line 11
    .line 12
    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/l0;->zzc:Lcom/google/android/gms/internal/play_billing/w1;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/w1;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    return p1

    .line 22
    :cond_0
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method public final h(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/m1;->c:Lcom/google/android/gms/internal/play_billing/f0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    throw p1
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/m1;->b:Lcom/google/android/gms/internal/play_billing/x1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/google/android/gms/internal/play_billing/l0;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/l0;->zzc:Lcom/google/android/gms/internal/play_billing/w1;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/w1;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method
