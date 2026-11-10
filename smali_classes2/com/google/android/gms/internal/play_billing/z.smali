.class public abstract Lcom/google/android/gms/internal/play_billing/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# static fields
.field public static final b:Lcom/google/android/gms/internal/play_billing/a0;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/a0;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/s0;->b:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/z;->b:Lcom/google/android/gms/internal/play_billing/a0;

    sget v0, Lcom/google/android/gms/internal/play_billing/u;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/play_billing/z;->a:I

    .line 6
    .line 7
    return-void
.end method

.method public static j(III)I
    .locals 3

    .line 1
    or-int v0, p0, p1

    sub-int v1, p1, p0

    or-int/2addr v0, v1

    sub-int v2, p2, p1

    or-int/2addr v0, v2

    if-gez v0, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Beginning index larger than ending index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Beginning index: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v1
.end method

.method public static k([BII)Lcom/google/android/gms/internal/play_billing/a0;
    .locals 3

    .line 1
    add-int v0, p1, p2

    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/z;->j(III)I

    new-instance v0, Lcom/google/android/gms/internal/play_billing/a0;

    new-array v1, p2, [B

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final e()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/z;->a:I

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/z;->i()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    move-object v1, p0

    .line 10
    check-cast v1, Lcom/google/android/gms/internal/play_billing/a0;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v0

    .line 14
    :goto_0
    if-ge v2, v0, :cond_0

    .line 15
    .line 16
    mul-int/lit8 v3, v3, 0x1f

    .line 17
    .line 18
    iget-object v4, v1, Lcom/google/android/gms/internal/play_billing/a0;->c:[B

    .line 19
    .line 20
    aget-byte v4, v4, v2

    .line 21
    .line 22
    add-int/2addr v3, v4

    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-nez v3, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v3

    .line 31
    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/play_billing/z;->a:I

    .line 32
    .line 33
    :cond_2
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v2, v1, v3

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/z;->i()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v4, 0x1

    .line 26
    aput-object v2, v1, v4

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/z;->i()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/16 v4, 0x32

    .line 33
    .line 34
    if-gt v2, v4, :cond_0

    .line 35
    .line 36
    invoke-static {p0}, Lc1/b;->A(Lcom/google/android/gms/internal/play_billing/z;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    move-object v2, p0

    .line 42
    check-cast v2, Lcom/google/android/gms/internal/play_billing/a0;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/a0;->i()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const/16 v5, 0x2f

    .line 49
    .line 50
    invoke-static {v3, v5, v4}, Lcom/google/android/gms/internal/play_billing/z;->j(III)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_1

    .line 55
    .line 56
    sget-object v2, Lcom/google/android/gms/internal/play_billing/z;->b:Lcom/google/android/gms/internal/play_billing/a0;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance v4, Lcom/google/android/gms/internal/play_billing/y;

    .line 60
    .line 61
    iget-object v2, v2, Lcom/google/android/gms/internal/play_billing/a0;->c:[B

    .line 62
    .line 63
    invoke-direct {v4, v2, v3}, Lcom/google/android/gms/internal/play_billing/y;-><init>([BI)V

    .line 64
    .line 65
    .line 66
    move-object v2, v4

    .line 67
    :goto_0
    invoke-static {v2}, Lc1/b;->A(Lcom/google/android/gms/internal/play_billing/z;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const-string v3, "..."

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    :goto_1
    const/4 v3, 0x2

    .line 78
    aput-object v2, v1, v3

    .line 79
    .line 80
    const-string v2, "<ByteString@%s size=%d contents=\"%s\">"

    .line 81
    .line 82
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0
.end method

.method public abstract g(I)B
.end method

.method public abstract h(I)B
.end method

.method public final bridge synthetic hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/z;->e()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public abstract i()I
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/w;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/w;-><init>(Lcom/google/android/gms/internal/play_billing/z;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/z;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
