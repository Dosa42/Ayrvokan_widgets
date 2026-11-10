.class public final Lcom/google/android/gms/internal/play_billing/b0;
.super Lc1/b;
.source "SourceFile"


# static fields
.field public static final G:Ljava/util/logging/Logger;

.field public static final H:Z


# instance fields
.field public C:Lcom/google/android/gms/internal/play_billing/d0;

.field public final D:[B

.field public final E:I

.field public F:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/play_billing/b0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/gms/internal/play_billing/b0;->G:Ljava/util/logging/Logger;

    .line 12
    .line 13
    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/f2;->e:Z

    .line 14
    .line 15
    sput-boolean v0, Lcom/google/android/gms/internal/play_billing/b0;->H:Z

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lc1/b;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    sub-int v1, v0, p2

    .line 6
    .line 7
    or-int/2addr v1, p2

    .line 8
    const/4 v2, 0x0

    .line 9
    if-ltz v1, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->D:[B

    .line 12
    .line 13
    iput v2, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    .line 14
    .line 15
    iput p2, p0, Lcom/google/android/gms/internal/play_billing/b0;->E:I

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    filled-new-array {v0, v1, p2}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const-string v0, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 37
    .line 38
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public static p0(ILcom/google/android/gms/internal/play_billing/j1;Lcom/google/android/gms/internal/play_billing/t1;)I
    .locals 0

    .line 1
    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    move-result p0

    add-int/2addr p0, p0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/r;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/r;->a(Lcom/google/android/gms/internal/play_billing/t1;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static q0(Lcom/google/android/gms/internal/play_billing/j1;Lcom/google/android/gms/internal/play_billing/t1;)I
    .locals 0

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/play_billing/r;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/r;->a(Lcom/google/android/gms/internal/play_billing/t1;)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static r0(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/h2;->b(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/play_billing/g2; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/play_billing/s0;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static s0(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x160

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static t0(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x280

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method


# virtual methods
.method public final a0(B)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->D:[B

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/c0;

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/play_billing/b0;->E:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final b0([BI)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->D:[B

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/c0;

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/play_billing/b0;->E:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v1, v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final c0(ILcom/google/android/gms/internal/play_billing/z;)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/b0;->m0(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/z;->i()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/b0;->m0(I)V

    .line 13
    .line 14
    .line 15
    check-cast p2, Lcom/google/android/gms/internal/play_billing/a0;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/a0;->i()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/a0;->c:[B

    .line 22
    .line 23
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/b0;->b0([BI)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final d0(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/b0;->m0(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/b0;->e0(I)V

    return-void
.end method

.method public final e0(I)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->D:[B

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    add-int/lit8 v2, v1, 0x1

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/c0;

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/play_billing/b0;->E:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final f0(JI)V
    .locals 0

    .line 1
    shl-int/lit8 p3, p3, 0x3

    or-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/play_billing/b0;->m0(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/b0;->g0(J)V

    return-void
.end method

.method public final g0(J)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->D:[B

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    add-int/lit8 v2, v1, 0x1

    long-to-int v3, p1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x8

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x10

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/play_billing/c0;

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/b0;->E:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method

.method public final h0(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/b0;->m0(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/b0;->i0(I)V

    return-void
.end method

.method public final i0(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/b0;->m0(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/play_billing/b0;->o0(J)V

    return-void
.end method

.method public final j0(ILjava/lang/String;)V
    .locals 7

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/b0;->m0(I)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    mul-int/lit8 v0, v0, 0x3

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 25
    .line 26
    .line 27
    move-result v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/play_billing/g2; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    iget v2, p0, Lcom/google/android/gms/internal/play_billing/b0;->E:I

    .line 29
    .line 30
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/b0;->D:[B

    .line 31
    .line 32
    if-ne v1, v0, :cond_0

    .line 33
    .line 34
    add-int v0, p1, v1

    .line 35
    .line 36
    :try_start_1
    iput v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    .line 37
    .line 38
    sub-int/2addr v2, v0

    .line 39
    invoke-static {v0, v2, p2, v3}, Lcom/google/android/gms/internal/play_billing/h2;->a(IILjava/lang/String;[B)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    .line 44
    .line 45
    sub-int v2, v0, p1

    .line 46
    .line 47
    sub-int/2addr v2, v1

    .line 48
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/play_billing/b0;->m0(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/h2;->b(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/b0;->m0(I)V

    .line 57
    .line 58
    .line 59
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    .line 60
    .line 61
    sub-int/2addr v2, v0

    .line 62
    invoke-static {v0, v2, p2, v3}, Lcom/google/android/gms/internal/play_billing/h2;->a(IILjava/lang/String;[B)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/play_billing/g2; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catch_0
    move-exception p1

    .line 70
    new-instance p2, Lcom/google/android/gms/internal/play_billing/c0;

    .line 71
    .line 72
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    .line 73
    .line 74
    .line 75
    throw p2

    .line 76
    :catch_1
    move-exception v0

    .line 77
    move-object v6, v0

    .line 78
    iput p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    .line 79
    .line 80
    sget-object v1, Lcom/google/android/gms/internal/play_billing/b0;->G:Ljava/util/logging/Logger;

    .line 81
    .line 82
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 83
    .line 84
    const-string v3, "com.google.protobuf.CodedOutputStream"

    .line 85
    .line 86
    const-string v4, "inefficientWriteStringNoTag"

    .line 87
    .line 88
    const-string v5, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    .line 89
    .line 90
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    sget-object p1, Lcom/google/android/gms/internal/play_billing/s0;->a:Ljava/nio/charset/Charset;

    .line 94
    .line 95
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :try_start_2
    array-length p2, p1

    .line 100
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/b0;->m0(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/b0;->b0([BI)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 104
    .line 105
    .line 106
    :goto_1
    return-void

    .line 107
    :catch_2
    move-exception p1

    .line 108
    new-instance p2, Lcom/google/android/gms/internal/play_billing/c0;

    .line 109
    .line 110
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    .line 111
    .line 112
    .line 113
    throw p2
.end method

.method public final k0(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/b0;->m0(I)V

    return-void
.end method

.method public final l0(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/b0;->m0(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/b0;->m0(I)V

    return-void
.end method

.method public final m0(I)V
    .locals 4

    .line 1
    :goto_0
    and-int/lit8 v0, p1, -0x80

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/b0;->D:[B

    if-nez v0, :cond_0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    or-int/lit16 v2, p1, 0x80

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/c0;

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/play_billing/b0;->E:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final n0(JI)V
    .locals 0

    .line 1
    shl-int/lit8 p3, p3, 0x3

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/play_billing/b0;->m0(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/b0;->o0(J)V

    return-void
.end method

.method public final o0(J)V
    .locals 12

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/b0;->H:Z

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    const-wide/16 v4, -0x80

    .line 7
    .line 8
    iget v6, p0, Lcom/google/android/gms/internal/play_billing/b0;->E:I

    .line 9
    .line 10
    iget-object v7, p0, Lcom/google/android/gms/internal/play_billing/b0;->D:[B

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    .line 15
    .line 16
    sub-int v0, v6, v0

    .line 17
    .line 18
    const/16 v8, 0xa

    .line 19
    .line 20
    if-lt v0, v8, :cond_1

    .line 21
    .line 22
    :goto_0
    and-long v8, p1, v4

    .line 23
    .line 24
    cmp-long v0, v8, v2

    .line 25
    .line 26
    long-to-int v6, p1

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    .line 30
    .line 31
    add-int/lit8 p2, p1, 0x1

    .line 32
    .line 33
    iput p2, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    .line 34
    .line 35
    int-to-long p1, p1

    .line 36
    int-to-byte v0, v6

    .line 37
    sget-wide v1, Lcom/google/android/gms/internal/play_billing/f2;->f:J

    .line 38
    .line 39
    add-long/2addr v1, p1

    .line 40
    sget-object p1, Lcom/google/android/gms/internal/play_billing/f2;->c:Lcom/google/android/gms/internal/play_billing/e2;

    .line 41
    .line 42
    invoke-virtual {p1, v7, v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/e2;->d(Ljava/lang/Object;JB)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    .line 47
    .line 48
    add-int/lit8 v8, v0, 0x1

    .line 49
    .line 50
    iput v8, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    .line 51
    .line 52
    int-to-long v8, v0

    .line 53
    or-int/lit16 v0, v6, 0x80

    .line 54
    .line 55
    and-int/lit16 v0, v0, 0xff

    .line 56
    .line 57
    int-to-byte v0, v0

    .line 58
    sget-wide v10, Lcom/google/android/gms/internal/play_billing/f2;->f:J

    .line 59
    .line 60
    add-long/2addr v10, v8

    .line 61
    sget-object v6, Lcom/google/android/gms/internal/play_billing/f2;->c:Lcom/google/android/gms/internal/play_billing/e2;

    .line 62
    .line 63
    invoke-virtual {v6, v7, v10, v11, v0}, Lcom/google/android/gms/internal/play_billing/e2;->d(Ljava/lang/Object;JB)V

    .line 64
    .line 65
    .line 66
    ushr-long/2addr p1, v1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    :goto_1
    and-long v8, p1, v4

    .line 69
    .line 70
    cmp-long v0, v8, v2

    .line 71
    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    .line 75
    .line 76
    add-int/lit8 v1, v0, 0x1

    .line 77
    .line 78
    iput v1, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    .line 79
    .line 80
    long-to-int p1, p1

    .line 81
    int-to-byte p1, p1

    .line 82
    aput-byte p1, v7, v0

    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    .line 86
    .line 87
    add-int/lit8 v8, v0, 0x1

    .line 88
    .line 89
    iput v8, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    .line 90
    .line 91
    long-to-int v8, p1

    .line 92
    or-int/lit16 v8, v8, 0x80

    .line 93
    .line 94
    and-int/lit16 v8, v8, 0xff

    .line 95
    .line 96
    int-to-byte v8, v8

    .line 97
    aput-byte v8, v7, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    ushr-long/2addr p1, v1

    .line 100
    goto :goto_1

    .line 101
    :catch_0
    move-exception p1

    .line 102
    new-instance p2, Lcom/google/android/gms/internal/play_billing/c0;

    .line 103
    .line 104
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->F:I

    .line 105
    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const/4 v2, 0x1

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const-string v1, "Pos: %d, limit: %d, len: %d"

    .line 124
    .line 125
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 130
    .line 131
    .line 132
    throw p2
.end method
