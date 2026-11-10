.class public final Lcom/google/android/gms/internal/play_billing/l;
.super Lcom/google/android/gms/internal/play_billing/i;
.source "SourceFile"


# instance fields
.field public final transient c:Lcom/google/android/gms/internal/play_billing/h;

.field public final transient d:[Ljava/lang/Object;

.field public final transient e:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/h;[Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/i;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/l;->c:Lcom/google/android/gms/internal/play_billing/h;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/l;->d:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/l;->e:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/l;->c:Lcom/google/android/gms/internal/play_billing/h;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/play_billing/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final e([Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i;->b:Lcom/google/android/gms/internal/play_billing/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/l;->i()Lcom/google/android/gms/internal/play_billing/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/i;->b:Lcom/google/android/gms/internal/play_billing/f;

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/f;->e([Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final i()Lcom/google/android/gms/internal/play_billing/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/k;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/k;-><init>(Lcom/google/android/gms/internal/play_billing/l;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i;->b:Lcom/google/android/gms/internal/play_billing/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/l;->i()Lcom/google/android/gms/internal/play_billing/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/i;->b:Lcom/google/android/gms/internal/play_billing/f;

    .line 10
    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/f;->j(I)Lcom/google/android/gms/internal/play_billing/d;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/l;->e:I

    return v0
.end method
