.class public abstract Lcom/google/android/gms/internal/play_billing/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/j1;


# instance fields
.field protected zza:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/r;->zza:I

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/internal/play_billing/t1;)I
.end method

.method public final b()[B
    .locals 5

    .line 1
    :try_start_0
    move-object v0, p0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/l0;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/l0;->d()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    new-array v2, v1, [B

    .line 9
    .line 10
    new-instance v3, Lcom/google/android/gms/internal/play_billing/b0;

    .line 11
    .line 12
    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/play_billing/b0;-><init>([BI)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/play_billing/l0;->c(Lcom/google/android/gms/internal/play_billing/b0;)V

    .line 16
    .line 17
    .line 18
    iget v0, v3, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    .line 19
    .line 20
    sub-int/2addr v1, v0

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    return-object v2

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v1, "Did not write as much data as expected."

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v2, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v3, "Serializing "

    .line 44
    .line 45
    const-string v4, " to a byte array threw an IOException (should never happen)."

    .line 46
    .line 47
    invoke-static {v3, v1, v4}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    throw v2
.end method
