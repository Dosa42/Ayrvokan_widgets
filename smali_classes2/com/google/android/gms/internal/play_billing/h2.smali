.class public abstract Lcom/google/android/gms/internal/play_billing/h2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly0/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/f2;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/f2;->d:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget v0, Lcom/google/android/gms/internal/play_billing/u;->a:I

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ly0/i;

    .line 12
    .line 13
    invoke-direct {v0}, Ly0/i;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/google/android/gms/internal/play_billing/h2;->a:Ly0/i;

    .line 17
    .line 18
    return-void
.end method

.method public static a(IILjava/lang/String;[B)I
    .locals 8

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    add-int v2, p0, p1

    const/16 v3, 0x80

    if-ge v1, v0, :cond_0

    add-int v4, v1, p0

    if-ge v4, v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ge v5, v3, :cond_0

    int-to-byte v2, v5

    aput-byte v2, p3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    add-int/2addr p0, v0

    goto/16 :goto_3

    :cond_1
    add-int/2addr p0, v1

    :goto_1
    if-ge v1, v0, :cond_b

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ge p1, v3, :cond_2

    if-ge p0, v2, :cond_2

    add-int/lit8 v4, p0, 0x1

    int-to-byte p1, p1

    aput-byte p1, p3, p0

    move p0, v4

    goto/16 :goto_2

    :cond_2
    const/16 v4, 0x800

    if-ge p1, v4, :cond_3

    add-int/lit8 v4, v2, -0x2

    if-gt p0, v4, :cond_3

    add-int/lit8 v4, p0, 0x1

    add-int/lit8 v5, v4, 0x1

    ushr-int/lit8 v6, p1, 0x6

    or-int/lit16 v6, v6, 0x3c0

    int-to-byte v6, v6

    aput-byte v6, p3, p0

    and-int/lit8 p0, p1, 0x3f

    or-int/2addr p0, v3

    int-to-byte p0, p0

    aput-byte p0, p3, v4

    move p0, v5

    goto :goto_2

    :cond_3
    const v4, 0xdfff

    const v5, 0xd800

    if-lt p1, v5, :cond_4

    if-le p1, v4, :cond_5

    :cond_4
    add-int/lit8 v6, v2, -0x3

    if-gt p0, v6, :cond_5

    add-int/lit8 v4, p0, 0x1

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v5, 0x1

    ushr-int/lit8 v7, p1, 0xc

    or-int/lit16 v7, v7, 0x1e0

    int-to-byte v7, v7

    aput-byte v7, p3, p0

    ushr-int/lit8 p0, p1, 0x6

    and-int/lit8 p0, p0, 0x3f

    or-int/2addr p0, v3

    int-to-byte p0, p0

    aput-byte p0, p3, v4

    and-int/lit8 p0, p1, 0x3f

    or-int/2addr p0, v3

    int-to-byte p0, p0

    aput-byte p0, p3, v5

    move p0, v6

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v2, -0x4

    if-gt p0, v6, :cond_8

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_7

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_6

    add-int/lit8 v5, p0, 0x1

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v6, 0x1

    invoke-static {p1, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p1

    ushr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    aput-byte v1, p3, p0

    ushr-int/lit8 p0, p1, 0xc

    and-int/lit8 p0, p0, 0x3f

    or-int/2addr p0, v3

    int-to-byte p0, p0

    aput-byte p0, p3, v5

    ushr-int/lit8 p0, p1, 0x6

    and-int/lit8 p0, p0, 0x3f

    or-int/2addr p0, v3

    int-to-byte p0, p0

    aput-byte p0, p3, v6

    add-int/lit8 p0, v7, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v3

    int-to-byte p1, p1

    aput-byte p1, p3, v7

    move v1, v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    move v1, v4

    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/play_billing/g2;

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(II)V

    throw p0

    :cond_8
    if-lt p1, v5, :cond_a

    if-gt p1, v4, :cond_a

    add-int/lit8 p3, v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq p3, v2, :cond_9

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p2

    if-nez p2, :cond_a

    :cond_9
    new-instance p0, Lcom/google/android/gms/internal/play_billing/g2;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(II)V

    throw p0

    :cond_a
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed writing "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " at index "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    :goto_3
    return p0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_1
    if-ge v2, v0, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x800

    if-ge v4, v5, :cond_1

    rsub-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    :goto_2
    if-ge v2, v4, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ge v6, v5, :cond_2

    rsub-int/lit8 v6, v6, 0x7f

    ushr-int/lit8 v6, v6, 0x1f

    add-int/2addr v1, v6

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x2

    const v7, 0xd800

    if-lt v6, v7, :cond_4

    const v7, 0xdfff

    if-gt v6, v7, :cond_4

    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    const/high16 v7, 0x10000

    if-lt v6, v7, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/play_billing/g2;

    invoke-direct {p0, v2, v4}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(II)V

    throw p0

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    add-int/2addr v3, v1

    :cond_6
    if-lt v3, v0, :cond_7

    return v3

    :cond_7
    int-to-long v0, v3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UTF-8 length does not fit in int: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide v3, 0x100000000L

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c([BII)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/h2;->a:Ly0/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Ly0/i;->i([BII)Z

    move-result p0

    return p0
.end method
