.class public final Lx0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lf0/k;

.field public final c:Lw0/a;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lf0/k;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ly0/l;->b:Ly0/l;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lx0/a;->b:Lf0/k;

    .line 7
    .line 8
    iput-object v0, p0, Lx0/a;->c:Lw0/a;

    .line 9
    .line 10
    iput-object p2, p0, Lx0/a;->d:Ljava/lang/String;

    .line 11
    .line 12
    filled-new-array {p1, v0, p2}, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lx0/a;->a:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lx0/a;

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lx0/a;

    iget-object v2, p0, Lx0/a;->b:Lf0/k;

    iget-object v3, p1, Lx0/a;->b:Lf0/k;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/i0;->E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lx0/a;->c:Lw0/a;

    iget-object v3, p1, Lx0/a;->c:Lw0/a;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/i0;->E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lx0/a;->d:Ljava/lang/String;

    iget-object p1, p1, Lx0/a;->d:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/i0;->E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lx0/a;->a:I

    return v0
.end method
