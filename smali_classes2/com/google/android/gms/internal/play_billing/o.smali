.class public final Lcom/google/android/gms/internal/play_billing/o;
.super Lcom/google/android/gms/internal/play_billing/h;
.source "SourceFile"


# static fields
.field public static final g:Lcom/google/android/gms/internal/play_billing/o;


# instance fields
.field public final transient d:Ljava/lang/Object;

.field public final transient e:[Ljava/lang/Object;

.field public final transient f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/play_billing/o;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/play_billing/o;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/o;->g:Lcom/google/android/gms/internal/play_billing/o;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/h;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/o;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/o;->e:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/o;->f:I

    return-void
.end method

.method public static a(I[Ljava/lang/Object;Lf0/e;)Lcom/google/android/gms/internal/play_billing/o;
    .locals 16

    .line 1
    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/play_billing/o;->g:Lcom/google/android/gms/internal/play_billing/o;

    return-object v0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v4, :cond_1

    aget-object v0, v1, v3

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v0, v1, v4

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/o;

    invoke-direct {v0, v5, v1, v4}, Lcom/google/android/gms/internal/play_billing/o;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v0

    :cond_1
    array-length v6, v1

    shr-int/2addr v6, v4

    invoke-static {v0, v6}, Lc1/b;->I(II)V

    const/4 v6, 0x2

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    const v8, 0x2ccccccc

    if-ge v7, v8, :cond_2

    add-int/lit8 v8, v7, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v8

    :goto_0
    add-int/2addr v8, v8

    int-to-double v9, v8

    const-wide v11, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v9, v11

    int-to-double v11, v7

    cmpg-double v9, v9, v11

    if-gez v9, :cond_3

    goto :goto_0

    :cond_2
    const/high16 v8, 0x40000000    # 2.0f

    if-ge v7, v8, :cond_17

    :cond_3
    if-ne v0, v4, :cond_4

    aget-object v0, v1, v3

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v0, v1, v4

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v4

    goto/16 :goto_b

    :cond_4
    add-int/lit8 v7, v8, -0x1

    const/16 v9, 0x80

    const/4 v10, -0x1

    if-gt v8, v9, :cond_a

    new-array v8, v8, [B

    invoke-static {v8, v10}, Ljava/util/Arrays;->fill([BB)V

    move v9, v3

    move v10, v9

    :goto_1
    if-ge v9, v0, :cond_8

    add-int v11, v10, v10

    add-int v12, v9, v9

    aget-object v13, v1, v12

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/2addr v12, v4

    aget-object v12, v1, v12

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v14}, Lc1/b;->E(I)I

    move-result v14

    :goto_2
    and-int/2addr v14, v7

    aget-byte v15, v8, v14

    const/16 v3, 0xff

    and-int/2addr v15, v3

    if-ne v15, v3, :cond_6

    int-to-byte v3, v11

    aput-byte v3, v8, v14

    if-ge v10, v9, :cond_5

    aput-object v13, v1, v11

    xor-int/lit8 v3, v11, 0x1

    aput-object v12, v1, v3

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    aget-object v3, v1, v15

    invoke-virtual {v13, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    xor-int/lit8 v3, v15, 0x1

    new-instance v5, Lcom/google/android/gms/internal/play_billing/g;

    aget-object v11, v1, v3

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v5, v13, v12, v11}, Lcom/google/android/gms/internal/play_billing/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v1, v3

    :goto_3
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_7
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_8
    if-ne v10, v0, :cond_9

    move-object v5, v8

    goto/16 :goto_b

    :cond_9
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v8, v3, v5}, [Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_b

    :cond_a
    const v3, 0x8000

    if-gt v8, v3, :cond_f

    new-array v3, v8, [S

    invoke-static {v3, v10}, Ljava/util/Arrays;->fill([SS)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_4
    if-ge v8, v0, :cond_e

    add-int v10, v9, v9

    add-int v11, v8, v8

    aget-object v12, v1, v11

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/2addr v11, v4

    aget-object v11, v1, v11

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, Lc1/b;->E(I)I

    move-result v13

    :goto_5
    and-int/2addr v13, v7

    aget-short v14, v3, v13

    int-to-char v14, v14

    const v15, 0xffff

    if-ne v14, v15, :cond_c

    int-to-short v14, v10

    aput-short v14, v3, v13

    if-ge v9, v8, :cond_b

    aput-object v12, v1, v10

    xor-int/lit8 v10, v10, 0x1

    aput-object v11, v1, v10

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_c
    aget-object v15, v1, v14

    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    xor-int/lit8 v5, v14, 0x1

    new-instance v10, Lcom/google/android/gms/internal/play_billing/g;

    aget-object v13, v1, v5

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v10, v12, v11, v13}, Lcom/google/android/gms/internal/play_billing/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v1, v5

    move-object v5, v10

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_e
    if-ne v9, v0, :cond_14

    goto :goto_a

    :cond_f
    new-array v3, v8, [I

    invoke-static {v3, v10}, Ljava/util/Arrays;->fill([II)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_7
    if-ge v8, v0, :cond_13

    add-int v11, v9, v9

    add-int v12, v8, v8

    aget-object v13, v1, v12

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/2addr v12, v4

    aget-object v12, v1, v12

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v14}, Lc1/b;->E(I)I

    move-result v14

    :goto_8
    and-int/2addr v14, v7

    aget v15, v3, v14

    if-ne v15, v10, :cond_11

    aput v11, v3, v14

    if-ge v9, v8, :cond_10

    aput-object v13, v1, v11

    xor-int/lit8 v11, v11, 0x1

    aput-object v12, v1, v11

    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_11
    aget-object v10, v1, v15

    invoke-virtual {v13, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    xor-int/lit8 v5, v15, 0x1

    new-instance v10, Lcom/google/android/gms/internal/play_billing/g;

    aget-object v11, v1, v5

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v10, v13, v12, v11}, Lcom/google/android/gms/internal/play_billing/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v1, v5

    move-object v5, v10

    :goto_9
    add-int/lit8 v8, v8, 0x1

    const/4 v10, -0x1

    goto :goto_7

    :cond_12
    add-int/lit8 v14, v14, 0x1

    const/4 v10, -0x1

    goto :goto_8

    :cond_13
    if-ne v9, v0, :cond_14

    :goto_a
    move-object v5, v3

    goto :goto_b

    :cond_14
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v3, v7, v5}, [Ljava/lang/Object;

    move-result-object v5

    :goto_b
    instance-of v3, v5, [Ljava/lang/Object;

    if-eqz v3, :cond_16

    check-cast v5, [Ljava/lang/Object;

    aget-object v0, v5, v6

    check-cast v0, Lcom/google/android/gms/internal/play_billing/g;

    if-eqz v2, :cond_15

    iput-object v0, v2, Lf0/e;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v5, v0

    aget-object v2, v5, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int v3, v2, v2

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v0

    move v0, v2

    goto :goto_c

    :cond_15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/g;->a()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_16
    :goto_c
    new-instance v2, Lcom/google/android/gms/internal/play_billing/o;

    invoke-direct {v2, v5, v1, v0}, Lcom/google/android/gms/internal/play_billing/o;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v2

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "collection too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    move-object p1, v0

    goto/16 :goto_4

    :cond_1
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/play_billing/o;->f:I

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/o;->e:[Ljava/lang/Object;

    if-ne v2, v1, :cond_2

    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    aget-object p1, v3, v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/o;->d:Ljava/lang/Object;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    instance-of v4, v2, [B

    const/4 v5, -0x1

    if-eqz v4, :cond_6

    move-object v4, v2

    check-cast v4, [B

    array-length v2, v4

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lc1/b;->E(I)I

    move-result v2

    :goto_1
    and-int/2addr v2, v6

    aget-byte v5, v4, v2

    const/16 v7, 0xff

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_4

    goto :goto_0

    :cond_4
    aget-object v7, v3, v5

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    xor-int/lit8 p1, v5, 0x1

    aget-object p1, v3, p1

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    instance-of v4, v2, [S

    if-eqz v4, :cond_9

    move-object v4, v2

    check-cast v4, [S

    array-length v2, v4

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lc1/b;->E(I)I

    move-result v2

    :goto_2
    and-int/2addr v2, v6

    aget-short v5, v4, v2

    int-to-char v5, v5

    const v7, 0xffff

    if-ne v5, v7, :cond_7

    goto :goto_0

    :cond_7
    aget-object v7, v3, v5

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    xor-int/lit8 p1, v5, 0x1

    aget-object p1, v3, p1

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    check-cast v2, [I

    array-length v4, v2

    add-int/2addr v4, v5

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lc1/b;->E(I)I

    move-result v6

    :goto_3
    and-int/2addr v6, v4

    aget v7, v2, v6

    if-ne v7, v5, :cond_a

    goto/16 :goto_0

    :cond_a
    aget-object v8, v3, v7

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    xor-int/lit8 p1, v7, 0x1

    aget-object p1, v3, p1

    :goto_4
    if-nez p1, :cond_b

    return-object v0

    :cond_b
    return-object p1

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/o;->f:I

    return v0
.end method
