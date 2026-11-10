.class public abstract Lcom/google/android/gms/internal/play_billing/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/w;

    .line 3
    .line 4
    iget v1, v0, Lcom/google/android/gms/internal/play_billing/w;->a:I

    .line 5
    .line 6
    iget v2, v0, Lcom/google/android/gms/internal/play_billing/w;->b:I

    .line 7
    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    add-int/lit8 v2, v1, 0x1

    .line 11
    .line 12
    iput v2, v0, Lcom/google/android/gms/internal/play_billing/w;->a:I

    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/w;->c:Lcom/google/android/gms/internal/play_billing/z;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/z;->h(I)B

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
