.class public final Lcom/google/android/gms/internal/play_billing/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/t1;


# static fields
.field public static final k:[I

.field public static final l:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/android/gms/internal/play_billing/j1;

.field public final f:[I

.field public final g:I

.field public final h:I

.field public final i:Lcom/google/android/gms/internal/play_billing/a1;

.field public final j:Lcom/google/android/gms/internal/play_billing/x1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/play_billing/l1;->k:[I

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/f2;->k()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/l1;->l:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/play_billing/j1;[IIILcom/google/android/gms/internal/play_billing/a1;Lcom/google/android/gms/internal/play_billing/x1;Lcom/google/android/gms/internal/play_billing/f0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/l1;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/l1;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/l1;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/play_billing/l1;->d:I

    iput-object p6, p0, Lcom/google/android/gms/internal/play_billing/l1;->f:[I

    iput p7, p0, Lcom/google/android/gms/internal/play_billing/l1;->g:I

    iput p8, p0, Lcom/google/android/gms/internal/play_billing/l1;->h:I

    iput-object p9, p0, Lcom/google/android/gms/internal/play_billing/l1;->i:Lcom/google/android/gms/internal/play_billing/a1;

    iput-object p10, p0, Lcom/google/android/gms/internal/play_billing/l1;->j:Lcom/google/android/gms/internal/play_billing/x1;

    iput-object p5, p0, Lcom/google/android/gms/internal/play_billing/l1;->e:Lcom/google/android/gms/internal/play_billing/j1;

    return-void
.end method

.method public static A(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static E(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static s(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/l0;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/play_billing/l0;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/l0;->l()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final u(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/d0;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/d0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    .line 8
    .line 9
    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/play_billing/b0;->j0(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/play_billing/z;

    .line 14
    .line 15
    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/play_billing/d0;->g(ILcom/google/android/gms/internal/play_billing/z;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static w(Lcom/google/android/gms/internal/play_billing/h1;Lcom/google/android/gms/internal/play_billing/a1;Lcom/google/android/gms/internal/play_billing/x1;Lcom/google/android/gms/internal/play_billing/f0;)Lcom/google/android/gms/internal/play_billing/l1;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/s1;

    if-eqz v1, :cond_37

    check-cast v0, Lcom/google/android/gms/internal/play_billing/s1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/s1;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    sget-object v7, Lcom/google/android/gms/internal/play_billing/l1;->k:[I

    move v9, v3

    move v11, v9

    move v12, v11

    move v13, v12

    move v14, v13

    move/from16 v16, v14

    move-object v15, v7

    move/from16 v7, v16

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int v16, v14, v12

    add-int v13, v16, v13

    add-int v16, v4, v4

    add-int v16, v16, v7

    new-array v7, v13, [I

    move v13, v9

    move/from16 v9, v16

    move/from16 v16, v14

    move v14, v10

    move-object/from16 v32, v7

    move v7, v4

    move v4, v15

    move-object/from16 v15, v32

    :goto_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/s1;->d()[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/s1;->a()Lcom/google/android/gms/internal/play_billing/j1;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    add-int v17, v16, v12

    add-int v12, v11, v11

    mul-int/lit8 v11, v11, 0x3

    new-array v11, v11, [I

    new-array v12, v12, [Ljava/lang/Object;

    move/from16 v20, v16

    move/from16 v21, v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_b
    if-ge v4, v2, :cond_36

    add-int/lit8 v22, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v8, v22

    const/16 v22, 0xd

    :goto_c
    add-int/lit8 v23, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_15

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v22

    or-int/2addr v4, v8

    add-int/lit8 v22, v22, 0xd

    move/from16 v8, v23

    goto :goto_c

    :cond_15
    shl-int v8, v8, v22

    or-int/2addr v4, v8

    move/from16 v8, v23

    goto :goto_d

    :cond_16
    move/from16 v8, v22

    :goto_d
    add-int/lit8 v22, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_18

    and-int/lit16 v8, v8, 0x1fff

    move/from16 v6, v22

    const/16 v22, 0xd

    :goto_e
    add-int/lit8 v24, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_17

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v22

    or-int/2addr v8, v6

    add-int/lit8 v22, v22, 0xd

    move/from16 v6, v24

    goto :goto_e

    :cond_17
    shl-int v6, v6, v22

    or-int/2addr v8, v6

    move/from16 v6, v24

    goto :goto_f

    :cond_18
    move/from16 v6, v22

    :goto_f
    and-int/lit16 v5, v8, 0x400

    if-eqz v5, :cond_19

    add-int/lit8 v5, v19, 0x1

    aput v18, v15, v19

    move/from16 v19, v5

    :cond_19
    and-int/lit16 v5, v8, 0xff

    move/from16 v24, v2

    and-int/lit16 v2, v8, 0x800

    move/from16 v25, v14

    sget-object v14, Lcom/google/android/gms/internal/play_billing/l1;->l:Lsun/misc/Unsafe;

    move/from16 v29, v13

    const/16 v13, 0x33

    if-lt v5, v13, :cond_23

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v26, v13

    const v13, 0xd800

    if-lt v6, v13, :cond_1b

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v13, v26

    const/16 v26, 0xd

    :goto_10
    add-int/lit8 v30, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move/from16 v31, v4

    const v4, 0xd800

    if-lt v13, v4, :cond_1a

    and-int/lit16 v4, v13, 0x1fff

    shl-int v4, v4, v26

    or-int/2addr v6, v4

    add-int/lit8 v26, v26, 0xd

    move/from16 v13, v30

    move/from16 v4, v31

    goto :goto_10

    :cond_1a
    shl-int v4, v13, v26

    or-int/2addr v6, v4

    move/from16 v13, v30

    goto :goto_11

    :cond_1b
    move/from16 v31, v4

    move/from16 v13, v26

    :goto_11
    add-int/lit8 v4, v5, -0x33

    move/from16 v26, v13

    const/16 v13, 0x9

    if-eq v4, v13, :cond_1f

    const/16 v13, 0x11

    if-ne v4, v13, :cond_1c

    goto :goto_13

    :cond_1c
    const/16 v13, 0xc

    if-ne v4, v13, :cond_20

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/s1;->b()I

    move-result v4

    const/4 v13, 0x1

    if-eq v4, v13, :cond_1e

    if-eqz v2, :cond_1d

    goto :goto_12

    :cond_1d
    const/4 v2, 0x0

    goto :goto_15

    :cond_1e
    :goto_12
    add-int/lit8 v4, v9, 0x1

    div-int/lit8 v23, v18, 0x3

    add-int v23, v23, v23

    add-int/lit8 v23, v23, 0x1

    aget-object v9, v10, v9

    aput-object v9, v12, v23

    goto :goto_14

    :cond_1f
    :goto_13
    const/4 v13, 0x1

    add-int/lit8 v4, v9, 0x1

    div-int/lit8 v23, v18, 0x3

    add-int v23, v23, v23

    add-int/lit8 v27, v23, 0x1

    aget-object v9, v10, v9

    aput-object v9, v12, v27

    :goto_14
    move v9, v4

    :cond_20
    :goto_15
    add-int/2addr v6, v6

    aget-object v4, v10, v6

    instance-of v13, v4, Ljava/lang/reflect/Field;

    if-eqz v13, :cond_21

    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_16

    :cond_21
    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/l1;->E(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aput-object v4, v10, v6

    :goto_16
    move-object v13, v1

    move/from16 v27, v2

    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/lit8 v6, v6, 0x1

    aget-object v2, v10, v6

    instance-of v4, v2, Ljava/lang/reflect/Field;

    if-eqz v4, :cond_22

    check-cast v2, Ljava/lang/reflect/Field;

    goto :goto_17

    :cond_22
    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/play_billing/l1;->E(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    aput-object v2, v10, v6

    :goto_17
    move v4, v1

    invoke-virtual {v14, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    move v2, v1

    move v1, v4

    move-object v4, v13

    move/from16 v28, v26

    move/from16 v23, v27

    const/4 v6, 0x0

    goto/16 :goto_23

    :cond_23
    move-object v13, v1

    move/from16 v31, v4

    add-int/lit8 v1, v9, 0x1

    aget-object v4, v10, v9

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/l1;->E(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/16 v9, 0x9

    if-eq v5, v9, :cond_2d

    const/16 v9, 0x11

    if-ne v5, v9, :cond_24

    goto/16 :goto_1c

    :cond_24
    const/16 v9, 0x1b

    if-eq v5, v9, :cond_2c

    const/16 v9, 0x31

    if-ne v5, v9, :cond_25

    add-int/lit8 v9, v1, 0x1

    move-object/from16 v27, v13

    const/4 v13, 0x1

    goto :goto_1a

    :cond_25
    const/16 v9, 0xc

    if-eq v5, v9, :cond_29

    const/16 v9, 0x1e

    if-eq v5, v9, :cond_29

    const/16 v9, 0x2c

    if-ne v5, v9, :cond_26

    goto :goto_18

    :cond_26
    const/16 v9, 0x32

    if-ne v5, v9, :cond_28

    add-int/lit8 v9, v1, 0x1

    add-int/lit8 v27, v20, 0x1

    aput v18, v15, v20

    div-int/lit8 v20, v18, 0x3

    aget-object v1, v10, v1

    add-int v20, v20, v20

    aput-object v1, v12, v20

    if-eqz v2, :cond_27

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v1, v9, 0x1

    aget-object v9, v10, v9

    aput-object v9, v12, v20

    move v9, v1

    move/from16 v23, v2

    move/from16 v20, v27

    move-object/from16 v27, v13

    const/4 v13, 0x1

    goto :goto_1e

    :cond_27
    move v1, v9

    move/from16 v20, v27

    const/4 v2, 0x0

    :cond_28
    move-object/from16 v27, v13

    const/4 v13, 0x1

    goto :goto_1d

    :cond_29
    :goto_18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/s1;->b()I

    move-result v9

    move-object/from16 v27, v13

    const/4 v13, 0x1

    if-eq v9, v13, :cond_2b

    if-eqz v2, :cond_2a

    goto :goto_19

    :cond_2a
    move v9, v1

    const/16 v23, 0x0

    goto :goto_1e

    :cond_2b
    :goto_19
    add-int/lit8 v9, v1, 0x1

    div-int/lit8 v23, v18, 0x3

    add-int v23, v23, v23

    add-int/lit8 v23, v23, 0x1

    aget-object v1, v10, v1

    aput-object v1, v12, v23

    goto :goto_1b

    :cond_2c
    move-object/from16 v27, v13

    const/4 v13, 0x1

    add-int/lit8 v9, v1, 0x1

    :goto_1a
    div-int/lit8 v23, v18, 0x3

    add-int v23, v23, v23

    add-int/lit8 v23, v23, 0x1

    aget-object v1, v10, v1

    aput-object v1, v12, v23

    :goto_1b
    move v1, v9

    goto :goto_1d

    :cond_2d
    :goto_1c
    move-object/from16 v27, v13

    const/4 v13, 0x1

    div-int/lit8 v9, v18, 0x3

    add-int/2addr v9, v9

    add-int/2addr v9, v13

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v23

    aput-object v23, v12, v9

    :goto_1d
    move v9, v1

    move/from16 v23, v2

    :goto_1e
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    and-int/lit16 v2, v8, 0x1000

    if-eqz v2, :cond_31

    const/16 v2, 0x11

    if-gt v5, v2, :cond_31

    add-int/lit8 v2, v6, 0x1

    move-object/from16 v4, v27

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v13, 0xd800

    if-lt v6, v13, :cond_2f

    and-int/lit16 v6, v6, 0x1fff

    const/16 v22, 0xd

    :goto_1f
    add-int/lit8 v28, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v13, :cond_2e

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v22

    or-int/2addr v6, v2

    add-int/lit8 v22, v22, 0xd

    move/from16 v2, v28

    goto :goto_1f

    :cond_2e
    shl-int v2, v2, v22

    or-int/2addr v6, v2

    goto :goto_20

    :cond_2f
    move/from16 v28, v2

    :goto_20
    add-int v2, v7, v7

    div-int/lit8 v22, v6, 0x20

    add-int v22, v22, v2

    aget-object v2, v10, v22

    instance-of v13, v2, Ljava/lang/reflect/Field;

    if-eqz v13, :cond_30

    check-cast v2, Ljava/lang/reflect/Field;

    goto :goto_21

    :cond_30
    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/play_billing/l1;->E(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    aput-object v2, v10, v22

    :goto_21
    invoke-virtual {v14, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v2, v13

    rem-int/lit8 v6, v6, 0x20

    goto :goto_22

    :cond_31
    move-object/from16 v4, v27

    const v2, 0xfffff

    move/from16 v28, v6

    const/4 v6, 0x0

    :goto_22
    const/16 v13, 0x12

    if-lt v5, v13, :cond_32

    const/16 v13, 0x31

    if-gt v5, v13, :cond_32

    add-int/lit8 v13, v21, 0x1

    aput v1, v15, v21

    move/from16 v21, v13

    :cond_32
    :goto_23
    add-int/lit8 v13, v18, 0x1

    aput v31, v11, v18

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v18, v3

    and-int/lit16 v3, v8, 0x200

    if-eqz v3, :cond_33

    const/high16 v3, 0x20000000

    goto :goto_24

    :cond_33
    const/4 v3, 0x0

    :goto_24
    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_34

    const/high16 v8, 0x10000000

    goto :goto_25

    :cond_34
    const/4 v8, 0x0

    :goto_25
    if-eqz v23, :cond_35

    const/high16 v22, -0x80000000

    goto :goto_26

    :cond_35
    const/16 v22, 0x0

    :goto_26
    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v3, v8

    or-int v3, v3, v22

    or-int/2addr v3, v5

    or-int/2addr v1, v3

    aput v1, v11, v13

    add-int/lit8 v1, v14, 0x1

    shl-int/lit8 v3, v6, 0x14

    or-int/2addr v2, v3

    aput v2, v11, v14

    move-object/from16 v3, v18

    move/from16 v2, v24

    move/from16 v14, v25

    move/from16 v13, v29

    const v5, 0xd800

    move/from16 v18, v1

    move-object v1, v4

    move/from16 v4, v28

    goto/16 :goto_b

    :cond_36
    move/from16 v29, v13

    move/from16 v25, v14

    new-instance v1, Lcom/google/android/gms/internal/play_billing/l1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/s1;->a()Lcom/google/android/gms/internal/play_billing/j1;

    move-result-object v14

    move-object v9, v1

    move-object v10, v11

    move-object v11, v12

    move/from16 v12, v29

    move/from16 v13, v25

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    invoke-direct/range {v9 .. v20}, Lcom/google/android/gms/internal/play_billing/l1;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/play_billing/j1;[IIILcom/google/android/gms/internal/play_billing/a1;Lcom/google/android/gms/internal/play_billing/x1;Lcom/google/android/gms/internal/play_billing/f0;)V

    return-object v1

    :cond_37
    invoke-static/range {p0 .. p0}, La1/b;->j(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static x(Ljava/lang/Object;J)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final B(I)Lcom/google/android/gms/internal/play_billing/t1;
    .locals 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    add-int/2addr p1, p1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/l1;->b:[Ljava/lang/Object;

    .line 5
    .line 6
    aget-object v1, v0, p1

    .line 7
    .line 8
    check-cast v1, Lcom/google/android/gms/internal/play_billing/t1;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 14
    .line 15
    sget-object v2, Lcom/google/android/gms/internal/play_billing/q1;->c:Lcom/google/android/gms/internal/play_billing/q1;

    .line 16
    .line 17
    aget-object v1, v0, v1

    .line 18
    .line 19
    check-cast v1, Ljava/lang/Class;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/play_billing/q1;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/t1;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    aput-object v1, v0, p1

    .line 26
    .line 27
    return-object v1
.end method

.method public final C(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/l1;->B(I)Lcom/google/android/gms/internal/play_billing/t1;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/l1;->z(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->q(ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/t1;->a()Lcom/google/android/gms/internal/play_billing/l0;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-long v1, v1

    sget-object p1, Lcom/google/android/gms/internal/play_billing/l1;->l:Lsun/misc/Unsafe;

    invoke-virtual {p1, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/l1;->s(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/t1;->a()Lcom/google/android/gms/internal/play_billing/l0;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/t1;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public final D(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/play_billing/l1;->B(I)Lcom/google/android/gms/internal/play_billing/t1;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/t1;->a()Lcom/google/android/gms/internal/play_billing/l0;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/play_billing/l1;->z(I)I

    move-result p2

    const p3, 0xfffff

    and-int/2addr p2, p3

    int-to-long p2, p2

    sget-object v1, Lcom/google/android/gms/internal/play_billing/l1;->l:Lsun/misc/Unsafe;

    invoke-virtual {v1, p1, p2, p3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/l1;->s(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/t1;->a()Lcom/google/android/gms/internal/play_billing/l0;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/t1;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public final a()Lcom/google/android/gms/internal/play_billing/l0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/l1;->e:Lcom/google/android/gms/internal/play_billing/j1;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/play_billing/l0;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/l0;->m(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/google/android/gms/internal/play_billing/l0;

    .line 11
    .line 12
    return-object v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/l1;->s(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/l0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/l0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/l0;->j()V

    iput v1, v0, Lcom/google/android/gms/internal/play_billing/r;->zza:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/l0;->h()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/l1;->a:[I

    array-length v2, v0

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/l1;->z(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    ushr-int/lit8 v2, v2, 0x14

    and-int/lit16 v2, v2, 0xff

    int-to-long v3, v3

    const/16 v5, 0x9

    sget-object v6, Lcom/google/android/gms/internal/play_billing/l1;->l:Lsun/misc/Unsafe;

    if-eq v2, v5, :cond_3

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_2

    const/16 v5, 0x44

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/play_billing/e1;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/e1;->c()V

    invoke-virtual {v6, p1, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/l1;->i:Lcom/google/android/gms/internal/play_billing/a1;

    invoke-virtual {v0, p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/a1;->a(Ljava/lang/Object;J)V

    goto :goto_2

    :cond_2
    aget v0, v0, v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/play_billing/l1;->q(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/l1;->B(I)Lcom/google/android/gms/internal/play_billing/t1;

    move-result-object v0

    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/play_billing/t1;->b(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/l1;->j:Lcom/google/android/gms/internal/play_billing/x1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/x1;->c(Ljava/lang/Object;)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/d0;)V
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    const v9, 0xfffff

    .line 8
    .line 9
    .line 10
    const/4 v10, 0x0

    .line 11
    move v0, v9

    .line 12
    move v1, v10

    .line 13
    move v11, v1

    .line 14
    :goto_0
    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/l1;->a:[I

    .line 15
    .line 16
    array-length v3, v2

    .line 17
    if-ge v11, v3, :cond_5

    .line 18
    .line 19
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/play_billing/l1;->z(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    ushr-int/lit8 v4, v3, 0x14

    .line 24
    .line 25
    and-int/lit16 v4, v4, 0xff

    .line 26
    .line 27
    aget v12, v2, v11

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    const/16 v13, 0x11

    .line 31
    .line 32
    sget-object v14, Lcom/google/android/gms/internal/play_billing/l1;->l:Lsun/misc/Unsafe;

    .line 33
    .line 34
    if-gt v4, v13, :cond_2

    .line 35
    .line 36
    add-int/lit8 v13, v11, 0x2

    .line 37
    .line 38
    aget v13, v2, v13

    .line 39
    .line 40
    and-int v15, v13, v9

    .line 41
    .line 42
    if-eq v15, v0, :cond_1

    .line 43
    .line 44
    if-ne v15, v9, :cond_0

    .line 45
    .line 46
    move v0, v10

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    int-to-long v0, v15

    .line 49
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    :goto_1
    move v1, v0

    .line 54
    move v0, v15

    .line 55
    :cond_1
    ushr-int/lit8 v13, v13, 0x14

    .line 56
    .line 57
    shl-int v13, v5, v13

    .line 58
    .line 59
    move v15, v1

    .line 60
    move/from16 v16, v13

    .line 61
    .line 62
    move v13, v0

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    move v13, v0

    .line 65
    move v15, v1

    .line 66
    move/from16 v16, v10

    .line 67
    .line 68
    :goto_2
    and-int v0, v3, v9

    .line 69
    .line 70
    int-to-long v0, v0

    .line 71
    packed-switch v4, :pswitch_data_0

    .line 72
    .line 73
    .line 74
    goto/16 :goto_17

    .line 75
    .line 76
    :pswitch_0
    invoke-virtual {v6, v7, v12, v11}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_4

    .line 81
    .line 82
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :pswitch_1
    invoke-virtual {v6, v7, v12, v11}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_4

    .line 93
    .line 94
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/l1;->A(Ljava/lang/Object;J)J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    goto/16 :goto_6

    .line 99
    .line 100
    :pswitch_2
    invoke-virtual {v6, v7, v12, v11}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_4

    .line 105
    .line 106
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/l1;->x(Ljava/lang/Object;J)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    goto/16 :goto_7

    .line 111
    .line 112
    :pswitch_3
    invoke-virtual {v6, v7, v12, v11}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_4

    .line 117
    .line 118
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/l1;->A(Ljava/lang/Object;J)J

    .line 119
    .line 120
    .line 121
    move-result-wide v0

    .line 122
    goto/16 :goto_8

    .line 123
    .line 124
    :pswitch_4
    invoke-virtual {v6, v7, v12, v11}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_4

    .line 129
    .line 130
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/l1;->x(Ljava/lang/Object;J)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    goto/16 :goto_9

    .line 135
    .line 136
    :pswitch_5
    invoke-virtual {v6, v7, v12, v11}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_4

    .line 141
    .line 142
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/l1;->x(Ljava/lang/Object;J)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    goto/16 :goto_a

    .line 147
    .line 148
    :pswitch_6
    invoke-virtual {v6, v7, v12, v11}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_4

    .line 153
    .line 154
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/l1;->x(Ljava/lang/Object;J)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    goto/16 :goto_b

    .line 159
    .line 160
    :pswitch_7
    invoke-virtual {v6, v7, v12, v11}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_4

    .line 165
    .line 166
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    goto/16 :goto_c

    .line 171
    .line 172
    :pswitch_8
    invoke-virtual {v6, v7, v12, v11}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-eqz v2, :cond_4

    .line 177
    .line 178
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    goto/16 :goto_d

    .line 183
    .line 184
    :pswitch_9
    invoke-virtual {v6, v7, v12, v11}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_4

    .line 189
    .line 190
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    goto/16 :goto_e

    .line 195
    .line 196
    :pswitch_a
    invoke-virtual {v6, v7, v12, v11}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_4

    .line 201
    .line 202
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Ljava/lang/Boolean;

    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    goto/16 :goto_f

    .line 213
    .line 214
    :pswitch_b
    invoke-virtual {v6, v7, v12, v11}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-eqz v2, :cond_4

    .line 219
    .line 220
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/l1;->x(Ljava/lang/Object;J)I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    goto/16 :goto_10

    .line 225
    .line 226
    :pswitch_c
    invoke-virtual {v6, v7, v12, v11}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-eqz v2, :cond_4

    .line 231
    .line 232
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/l1;->A(Ljava/lang/Object;J)J

    .line 233
    .line 234
    .line 235
    move-result-wide v0

    .line 236
    goto/16 :goto_11

    .line 237
    .line 238
    :pswitch_d
    invoke-virtual {v6, v7, v12, v11}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-eqz v2, :cond_4

    .line 243
    .line 244
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/l1;->x(Ljava/lang/Object;J)I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    goto/16 :goto_12

    .line 249
    .line 250
    :pswitch_e
    invoke-virtual {v6, v7, v12, v11}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-eqz v2, :cond_4

    .line 255
    .line 256
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/l1;->A(Ljava/lang/Object;J)J

    .line 257
    .line 258
    .line 259
    move-result-wide v0

    .line 260
    goto/16 :goto_13

    .line 261
    .line 262
    :pswitch_f
    invoke-virtual {v6, v7, v12, v11}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-eqz v2, :cond_4

    .line 267
    .line 268
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/l1;->A(Ljava/lang/Object;J)J

    .line 269
    .line 270
    .line 271
    move-result-wide v0

    .line 272
    goto/16 :goto_14

    .line 273
    .line 274
    :pswitch_10
    invoke-virtual {v6, v7, v12, v11}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-eqz v2, :cond_4

    .line 279
    .line 280
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    check-cast v0, Ljava/lang/Float;

    .line 285
    .line 286
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    goto/16 :goto_15

    .line 291
    .line 292
    :pswitch_11
    invoke-virtual {v6, v7, v12, v11}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-eqz v2, :cond_4

    .line 297
    .line 298
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    check-cast v0, Ljava/lang/Double;

    .line 303
    .line 304
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 305
    .line 306
    .line 307
    move-result-wide v0

    .line 308
    goto/16 :goto_16

    .line 309
    .line 310
    :pswitch_12
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    if-nez v0, :cond_3

    .line 315
    .line 316
    goto/16 :goto_17

    .line 317
    .line 318
    :cond_3
    div-int/lit8 v11, v11, 0x3

    .line 319
    .line 320
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/l1;->b:[Ljava/lang/Object;

    .line 321
    .line 322
    add-int/2addr v11, v11

    .line 323
    aget-object v0, v0, v11

    .line 324
    .line 325
    invoke-static {v0}, La1/b;->j(Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    const/4 v0, 0x0

    .line 329
    throw v0

    .line 330
    :pswitch_13
    aget v2, v2, v11

    .line 331
    .line 332
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    check-cast v0, Ljava/util/List;

    .line 337
    .line 338
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/play_billing/l1;->B(I)Lcom/google/android/gms/internal/play_billing/t1;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    sget-object v3, Lcom/google/android/gms/internal/play_billing/u1;->a:Ljava/lang/Class;

    .line 343
    .line 344
    if-eqz v0, :cond_4

    .line 345
    .line 346
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    if-nez v3, :cond_4

    .line 351
    .line 352
    move v3, v10

    .line 353
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 354
    .line 355
    .line 356
    move-result v4

    .line 357
    if-ge v3, v4, :cond_4

    .line 358
    .line 359
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    invoke-virtual {v8, v2, v1, v4}, Lcom/google/android/gms/internal/play_billing/d0;->n(ILcom/google/android/gms/internal/play_billing/t1;Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    add-int/lit8 v3, v3, 0x1

    .line 367
    .line 368
    goto :goto_3

    .line 369
    :pswitch_14
    aget v2, v2, v11

    .line 370
    .line 371
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    check-cast v0, Ljava/util/List;

    .line 376
    .line 377
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/u1;->d(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 378
    .line 379
    .line 380
    goto/16 :goto_17

    .line 381
    .line 382
    :pswitch_15
    aget v2, v2, v11

    .line 383
    .line 384
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    check-cast v0, Ljava/util/List;

    .line 389
    .line 390
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/u1;->c(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 391
    .line 392
    .line 393
    goto/16 :goto_17

    .line 394
    .line 395
    :pswitch_16
    aget v2, v2, v11

    .line 396
    .line 397
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    check-cast v0, Ljava/util/List;

    .line 402
    .line 403
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/u1;->b(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 404
    .line 405
    .line 406
    goto/16 :goto_17

    .line 407
    .line 408
    :pswitch_17
    aget v2, v2, v11

    .line 409
    .line 410
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    check-cast v0, Ljava/util/List;

    .line 415
    .line 416
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/u1;->a(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_17

    .line 420
    .line 421
    :pswitch_18
    aget v2, v2, v11

    .line 422
    .line 423
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    check-cast v0, Ljava/util/List;

    .line 428
    .line 429
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/u1;->x(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 430
    .line 431
    .line 432
    goto/16 :goto_17

    .line 433
    .line 434
    :pswitch_19
    aget v2, v2, v11

    .line 435
    .line 436
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    check-cast v0, Ljava/util/List;

    .line 441
    .line 442
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/u1;->e(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 443
    .line 444
    .line 445
    goto/16 :goto_17

    .line 446
    .line 447
    :pswitch_1a
    aget v2, v2, v11

    .line 448
    .line 449
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    check-cast v0, Ljava/util/List;

    .line 454
    .line 455
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/u1;->v(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 456
    .line 457
    .line 458
    goto/16 :goto_17

    .line 459
    .line 460
    :pswitch_1b
    aget v2, v2, v11

    .line 461
    .line 462
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    check-cast v0, Ljava/util/List;

    .line 467
    .line 468
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/u1;->y(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 469
    .line 470
    .line 471
    goto/16 :goto_17

    .line 472
    .line 473
    :pswitch_1c
    aget v2, v2, v11

    .line 474
    .line 475
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    check-cast v0, Ljava/util/List;

    .line 480
    .line 481
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/u1;->z(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 482
    .line 483
    .line 484
    goto/16 :goto_17

    .line 485
    .line 486
    :pswitch_1d
    aget v2, v2, v11

    .line 487
    .line 488
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    check-cast v0, Ljava/util/List;

    .line 493
    .line 494
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/u1;->B(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 495
    .line 496
    .line 497
    goto/16 :goto_17

    .line 498
    .line 499
    :pswitch_1e
    aget v2, v2, v11

    .line 500
    .line 501
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    check-cast v0, Ljava/util/List;

    .line 506
    .line 507
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/u1;->f(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 508
    .line 509
    .line 510
    goto/16 :goto_17

    .line 511
    .line 512
    :pswitch_1f
    aget v2, v2, v11

    .line 513
    .line 514
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    check-cast v0, Ljava/util/List;

    .line 519
    .line 520
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/u1;->C(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 521
    .line 522
    .line 523
    goto/16 :goto_17

    .line 524
    .line 525
    :pswitch_20
    aget v2, v2, v11

    .line 526
    .line 527
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    check-cast v0, Ljava/util/List;

    .line 532
    .line 533
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/u1;->A(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 534
    .line 535
    .line 536
    goto/16 :goto_17

    .line 537
    .line 538
    :pswitch_21
    aget v2, v2, v11

    .line 539
    .line 540
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    check-cast v0, Ljava/util/List;

    .line 545
    .line 546
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/u1;->w(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 547
    .line 548
    .line 549
    goto/16 :goto_17

    .line 550
    .line 551
    :pswitch_22
    aget v2, v2, v11

    .line 552
    .line 553
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    check-cast v0, Ljava/util/List;

    .line 558
    .line 559
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/play_billing/u1;->d(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 560
    .line 561
    .line 562
    goto/16 :goto_17

    .line 563
    .line 564
    :pswitch_23
    aget v2, v2, v11

    .line 565
    .line 566
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    check-cast v0, Ljava/util/List;

    .line 571
    .line 572
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/play_billing/u1;->c(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 573
    .line 574
    .line 575
    goto/16 :goto_17

    .line 576
    .line 577
    :pswitch_24
    aget v2, v2, v11

    .line 578
    .line 579
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    check-cast v0, Ljava/util/List;

    .line 584
    .line 585
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/play_billing/u1;->b(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 586
    .line 587
    .line 588
    goto/16 :goto_17

    .line 589
    .line 590
    :pswitch_25
    aget v2, v2, v11

    .line 591
    .line 592
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    check-cast v0, Ljava/util/List;

    .line 597
    .line 598
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/play_billing/u1;->a(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 599
    .line 600
    .line 601
    goto/16 :goto_17

    .line 602
    .line 603
    :pswitch_26
    aget v2, v2, v11

    .line 604
    .line 605
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    check-cast v0, Ljava/util/List;

    .line 610
    .line 611
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/play_billing/u1;->x(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 612
    .line 613
    .line 614
    goto/16 :goto_17

    .line 615
    .line 616
    :pswitch_27
    aget v2, v2, v11

    .line 617
    .line 618
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    check-cast v0, Ljava/util/List;

    .line 623
    .line 624
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/play_billing/u1;->e(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 625
    .line 626
    .line 627
    goto/16 :goto_17

    .line 628
    .line 629
    :pswitch_28
    aget v2, v2, v11

    .line 630
    .line 631
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    check-cast v0, Ljava/util/List;

    .line 636
    .line 637
    sget-object v1, Lcom/google/android/gms/internal/play_billing/u1;->a:Ljava/lang/Class;

    .line 638
    .line 639
    if-eqz v0, :cond_4

    .line 640
    .line 641
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 642
    .line 643
    .line 644
    move-result v1

    .line 645
    if-nez v1, :cond_4

    .line 646
    .line 647
    invoke-virtual {v8, v2, v0}, Lcom/google/android/gms/internal/play_billing/d0;->h(ILjava/util/List;)V

    .line 648
    .line 649
    .line 650
    goto/16 :goto_17

    .line 651
    .line 652
    :pswitch_29
    aget v2, v2, v11

    .line 653
    .line 654
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    check-cast v0, Ljava/util/List;

    .line 659
    .line 660
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/play_billing/l1;->B(I)Lcom/google/android/gms/internal/play_billing/t1;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    sget-object v3, Lcom/google/android/gms/internal/play_billing/u1;->a:Ljava/lang/Class;

    .line 665
    .line 666
    if-eqz v0, :cond_4

    .line 667
    .line 668
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 669
    .line 670
    .line 671
    move-result v3

    .line 672
    if-nez v3, :cond_4

    .line 673
    .line 674
    move v3, v10

    .line 675
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 676
    .line 677
    .line 678
    move-result v4

    .line 679
    if-ge v3, v4, :cond_4

    .line 680
    .line 681
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v4

    .line 685
    invoke-virtual {v8, v2, v1, v4}, Lcom/google/android/gms/internal/play_billing/d0;->q(ILcom/google/android/gms/internal/play_billing/t1;Ljava/lang/Object;)V

    .line 686
    .line 687
    .line 688
    add-int/lit8 v3, v3, 0x1

    .line 689
    .line 690
    goto :goto_4

    .line 691
    :pswitch_2a
    aget v2, v2, v11

    .line 692
    .line 693
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    check-cast v0, Ljava/util/List;

    .line 698
    .line 699
    sget-object v1, Lcom/google/android/gms/internal/play_billing/u1;->a:Ljava/lang/Class;

    .line 700
    .line 701
    if-eqz v0, :cond_4

    .line 702
    .line 703
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 704
    .line 705
    .line 706
    move-result v1

    .line 707
    if-nez v1, :cond_4

    .line 708
    .line 709
    invoke-virtual {v8, v2, v0}, Lcom/google/android/gms/internal/play_billing/d0;->c(ILjava/util/List;)V

    .line 710
    .line 711
    .line 712
    goto/16 :goto_17

    .line 713
    .line 714
    :pswitch_2b
    aget v2, v2, v11

    .line 715
    .line 716
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    check-cast v0, Ljava/util/List;

    .line 721
    .line 722
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/play_billing/u1;->v(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 723
    .line 724
    .line 725
    goto/16 :goto_17

    .line 726
    .line 727
    :pswitch_2c
    aget v2, v2, v11

    .line 728
    .line 729
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    check-cast v0, Ljava/util/List;

    .line 734
    .line 735
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/play_billing/u1;->y(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 736
    .line 737
    .line 738
    goto/16 :goto_17

    .line 739
    .line 740
    :pswitch_2d
    aget v2, v2, v11

    .line 741
    .line 742
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    move-result-object v0

    .line 746
    check-cast v0, Ljava/util/List;

    .line 747
    .line 748
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/play_billing/u1;->z(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 749
    .line 750
    .line 751
    goto/16 :goto_17

    .line 752
    .line 753
    :pswitch_2e
    aget v2, v2, v11

    .line 754
    .line 755
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    check-cast v0, Ljava/util/List;

    .line 760
    .line 761
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/play_billing/u1;->B(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 762
    .line 763
    .line 764
    goto/16 :goto_17

    .line 765
    .line 766
    :pswitch_2f
    aget v2, v2, v11

    .line 767
    .line 768
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    check-cast v0, Ljava/util/List;

    .line 773
    .line 774
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/play_billing/u1;->f(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 775
    .line 776
    .line 777
    goto/16 :goto_17

    .line 778
    .line 779
    :pswitch_30
    aget v2, v2, v11

    .line 780
    .line 781
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    check-cast v0, Ljava/util/List;

    .line 786
    .line 787
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/play_billing/u1;->C(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 788
    .line 789
    .line 790
    goto/16 :goto_17

    .line 791
    .line 792
    :pswitch_31
    aget v2, v2, v11

    .line 793
    .line 794
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    check-cast v0, Ljava/util/List;

    .line 799
    .line 800
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/play_billing/u1;->A(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 801
    .line 802
    .line 803
    goto/16 :goto_17

    .line 804
    .line 805
    :pswitch_32
    aget v2, v2, v11

    .line 806
    .line 807
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    check-cast v0, Ljava/util/List;

    .line 812
    .line 813
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/play_billing/u1;->w(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/d0;Z)V

    .line 814
    .line 815
    .line 816
    goto/16 :goto_17

    .line 817
    .line 818
    :pswitch_33
    move-wide v4, v0

    .line 819
    move-object/from16 v0, p0

    .line 820
    .line 821
    move v1, v11

    .line 822
    move v2, v13

    .line 823
    move v3, v15

    .line 824
    move-wide v9, v4

    .line 825
    move/from16 v4, v16

    .line 826
    .line 827
    move-object/from16 v5, p1

    .line 828
    .line 829
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 830
    .line 831
    .line 832
    move-result v0

    .line 833
    if-eqz v0, :cond_4

    .line 834
    .line 835
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    :goto_5
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/play_billing/l1;->B(I)Lcom/google/android/gms/internal/play_billing/t1;

    .line 840
    .line 841
    .line 842
    move-result-object v1

    .line 843
    invoke-virtual {v8, v12, v1, v0}, Lcom/google/android/gms/internal/play_billing/d0;->n(ILcom/google/android/gms/internal/play_billing/t1;Ljava/lang/Object;)V

    .line 844
    .line 845
    .line 846
    goto/16 :goto_17

    .line 847
    .line 848
    :pswitch_34
    move-wide v9, v0

    .line 849
    move-object/from16 v0, p0

    .line 850
    .line 851
    move v1, v11

    .line 852
    move v2, v13

    .line 853
    move v3, v15

    .line 854
    move/from16 v4, v16

    .line 855
    .line 856
    move-object/from16 v5, p1

    .line 857
    .line 858
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 859
    .line 860
    .line 861
    move-result v0

    .line 862
    if-eqz v0, :cond_4

    .line 863
    .line 864
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 865
    .line 866
    .line 867
    move-result-wide v0

    .line 868
    :goto_6
    invoke-virtual {v8, v0, v1, v12}, Lcom/google/android/gms/internal/play_billing/d0;->b(JI)V

    .line 869
    .line 870
    .line 871
    goto/16 :goto_17

    .line 872
    .line 873
    :pswitch_35
    move-wide v9, v0

    .line 874
    move-object/from16 v0, p0

    .line 875
    .line 876
    move v1, v11

    .line 877
    move v2, v13

    .line 878
    move v3, v15

    .line 879
    move/from16 v4, v16

    .line 880
    .line 881
    move-object/from16 v5, p1

    .line 882
    .line 883
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 884
    .line 885
    .line 886
    move-result v0

    .line 887
    if-eqz v0, :cond_4

    .line 888
    .line 889
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 890
    .line 891
    .line 892
    move-result v0

    .line 893
    :goto_7
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/play_billing/d0;->a(II)V

    .line 894
    .line 895
    .line 896
    goto/16 :goto_17

    .line 897
    .line 898
    :pswitch_36
    move-wide v9, v0

    .line 899
    move-object/from16 v0, p0

    .line 900
    .line 901
    move v1, v11

    .line 902
    move v2, v13

    .line 903
    move v3, v15

    .line 904
    move/from16 v4, v16

    .line 905
    .line 906
    move-object/from16 v5, p1

    .line 907
    .line 908
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 909
    .line 910
    .line 911
    move-result v0

    .line 912
    if-eqz v0, :cond_4

    .line 913
    .line 914
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 915
    .line 916
    .line 917
    move-result-wide v0

    .line 918
    :goto_8
    invoke-virtual {v8, v0, v1, v12}, Lcom/google/android/gms/internal/play_billing/d0;->s(JI)V

    .line 919
    .line 920
    .line 921
    goto/16 :goto_17

    .line 922
    .line 923
    :pswitch_37
    move-wide v9, v0

    .line 924
    move-object/from16 v0, p0

    .line 925
    .line 926
    move v1, v11

    .line 927
    move v2, v13

    .line 928
    move v3, v15

    .line 929
    move/from16 v4, v16

    .line 930
    .line 931
    move-object/from16 v5, p1

    .line 932
    .line 933
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 934
    .line 935
    .line 936
    move-result v0

    .line 937
    if-eqz v0, :cond_4

    .line 938
    .line 939
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 940
    .line 941
    .line 942
    move-result v0

    .line 943
    :goto_9
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/play_billing/d0;->r(II)V

    .line 944
    .line 945
    .line 946
    goto/16 :goto_17

    .line 947
    .line 948
    :pswitch_38
    move-wide v9, v0

    .line 949
    move-object/from16 v0, p0

    .line 950
    .line 951
    move v1, v11

    .line 952
    move v2, v13

    .line 953
    move v3, v15

    .line 954
    move/from16 v4, v16

    .line 955
    .line 956
    move-object/from16 v5, p1

    .line 957
    .line 958
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 959
    .line 960
    .line 961
    move-result v0

    .line 962
    if-eqz v0, :cond_4

    .line 963
    .line 964
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 965
    .line 966
    .line 967
    move-result v0

    .line 968
    :goto_a
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/play_billing/d0;->j(II)V

    .line 969
    .line 970
    .line 971
    goto/16 :goto_17

    .line 972
    .line 973
    :pswitch_39
    move-wide v9, v0

    .line 974
    move-object/from16 v0, p0

    .line 975
    .line 976
    move v1, v11

    .line 977
    move v2, v13

    .line 978
    move v3, v15

    .line 979
    move/from16 v4, v16

    .line 980
    .line 981
    move-object/from16 v5, p1

    .line 982
    .line 983
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 984
    .line 985
    .line 986
    move-result v0

    .line 987
    if-eqz v0, :cond_4

    .line 988
    .line 989
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 990
    .line 991
    .line 992
    move-result v0

    .line 993
    :goto_b
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/play_billing/d0;->d(II)V

    .line 994
    .line 995
    .line 996
    goto/16 :goto_17

    .line 997
    .line 998
    :pswitch_3a
    move-wide v9, v0

    .line 999
    move-object/from16 v0, p0

    .line 1000
    .line 1001
    move v1, v11

    .line 1002
    move v2, v13

    .line 1003
    move v3, v15

    .line 1004
    move/from16 v4, v16

    .line 1005
    .line 1006
    move-object/from16 v5, p1

    .line 1007
    .line 1008
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1009
    .line 1010
    .line 1011
    move-result v0

    .line 1012
    if-eqz v0, :cond_4

    .line 1013
    .line 1014
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v0

    .line 1018
    :goto_c
    check-cast v0, Lcom/google/android/gms/internal/play_billing/z;

    .line 1019
    .line 1020
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/play_billing/d0;->g(ILcom/google/android/gms/internal/play_billing/z;)V

    .line 1021
    .line 1022
    .line 1023
    goto/16 :goto_17

    .line 1024
    .line 1025
    :pswitch_3b
    move-wide v9, v0

    .line 1026
    move-object/from16 v0, p0

    .line 1027
    .line 1028
    move v1, v11

    .line 1029
    move v2, v13

    .line 1030
    move v3, v15

    .line 1031
    move/from16 v4, v16

    .line 1032
    .line 1033
    move-object/from16 v5, p1

    .line 1034
    .line 1035
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1036
    .line 1037
    .line 1038
    move-result v0

    .line 1039
    if-eqz v0, :cond_4

    .line 1040
    .line 1041
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v0

    .line 1045
    :goto_d
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/play_billing/l1;->B(I)Lcom/google/android/gms/internal/play_billing/t1;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v1

    .line 1049
    invoke-virtual {v8, v12, v1, v0}, Lcom/google/android/gms/internal/play_billing/d0;->q(ILcom/google/android/gms/internal/play_billing/t1;Ljava/lang/Object;)V

    .line 1050
    .line 1051
    .line 1052
    goto/16 :goto_17

    .line 1053
    .line 1054
    :pswitch_3c
    move-wide v9, v0

    .line 1055
    move-object/from16 v0, p0

    .line 1056
    .line 1057
    move v1, v11

    .line 1058
    move v2, v13

    .line 1059
    move v3, v15

    .line 1060
    move/from16 v4, v16

    .line 1061
    .line 1062
    move-object/from16 v5, p1

    .line 1063
    .line 1064
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1065
    .line 1066
    .line 1067
    move-result v0

    .line 1068
    if-eqz v0, :cond_4

    .line 1069
    .line 1070
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v0

    .line 1074
    :goto_e
    invoke-static {v12, v0, v8}, Lcom/google/android/gms/internal/play_billing/l1;->u(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/d0;)V

    .line 1075
    .line 1076
    .line 1077
    goto/16 :goto_17

    .line 1078
    .line 1079
    :pswitch_3d
    move-wide v9, v0

    .line 1080
    move-object/from16 v0, p0

    .line 1081
    .line 1082
    move v1, v11

    .line 1083
    move v2, v13

    .line 1084
    move v3, v15

    .line 1085
    move/from16 v4, v16

    .line 1086
    .line 1087
    move-object/from16 v5, p1

    .line 1088
    .line 1089
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1090
    .line 1091
    .line 1092
    move-result v0

    .line 1093
    if-eqz v0, :cond_4

    .line 1094
    .line 1095
    invoke-static {v7, v9, v10}, Lcom/google/android/gms/internal/play_billing/f2;->v(Ljava/lang/Object;J)Z

    .line 1096
    .line 1097
    .line 1098
    move-result v0

    .line 1099
    :goto_f
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/play_billing/d0;->f(IZ)V

    .line 1100
    .line 1101
    .line 1102
    goto/16 :goto_17

    .line 1103
    .line 1104
    :pswitch_3e
    move-wide v9, v0

    .line 1105
    move-object/from16 v0, p0

    .line 1106
    .line 1107
    move v1, v11

    .line 1108
    move v2, v13

    .line 1109
    move v3, v15

    .line 1110
    move/from16 v4, v16

    .line 1111
    .line 1112
    move-object/from16 v5, p1

    .line 1113
    .line 1114
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1115
    .line 1116
    .line 1117
    move-result v0

    .line 1118
    if-eqz v0, :cond_4

    .line 1119
    .line 1120
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1121
    .line 1122
    .line 1123
    move-result v0

    .line 1124
    :goto_10
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/play_billing/d0;->k(II)V

    .line 1125
    .line 1126
    .line 1127
    goto/16 :goto_17

    .line 1128
    .line 1129
    :pswitch_3f
    move-wide v9, v0

    .line 1130
    move-object/from16 v0, p0

    .line 1131
    .line 1132
    move v1, v11

    .line 1133
    move v2, v13

    .line 1134
    move v3, v15

    .line 1135
    move/from16 v4, v16

    .line 1136
    .line 1137
    move-object/from16 v5, p1

    .line 1138
    .line 1139
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1140
    .line 1141
    .line 1142
    move-result v0

    .line 1143
    if-eqz v0, :cond_4

    .line 1144
    .line 1145
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1146
    .line 1147
    .line 1148
    move-result-wide v0

    .line 1149
    :goto_11
    invoke-virtual {v8, v0, v1, v12}, Lcom/google/android/gms/internal/play_billing/d0;->l(JI)V

    .line 1150
    .line 1151
    .line 1152
    goto/16 :goto_17

    .line 1153
    .line 1154
    :pswitch_40
    move-wide v9, v0

    .line 1155
    move-object/from16 v0, p0

    .line 1156
    .line 1157
    move v1, v11

    .line 1158
    move v2, v13

    .line 1159
    move v3, v15

    .line 1160
    move/from16 v4, v16

    .line 1161
    .line 1162
    move-object/from16 v5, p1

    .line 1163
    .line 1164
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1165
    .line 1166
    .line 1167
    move-result v0

    .line 1168
    if-eqz v0, :cond_4

    .line 1169
    .line 1170
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1171
    .line 1172
    .line 1173
    move-result v0

    .line 1174
    :goto_12
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/play_billing/d0;->o(II)V

    .line 1175
    .line 1176
    .line 1177
    goto/16 :goto_17

    .line 1178
    .line 1179
    :pswitch_41
    move-wide v9, v0

    .line 1180
    move-object/from16 v0, p0

    .line 1181
    .line 1182
    move v1, v11

    .line 1183
    move v2, v13

    .line 1184
    move v3, v15

    .line 1185
    move/from16 v4, v16

    .line 1186
    .line 1187
    move-object/from16 v5, p1

    .line 1188
    .line 1189
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1190
    .line 1191
    .line 1192
    move-result v0

    .line 1193
    if-eqz v0, :cond_4

    .line 1194
    .line 1195
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1196
    .line 1197
    .line 1198
    move-result-wide v0

    .line 1199
    :goto_13
    invoke-virtual {v8, v0, v1, v12}, Lcom/google/android/gms/internal/play_billing/d0;->e(JI)V

    .line 1200
    .line 1201
    .line 1202
    goto :goto_17

    .line 1203
    :pswitch_42
    move-wide v9, v0

    .line 1204
    move-object/from16 v0, p0

    .line 1205
    .line 1206
    move v1, v11

    .line 1207
    move v2, v13

    .line 1208
    move v3, v15

    .line 1209
    move/from16 v4, v16

    .line 1210
    .line 1211
    move-object/from16 v5, p1

    .line 1212
    .line 1213
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1214
    .line 1215
    .line 1216
    move-result v0

    .line 1217
    if-eqz v0, :cond_4

    .line 1218
    .line 1219
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1220
    .line 1221
    .line 1222
    move-result-wide v0

    .line 1223
    :goto_14
    invoke-virtual {v8, v0, v1, v12}, Lcom/google/android/gms/internal/play_billing/d0;->p(JI)V

    .line 1224
    .line 1225
    .line 1226
    goto :goto_17

    .line 1227
    :pswitch_43
    move-wide v9, v0

    .line 1228
    move-object/from16 v0, p0

    .line 1229
    .line 1230
    move v1, v11

    .line 1231
    move v2, v13

    .line 1232
    move v3, v15

    .line 1233
    move/from16 v4, v16

    .line 1234
    .line 1235
    move-object/from16 v5, p1

    .line 1236
    .line 1237
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1238
    .line 1239
    .line 1240
    move-result v0

    .line 1241
    if-eqz v0, :cond_4

    .line 1242
    .line 1243
    invoke-static {v7, v9, v10}, Lcom/google/android/gms/internal/play_billing/f2;->f(Ljava/lang/Object;J)F

    .line 1244
    .line 1245
    .line 1246
    move-result v0

    .line 1247
    :goto_15
    invoke-virtual {v8, v0, v12}, Lcom/google/android/gms/internal/play_billing/d0;->m(FI)V

    .line 1248
    .line 1249
    .line 1250
    goto :goto_17

    .line 1251
    :pswitch_44
    move-wide v9, v0

    .line 1252
    move-object/from16 v0, p0

    .line 1253
    .line 1254
    move v1, v11

    .line 1255
    move v2, v13

    .line 1256
    move v3, v15

    .line 1257
    move/from16 v4, v16

    .line 1258
    .line 1259
    move-object/from16 v5, p1

    .line 1260
    .line 1261
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1262
    .line 1263
    .line 1264
    move-result v0

    .line 1265
    if-eqz v0, :cond_4

    .line 1266
    .line 1267
    invoke-static {v7, v9, v10}, Lcom/google/android/gms/internal/play_billing/f2;->e(Ljava/lang/Object;J)D

    .line 1268
    .line 1269
    .line 1270
    move-result-wide v0

    .line 1271
    :goto_16
    invoke-virtual {v8, v0, v1, v12}, Lcom/google/android/gms/internal/play_billing/d0;->i(DI)V

    .line 1272
    .line 1273
    .line 1274
    :cond_4
    :goto_17
    add-int/lit8 v11, v11, 0x3

    .line 1275
    .line 1276
    move v0, v13

    .line 1277
    move v1, v15

    .line 1278
    const v9, 0xfffff

    .line 1279
    .line 1280
    .line 1281
    const/4 v10, 0x0

    .line 1282
    goto/16 :goto_0

    .line 1283
    .line 1284
    :cond_5
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/l1;->j:Lcom/google/android/gms/internal/play_billing/x1;

    .line 1285
    .line 1286
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1287
    .line 1288
    .line 1289
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/x1;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/w1;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v0

    .line 1293
    invoke-static {v0, v8}, Lcom/google/android/gms/internal/play_billing/x1;->d(Lcom/google/android/gms/internal/play_billing/w1;Lcom/google/android/gms/internal/play_billing/d0;)V

    .line 1294
    .line 1295
    .line 1296
    return-void

    .line 1297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/v;)V
    .locals 7

    .line 1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/l1;->v(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/play_billing/v;)I

    return-void
.end method

.method public final e(Ljava/lang/Object;)I
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const v0, 0xfffff

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    move v8, v2

    .line 12
    move v9, v3

    .line 13
    move v2, v1

    .line 14
    move v1, v0

    .line 15
    :goto_0
    iget-object v3, v6, Lcom/google/android/gms/internal/play_billing/l1;->a:[I

    .line 16
    .line 17
    array-length v4, v3

    .line 18
    if-ge v8, v4, :cond_1a

    .line 19
    .line 20
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/play_billing/l1;->z(I)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    ushr-int/lit8 v5, v4, 0x14

    .line 25
    .line 26
    and-int/lit16 v5, v5, 0xff

    .line 27
    .line 28
    add-int/lit8 v10, v8, 0x2

    .line 29
    .line 30
    aget v11, v3, v8

    .line 31
    .line 32
    aget v3, v3, v10

    .line 33
    .line 34
    and-int v10, v3, v0

    .line 35
    .line 36
    const/4 v12, 0x1

    .line 37
    const/16 v13, 0x11

    .line 38
    .line 39
    sget-object v14, Lcom/google/android/gms/internal/play_billing/l1;->l:Lsun/misc/Unsafe;

    .line 40
    .line 41
    if-gt v5, v13, :cond_2

    .line 42
    .line 43
    if-eq v10, v1, :cond_1

    .line 44
    .line 45
    if-ne v10, v0, :cond_0

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    int-to-long v1, v10

    .line 50
    invoke-virtual {v14, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    :goto_1
    move v2, v1

    .line 55
    move v1, v10

    .line 56
    :cond_1
    ushr-int/lit8 v3, v3, 0x14

    .line 57
    .line 58
    shl-int v3, v12, v3

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const/4 v3, 0x0

    .line 62
    :goto_2
    move v10, v1

    .line 63
    move v13, v2

    .line 64
    move v15, v3

    .line 65
    and-int/2addr v0, v4

    .line 66
    sget-object v1, Lcom/google/android/gms/internal/play_billing/h0;->b:Lcom/google/android/gms/internal/play_billing/h0;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/h0;->a()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-lt v5, v1, :cond_3

    .line 73
    .line 74
    sget-object v1, Lcom/google/android/gms/internal/play_billing/h0;->c:Lcom/google/android/gms/internal/play_billing/h0;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    :cond_3
    int-to-long v3, v0

    .line 80
    const/16 v16, 0x3f

    .line 81
    .line 82
    packed-switch v5, :pswitch_data_0

    .line 83
    .line 84
    .line 85
    goto/16 :goto_16

    .line 86
    .line 87
    :pswitch_0
    invoke-virtual {v6, v7, v11, v8}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_17

    .line 92
    .line 93
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    move/from16 v17, v13

    .line 98
    .line 99
    goto/16 :goto_18

    .line 100
    .line 101
    :pswitch_1
    invoke-virtual {v6, v7, v11, v8}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_17

    .line 106
    .line 107
    shl-int/lit8 v0, v11, 0x3

    .line 108
    .line 109
    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/play_billing/l1;->A(Ljava/lang/Object;J)J

    .line 110
    .line 111
    .line 112
    move-result-wide v1

    .line 113
    move/from16 v17, v13

    .line 114
    .line 115
    goto/16 :goto_19

    .line 116
    .line 117
    :pswitch_2
    invoke-virtual {v6, v7, v11, v8}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_17

    .line 122
    .line 123
    shl-int/lit8 v0, v11, 0x3

    .line 124
    .line 125
    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/play_billing/l1;->x(Ljava/lang/Object;J)I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    move/from16 v17, v13

    .line 130
    .line 131
    goto/16 :goto_1a

    .line 132
    .line 133
    :pswitch_3
    invoke-virtual {v6, v7, v11, v8}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_17

    .line 138
    .line 139
    goto/16 :goto_6

    .line 140
    .line 141
    :pswitch_4
    invoke-virtual {v6, v7, v11, v8}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_17

    .line 146
    .line 147
    goto/16 :goto_5

    .line 148
    .line 149
    :pswitch_5
    invoke-virtual {v6, v7, v11, v8}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_17

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :pswitch_6
    invoke-virtual {v6, v7, v11, v8}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_17

    .line 161
    .line 162
    shl-int/lit8 v0, v11, 0x3

    .line 163
    .line 164
    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/play_billing/l1;->x(Ljava/lang/Object;J)I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    move/from16 v17, v13

    .line 169
    .line 170
    goto/16 :goto_1b

    .line 171
    .line 172
    :pswitch_7
    invoke-virtual {v6, v7, v11, v8}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_17

    .line 177
    .line 178
    shl-int/lit8 v0, v11, 0x3

    .line 179
    .line 180
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    move/from16 v17, v13

    .line 185
    .line 186
    goto/16 :goto_1e

    .line 187
    .line 188
    :pswitch_8
    invoke-virtual {v6, v7, v11, v8}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_17

    .line 193
    .line 194
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    move/from16 v17, v13

    .line 199
    .line 200
    goto/16 :goto_1d

    .line 201
    .line 202
    :pswitch_9
    invoke-virtual {v6, v7, v11, v8}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_17

    .line 207
    .line 208
    shl-int/lit8 v0, v11, 0x3

    .line 209
    .line 210
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    instance-of v2, v1, Lcom/google/android/gms/internal/play_billing/z;

    .line 215
    .line 216
    move/from16 v17, v13

    .line 217
    .line 218
    if-eqz v2, :cond_18

    .line 219
    .line 220
    goto/16 :goto_1e

    .line 221
    .line 222
    :pswitch_a
    invoke-virtual {v6, v7, v11, v8}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_17

    .line 227
    .line 228
    move/from16 v17, v13

    .line 229
    .line 230
    goto/16 :goto_20

    .line 231
    .line 232
    :pswitch_b
    invoke-virtual {v6, v7, v11, v8}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-eqz v0, :cond_17

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :pswitch_c
    invoke-virtual {v6, v7, v11, v8}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_17

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :pswitch_d
    invoke-virtual {v6, v7, v11, v8}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_17

    .line 251
    .line 252
    :goto_3
    shl-int/lit8 v0, v11, 0x3

    .line 253
    .line 254
    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/play_billing/l1;->x(Ljava/lang/Object;J)I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    move/from16 v17, v13

    .line 259
    .line 260
    goto/16 :goto_22

    .line 261
    .line 262
    :pswitch_e
    invoke-virtual {v6, v7, v11, v8}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_17

    .line 267
    .line 268
    goto :goto_4

    .line 269
    :pswitch_f
    invoke-virtual {v6, v7, v11, v8}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-eqz v0, :cond_17

    .line 274
    .line 275
    :goto_4
    shl-int/lit8 v0, v11, 0x3

    .line 276
    .line 277
    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/play_billing/l1;->A(Ljava/lang/Object;J)J

    .line 278
    .line 279
    .line 280
    move-result-wide v1

    .line 281
    move/from16 v17, v13

    .line 282
    .line 283
    goto/16 :goto_24

    .line 284
    .line 285
    :pswitch_10
    invoke-virtual {v6, v7, v11, v8}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-eqz v0, :cond_17

    .line 290
    .line 291
    :goto_5
    move/from16 v17, v13

    .line 292
    .line 293
    goto/16 :goto_27

    .line 294
    .line 295
    :pswitch_11
    invoke-virtual {v6, v7, v11, v8}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_17

    .line 300
    .line 301
    :goto_6
    move/from16 v17, v13

    .line 302
    .line 303
    goto/16 :goto_28

    .line 304
    .line 305
    :pswitch_12
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    div-int/lit8 v1, v8, 0x3

    .line 310
    .line 311
    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/l1;->b:[Ljava/lang/Object;

    .line 312
    .line 313
    add-int/2addr v1, v1

    .line 314
    aget-object v1, v2, v1

    .line 315
    .line 316
    check-cast v0, Lcom/google/android/gms/internal/play_billing/e1;

    .line 317
    .line 318
    invoke-static {v1}, La1/b;->j(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-nez v1, :cond_17

    .line 326
    .line 327
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/e1;->entrySet()Ljava/util/Set;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-nez v1, :cond_4

    .line 340
    .line 341
    goto/16 :goto_16

    .line 342
    .line 343
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    check-cast v0, Ljava/util/Map$Entry;

    .line 348
    .line 349
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    const/4 v0, 0x0

    .line 356
    throw v0

    .line 357
    :pswitch_13
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    check-cast v0, Ljava/util/List;

    .line 362
    .line 363
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/play_billing/l1;->B(I)Lcom/google/android/gms/internal/play_billing/t1;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    sget-object v2, Lcom/google/android/gms/internal/play_billing/u1;->a:Ljava/lang/Class;

    .line 368
    .line 369
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    if-nez v2, :cond_5

    .line 374
    .line 375
    goto/16 :goto_a

    .line 376
    .line 377
    :cond_5
    const/4 v3, 0x0

    .line 378
    const/4 v4, 0x0

    .line 379
    :goto_7
    if-ge v3, v2, :cond_6

    .line 380
    .line 381
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    check-cast v5, Lcom/google/android/gms/internal/play_billing/j1;

    .line 386
    .line 387
    invoke-static {v11, v5, v1}, Lcom/google/android/gms/internal/play_billing/b0;->p0(ILcom/google/android/gms/internal/play_billing/j1;Lcom/google/android/gms/internal/play_billing/t1;)I

    .line 388
    .line 389
    .line 390
    move-result v5

    .line 391
    add-int/2addr v4, v5

    .line 392
    add-int/lit8 v3, v3, 0x1

    .line 393
    .line 394
    goto :goto_7

    .line 395
    :cond_6
    move v0, v4

    .line 396
    goto/16 :goto_c

    .line 397
    .line 398
    :pswitch_14
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    check-cast v0, Ljava/util/List;

    .line 403
    .line 404
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/u1;->q(Ljava/util/List;)I

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    if-lez v0, :cond_17

    .line 409
    .line 410
    goto/16 :goto_8

    .line 411
    .line 412
    :pswitch_15
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    check-cast v0, Ljava/util/List;

    .line 417
    .line 418
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/u1;->p(Ljava/util/List;)I

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    if-lez v0, :cond_17

    .line 423
    .line 424
    goto/16 :goto_8

    .line 425
    .line 426
    :pswitch_16
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    check-cast v0, Ljava/util/List;

    .line 431
    .line 432
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/u1;->l(Ljava/util/List;)I

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    if-lez v0, :cond_17

    .line 437
    .line 438
    goto/16 :goto_8

    .line 439
    .line 440
    :pswitch_17
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    check-cast v0, Ljava/util/List;

    .line 445
    .line 446
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/u1;->j(Ljava/util/List;)I

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    if-lez v0, :cond_17

    .line 451
    .line 452
    goto/16 :goto_8

    .line 453
    .line 454
    :pswitch_18
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    check-cast v0, Ljava/util/List;

    .line 459
    .line 460
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/u1;->h(Ljava/util/List;)I

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    if-lez v0, :cond_17

    .line 465
    .line 466
    goto/16 :goto_8

    .line 467
    .line 468
    :pswitch_19
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    check-cast v0, Ljava/util/List;

    .line 473
    .line 474
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/u1;->r(Ljava/util/List;)I

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    if-lez v0, :cond_17

    .line 479
    .line 480
    goto/16 :goto_8

    .line 481
    .line 482
    :pswitch_1a
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    check-cast v0, Ljava/util/List;

    .line 487
    .line 488
    sget-object v1, Lcom/google/android/gms/internal/play_billing/u1;->a:Ljava/lang/Class;

    .line 489
    .line 490
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    if-lez v0, :cond_17

    .line 495
    .line 496
    goto :goto_8

    .line 497
    :pswitch_1b
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    check-cast v0, Ljava/util/List;

    .line 502
    .line 503
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/u1;->j(Ljava/util/List;)I

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    if-lez v0, :cond_17

    .line 508
    .line 509
    goto :goto_8

    .line 510
    :pswitch_1c
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    check-cast v0, Ljava/util/List;

    .line 515
    .line 516
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/u1;->l(Ljava/util/List;)I

    .line 517
    .line 518
    .line 519
    move-result v0

    .line 520
    if-lez v0, :cond_17

    .line 521
    .line 522
    goto :goto_8

    .line 523
    :pswitch_1d
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    check-cast v0, Ljava/util/List;

    .line 528
    .line 529
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/u1;->m(Ljava/util/List;)I

    .line 530
    .line 531
    .line 532
    move-result v0

    .line 533
    if-lez v0, :cond_17

    .line 534
    .line 535
    goto :goto_8

    .line 536
    :pswitch_1e
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    check-cast v0, Ljava/util/List;

    .line 541
    .line 542
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/u1;->s(Ljava/util/List;)I

    .line 543
    .line 544
    .line 545
    move-result v0

    .line 546
    if-lez v0, :cond_17

    .line 547
    .line 548
    goto :goto_8

    .line 549
    :pswitch_1f
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    check-cast v0, Ljava/util/List;

    .line 554
    .line 555
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/u1;->n(Ljava/util/List;)I

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    if-lez v0, :cond_17

    .line 560
    .line 561
    goto :goto_8

    .line 562
    :pswitch_20
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    check-cast v0, Ljava/util/List;

    .line 567
    .line 568
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/u1;->j(Ljava/util/List;)I

    .line 569
    .line 570
    .line 571
    move-result v0

    .line 572
    if-lez v0, :cond_17

    .line 573
    .line 574
    goto :goto_8

    .line 575
    :pswitch_21
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    check-cast v0, Ljava/util/List;

    .line 580
    .line 581
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/u1;->l(Ljava/util/List;)I

    .line 582
    .line 583
    .line 584
    move-result v0

    .line 585
    if-lez v0, :cond_17

    .line 586
    .line 587
    :goto_8
    shl-int/lit8 v1, v11, 0x3

    .line 588
    .line 589
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 590
    .line 591
    .line 592
    move-result v1

    .line 593
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 594
    .line 595
    .line 596
    move-result v2

    .line 597
    move/from16 v17, v13

    .line 598
    .line 599
    goto/16 :goto_1f

    .line 600
    .line 601
    :pswitch_22
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    check-cast v0, Ljava/util/List;

    .line 606
    .line 607
    sget-object v1, Lcom/google/android/gms/internal/play_billing/u1;->a:Ljava/lang/Class;

    .line 608
    .line 609
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 610
    .line 611
    .line 612
    move-result v1

    .line 613
    if-nez v1, :cond_7

    .line 614
    .line 615
    goto/16 :goto_11

    .line 616
    .line 617
    :cond_7
    shl-int/lit8 v2, v11, 0x3

    .line 618
    .line 619
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/u1;->q(Ljava/util/List;)I

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    goto/16 :goto_12

    .line 624
    .line 625
    :pswitch_23
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    check-cast v0, Ljava/util/List;

    .line 630
    .line 631
    sget-object v1, Lcom/google/android/gms/internal/play_billing/u1;->a:Ljava/lang/Class;

    .line 632
    .line 633
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 634
    .line 635
    .line 636
    move-result v1

    .line 637
    if-nez v1, :cond_8

    .line 638
    .line 639
    goto/16 :goto_11

    .line 640
    .line 641
    :cond_8
    shl-int/lit8 v2, v11, 0x3

    .line 642
    .line 643
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/u1;->p(Ljava/util/List;)I

    .line 644
    .line 645
    .line 646
    move-result v0

    .line 647
    goto/16 :goto_12

    .line 648
    .line 649
    :pswitch_24
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    check-cast v0, Ljava/util/List;

    .line 654
    .line 655
    sget-object v1, Lcom/google/android/gms/internal/play_billing/u1;->a:Ljava/lang/Class;

    .line 656
    .line 657
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 658
    .line 659
    .line 660
    move-result v1

    .line 661
    if-nez v1, :cond_9

    .line 662
    .line 663
    goto/16 :goto_11

    .line 664
    .line 665
    :cond_9
    shl-int/lit8 v2, v11, 0x3

    .line 666
    .line 667
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/u1;->h(Ljava/util/List;)I

    .line 668
    .line 669
    .line 670
    move-result v0

    .line 671
    goto/16 :goto_12

    .line 672
    .line 673
    :pswitch_25
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    check-cast v0, Ljava/util/List;

    .line 678
    .line 679
    sget-object v1, Lcom/google/android/gms/internal/play_billing/u1;->a:Ljava/lang/Class;

    .line 680
    .line 681
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 682
    .line 683
    .line 684
    move-result v1

    .line 685
    if-nez v1, :cond_a

    .line 686
    .line 687
    goto/16 :goto_11

    .line 688
    .line 689
    :cond_a
    shl-int/lit8 v2, v11, 0x3

    .line 690
    .line 691
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/u1;->r(Ljava/util/List;)I

    .line 692
    .line 693
    .line 694
    move-result v0

    .line 695
    goto/16 :goto_12

    .line 696
    .line 697
    :pswitch_26
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    check-cast v0, Ljava/util/List;

    .line 702
    .line 703
    sget-object v1, Lcom/google/android/gms/internal/play_billing/u1;->a:Ljava/lang/Class;

    .line 704
    .line 705
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 706
    .line 707
    .line 708
    move-result v1

    .line 709
    if-nez v1, :cond_b

    .line 710
    .line 711
    goto/16 :goto_11

    .line 712
    .line 713
    :cond_b
    shl-int/lit8 v2, v11, 0x3

    .line 714
    .line 715
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 716
    .line 717
    .line 718
    move-result v2

    .line 719
    mul-int/2addr v2, v1

    .line 720
    const/4 v1, 0x0

    .line 721
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 722
    .line 723
    .line 724
    move-result v3

    .line 725
    if-ge v1, v3, :cond_15

    .line 726
    .line 727
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v3

    .line 731
    check-cast v3, Lcom/google/android/gms/internal/play_billing/z;

    .line 732
    .line 733
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/z;->i()I

    .line 734
    .line 735
    .line 736
    move-result v3

    .line 737
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 738
    .line 739
    .line 740
    move-result v4

    .line 741
    add-int/2addr v4, v3

    .line 742
    add-int/2addr v2, v4

    .line 743
    add-int/lit8 v1, v1, 0x1

    .line 744
    .line 745
    goto :goto_9

    .line 746
    :pswitch_27
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    check-cast v0, Ljava/util/List;

    .line 751
    .line 752
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/play_billing/l1;->B(I)Lcom/google/android/gms/internal/play_billing/t1;

    .line 753
    .line 754
    .line 755
    move-result-object v1

    .line 756
    sget-object v2, Lcom/google/android/gms/internal/play_billing/u1;->a:Ljava/lang/Class;

    .line 757
    .line 758
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 759
    .line 760
    .line 761
    move-result v2

    .line 762
    if-nez v2, :cond_c

    .line 763
    .line 764
    :goto_a
    const/4 v0, 0x0

    .line 765
    goto :goto_c

    .line 766
    :cond_c
    shl-int/lit8 v3, v11, 0x3

    .line 767
    .line 768
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 769
    .line 770
    .line 771
    move-result v3

    .line 772
    mul-int/2addr v3, v2

    .line 773
    const/4 v4, 0x0

    .line 774
    :goto_b
    if-ge v4, v2, :cond_d

    .line 775
    .line 776
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 777
    .line 778
    .line 779
    move-result-object v5

    .line 780
    check-cast v5, Lcom/google/android/gms/internal/play_billing/j1;

    .line 781
    .line 782
    invoke-static {v5, v1}, Lcom/google/android/gms/internal/play_billing/b0;->q0(Lcom/google/android/gms/internal/play_billing/j1;Lcom/google/android/gms/internal/play_billing/t1;)I

    .line 783
    .line 784
    .line 785
    move-result v5

    .line 786
    add-int/2addr v3, v5

    .line 787
    add-int/lit8 v4, v4, 0x1

    .line 788
    .line 789
    goto :goto_b

    .line 790
    :cond_d
    move v0, v3

    .line 791
    :goto_c
    add-int/2addr v9, v0

    .line 792
    goto/16 :goto_16

    .line 793
    .line 794
    :pswitch_28
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    check-cast v0, Ljava/util/List;

    .line 799
    .line 800
    sget-object v1, Lcom/google/android/gms/internal/play_billing/u1;->a:Ljava/lang/Class;

    .line 801
    .line 802
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 803
    .line 804
    .line 805
    move-result v1

    .line 806
    if-nez v1, :cond_e

    .line 807
    .line 808
    goto/16 :goto_11

    .line 809
    .line 810
    :cond_e
    shl-int/lit8 v2, v11, 0x3

    .line 811
    .line 812
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 813
    .line 814
    .line 815
    move-result v2

    .line 816
    mul-int/2addr v2, v1

    .line 817
    instance-of v3, v0, Lcom/google/android/gms/internal/play_billing/x0;

    .line 818
    .line 819
    if-eqz v3, :cond_10

    .line 820
    .line 821
    check-cast v0, Lcom/google/android/gms/internal/play_billing/x0;

    .line 822
    .line 823
    const/4 v3, 0x0

    .line 824
    :goto_d
    if-ge v3, v1, :cond_15

    .line 825
    .line 826
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/play_billing/x0;->d(I)Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    move-result-object v4

    .line 830
    instance-of v5, v4, Lcom/google/android/gms/internal/play_billing/z;

    .line 831
    .line 832
    if-eqz v5, :cond_f

    .line 833
    .line 834
    check-cast v4, Lcom/google/android/gms/internal/play_billing/z;

    .line 835
    .line 836
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/z;->i()I

    .line 837
    .line 838
    .line 839
    move-result v4

    .line 840
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 841
    .line 842
    .line 843
    move-result v5

    .line 844
    add-int/2addr v5, v4

    .line 845
    add-int/2addr v5, v2

    .line 846
    move v2, v5

    .line 847
    goto :goto_e

    .line 848
    :cond_f
    check-cast v4, Ljava/lang/String;

    .line 849
    .line 850
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/b0;->r0(Ljava/lang/String;)I

    .line 851
    .line 852
    .line 853
    move-result v4

    .line 854
    add-int/2addr v4, v2

    .line 855
    move v2, v4

    .line 856
    :goto_e
    add-int/lit8 v3, v3, 0x1

    .line 857
    .line 858
    goto :goto_d

    .line 859
    :cond_10
    const/4 v3, 0x0

    .line 860
    :goto_f
    if-ge v3, v1, :cond_15

    .line 861
    .line 862
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    move-result-object v4

    .line 866
    instance-of v5, v4, Lcom/google/android/gms/internal/play_billing/z;

    .line 867
    .line 868
    if-eqz v5, :cond_11

    .line 869
    .line 870
    check-cast v4, Lcom/google/android/gms/internal/play_billing/z;

    .line 871
    .line 872
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/z;->i()I

    .line 873
    .line 874
    .line 875
    move-result v4

    .line 876
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 877
    .line 878
    .line 879
    move-result v5

    .line 880
    add-int/2addr v5, v4

    .line 881
    add-int/2addr v5, v2

    .line 882
    move v2, v5

    .line 883
    goto :goto_10

    .line 884
    :cond_11
    check-cast v4, Ljava/lang/String;

    .line 885
    .line 886
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/b0;->r0(Ljava/lang/String;)I

    .line 887
    .line 888
    .line 889
    move-result v4

    .line 890
    add-int/2addr v4, v2

    .line 891
    move v2, v4

    .line 892
    :goto_10
    add-int/lit8 v3, v3, 0x1

    .line 893
    .line 894
    goto :goto_f

    .line 895
    :pswitch_29
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    move-result-object v0

    .line 899
    check-cast v0, Ljava/util/List;

    .line 900
    .line 901
    sget-object v1, Lcom/google/android/gms/internal/play_billing/u1;->a:Ljava/lang/Class;

    .line 902
    .line 903
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 904
    .line 905
    .line 906
    move-result v0

    .line 907
    if-nez v0, :cond_12

    .line 908
    .line 909
    goto :goto_14

    .line 910
    :cond_12
    shl-int/lit8 v1, v11, 0x3

    .line 911
    .line 912
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 913
    .line 914
    .line 915
    move-result v1

    .line 916
    add-int/2addr v1, v12

    .line 917
    mul-int/2addr v1, v0

    .line 918
    goto :goto_15

    .line 919
    :pswitch_2a
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 920
    .line 921
    .line 922
    move-result-object v0

    .line 923
    check-cast v0, Ljava/util/List;

    .line 924
    .line 925
    sget-object v1, Lcom/google/android/gms/internal/play_billing/u1;->a:Ljava/lang/Class;

    .line 926
    .line 927
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 928
    .line 929
    .line 930
    move-result v1

    .line 931
    if-nez v1, :cond_13

    .line 932
    .line 933
    goto :goto_11

    .line 934
    :cond_13
    shl-int/lit8 v2, v11, 0x3

    .line 935
    .line 936
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/u1;->m(Ljava/util/List;)I

    .line 937
    .line 938
    .line 939
    move-result v0

    .line 940
    goto :goto_12

    .line 941
    :pswitch_2b
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 942
    .line 943
    .line 944
    move-result-object v0

    .line 945
    check-cast v0, Ljava/util/List;

    .line 946
    .line 947
    sget-object v1, Lcom/google/android/gms/internal/play_billing/u1;->a:Ljava/lang/Class;

    .line 948
    .line 949
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 950
    .line 951
    .line 952
    move-result v1

    .line 953
    if-nez v1, :cond_14

    .line 954
    .line 955
    :goto_11
    const/4 v2, 0x0

    .line 956
    goto :goto_13

    .line 957
    :cond_14
    shl-int/lit8 v2, v11, 0x3

    .line 958
    .line 959
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/u1;->s(Ljava/util/List;)I

    .line 960
    .line 961
    .line 962
    move-result v0

    .line 963
    :goto_12
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 964
    .line 965
    .line 966
    move-result v2

    .line 967
    mul-int/2addr v2, v1

    .line 968
    add-int/2addr v2, v0

    .line 969
    :cond_15
    :goto_13
    add-int/2addr v9, v2

    .line 970
    goto :goto_16

    .line 971
    :pswitch_2c
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 972
    .line 973
    .line 974
    move-result-object v0

    .line 975
    check-cast v0, Ljava/util/List;

    .line 976
    .line 977
    sget-object v1, Lcom/google/android/gms/internal/play_billing/u1;->a:Ljava/lang/Class;

    .line 978
    .line 979
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 980
    .line 981
    .line 982
    move-result v1

    .line 983
    if-nez v1, :cond_16

    .line 984
    .line 985
    :goto_14
    const/4 v1, 0x0

    .line 986
    goto :goto_15

    .line 987
    :cond_16
    shl-int/lit8 v1, v11, 0x3

    .line 988
    .line 989
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/u1;->n(Ljava/util/List;)I

    .line 990
    .line 991
    .line 992
    move-result v2

    .line 993
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 994
    .line 995
    .line 996
    move-result v0

    .line 997
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 998
    .line 999
    .line 1000
    move-result v1

    .line 1001
    mul-int/2addr v1, v0

    .line 1002
    add-int/2addr v1, v2

    .line 1003
    :goto_15
    add-int/2addr v9, v1

    .line 1004
    :cond_17
    :goto_16
    move/from16 v17, v13

    .line 1005
    .line 1006
    goto/16 :goto_2a

    .line 1007
    .line 1008
    :pswitch_2d
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v0

    .line 1012
    check-cast v0, Ljava/util/List;

    .line 1013
    .line 1014
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/u1;->i(ILjava/util/List;)I

    .line 1015
    .line 1016
    .line 1017
    move-result v0

    .line 1018
    goto :goto_17

    .line 1019
    :pswitch_2e
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v0

    .line 1023
    check-cast v0, Ljava/util/List;

    .line 1024
    .line 1025
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/u1;->k(ILjava/util/List;)I

    .line 1026
    .line 1027
    .line 1028
    move-result v0

    .line 1029
    :goto_17
    move/from16 v17, v13

    .line 1030
    .line 1031
    goto/16 :goto_29

    .line 1032
    .line 1033
    :pswitch_2f
    move-object/from16 v0, p0

    .line 1034
    .line 1035
    move v1, v8

    .line 1036
    move v2, v10

    .line 1037
    move-wide v4, v3

    .line 1038
    move v3, v13

    .line 1039
    move/from16 v17, v13

    .line 1040
    .line 1041
    move-wide v12, v4

    .line 1042
    move v4, v15

    .line 1043
    move-object/from16 v5, p1

    .line 1044
    .line 1045
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1046
    .line 1047
    .line 1048
    move-result v0

    .line 1049
    if-eqz v0, :cond_19

    .line 1050
    .line 1051
    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v0

    .line 1055
    :goto_18
    check-cast v0, Lcom/google/android/gms/internal/play_billing/j1;

    .line 1056
    .line 1057
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/play_billing/l1;->B(I)Lcom/google/android/gms/internal/play_billing/t1;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v1

    .line 1061
    invoke-static {v11, v0, v1}, Lcom/google/android/gms/internal/play_billing/b0;->p0(ILcom/google/android/gms/internal/play_billing/j1;Lcom/google/android/gms/internal/play_billing/t1;)I

    .line 1062
    .line 1063
    .line 1064
    move-result v0

    .line 1065
    goto/16 :goto_29

    .line 1066
    .line 1067
    :pswitch_30
    move/from16 v17, v13

    .line 1068
    .line 1069
    move-wide v12, v3

    .line 1070
    move-object/from16 v0, p0

    .line 1071
    .line 1072
    move v1, v8

    .line 1073
    move v2, v10

    .line 1074
    move/from16 v3, v17

    .line 1075
    .line 1076
    move v4, v15

    .line 1077
    move-object/from16 v5, p1

    .line 1078
    .line 1079
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1080
    .line 1081
    .line 1082
    move-result v0

    .line 1083
    if-eqz v0, :cond_19

    .line 1084
    .line 1085
    shl-int/lit8 v0, v11, 0x3

    .line 1086
    .line 1087
    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1088
    .line 1089
    .line 1090
    move-result-wide v1

    .line 1091
    :goto_19
    add-long v3, v1, v1

    .line 1092
    .line 1093
    shr-long v1, v1, v16

    .line 1094
    .line 1095
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 1096
    .line 1097
    .line 1098
    move-result v0

    .line 1099
    xor-long/2addr v1, v3

    .line 1100
    goto/16 :goto_25

    .line 1101
    .line 1102
    :pswitch_31
    move/from16 v17, v13

    .line 1103
    .line 1104
    move-wide v12, v3

    .line 1105
    move-object/from16 v0, p0

    .line 1106
    .line 1107
    move v1, v8

    .line 1108
    move v2, v10

    .line 1109
    move/from16 v3, v17

    .line 1110
    .line 1111
    move v4, v15

    .line 1112
    move-object/from16 v5, p1

    .line 1113
    .line 1114
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1115
    .line 1116
    .line 1117
    move-result v0

    .line 1118
    if-eqz v0, :cond_19

    .line 1119
    .line 1120
    shl-int/lit8 v0, v11, 0x3

    .line 1121
    .line 1122
    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1123
    .line 1124
    .line 1125
    move-result v1

    .line 1126
    :goto_1a
    add-int v2, v1, v1

    .line 1127
    .line 1128
    shr-int/lit8 v1, v1, 0x1f

    .line 1129
    .line 1130
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 1131
    .line 1132
    .line 1133
    move-result v0

    .line 1134
    xor-int/2addr v1, v2

    .line 1135
    goto/16 :goto_1c

    .line 1136
    .line 1137
    :pswitch_32
    move/from16 v17, v13

    .line 1138
    .line 1139
    move-object/from16 v0, p0

    .line 1140
    .line 1141
    move v1, v8

    .line 1142
    move v2, v10

    .line 1143
    move/from16 v3, v17

    .line 1144
    .line 1145
    move v4, v15

    .line 1146
    move-object/from16 v5, p1

    .line 1147
    .line 1148
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1149
    .line 1150
    .line 1151
    move-result v0

    .line 1152
    if-eqz v0, :cond_19

    .line 1153
    .line 1154
    goto/16 :goto_28

    .line 1155
    .line 1156
    :pswitch_33
    move/from16 v17, v13

    .line 1157
    .line 1158
    move-object/from16 v0, p0

    .line 1159
    .line 1160
    move v1, v8

    .line 1161
    move v2, v10

    .line 1162
    move/from16 v3, v17

    .line 1163
    .line 1164
    move v4, v15

    .line 1165
    move-object/from16 v5, p1

    .line 1166
    .line 1167
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1168
    .line 1169
    .line 1170
    move-result v0

    .line 1171
    if-eqz v0, :cond_19

    .line 1172
    .line 1173
    goto/16 :goto_27

    .line 1174
    .line 1175
    :pswitch_34
    move/from16 v17, v13

    .line 1176
    .line 1177
    move-wide v12, v3

    .line 1178
    move-object/from16 v0, p0

    .line 1179
    .line 1180
    move v1, v8

    .line 1181
    move v2, v10

    .line 1182
    move/from16 v3, v17

    .line 1183
    .line 1184
    move v4, v15

    .line 1185
    move-object/from16 v5, p1

    .line 1186
    .line 1187
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1188
    .line 1189
    .line 1190
    move-result v0

    .line 1191
    if-eqz v0, :cond_19

    .line 1192
    .line 1193
    goto/16 :goto_21

    .line 1194
    .line 1195
    :pswitch_35
    move/from16 v17, v13

    .line 1196
    .line 1197
    move-wide v12, v3

    .line 1198
    move-object/from16 v0, p0

    .line 1199
    .line 1200
    move v1, v8

    .line 1201
    move v2, v10

    .line 1202
    move/from16 v3, v17

    .line 1203
    .line 1204
    move v4, v15

    .line 1205
    move-object/from16 v5, p1

    .line 1206
    .line 1207
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1208
    .line 1209
    .line 1210
    move-result v0

    .line 1211
    if-eqz v0, :cond_19

    .line 1212
    .line 1213
    shl-int/lit8 v0, v11, 0x3

    .line 1214
    .line 1215
    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1216
    .line 1217
    .line 1218
    move-result v1

    .line 1219
    :goto_1b
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 1220
    .line 1221
    .line 1222
    move-result v0

    .line 1223
    :goto_1c
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 1224
    .line 1225
    .line 1226
    move-result v1

    .line 1227
    goto/16 :goto_26

    .line 1228
    .line 1229
    :pswitch_36
    move/from16 v17, v13

    .line 1230
    .line 1231
    move-wide v12, v3

    .line 1232
    move-object/from16 v0, p0

    .line 1233
    .line 1234
    move v1, v8

    .line 1235
    move v2, v10

    .line 1236
    move/from16 v3, v17

    .line 1237
    .line 1238
    move v4, v15

    .line 1239
    move-object/from16 v5, p1

    .line 1240
    .line 1241
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1242
    .line 1243
    .line 1244
    move-result v0

    .line 1245
    if-eqz v0, :cond_19

    .line 1246
    .line 1247
    shl-int/lit8 v0, v11, 0x3

    .line 1248
    .line 1249
    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v1

    .line 1253
    goto :goto_1e

    .line 1254
    :pswitch_37
    move/from16 v17, v13

    .line 1255
    .line 1256
    move-wide v12, v3

    .line 1257
    move-object/from16 v0, p0

    .line 1258
    .line 1259
    move v1, v8

    .line 1260
    move v2, v10

    .line 1261
    move/from16 v3, v17

    .line 1262
    .line 1263
    move v4, v15

    .line 1264
    move-object/from16 v5, p1

    .line 1265
    .line 1266
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1267
    .line 1268
    .line 1269
    move-result v0

    .line 1270
    if-eqz v0, :cond_19

    .line 1271
    .line 1272
    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v0

    .line 1276
    :goto_1d
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/play_billing/l1;->B(I)Lcom/google/android/gms/internal/play_billing/t1;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v1

    .line 1280
    invoke-static {v11, v1, v0}, Lcom/google/android/gms/internal/play_billing/u1;->o(ILcom/google/android/gms/internal/play_billing/t1;Ljava/lang/Object;)I

    .line 1281
    .line 1282
    .line 1283
    move-result v0

    .line 1284
    goto/16 :goto_29

    .line 1285
    .line 1286
    :pswitch_38
    move/from16 v17, v13

    .line 1287
    .line 1288
    move-wide v12, v3

    .line 1289
    move-object/from16 v0, p0

    .line 1290
    .line 1291
    move v1, v8

    .line 1292
    move v2, v10

    .line 1293
    move/from16 v3, v17

    .line 1294
    .line 1295
    move v4, v15

    .line 1296
    move-object/from16 v5, p1

    .line 1297
    .line 1298
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1299
    .line 1300
    .line 1301
    move-result v0

    .line 1302
    if-eqz v0, :cond_19

    .line 1303
    .line 1304
    shl-int/lit8 v0, v11, 0x3

    .line 1305
    .line 1306
    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v1

    .line 1310
    instance-of v2, v1, Lcom/google/android/gms/internal/play_billing/z;

    .line 1311
    .line 1312
    if-eqz v2, :cond_18

    .line 1313
    .line 1314
    :goto_1e
    check-cast v1, Lcom/google/android/gms/internal/play_billing/z;

    .line 1315
    .line 1316
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 1317
    .line 1318
    .line 1319
    move-result v0

    .line 1320
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/z;->i()I

    .line 1321
    .line 1322
    .line 1323
    move-result v1

    .line 1324
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 1325
    .line 1326
    .line 1327
    move-result v2

    .line 1328
    :goto_1f
    add-int/2addr v2, v1

    .line 1329
    add-int/2addr v2, v0

    .line 1330
    add-int/2addr v2, v9

    .line 1331
    move v9, v2

    .line 1332
    goto/16 :goto_2a

    .line 1333
    .line 1334
    :cond_18
    check-cast v1, Ljava/lang/String;

    .line 1335
    .line 1336
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 1337
    .line 1338
    .line 1339
    move-result v0

    .line 1340
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/b0;->r0(Ljava/lang/String;)I

    .line 1341
    .line 1342
    .line 1343
    move-result v1

    .line 1344
    goto/16 :goto_26

    .line 1345
    .line 1346
    :pswitch_39
    move/from16 v17, v13

    .line 1347
    .line 1348
    move-object/from16 v0, p0

    .line 1349
    .line 1350
    move v1, v8

    .line 1351
    move v2, v10

    .line 1352
    move/from16 v3, v17

    .line 1353
    .line 1354
    move v4, v15

    .line 1355
    move-object/from16 v5, p1

    .line 1356
    .line 1357
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1358
    .line 1359
    .line 1360
    move-result v0

    .line 1361
    if-eqz v0, :cond_19

    .line 1362
    .line 1363
    :goto_20
    shl-int/lit8 v0, v11, 0x3

    .line 1364
    .line 1365
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 1366
    .line 1367
    .line 1368
    move-result v0

    .line 1369
    add-int/2addr v0, v12

    .line 1370
    goto/16 :goto_29

    .line 1371
    .line 1372
    :pswitch_3a
    move/from16 v17, v13

    .line 1373
    .line 1374
    move-object/from16 v0, p0

    .line 1375
    .line 1376
    move v1, v8

    .line 1377
    move v2, v10

    .line 1378
    move/from16 v3, v17

    .line 1379
    .line 1380
    move v4, v15

    .line 1381
    move-object/from16 v5, p1

    .line 1382
    .line 1383
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1384
    .line 1385
    .line 1386
    move-result v0

    .line 1387
    if-eqz v0, :cond_19

    .line 1388
    .line 1389
    goto/16 :goto_27

    .line 1390
    .line 1391
    :pswitch_3b
    move/from16 v17, v13

    .line 1392
    .line 1393
    move-object/from16 v0, p0

    .line 1394
    .line 1395
    move v1, v8

    .line 1396
    move v2, v10

    .line 1397
    move/from16 v3, v17

    .line 1398
    .line 1399
    move v4, v15

    .line 1400
    move-object/from16 v5, p1

    .line 1401
    .line 1402
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1403
    .line 1404
    .line 1405
    move-result v0

    .line 1406
    if-eqz v0, :cond_19

    .line 1407
    .line 1408
    goto/16 :goto_28

    .line 1409
    .line 1410
    :pswitch_3c
    move/from16 v17, v13

    .line 1411
    .line 1412
    move-wide v12, v3

    .line 1413
    move-object/from16 v0, p0

    .line 1414
    .line 1415
    move v1, v8

    .line 1416
    move v2, v10

    .line 1417
    move/from16 v3, v17

    .line 1418
    .line 1419
    move v4, v15

    .line 1420
    move-object/from16 v5, p1

    .line 1421
    .line 1422
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1423
    .line 1424
    .line 1425
    move-result v0

    .line 1426
    if-eqz v0, :cond_19

    .line 1427
    .line 1428
    :goto_21
    shl-int/lit8 v0, v11, 0x3

    .line 1429
    .line 1430
    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1431
    .line 1432
    .line 1433
    move-result v1

    .line 1434
    :goto_22
    int-to-long v1, v1

    .line 1435
    goto :goto_24

    .line 1436
    :pswitch_3d
    move/from16 v17, v13

    .line 1437
    .line 1438
    move-wide v12, v3

    .line 1439
    move-object/from16 v0, p0

    .line 1440
    .line 1441
    move v1, v8

    .line 1442
    move v2, v10

    .line 1443
    move/from16 v3, v17

    .line 1444
    .line 1445
    move v4, v15

    .line 1446
    move-object/from16 v5, p1

    .line 1447
    .line 1448
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1449
    .line 1450
    .line 1451
    move-result v0

    .line 1452
    if-eqz v0, :cond_19

    .line 1453
    .line 1454
    goto :goto_23

    .line 1455
    :pswitch_3e
    move/from16 v17, v13

    .line 1456
    .line 1457
    move-wide v12, v3

    .line 1458
    move-object/from16 v0, p0

    .line 1459
    .line 1460
    move v1, v8

    .line 1461
    move v2, v10

    .line 1462
    move/from16 v3, v17

    .line 1463
    .line 1464
    move v4, v15

    .line 1465
    move-object/from16 v5, p1

    .line 1466
    .line 1467
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1468
    .line 1469
    .line 1470
    move-result v0

    .line 1471
    if-eqz v0, :cond_19

    .line 1472
    .line 1473
    :goto_23
    shl-int/lit8 v0, v11, 0x3

    .line 1474
    .line 1475
    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1476
    .line 1477
    .line 1478
    move-result-wide v1

    .line 1479
    :goto_24
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 1480
    .line 1481
    .line 1482
    move-result v0

    .line 1483
    :goto_25
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/b0;->t0(J)I

    .line 1484
    .line 1485
    .line 1486
    move-result v1

    .line 1487
    :goto_26
    add-int/2addr v1, v0

    .line 1488
    add-int/2addr v1, v9

    .line 1489
    move v9, v1

    .line 1490
    goto :goto_2a

    .line 1491
    :pswitch_3f
    move/from16 v17, v13

    .line 1492
    .line 1493
    move-object/from16 v0, p0

    .line 1494
    .line 1495
    move v1, v8

    .line 1496
    move v2, v10

    .line 1497
    move/from16 v3, v17

    .line 1498
    .line 1499
    move v4, v15

    .line 1500
    move-object/from16 v5, p1

    .line 1501
    .line 1502
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1503
    .line 1504
    .line 1505
    move-result v0

    .line 1506
    if-eqz v0, :cond_19

    .line 1507
    .line 1508
    :goto_27
    shl-int/lit8 v0, v11, 0x3

    .line 1509
    .line 1510
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 1511
    .line 1512
    .line 1513
    move-result v0

    .line 1514
    add-int/lit8 v0, v0, 0x4

    .line 1515
    .line 1516
    goto :goto_29

    .line 1517
    :pswitch_40
    move/from16 v17, v13

    .line 1518
    .line 1519
    move-object/from16 v0, p0

    .line 1520
    .line 1521
    move v1, v8

    .line 1522
    move v2, v10

    .line 1523
    move/from16 v3, v17

    .line 1524
    .line 1525
    move v4, v15

    .line 1526
    move-object/from16 v5, p1

    .line 1527
    .line 1528
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 1529
    .line 1530
    .line 1531
    move-result v0

    .line 1532
    if-eqz v0, :cond_19

    .line 1533
    .line 1534
    :goto_28
    shl-int/lit8 v0, v11, 0x3

    .line 1535
    .line 1536
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/b0;->s0(I)I

    .line 1537
    .line 1538
    .line 1539
    move-result v0

    .line 1540
    add-int/lit8 v0, v0, 0x8

    .line 1541
    .line 1542
    :goto_29
    add-int/2addr v9, v0

    .line 1543
    :cond_19
    :goto_2a
    add-int/lit8 v8, v8, 0x3

    .line 1544
    .line 1545
    const v0, 0xfffff

    .line 1546
    .line 1547
    .line 1548
    move v1, v10

    .line 1549
    move/from16 v2, v17

    .line 1550
    .line 1551
    goto/16 :goto_0

    .line 1552
    .line 1553
    :cond_1a
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/l1;->j:Lcom/google/android/gms/internal/play_billing/x1;

    .line 1554
    .line 1555
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1556
    .line 1557
    .line 1558
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/x1;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/w1;

    .line 1559
    .line 1560
    .line 1561
    move-result-object v0

    .line 1562
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/x1;->a(Lcom/google/android/gms/internal/play_billing/w1;)I

    .line 1563
    .line 1564
    .line 1565
    move-result v0

    .line 1566
    add-int/2addr v0, v9

    .line 1567
    return v0

    .line 1568
    nop

    .line 1569
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2e
        :pswitch_2d
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_2d
        :pswitch_2e
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/l1;->s(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/l1;->a:[I

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    if-ge v0, v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/l1;->z(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const v3, 0xfffff

    .line 21
    .line 22
    .line 23
    and-int/2addr v3, v2

    .line 24
    ushr-int/lit8 v2, v2, 0x14

    .line 25
    .line 26
    and-int/lit16 v2, v2, 0xff

    .line 27
    .line 28
    aget v1, v1, v0

    .line 29
    .line 30
    int-to-long v3, v3

    .line 31
    packed-switch v2, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    goto/16 :goto_6

    .line 35
    .line 36
    :pswitch_0
    invoke-virtual {p0, p2, v1, v0}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :pswitch_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_6

    .line 47
    .line 48
    :pswitch_2
    invoke-virtual {p0, p2, v1, v0}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    :goto_1
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v3, v4, p1, v2}, Lcom/google/android/gms/internal/play_billing/f2;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/play_billing/l1;->m(Ljava/lang/Object;II)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_6

    .line 65
    .line 66
    :pswitch_3
    sget-object v1, Lcom/google/android/gms/internal/play_billing/u1;->a:Ljava/lang/Class;

    .line 67
    .line 68
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/f1;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/e1;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v3, v4, p1, v1}, Lcom/google/android/gms/internal/play_billing/f2;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_6

    .line 84
    .line 85
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/l1;->i:Lcom/google/android/gms/internal/play_billing/a1;

    .line 86
    .line 87
    invoke-virtual {v1, v3, v4, p1, p2}, Lcom/google/android/gms/internal/play_billing/a1;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_6

    .line 91
    .line 92
    :pswitch_5
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/l1;->q(ILjava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_0

    .line 97
    .line 98
    goto/16 :goto_4

    .line 99
    .line 100
    :pswitch_6
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/l1;->q(ILjava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_0

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/l1;->q(ILjava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_0

    .line 112
    .line 113
    goto/16 :goto_4

    .line 114
    .line 115
    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/l1;->q(ILjava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_0

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/l1;->q(ILjava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_0

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/l1;->q(ILjava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_0

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/l1;->q(ILjava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_0

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :pswitch_c
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->j(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_6

    .line 147
    .line 148
    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/l1;->q(ILjava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_0

    .line 153
    .line 154
    :goto_2
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v3, v4, p1, v1}, Lcom/google/android/gms/internal/play_billing/f2;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    goto :goto_5

    .line 162
    :pswitch_e
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/l1;->q(ILjava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_0

    .line 167
    .line 168
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/f2;->v(Ljava/lang/Object;J)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/play_billing/f2;->m(Ljava/lang/Object;JZ)V

    .line 173
    .line 174
    .line 175
    goto :goto_5

    .line 176
    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/l1;->q(ILjava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_0

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/l1;->q(ILjava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_0

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/l1;->q(ILjava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_0

    .line 195
    .line 196
    :goto_3
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    invoke-static {v1, v3, v4, p1}, Lcom/google/android/gms/internal/play_billing/f2;->p(IJLjava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    goto :goto_5

    .line 204
    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/l1;->q(ILjava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-eqz v1, :cond_0

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/l1;->q(ILjava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_0

    .line 216
    .line 217
    :goto_4
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/f2;->h(Ljava/lang/Object;J)J

    .line 218
    .line 219
    .line 220
    move-result-wide v1

    .line 221
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/play_billing/f2;->q(Ljava/lang/Object;JJ)V

    .line 222
    .line 223
    .line 224
    goto :goto_5

    .line 225
    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/l1;->q(ILjava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-eqz v1, :cond_0

    .line 230
    .line 231
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/f2;->f(Ljava/lang/Object;J)F

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/play_billing/f2;->o(Ljava/lang/Object;JF)V

    .line 236
    .line 237
    .line 238
    goto :goto_5

    .line 239
    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/l1;->q(ILjava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-eqz v1, :cond_0

    .line 244
    .line 245
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/f2;->e(Ljava/lang/Object;J)D

    .line 246
    .line 247
    .line 248
    move-result-wide v1

    .line 249
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/play_billing/f2;->n(Ljava/lang/Object;JD)V

    .line 250
    .line 251
    .line 252
    :goto_5
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/l1;->l(ILjava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    :cond_0
    :goto_6
    add-int/lit8 v0, v0, 0x3

    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/l1;->j:Lcom/google/android/gms/internal/play_billing/x1;

    .line 260
    .line 261
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/u1;->u(Lcom/google/android/gms/internal/play_billing/x1;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    return-void

    .line 265
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 266
    .line 267
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    const-string v0, "Mutating immutable message: "

    .line 272
    .line 273
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw p2

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_c
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/l1;->a:[I

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/l1;->z(I)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const v4, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int v5, v3, v4

    .line 16
    .line 17
    ushr-int/lit8 v3, v3, 0x14

    .line 18
    .line 19
    and-int/lit16 v3, v3, 0xff

    .line 20
    .line 21
    int-to-long v5, v5

    .line 22
    packed-switch v3, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :pswitch_0
    add-int/lit8 v3, v1, 0x2

    .line 28
    .line 29
    aget v2, v2, v3

    .line 30
    .line 31
    and-int/2addr v2, v4

    .line 32
    int-to-long v2, v2

    .line 33
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-ne v4, v2, :cond_0

    .line 42
    .line 43
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/u1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_1

    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :pswitch_1
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/u1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_1

    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :pswitch_2
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_0

    .line 80
    .line 81
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/u1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_0

    .line 94
    .line 95
    goto/16 :goto_2

    .line 96
    .line 97
    :pswitch_3
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_0

    .line 102
    .line 103
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->h(Ljava/lang/Object;J)J

    .line 104
    .line 105
    .line 106
    move-result-wide v2

    .line 107
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->h(Ljava/lang/Object;J)J

    .line 108
    .line 109
    .line 110
    move-result-wide v4

    .line 111
    cmp-long v2, v2, v4

    .line 112
    .line 113
    if-nez v2, :cond_0

    .line 114
    .line 115
    goto/16 :goto_2

    .line 116
    .line 117
    :pswitch_4
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_0

    .line 122
    .line 123
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-ne v2, v3, :cond_0

    .line 132
    .line 133
    goto/16 :goto_2

    .line 134
    .line 135
    :pswitch_5
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_0

    .line 140
    .line 141
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->h(Ljava/lang/Object;J)J

    .line 142
    .line 143
    .line 144
    move-result-wide v2

    .line 145
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->h(Ljava/lang/Object;J)J

    .line 146
    .line 147
    .line 148
    move-result-wide v4

    .line 149
    cmp-long v2, v2, v4

    .line 150
    .line 151
    if-nez v2, :cond_0

    .line 152
    .line 153
    goto/16 :goto_2

    .line 154
    .line 155
    :pswitch_6
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_0

    .line 160
    .line 161
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-ne v2, v3, :cond_0

    .line 170
    .line 171
    goto/16 :goto_2

    .line 172
    .line 173
    :pswitch_7
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_0

    .line 178
    .line 179
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-ne v2, v3, :cond_0

    .line 188
    .line 189
    goto/16 :goto_2

    .line 190
    .line 191
    :pswitch_8
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-eqz v2, :cond_0

    .line 196
    .line 197
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-ne v2, v3, :cond_0

    .line 206
    .line 207
    goto/16 :goto_2

    .line 208
    .line 209
    :pswitch_9
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-eqz v2, :cond_0

    .line 214
    .line 215
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/u1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_0

    .line 228
    .line 229
    goto/16 :goto_2

    .line 230
    .line 231
    :pswitch_a
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-eqz v2, :cond_0

    .line 236
    .line 237
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/u1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-eqz v2, :cond_0

    .line 250
    .line 251
    goto/16 :goto_2

    .line 252
    .line 253
    :pswitch_b
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-eqz v2, :cond_0

    .line 258
    .line 259
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/u1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-eqz v2, :cond_0

    .line 272
    .line 273
    goto/16 :goto_2

    .line 274
    .line 275
    :pswitch_c
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-eqz v2, :cond_0

    .line 280
    .line 281
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->v(Ljava/lang/Object;J)Z

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->v(Ljava/lang/Object;J)Z

    .line 286
    .line 287
    .line 288
    move-result v3

    .line 289
    if-ne v2, v3, :cond_0

    .line 290
    .line 291
    goto/16 :goto_2

    .line 292
    .line 293
    :pswitch_d
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-eqz v2, :cond_0

    .line 298
    .line 299
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    if-ne v2, v3, :cond_0

    .line 308
    .line 309
    goto/16 :goto_2

    .line 310
    .line 311
    :pswitch_e
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    if-eqz v2, :cond_0

    .line 316
    .line 317
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->h(Ljava/lang/Object;J)J

    .line 318
    .line 319
    .line 320
    move-result-wide v2

    .line 321
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->h(Ljava/lang/Object;J)J

    .line 322
    .line 323
    .line 324
    move-result-wide v4

    .line 325
    cmp-long v2, v2, v4

    .line 326
    .line 327
    if-nez v2, :cond_0

    .line 328
    .line 329
    goto/16 :goto_2

    .line 330
    .line 331
    :pswitch_f
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    if-eqz v2, :cond_0

    .line 336
    .line 337
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    if-ne v2, v3, :cond_0

    .line 346
    .line 347
    goto :goto_2

    .line 348
    :pswitch_10
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    if-eqz v2, :cond_0

    .line 353
    .line 354
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->h(Ljava/lang/Object;J)J

    .line 355
    .line 356
    .line 357
    move-result-wide v2

    .line 358
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->h(Ljava/lang/Object;J)J

    .line 359
    .line 360
    .line 361
    move-result-wide v4

    .line 362
    cmp-long v2, v2, v4

    .line 363
    .line 364
    if-nez v2, :cond_0

    .line 365
    .line 366
    goto :goto_2

    .line 367
    :pswitch_11
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    if-eqz v2, :cond_0

    .line 372
    .line 373
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->h(Ljava/lang/Object;J)J

    .line 374
    .line 375
    .line 376
    move-result-wide v2

    .line 377
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->h(Ljava/lang/Object;J)J

    .line 378
    .line 379
    .line 380
    move-result-wide v4

    .line 381
    cmp-long v2, v2, v4

    .line 382
    .line 383
    if-nez v2, :cond_0

    .line 384
    .line 385
    goto :goto_2

    .line 386
    :pswitch_12
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    if-eqz v2, :cond_0

    .line 391
    .line 392
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->f(Ljava/lang/Object;J)F

    .line 393
    .line 394
    .line 395
    move-result v2

    .line 396
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->f(Ljava/lang/Object;J)F

    .line 401
    .line 402
    .line 403
    move-result v3

    .line 404
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    if-ne v2, v3, :cond_0

    .line 409
    .line 410
    goto :goto_2

    .line 411
    :pswitch_13
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-eqz v2, :cond_0

    .line 416
    .line 417
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->e(Ljava/lang/Object;J)D

    .line 418
    .line 419
    .line 420
    move-result-wide v2

    .line 421
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 422
    .line 423
    .line 424
    move-result-wide v2

    .line 425
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/f2;->e(Ljava/lang/Object;J)D

    .line 426
    .line 427
    .line 428
    move-result-wide v4

    .line 429
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 430
    .line 431
    .line 432
    move-result-wide v4

    .line 433
    cmp-long v2, v2, v4

    .line 434
    .line 435
    if-nez v2, :cond_0

    .line 436
    .line 437
    goto :goto_2

    .line 438
    :cond_0
    :goto_1
    return v0

    .line 439
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x3

    .line 440
    .line 441
    goto/16 :goto_0

    .line 442
    .line 443
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/l1;->j:Lcom/google/android/gms/internal/play_billing/x1;

    .line 444
    .line 445
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    .line 447
    .line 448
    check-cast p1, Lcom/google/android/gms/internal/play_billing/l0;

    .line 449
    .line 450
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/l0;->zzc:Lcom/google/android/gms/internal/play_billing/w1;

    .line 451
    .line 452
    check-cast p2, Lcom/google/android/gms/internal/play_billing/l0;

    .line 453
    .line 454
    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/l0;->zzc:Lcom/google/android/gms/internal/play_billing/w1;

    .line 455
    .line 456
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/w1;->equals(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result p1

    .line 460
    if-nez p1, :cond_3

    .line 461
    .line 462
    return v0

    .line 463
    :cond_3
    const/4 p1, 0x1

    .line 464
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Ljava/lang/Object;)Z
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    const v9, 0xfffff

    .line 7
    .line 8
    .line 9
    move v1, v8

    .line 10
    move v10, v1

    .line 11
    move v0, v9

    .line 12
    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/play_billing/l1;->g:I

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-ge v10, v2, :cond_b

    .line 16
    .line 17
    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/l1;->f:[I

    .line 18
    .line 19
    aget v11, v2, v10

    .line 20
    .line 21
    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/l1;->a:[I

    .line 22
    .line 23
    aget v12, v2, v11

    .line 24
    .line 25
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/play_billing/l1;->z(I)I

    .line 26
    .line 27
    .line 28
    move-result v13

    .line 29
    add-int/lit8 v4, v11, 0x2

    .line 30
    .line 31
    aget v2, v2, v4

    .line 32
    .line 33
    and-int v4, v2, v9

    .line 34
    .line 35
    ushr-int/lit8 v2, v2, 0x14

    .line 36
    .line 37
    shl-int v14, v3, v2

    .line 38
    .line 39
    if-eq v4, v0, :cond_1

    .line 40
    .line 41
    if-eq v4, v9, :cond_0

    .line 42
    .line 43
    int-to-long v0, v4

    .line 44
    sget-object v2, Lcom/google/android/gms/internal/play_billing/l1;->l:Lsun/misc/Unsafe;

    .line 45
    .line 46
    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    :cond_0
    move/from16 v16, v1

    .line 51
    .line 52
    move v15, v4

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move v15, v0

    .line 55
    move/from16 v16, v1

    .line 56
    .line 57
    :goto_1
    const/high16 v0, 0x10000000

    .line 58
    .line 59
    and-int/2addr v0, v13

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    move-object/from16 v0, p0

    .line 63
    .line 64
    move v1, v11

    .line 65
    move v2, v15

    .line 66
    move/from16 v3, v16

    .line 67
    .line 68
    move v4, v14

    .line 69
    move-object/from16 v5, p1

    .line 70
    .line 71
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    return v8

    .line 79
    :cond_3
    :goto_2
    ushr-int/lit8 v0, v13, 0x14

    .line 80
    .line 81
    and-int/lit16 v0, v0, 0xff

    .line 82
    .line 83
    const/16 v1, 0x9

    .line 84
    .line 85
    if-eq v0, v1, :cond_9

    .line 86
    .line 87
    const/16 v1, 0x11

    .line 88
    .line 89
    if-eq v0, v1, :cond_9

    .line 90
    .line 91
    const/16 v1, 0x1b

    .line 92
    .line 93
    if-eq v0, v1, :cond_7

    .line 94
    .line 95
    const/16 v1, 0x3c

    .line 96
    .line 97
    if-eq v0, v1, :cond_6

    .line 98
    .line 99
    const/16 v1, 0x44

    .line 100
    .line 101
    if-eq v0, v1, :cond_6

    .line 102
    .line 103
    const/16 v1, 0x31

    .line 104
    .line 105
    if-eq v0, v1, :cond_7

    .line 106
    .line 107
    const/16 v1, 0x32

    .line 108
    .line 109
    if-eq v0, v1, :cond_4

    .line 110
    .line 111
    goto/16 :goto_4

    .line 112
    .line 113
    :cond_4
    and-int v0, v13, v9

    .line 114
    .line 115
    int-to-long v0, v0

    .line 116
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lcom/google/android/gms/internal/play_billing/e1;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_5

    .line 127
    .line 128
    goto/16 :goto_4

    .line 129
    .line 130
    :cond_5
    div-int/lit8 v11, v11, 0x3

    .line 131
    .line 132
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/l1;->b:[Ljava/lang/Object;

    .line 133
    .line 134
    add-int/2addr v11, v11

    .line 135
    aget-object v0, v0, v11

    .line 136
    .line 137
    invoke-static {v0}, La1/b;->j(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    const/4 v0, 0x0

    .line 141
    throw v0

    .line 142
    :cond_6
    invoke-virtual {v6, v7, v12, v11}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_a

    .line 147
    .line 148
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/play_billing/l1;->B(I)Lcom/google/android/gms/internal/play_billing/t1;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    and-int v1, v13, v9

    .line 153
    .line 154
    int-to-long v1, v1

    .line 155
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/play_billing/t1;->h(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-nez v0, :cond_a

    .line 164
    .line 165
    return v8

    .line 166
    :cond_7
    and-int v0, v13, v9

    .line 167
    .line 168
    int-to-long v0, v0

    .line 169
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Ljava/util/List;

    .line 174
    .line 175
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-nez v1, :cond_a

    .line 180
    .line 181
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/play_billing/l1;->B(I)Lcom/google/android/gms/internal/play_billing/t1;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    move v2, v8

    .line 186
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-ge v2, v3, :cond_a

    .line 191
    .line 192
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/play_billing/t1;->h(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-nez v3, :cond_8

    .line 201
    .line 202
    return v8

    .line 203
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_9
    move-object/from16 v0, p0

    .line 207
    .line 208
    move v1, v11

    .line 209
    move v2, v15

    .line 210
    move/from16 v3, v16

    .line 211
    .line 212
    move v4, v14

    .line 213
    move-object/from16 v5, p1

    .line 214
    .line 215
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/l1;->r(IIIILjava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_a

    .line 220
    .line 221
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/play_billing/l1;->B(I)Lcom/google/android/gms/internal/play_billing/t1;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    and-int v1, v13, v9

    .line 226
    .line 227
    int-to-long v1, v1

    .line 228
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/play_billing/t1;->h(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-nez v0, :cond_a

    .line 237
    .line 238
    return v8

    .line 239
    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 240
    .line 241
    move v0, v15

    .line 242
    move/from16 v1, v16

    .line 243
    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :cond_b
    return v3
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/l1;->a:[I

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v0, v3, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/l1;->z(I)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const v4, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v4, v3

    .line 16
    ushr-int/lit8 v3, v3, 0x14

    .line 17
    .line 18
    and-int/lit16 v3, v3, 0xff

    .line 19
    .line 20
    aget v2, v2, v0

    .line 21
    .line 22
    int-to-long v4, v4

    .line 23
    const/16 v6, 0x25

    .line 24
    .line 25
    packed-switch v3, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    goto/16 :goto_b

    .line 29
    .line 30
    :pswitch_0
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :pswitch_1
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :pswitch_2
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :pswitch_3
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    goto/16 :goto_2

    .line 60
    .line 61
    :pswitch_4
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :pswitch_5
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :pswitch_6
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :pswitch_7
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_1

    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :pswitch_8
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_1

    .line 95
    .line 96
    goto/16 :goto_3

    .line 97
    .line 98
    :pswitch_9
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_1

    .line 103
    .line 104
    goto/16 :goto_5

    .line 105
    .line 106
    :pswitch_a
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_1

    .line 111
    .line 112
    mul-int/lit8 v1, v1, 0x35

    .line 113
    .line 114
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Ljava/lang/Boolean;

    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    goto/16 :goto_6

    .line 125
    .line 126
    :pswitch_b
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :pswitch_c
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_1

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :pswitch_d
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_1

    .line 145
    .line 146
    :goto_1
    mul-int/lit8 v1, v1, 0x35

    .line 147
    .line 148
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/l1;->x(Ljava/lang/Object;J)I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    goto/16 :goto_8

    .line 153
    .line 154
    :pswitch_e
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_1

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :pswitch_f
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_1

    .line 166
    .line 167
    :goto_2
    mul-int/lit8 v1, v1, 0x35

    .line 168
    .line 169
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/l1;->A(Ljava/lang/Object;J)J

    .line 170
    .line 171
    .line 172
    move-result-wide v2

    .line 173
    goto/16 :goto_a

    .line 174
    .line 175
    :pswitch_10
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-eqz v2, :cond_1

    .line 180
    .line 181
    mul-int/lit8 v1, v1, 0x35

    .line 182
    .line 183
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    check-cast v2, Ljava/lang/Float;

    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    goto :goto_7

    .line 194
    :pswitch_11
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_1

    .line 199
    .line 200
    mul-int/lit8 v1, v1, 0x35

    .line 201
    .line 202
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    check-cast v2, Ljava/lang/Double;

    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 209
    .line 210
    .line 211
    move-result-wide v2

    .line 212
    goto :goto_9

    .line 213
    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    .line 214
    .line 215
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    if-eqz v2, :cond_0

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :goto_3
    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    .line 223
    .line 224
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    goto :goto_8

    .line 233
    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    .line 234
    .line 235
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    if-eqz v2, :cond_0

    .line 240
    .line 241
    :goto_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    :cond_0
    add-int/2addr v1, v6

    .line 246
    goto :goto_b

    .line 247
    :goto_5
    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    .line 248
    .line 249
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    check-cast v2, Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    goto :goto_8

    .line 260
    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    .line 261
    .line 262
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f2;->v(Ljava/lang/Object;J)Z

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    :goto_6
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/s0;->a(Z)I

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    goto :goto_8

    .line 271
    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    .line 272
    .line 273
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    goto :goto_8

    .line 278
    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    .line 279
    .line 280
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f2;->h(Ljava/lang/Object;J)J

    .line 281
    .line 282
    .line 283
    move-result-wide v2

    .line 284
    goto :goto_a

    .line 285
    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    .line 286
    .line 287
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f2;->f(Ljava/lang/Object;J)F

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    :goto_7
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    :goto_8
    add-int/2addr v2, v1

    .line 296
    move v1, v2

    .line 297
    goto :goto_b

    .line 298
    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    .line 299
    .line 300
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f2;->e(Ljava/lang/Object;J)D

    .line 301
    .line 302
    .line 303
    move-result-wide v2

    .line 304
    :goto_9
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 305
    .line 306
    .line 307
    move-result-wide v2

    .line 308
    :goto_a
    sget-object v4, Lcom/google/android/gms/internal/play_billing/s0;->a:Ljava/nio/charset/Charset;

    .line 309
    .line 310
    const/16 v4, 0x20

    .line 311
    .line 312
    ushr-long v4, v2, v4

    .line 313
    .line 314
    xor-long/2addr v2, v4

    .line 315
    long-to-int v2, v2

    .line 316
    add-int/2addr v1, v2

    .line 317
    :cond_1
    :goto_b
    add-int/lit8 v0, v0, 0x3

    .line 318
    .line 319
    goto/16 :goto_0

    .line 320
    .line 321
    :cond_2
    mul-int/lit8 v1, v1, 0x35

    .line 322
    .line 323
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/l1;->j:Lcom/google/android/gms/internal/play_billing/x1;

    .line 324
    .line 325
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    check-cast p1, Lcom/google/android/gms/internal/play_billing/l0;

    .line 329
    .line 330
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/l0;->zzc:Lcom/google/android/gms/internal/play_billing/w1;

    .line 331
    .line 332
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/w1;->hashCode()I

    .line 333
    .line 334
    .line 335
    move-result p1

    .line 336
    add-int/2addr p1, v1

    .line 337
    return p1

    .line 338
    nop

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_17
        :pswitch_18
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/l1;->q(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/l1;->z(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/android/gms/internal/play_billing/l1;->l:Lsun/misc/Unsafe;

    invoke-virtual {v2, p3, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/l1;->B(I)Lcom/google/android/gms/internal/play_billing/t1;

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->q(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/l1;->s(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, p2, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lcom/google/android/gms/internal/play_billing/t1;->a()Lcom/google/android/gms/internal/play_billing/l0;

    move-result-object v4

    invoke-interface {p3, v4, v3}, Lcom/google/android/gms/internal/play_billing/t1;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->l(ILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/l1;->s(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p3}, Lcom/google/android/gms/internal/play_billing/t1;->a()Lcom/google/android/gms/internal/play_billing/l0;

    move-result-object v4

    invoke-interface {p3, v4, p1}, Lcom/google/android/gms/internal/play_billing/t1;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p1, v4

    :cond_3
    invoke-interface {p3, p1, v3}, Lcom/google/android/gms/internal/play_billing/t1;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/l1;->a:[I

    aget p1, v0, p1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final k(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/l1;->a:[I

    aget v1, v0, p1

    invoke-virtual {p0, p3, v1, p1}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/l1;->z(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/l1;->l:Lsun/misc/Unsafe;

    invoke-virtual {v4, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/l1;->B(I)Lcom/google/android/gms/internal/play_billing/t1;

    move-result-object p3

    invoke-virtual {p0, p2, v1, p1}, Lcom/google/android/gms/internal/play_billing/l1;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/l1;->s(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4, p2, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lcom/google/android/gms/internal/play_billing/t1;->a()Lcom/google/android/gms/internal/play_billing/l0;

    move-result-object v0

    invoke-interface {p3, v0, v5}, Lcom/google/android/gms/internal/play_billing/t1;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p2, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p2, v1, p1}, Lcom/google/android/gms/internal/play_billing/l1;->m(Ljava/lang/Object;II)V

    return-void

    :cond_2
    invoke-virtual {v4, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/l1;->s(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p3}, Lcom/google/android/gms/internal/play_billing/t1;->a()Lcom/google/android/gms/internal/play_billing/l0;

    move-result-object v0

    invoke-interface {p3, v0, p1}, Lcom/google/android/gms/internal/play_billing/t1;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p2, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p1, v0

    :cond_3
    invoke-interface {p3, p1, v5}, Lcom/google/android/gms/internal/play_billing/t1;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    aget p1, v0, p1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final l(ILjava/lang/Object;)V
    .locals 4

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/l1;->a:[I

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v0, p1

    .line 11
    int-to-long v0, v0

    .line 12
    const-wide/32 v2, 0xfffff

    .line 13
    .line 14
    .line 15
    cmp-long v2, v0, v2

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    ushr-int/lit8 p1, p1, 0x14

    .line 21
    .line 22
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    shl-int p1, v3, p1

    .line 28
    .line 29
    or-int/2addr p1, v2

    .line 30
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/f2;->p(IJLjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final m(Ljava/lang/Object;II)V
    .locals 2

    .line 1
    add-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/l1;->a:[I

    .line 4
    .line 5
    aget p3, v0, p3

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p3, v0

    .line 11
    int-to-long v0, p3

    .line 12
    invoke-static {p2, v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/f2;->p(IJLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final n(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/l1;->z(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/android/gms/internal/play_billing/l1;->l:Lsun/misc/Unsafe;

    invoke-virtual {v2, p2, v0, v1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->l(ILjava/lang/Object;)V

    return-void
.end method

.method public final o(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/l1;->z(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/android/gms/internal/play_billing/l1;->l:Lsun/misc/Unsafe;

    invoke-virtual {v2, p3, v0, v1, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->m(Ljava/lang/Object;II)V

    return-void
.end method

.method public final p(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/l1;->q(ILjava/lang/Object;)Z

    move-result p2

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/l1;->q(ILjava/lang/Object;)Z

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final q(ILjava/lang/Object;)Z
    .locals 7

    .line 1
    add-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/l1;->a:[I

    .line 4
    .line 5
    aget v0, v1, v0

    .line 6
    .line 7
    const v1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int v2, v0, v1

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    const-wide/32 v4, 0xfffff

    .line 14
    .line 15
    .line 16
    cmp-long v4, v2, v4

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    if-nez v4, :cond_14

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/l1;->z(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    and-int v0, p1, v1

    .line 27
    .line 28
    ushr-int/lit8 p1, p1, 0x14

    .line 29
    .line 30
    and-int/lit16 p1, p1, 0xff

    .line 31
    .line 32
    int-to-long v0, v0

    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    packed-switch p1, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :pswitch_0
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    return v6

    .line 51
    :cond_0
    return v5

    .line 52
    :pswitch_1
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->h(Ljava/lang/Object;J)J

    .line 53
    .line 54
    .line 55
    move-result-wide p1

    .line 56
    cmp-long p1, p1, v2

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    return v6

    .line 61
    :cond_1
    return v5

    .line 62
    :pswitch_2
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    return v6

    .line 69
    :cond_2
    return v5

    .line 70
    :pswitch_3
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->h(Ljava/lang/Object;J)J

    .line 71
    .line 72
    .line 73
    move-result-wide p1

    .line 74
    cmp-long p1, p1, v2

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    return v6

    .line 79
    :cond_3
    return v5

    .line 80
    :pswitch_4
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    return v6

    .line 87
    :cond_4
    return v5

    .line 88
    :pswitch_5
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    return v6

    .line 95
    :cond_5
    return v5

    .line 96
    :pswitch_6
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    return v6

    .line 103
    :cond_6
    return v5

    .line 104
    :pswitch_7
    sget-object p1, Lcom/google/android/gms/internal/play_billing/z;->b:Lcom/google/android/gms/internal/play_billing/a0;

    .line 105
    .line 106
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/a0;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_7

    .line 115
    .line 116
    return v6

    .line 117
    :cond_7
    return v5

    .line 118
    :pswitch_8
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-eqz p1, :cond_8

    .line 123
    .line 124
    return v6

    .line 125
    :cond_8
    return v5

    .line 126
    :pswitch_9
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    instance-of p2, p1, Ljava/lang/String;

    .line 131
    .line 132
    if-eqz p2, :cond_a

    .line 133
    .line 134
    check-cast p1, Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-nez p1, :cond_9

    .line 141
    .line 142
    return v6

    .line 143
    :cond_9
    return v5

    .line 144
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/play_billing/z;

    .line 145
    .line 146
    if-eqz p2, :cond_c

    .line 147
    .line 148
    sget-object p2, Lcom/google/android/gms/internal/play_billing/z;->b:Lcom/google/android/gms/internal/play_billing/a0;

    .line 149
    .line 150
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/a0;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-nez p1, :cond_b

    .line 155
    .line 156
    return v6

    .line 157
    :cond_b
    return v5

    .line 158
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 159
    .line 160
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 161
    .line 162
    .line 163
    throw p1

    .line 164
    :pswitch_a
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->v(Ljava/lang/Object;J)Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    return p1

    .line 169
    :pswitch_b
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_d

    .line 174
    .line 175
    return v6

    .line 176
    :cond_d
    return v5

    .line 177
    :pswitch_c
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->h(Ljava/lang/Object;J)J

    .line 178
    .line 179
    .line 180
    move-result-wide p1

    .line 181
    cmp-long p1, p1, v2

    .line 182
    .line 183
    if-eqz p1, :cond_e

    .line 184
    .line 185
    return v6

    .line 186
    :cond_e
    return v5

    .line 187
    :pswitch_d
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-eqz p1, :cond_f

    .line 192
    .line 193
    return v6

    .line 194
    :cond_f
    return v5

    .line 195
    :pswitch_e
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->h(Ljava/lang/Object;J)J

    .line 196
    .line 197
    .line 198
    move-result-wide p1

    .line 199
    cmp-long p1, p1, v2

    .line 200
    .line 201
    if-eqz p1, :cond_10

    .line 202
    .line 203
    return v6

    .line 204
    :cond_10
    return v5

    .line 205
    :pswitch_f
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->h(Ljava/lang/Object;J)J

    .line 206
    .line 207
    .line 208
    move-result-wide p1

    .line 209
    cmp-long p1, p1, v2

    .line 210
    .line 211
    if-eqz p1, :cond_11

    .line 212
    .line 213
    return v6

    .line 214
    :cond_11
    return v5

    .line 215
    :pswitch_10
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->f(Ljava/lang/Object;J)F

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_12

    .line 224
    .line 225
    return v6

    .line 226
    :cond_12
    return v5

    .line 227
    :pswitch_11
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->e(Ljava/lang/Object;J)D

    .line 228
    .line 229
    .line 230
    move-result-wide p1

    .line 231
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 232
    .line 233
    .line 234
    move-result-wide p1

    .line 235
    cmp-long p1, p1, v2

    .line 236
    .line 237
    if-eqz p1, :cond_13

    .line 238
    .line 239
    return v6

    .line 240
    :cond_13
    return v5

    .line 241
    :cond_14
    ushr-int/lit8 p1, v0, 0x14

    .line 242
    .line 243
    shl-int p1, v6, p1

    .line 244
    .line 245
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 246
    .line 247
    .line 248
    move-result p2

    .line 249
    and-int/2addr p1, p2

    .line 250
    if-eqz p1, :cond_15

    .line 251
    .line 252
    return v6

    .line 253
    :cond_15
    return v5

    .line 254
    nop

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r(IIIILjava/lang/Object;)Z
    .locals 1

    .line 1
    const v0, 0xfffff

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1, p5}, Lcom/google/android/gms/internal/play_billing/l1;->q(ILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p3, p4

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final t(Ljava/lang/Object;II)Z
    .locals 2

    .line 1
    add-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/l1;->a:[I

    .line 4
    .line 5
    aget p3, v0, p3

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p3, v0

    .line 11
    int-to-long v0, p3

    .line 12
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/f2;->g(Ljava/lang/Object;J)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public final v(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/play_billing/v;)I
    .locals 39

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/l1;->s(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/play_billing/l1;->l:Lsun/misc/Unsafe;

    move-object/from16 v12, p0

    move-object/from16 v22, v12

    move-object/from16 v4, p1

    move-object v5, v4

    move-object/from16 v6, p2

    move-object v14, v6

    move/from16 v7, p3

    move/from16 v8, p4

    move v15, v8

    move/from16 v9, p5

    move/from16 v16, v9

    move-object/from16 v13, p6

    move-object/from16 v17, v13

    move-object/from16 v18, v0

    const/4 v2, -0x1

    const v10, 0xfffff

    const/4 v11, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_0
    const/16 v23, 0x0

    iget-object v1, v12, Lcom/google/android/gms/internal/play_billing/l1;->a:[I

    if-ge v7, v8, :cond_7f

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v6, v7

    if-gez v7, :cond_0

    invoke-static {v7, v6, v8, v13}, Lc1/b;->U(I[BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v7

    iget v8, v13, Lcom/google/android/gms/internal/play_billing/v;->a:I

    move v9, v7

    goto :goto_1

    :cond_0
    move v9, v8

    move v8, v7

    :goto_1
    ushr-int/lit8 v7, v8, 0x3

    iget v3, v12, Lcom/google/android/gms/internal/play_billing/l1;->d:I

    move-object/from16 v25, v0

    iget v0, v12, Lcom/google/android/gms/internal/play_billing/l1;->c:I

    move/from16 v26, v15

    if-le v7, v2, :cond_1

    const/4 v2, 0x3

    div-int/lit8 v15, v20, 0x3

    if-lt v7, v0, :cond_2

    if-gt v7, v3, :cond_2

    invoke-virtual {v12, v7, v15}, Lcom/google/android/gms/internal/play_billing/l1;->y(II)I

    move-result v0

    goto :goto_2

    :cond_1
    if-lt v7, v0, :cond_2

    if-gt v7, v3, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v12, v7, v0}, Lcom/google/android/gms/internal/play_billing/l1;->y(II)I

    move-result v2

    move v0, v2

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    :goto_2
    sget-object v2, Lcom/google/android/gms/internal/play_billing/w1;->f:Lcom/google/android/gms/internal/play_billing/w1;

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    move v3, v8

    move/from16 v0, v16

    move-object/from16 v13, v25

    move/from16 v15, v26

    const/16 v20, 0x0

    const/16 v24, 0x0

    move-object v8, v2

    move v2, v7

    goto/16 :goto_50

    :cond_3
    and-int/lit8 v15, v8, 0x7

    add-int/lit8 v20, v0, 0x1

    aget v3, v1, v20

    move/from16 v20, v7

    ushr-int/lit8 v7, v3, 0x14

    and-int/lit16 v7, v7, 0xff

    move-object/from16 v27, v14

    const v19, 0xfffff

    and-int v14, v3, v19

    move-object/from16 v21, v2

    move/from16 p2, v3

    int-to-long v2, v14

    iget-object v14, v12, Lcom/google/android/gms/internal/play_billing/l1;->b:[Ljava/lang/Object;

    const/high16 v29, 0x20000000

    const-wide/16 v30, 0x0

    move-object/from16 v32, v12

    const-string v12, ""

    move-object/from16 p6, v12

    const/16 v12, 0x11

    if-gt v7, v12, :cond_1f

    add-int/lit8 v12, v0, 0x2

    aget v12, v1, v12

    ushr-int/lit8 v33, v12, 0x14

    const/16 v28, 0x1

    shl-int v33, v28, v33

    move-object/from16 v34, v1

    const v1, 0xfffff

    and-int/2addr v12, v1

    move-wide/from16 v35, v2

    if-eq v12, v10, :cond_6

    if-eq v10, v1, :cond_4

    int-to-long v1, v10

    move-object/from16 v3, v18

    invoke-virtual {v3, v4, v1, v2, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v1, 0xfffff

    goto :goto_3

    :cond_4
    move-object/from16 v3, v18

    :goto_3
    if-ne v12, v1, :cond_5

    const/4 v11, 0x0

    goto :goto_4

    :cond_5
    int-to-long v1, v12

    invoke-virtual {v3, v4, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    move v11, v1

    :goto_4
    move v1, v12

    goto :goto_5

    :cond_6
    move-object/from16 v3, v18

    move v1, v10

    :goto_5
    packed-switch v7, :pswitch_data_0

    move/from16 v18, v1

    move-object/from16 v12, v21

    move-object/from16 v14, v32

    const/4 v1, 0x3

    const/16 v24, 0x0

    move/from16 v21, v8

    if-ne v15, v1, :cond_1e

    or-int v1, v11, v33

    invoke-virtual {v14, v0, v4}, Lcom/google/android/gms/internal/play_billing/l1;->C(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    shl-int/lit8 v7, v20, 0x3

    or-int/lit8 v12, v7, 0x4

    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/play_billing/l1;->B(I)Lcom/google/android/gms/internal/play_billing/t1;

    move-result-object v8

    move/from16 v15, v20

    move-object v7, v2

    move/from16 v13, v21

    move v10, v9

    move-object/from16 v9, v27

    move/from16 v11, v26

    move-object/from16 v13, v17

    invoke-static/range {v7 .. v13}, Lc1/b;->X(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/t1;[BIIILcom/google/android/gms/internal/play_billing/v;)I

    move-result v7

    invoke-virtual {v14, v0, v4, v2}, Lcom/google/android/gms/internal/play_billing/l1;->n(ILjava/lang/Object;Ljava/lang/Object;)V

    move/from16 v20, v0

    move v11, v1

    move-object v12, v14

    move v2, v15

    move/from16 v9, v16

    move/from16 v10, v18

    move-object/from16 v0, v25

    move/from16 v8, v26

    move v15, v8

    move-object/from16 v14, v27

    move-object/from16 v18, v3

    goto/16 :goto_0

    :pswitch_0
    if-nez v15, :cond_7

    or-int v2, v11, v33

    invoke-static {v6, v9, v13}, Lc1/b;->W([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v7

    iget-wide v9, v13, Lcom/google/android/gms/internal/play_billing/v;->b:J

    invoke-static {v9, v10}, Lc1/b;->K(J)J

    move-result-wide v9

    move-object/from16 p1, v3

    move-object/from16 p2, v5

    move-wide/from16 p3, v35

    move-wide/from16 p5, v9

    invoke-virtual/range {p1 .. p6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v18, v1

    move/from16 v21, v8

    move-object/from16 v14, v32

    goto/16 :goto_a

    :cond_7
    move/from16 v18, v1

    move v10, v9

    move/from16 v15, v20

    move-object/from16 v12, v21

    move-object/from16 v14, v32

    const/16 v24, 0x0

    move/from16 v21, v8

    goto/16 :goto_1b

    :pswitch_1
    if-nez v15, :cond_8

    or-int v2, v11, v33

    invoke-static {v6, v9, v13}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v7

    iget v9, v13, Lcom/google/android/gms/internal/play_billing/v;->a:I

    invoke-static {v9}, Lc1/b;->F(I)I

    move-result v9

    :goto_6
    move v11, v2

    move-wide/from16 v14, v35

    goto :goto_8

    :cond_8
    move/from16 v18, v1

    move-object/from16 v12, v21

    goto/16 :goto_b

    :pswitch_2
    if-nez v15, :cond_c

    invoke-static {v6, v9, v13}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v7

    iget v9, v13, Lcom/google/android/gms/internal/play_billing/v;->a:I

    .line 3
    div-int/lit8 v2, v0, 0x3

    add-int/2addr v2, v2

    const/4 v10, 0x1

    add-int/2addr v2, v10

    aget-object v2, v14, v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/o0;

    const/high16 v10, -0x80000000

    and-int v10, p2, v10

    if-eqz v10, :cond_b

    if-eqz v2, :cond_b

    .line 4
    invoke-interface {v2, v9}, Lcom/google/android/gms/internal/play_billing/o0;->a(I)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_7

    .line 5
    :cond_9
    move-object v2, v5

    check-cast v2, Lcom/google/android/gms/internal/play_billing/l0;

    iget-object v10, v2, Lcom/google/android/gms/internal/play_billing/l0;->zzc:Lcom/google/android/gms/internal/play_billing/w1;

    move-object/from16 v12, v21

    if-ne v10, v12, :cond_a

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/w1;->b()Lcom/google/android/gms/internal/play_billing/w1;

    move-result-object v10

    iput-object v10, v2, Lcom/google/android/gms/internal/play_billing/l0;->zzc:Lcom/google/android/gms/internal/play_billing/w1;

    :cond_a
    int-to-long v14, v9

    .line 6
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v8, v2}, Lcom/google/android/gms/internal/play_billing/w1;->c(ILjava/lang/Object;)V

    goto :goto_9

    :cond_b
    :goto_7
    or-int v2, v11, v33

    goto :goto_6

    :goto_8
    invoke-virtual {v3, v4, v14, v15, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_9
    move/from16 v18, v1

    move/from16 v21, v8

    move-object/from16 v14, v32

    const/4 v12, 0x0

    goto/16 :goto_13

    :cond_c
    move-object/from16 v12, v21

    move/from16 v18, v1

    goto :goto_b

    :pswitch_3
    move/from16 v18, v1

    move-object/from16 v12, v21

    move-wide/from16 v1, v35

    const/4 v7, 0x2

    if-ne v15, v7, :cond_d

    or-int v7, v11, v33

    invoke-static {v6, v9, v13}, Lc1/b;->z([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v9

    move v11, v7

    move/from16 v21, v8

    move-object/from16 v14, v32

    const/4 v12, 0x0

    goto/16 :goto_12

    :pswitch_4
    move/from16 v18, v1

    move-object/from16 v12, v21

    const/4 v7, 0x2

    if-ne v15, v7, :cond_d

    or-int v2, v11, v33

    move-object/from16 v14, v32

    invoke-virtual {v14, v0, v4}, Lcom/google/android/gms/internal/play_billing/l1;->C(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/play_billing/l1;->B(I)Lcom/google/android/gms/internal/play_billing/t1;

    move-result-object v7

    move-object/from16 p1, v1

    move-object/from16 p2, v7

    move-object/from16 p3, v27

    move/from16 p4, v9

    move/from16 p5, v26

    move-object/from16 p6, v17

    invoke-static/range {p1 .. p6}, Lc1/b;->Y(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/t1;[BIILcom/google/android/gms/internal/play_billing/v;)I

    move-result v7

    invoke-virtual {v14, v0, v4, v1}, Lcom/google/android/gms/internal/play_billing/l1;->n(ILjava/lang/Object;Ljava/lang/Object;)V

    move/from16 v21, v8

    :goto_a
    const/4 v12, 0x0

    goto/16 :goto_14

    :cond_d
    :goto_b
    move-object/from16 v14, v32

    goto/16 :goto_15

    :pswitch_5
    move/from16 v18, v1

    move-object/from16 v12, v21

    move-object/from16 v14, v32

    move-wide/from16 v1, v35

    const/4 v7, 0x2

    if-ne v15, v7, :cond_1c

    and-int v7, p2, v29

    if-eqz v7, :cond_19

    invoke-static {v6, v9, v13}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v7

    iget v9, v13, Lcom/google/android/gms/internal/play_billing/v;->a:I

    if-ltz v9, :cond_18

    or-int v10, v11, v33

    if-nez v9, :cond_e

    move-object/from16 v15, p6

    iput-object v15, v13, Lcom/google/android/gms/internal/play_billing/v;->c:Ljava/lang/Object;

    move v9, v7

    move/from16 v21, v8

    const/4 v12, 0x0

    goto/16 :goto_10

    :cond_e
    sget-object v11, Lcom/google/android/gms/internal/play_billing/h2;->a:Ly0/i;

    array-length v11, v6

    sub-int v12, v11, v7

    or-int v15, v7, v9

    sub-int/2addr v12, v9

    or-int/2addr v12, v15

    if-ltz v12, :cond_17

    add-int v11, v7, v9

    new-array v9, v9, [C

    move v12, v7

    const/4 v7, 0x0

    :goto_c
    if-ge v12, v11, :cond_f

    aget-byte v15, v6, v12

    invoke-static {v15}, Lc1/b;->N(B)Z

    move-result v21

    if-eqz v21, :cond_f

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v21, v7, 0x1

    int-to-char v15, v15

    aput-char v15, v9, v7

    move/from16 v7, v21

    goto :goto_c

    :cond_f
    :goto_d
    if-ge v12, v11, :cond_16

    add-int/lit8 v15, v12, 0x1

    aget-byte v12, v6, v12

    invoke-static {v12}, Lc1/b;->N(B)Z

    move-result v21

    if-eqz v21, :cond_10

    add-int/lit8 v21, v7, 0x1

    int-to-char v12, v12

    aput-char v12, v9, v7

    move v12, v15

    :goto_e
    move/from16 v7, v21

    if-ge v12, v11, :cond_f

    aget-byte v15, v6, v12

    invoke-static {v15}, Lc1/b;->N(B)Z

    move-result v21

    if-eqz v21, :cond_f

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v21, v7, 0x1

    int-to-char v15, v15

    aput-char v15, v9, v7

    goto :goto_e

    :cond_10
    move/from16 v21, v8

    const/16 v8, -0x20

    if-ge v12, v8, :cond_12

    if-ge v15, v11, :cond_11

    add-int/lit8 v8, v7, 0x1

    add-int/lit8 v23, v15, 0x1

    aget-byte v15, v6, v15

    invoke-static {v12, v15, v9, v7}, Lc1/b;->L(BB[CI)V

    move v7, v8

    move/from16 v8, v21

    move/from16 v12, v23

    goto :goto_d

    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->a()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :cond_12
    const/16 v8, -0x10

    if-ge v12, v8, :cond_14

    add-int/lit8 v8, v11, -0x1

    if-ge v15, v8, :cond_13

    add-int/lit8 v8, v7, 0x1

    add-int/lit8 v23, v15, 0x1

    aget-byte v15, v6, v15

    add-int/lit8 v28, v23, 0x1

    move/from16 p1, v8

    aget-byte v8, v6, v23

    invoke-static {v12, v15, v8, v9, v7}, Lc1/b;->H(BBB[CI)V

    move/from16 v7, p1

    goto :goto_f

    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->a()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :cond_14
    add-int/lit8 v8, v11, -0x2

    if-ge v15, v8, :cond_15

    add-int/lit8 v8, v15, 0x1

    aget-byte v15, v6, v15

    add-int/lit8 v23, v8, 0x1

    aget-byte v8, v6, v8

    add-int/lit8 v28, v23, 0x1

    aget-byte v23, v6, v23

    move/from16 p1, v12

    move/from16 p2, v15

    move/from16 p3, v8

    move/from16 p4, v23

    move-object/from16 p5, v9

    move/from16 p6, v7

    invoke-static/range {p1 .. p6}, Lc1/b;->C(BBBB[CI)V

    add-int/lit8 v7, v7, 0x2

    :goto_f
    move/from16 v8, v21

    move/from16 v12, v28

    goto/16 :goto_d

    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->a()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :cond_16
    move/from16 v21, v8

    new-instance v8, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v8, v9, v12, v7}, Ljava/lang/String;-><init>([CII)V

    iput-object v8, v13, Lcom/google/android/gms/internal/play_billing/v;->c:Ljava/lang/Object;

    move v9, v11

    :goto_10
    move v11, v10

    goto :goto_12

    :cond_17
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "buffer length=%d, index=%d, size=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->b()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :cond_19
    move-object/from16 v15, p6

    move/from16 v21, v8

    const/4 v12, 0x0

    invoke-static {v6, v9, v13}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v9

    iget v7, v13, Lcom/google/android/gms/internal/play_billing/v;->a:I

    if-ltz v7, :cond_1b

    or-int v8, v11, v33

    if-nez v7, :cond_1a

    iput-object v15, v13, Lcom/google/android/gms/internal/play_billing/v;->c:Ljava/lang/Object;

    goto :goto_11

    :cond_1a
    new-instance v10, Ljava/lang/String;

    sget-object v11, Lcom/google/android/gms/internal/play_billing/s0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v10, v6, v9, v7, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v10, v13, Lcom/google/android/gms/internal/play_billing/v;->c:Ljava/lang/Object;

    add-int/2addr v9, v7

    :goto_11
    move v11, v8

    :goto_12
    iget-object v7, v13, Lcom/google/android/gms/internal/play_billing/v;->c:Ljava/lang/Object;

    invoke-virtual {v3, v4, v1, v2, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v7, v9

    :goto_13
    move v2, v11

    :goto_14
    move/from16 v24, v12

    goto/16 :goto_1a

    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->b()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :cond_1c
    :goto_15
    move/from16 v21, v8

    const/16 v24, 0x0

    goto :goto_17

    :pswitch_6
    move/from16 v18, v1

    move-object/from16 v12, v21

    move-object/from16 v14, v32

    move-wide/from16 v1, v35

    const/16 v24, 0x0

    move/from16 v21, v8

    if-nez v15, :cond_1e

    or-int v7, v11, v33

    invoke-static {v6, v9, v13}, Lc1/b;->W([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v8

    iget-wide v9, v13, Lcom/google/android/gms/internal/play_billing/v;->b:J

    cmp-long v9, v9, v30

    if-eqz v9, :cond_1d

    const/4 v9, 0x1

    goto :goto_16

    :cond_1d
    move/from16 v9, v24

    :goto_16
    invoke-static {v4, v1, v2, v9}, Lcom/google/android/gms/internal/play_billing/f2;->m(Ljava/lang/Object;JZ)V

    goto/16 :goto_19

    :cond_1e
    :goto_17
    move v10, v9

    move/from16 v15, v20

    goto/16 :goto_1b

    :pswitch_7
    move/from16 v18, v1

    move-object/from16 v12, v21

    move-object/from16 v14, v32

    move-wide/from16 v1, v35

    const/4 v7, 0x5

    const/16 v24, 0x0

    move/from16 v21, v8

    if-ne v15, v7, :cond_1e

    add-int/lit8 v7, v9, 0x4

    or-int v8, v11, v33

    invoke-static {v6, v9}, Lc1/b;->G([BI)I

    move-result v9

    move/from16 v37, v8

    move v8, v7

    move/from16 v7, v37

    goto :goto_18

    :pswitch_8
    move/from16 v18, v1

    move-object/from16 v12, v21

    move-object/from16 v14, v32

    move-wide/from16 v1, v35

    const/4 v7, 0x1

    const/16 v24, 0x0

    move/from16 v21, v8

    if-ne v15, v7, :cond_1e

    add-int/lit8 v7, v9, 0x8

    or-int v8, v11, v33

    invoke-static {v6, v9}, Lc1/b;->Z([BI)J

    move-result-wide v9

    move-object/from16 p1, v3

    move-object/from16 p2, v5

    move-wide/from16 p3, v1

    move-wide/from16 p5, v9

    invoke-virtual/range {p1 .. p6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v2, v8

    goto/16 :goto_1a

    :pswitch_9
    move/from16 v18, v1

    move-object/from16 v12, v21

    move-object/from16 v14, v32

    move-wide/from16 v1, v35

    const/16 v24, 0x0

    move/from16 v21, v8

    if-nez v15, :cond_1e

    or-int v7, v11, v33

    invoke-static {v6, v9, v13}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v8

    iget v9, v13, Lcom/google/android/gms/internal/play_billing/v;->a:I

    :goto_18
    invoke-virtual {v3, v4, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_19

    :pswitch_a
    move/from16 v18, v1

    move-object/from16 v12, v21

    move-object/from16 v14, v32

    move-wide/from16 v1, v35

    const/16 v24, 0x0

    move/from16 v21, v8

    if-nez v15, :cond_1e

    or-int v7, v11, v33

    invoke-static {v6, v9, v13}, Lc1/b;->W([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v8

    iget-wide v9, v13, Lcom/google/android/gms/internal/play_billing/v;->b:J

    move-object/from16 p1, v3

    move-object/from16 p2, v5

    move-wide/from16 p3, v1

    move-wide/from16 p5, v9

    invoke-virtual/range {p1 .. p6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_19
    move v2, v7

    move v7, v8

    goto :goto_1a

    :pswitch_b
    move/from16 v18, v1

    move-object/from16 v12, v21

    move-object/from16 v14, v32

    move-wide/from16 v1, v35

    const/4 v7, 0x5

    const/16 v24, 0x0

    move/from16 v21, v8

    if-ne v15, v7, :cond_1e

    add-int/lit8 v8, v9, 0x4

    or-int v7, v11, v33

    invoke-static {v6, v9}, Lc1/b;->G([BI)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    invoke-static {v4, v1, v2, v9}, Lcom/google/android/gms/internal/play_billing/f2;->o(Ljava/lang/Object;JF)V

    goto :goto_19

    :pswitch_c
    move/from16 v18, v1

    move-object/from16 v12, v21

    move-object/from16 v14, v32

    move-wide/from16 v1, v35

    const/4 v7, 0x1

    const/16 v24, 0x0

    move/from16 v21, v8

    if-ne v15, v7, :cond_1e

    add-int/lit8 v8, v9, 0x8

    or-int v7, v11, v33

    invoke-static {v6, v9}, Lc1/b;->Z([BI)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    invoke-static {v4, v1, v2, v9, v10}, Lcom/google/android/gms/internal/play_billing/f2;->n(Ljava/lang/Object;JD)V

    goto :goto_19

    :goto_1a
    move v11, v2

    move-object v12, v14

    move/from16 v10, v18

    move/from16 v2, v20

    move/from16 v8, v26

    move v15, v8

    move-object/from16 v14, v27

    move/from16 v20, v0

    move-object/from16 v18, v3

    move-object/from16 v26, v25

    goto/16 :goto_3e

    :goto_1b
    move/from16 v20, v0

    move v9, v10

    move-object v8, v12

    move-object v12, v14

    move v2, v15

    move/from16 v0, v16

    move/from16 v10, v18

    move-object/from16 v13, v25

    move/from16 v15, v26

    move-object/from16 v14, v27

    move-object/from16 v1, v34

    move-object/from16 v18, v3

    move/from16 v3, v21

    goto/16 :goto_50

    :cond_1f
    move-object/from16 v34, v1

    move-wide v1, v2

    move-object/from16 v3, v18

    move-object/from16 v12, v21

    const/16 v24, 0x0

    move/from16 v21, v8

    move/from16 v18, v9

    move-object/from16 v9, v32

    move-object/from16 v8, p6

    move/from16 v32, v10

    const/16 v10, 0x1b

    const/16 v33, 0xa

    if-ne v7, v10, :cond_23

    const/4 v10, 0x2

    if-ne v15, v10, :cond_22

    invoke-virtual {v3, v4, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/play_billing/r0;

    check-cast v7, Lcom/google/android/gms/internal/play_billing/t;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/play_billing/t;->f()Z

    move-result v8

    if-nez v8, :cond_21

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_20

    goto :goto_1c

    :cond_20
    add-int v33, v8, v8

    :goto_1c
    move/from16 v8, v33

    invoke-interface {v7, v8}, Lcom/google/android/gms/internal/play_billing/r0;->b(I)Lcom/google/android/gms/internal/play_billing/r0;

    move-result-object v7

    invoke-virtual {v3, v4, v1, v2, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_21
    move-object v12, v7

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/play_billing/l1;->B(I)Lcom/google/android/gms/internal/play_billing/t1;

    move-result-object v7

    move/from16 v1, v20

    move/from16 v8, v21

    move-object v2, v9

    move-object/from16 v9, v27

    move/from16 v20, v32

    move/from16 v10, v18

    move/from16 v32, v11

    move/from16 v11, v26

    move-object v14, v13

    move-object/from16 v13, v17

    invoke-static/range {v7 .. v13}, Lc1/b;->O(Lcom/google/android/gms/internal/play_billing/t1;I[BIILcom/google/android/gms/internal/play_billing/r0;Lcom/google/android/gms/internal/play_billing/v;)I

    move-result v7

    move-object v12, v2

    move-object/from16 v18, v3

    move-object v13, v14

    move/from16 v9, v16

    move/from16 v10, v20

    move/from16 v8, v26

    move v15, v8

    move-object/from16 v14, v27

    move/from16 v11, v32

    move/from16 v20, v0

    move v2, v1

    move-object/from16 v0, v25

    goto/16 :goto_0

    :cond_22
    move/from16 v1, v20

    move/from16 v20, v32

    move/from16 v32, v11

    move v10, v1

    move-object/from16 v35, v3

    move-object v1, v4

    move-object v8, v5

    move-object v13, v9

    move-object v11, v12

    move/from16 v5, v18

    move/from16 v4, v21

    move-object/from16 v3, v22

    move-object/from16 v7, v25

    move/from16 v18, v26

    goto/16 :goto_3f

    :cond_23
    move/from16 v10, v20

    move/from16 v20, v32

    move/from16 v32, v11

    move-object v11, v13

    move-object v13, v9

    const/16 v9, 0x31

    if-gt v7, v9, :cond_6a

    move/from16 v9, p2

    move-object/from16 p6, v8

    int-to-long v8, v9

    move-object/from16 v35, v3

    move-object/from16 v3, v25

    invoke-virtual {v3, v4, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/android/gms/internal/play_billing/r0;

    move-object/from16 v36, v12

    move-object/from16 v12, v25

    check-cast v12, Lcom/google/android/gms/internal/play_billing/t;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/play_billing/t;->f()Z

    move-result v25

    if-nez v25, :cond_25

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v25

    if-nez v25, :cond_24

    goto :goto_1d

    :cond_24
    add-int v33, v25, v25

    :goto_1d
    move-object/from16 v25, v5

    move/from16 v5, v33

    invoke-interface {v12, v5}, Lcom/google/android/gms/internal/play_billing/r0;->b(I)Lcom/google/android/gms/internal/play_billing/r0;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v2, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v12, v5

    goto :goto_1e

    :cond_25
    move-object/from16 v25, v5

    :goto_1e
    packed-switch v7, :pswitch_data_1

    move v1, v10

    move-object v14, v11

    move/from16 v5, v18

    move/from16 v4, v21

    move/from16 v2, v26

    move-object/from16 v11, v36

    const/4 v7, 0x3

    move-object/from16 v26, v3

    move-object/from16 v3, v22

    if-ne v15, v7, :cond_68

    and-int/lit8 v7, v4, -0x8

    or-int/lit8 v7, v7, 0x4

    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/play_billing/l1;->B(I)Lcom/google/android/gms/internal/play_billing/t1;

    move-result-object v8

    move-object/from16 p1, v8

    move-object/from16 p2, v27

    move/from16 p3, v5

    move/from16 p4, v2

    move/from16 p5, v7

    move-object/from16 p6, v17

    invoke-static/range {p1 .. p6}, Lc1/b;->J(Lcom/google/android/gms/internal/play_billing/t1;[BIIILcom/google/android/gms/internal/play_billing/v;)I

    move-result v9

    goto/16 :goto_39

    :pswitch_d
    const/4 v1, 0x2

    if-ne v15, v1, :cond_28

    invoke-static {v12}, La1/b;->i(Lcom/google/android/gms/internal/play_billing/r0;)V

    move/from16 v5, v18

    invoke-static {v6, v5, v11}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/play_billing/v;->a:I

    add-int/2addr v2, v1

    if-lt v1, v2, :cond_27

    if-ne v1, v2, :cond_26

    goto :goto_20

    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->d()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :cond_27
    invoke-static {v6, v1, v11}, Lc1/b;->W([BILcom/google/android/gms/internal/play_billing/v;)I

    throw v23

    :cond_28
    move/from16 v5, v18

    if-eqz v15, :cond_29

    goto/16 :goto_23

    :cond_29
    invoke-static {v12}, La1/b;->i(Lcom/google/android/gms/internal/play_billing/r0;)V

    invoke-static {v6, v5, v11}, Lc1/b;->W([BILcom/google/android/gms/internal/play_billing/v;)I

    throw v23

    :pswitch_e
    move/from16 v5, v18

    const/4 v1, 0x2

    if-ne v15, v1, :cond_2c

    check-cast v12, Lcom/google/android/gms/internal/play_billing/m0;

    invoke-static {v6, v5, v11}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/play_billing/v;->a:I

    add-int/2addr v2, v1

    :goto_1f
    if-ge v1, v2, :cond_2a

    invoke-static {v6, v1, v11}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v1

    iget v4, v11, Lcom/google/android/gms/internal/play_billing/v;->a:I

    invoke-static {v4}, Lc1/b;->F(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/play_billing/m0;->h(I)V

    goto :goto_1f

    :cond_2a
    if-ne v1, v2, :cond_2b

    :goto_20
    move/from16 v9, v21

    move/from16 v2, v26

    goto :goto_22

    :cond_2b
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->d()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :cond_2c
    if-nez v15, :cond_2f

    check-cast v12, Lcom/google/android/gms/internal/play_billing/m0;

    invoke-static {v6, v5, v11}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/play_billing/v;->a:I

    invoke-static {v2}, Lc1/b;->F(I)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/play_billing/m0;->h(I)V

    move/from16 v2, v26

    :goto_21
    if-ge v1, v2, :cond_2d

    invoke-static {v6, v1, v11}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v4

    iget v7, v11, Lcom/google/android/gms/internal/play_billing/v;->a:I

    move/from16 v9, v21

    if-ne v9, v7, :cond_2e

    invoke-static {v6, v4, v11}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v1

    iget v4, v11, Lcom/google/android/gms/internal/play_billing/v;->a:I

    invoke-static {v4}, Lc1/b;->F(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/play_billing/m0;->h(I)V

    move/from16 v21, v9

    goto :goto_21

    :cond_2d
    move/from16 v9, v21

    :cond_2e
    :goto_22
    move v15, v2

    move-object/from16 v26, v3

    move v3, v5

    move v8, v9

    move v7, v10

    move-object v12, v13

    move/from16 v10, v20

    move-object/from16 v5, v25

    move-object/from16 v14, v27

    move-object/from16 v18, v35

    move v9, v1

    move-object v13, v11

    move-object/from16 v1, v34

    move-object/from16 v11, v36

    goto/16 :goto_3d

    :cond_2f
    :goto_23
    move/from16 v9, v21

    move/from16 v2, v26

    move-object/from16 v26, v3

    move-object v12, v13

    goto/16 :goto_29

    :pswitch_f
    move/from16 v5, v18

    move/from16 v9, v21

    move/from16 v2, v26

    const/4 v1, 0x2

    if-ne v15, v1, :cond_30

    invoke-static {v6, v5, v12, v11}, Lc1/b;->R([BILcom/google/android/gms/internal/play_billing/r0;Lcom/google/android/gms/internal/play_billing/v;)I

    move-result v1

    goto :goto_24

    :cond_30
    if-nez v15, :cond_38

    move/from16 p1, v9

    move-object/from16 p2, v27

    move/from16 p3, v5

    move/from16 p4, v2

    move-object/from16 p5, v12

    move-object/from16 p6, v17

    invoke-static/range {p1 .. p6}, Lc1/b;->V(I[BIILcom/google/android/gms/internal/play_billing/r0;Lcom/google/android/gms/internal/play_billing/v;)I

    move-result v1

    .line 7
    :goto_24
    div-int/lit8 v7, v0, 0x3

    add-int/2addr v7, v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    aget-object v7, v14, v7

    check-cast v7, Lcom/google/android/gms/internal/play_billing/o0;

    .line 8
    sget-object v8, Lcom/google/android/gms/internal/play_billing/u1;->a:Ljava/lang/Class;

    if-eqz v7, :cond_36

    instance-of v8, v12, Ljava/util/RandomAccess;

    iget-object v13, v13, Lcom/google/android/gms/internal/play_billing/l1;->j:Lcom/google/android/gms/internal/play_billing/x1;

    if-eqz v8, :cond_34

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v8

    move/from16 p1, v1

    move-object/from16 v1, v23

    move/from16 v14, v24

    move v15, v14

    :goto_25
    if-ge v14, v8, :cond_33

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    move-object/from16 v26, v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v7, v3}, Lcom/google/android/gms/internal/play_billing/o0;->a(I)Z

    move-result v18

    if-eqz v18, :cond_32

    if-eq v14, v15, :cond_31

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v12, v15, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_31
    add-int/lit8 v15, v15, 0x1

    goto :goto_26

    :cond_32
    invoke-static {v4, v10, v3, v1, v13}, Lcom/google/android/gms/internal/play_billing/u1;->t(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/x1;)Ljava/lang/Object;

    move-result-object v1

    :goto_26
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v26

    goto :goto_25

    :cond_33
    move-object/from16 v26, v3

    if-eq v15, v8, :cond_37

    invoke-interface {v12, v15, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_28

    :cond_34
    move/from16 p1, v1

    move-object/from16 v26, v3

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object/from16 v3, v23

    :cond_35
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/google/android/gms/internal/play_billing/o0;->a(I)Z

    move-result v12

    if-nez v12, :cond_35

    invoke-static {v4, v10, v8, v3, v13}, Lcom/google/android/gms/internal/play_billing/u1;->t(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/x1;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_27

    :cond_36
    move/from16 p1, v1

    move-object/from16 v26, v3

    :cond_37
    :goto_28
    move v3, v2

    move v15, v3

    move v8, v9

    move v7, v10

    move-object v13, v11

    move/from16 v10, v20

    move-object/from16 v12, v22

    move-object/from16 v14, v27

    move/from16 v11, v32

    move-object/from16 v1, v34

    move-object/from16 v18, v35

    move/from16 v2, p1

    move v9, v5

    move-object/from16 v5, v25

    goto/16 :goto_2c

    :cond_38
    move-object/from16 v26, v3

    move-object/from16 v12, v22

    :goto_29
    move v4, v9

    move v1, v10

    move-object v14, v11

    move-object/from16 v3, v22

    move-object/from16 v11, v36

    goto/16 :goto_3b

    :pswitch_10
    move/from16 v5, v18

    move/from16 v9, v21

    move/from16 v2, v26

    const/4 v1, 0x2

    move-object/from16 v26, v3

    if-ne v15, v1, :cond_3f

    invoke-static {v6, v5, v11}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v1

    iget v3, v11, Lcom/google/android/gms/internal/play_billing/v;->a:I

    if-ltz v3, :cond_3e

    array-length v4, v6

    sub-int/2addr v4, v1

    if-gt v3, v4, :cond_3d

    move v15, v2

    move v8, v9

    move v7, v10

    move-object v13, v11

    move/from16 v10, v20

    move-object/from16 v14, v27

    move/from16 v11, v32

    move-object/from16 v18, v35

    move v9, v5

    move-object/from16 v5, v25

    if-nez v3, :cond_39

    goto :goto_2b

    :cond_39
    invoke-static {v6, v1, v3}, Lcom/google/android/gms/internal/play_billing/z;->k([BII)Lcom/google/android/gms/internal/play_billing/a0;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v3

    :goto_2a
    if-ge v1, v15, :cond_3c

    invoke-static {v6, v1, v13}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v3

    iget v4, v13, Lcom/google/android/gms/internal/play_billing/v;->a:I

    if-ne v8, v4, :cond_3c

    invoke-static {v6, v3, v13}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v1

    iget v3, v13, Lcom/google/android/gms/internal/play_billing/v;->a:I

    if-ltz v3, :cond_3b

    array-length v4, v6

    sub-int/2addr v4, v1

    if-gt v3, v4, :cond_3a

    if-nez v3, :cond_39

    :goto_2b
    sget-object v3, Lcom/google/android/gms/internal/play_billing/z;->b:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_3a
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->d()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :cond_3b
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->b()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :cond_3c
    move v3, v15

    move-object/from16 v12, v22

    move v15, v2

    move v2, v1

    move-object/from16 v1, v34

    :goto_2c
    move/from16 v32, v11

    move-object/from16 v22, v12

    move-object/from16 v11, v36

    move/from16 v37, v9

    move v9, v2

    move v2, v3

    move/from16 v3, v37

    goto/16 :goto_3d

    :cond_3d
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->d()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :cond_3e
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->b()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :pswitch_11
    move/from16 v5, v18

    move/from16 v9, v21

    move/from16 v2, v26

    const/4 v1, 0x2

    move-object/from16 v26, v3

    if-ne v15, v1, :cond_3f

    move-object/from16 v3, v22

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/play_billing/l1;->B(I)Lcom/google/android/gms/internal/play_billing/t1;

    move-result-object v7

    move v8, v9

    move v4, v9

    move-object/from16 v9, v27

    move v1, v10

    move v10, v5

    move-object v14, v11

    move v11, v2

    move-object/from16 v15, v36

    move-object/from16 v13, v17

    invoke-static/range {v7 .. v13}, Lc1/b;->O(Lcom/google/android/gms/internal/play_billing/t1;I[BIILcom/google/android/gms/internal/play_billing/r0;Lcom/google/android/gms/internal/play_billing/v;)I

    move-result v9

    move v7, v1

    move-object v12, v3

    move-object/from16 v22, v12

    move v8, v4

    move v3, v5

    move-object v13, v14

    move-object v11, v15

    move/from16 v10, v20

    move-object/from16 v5, v25

    move-object/from16 v14, v27

    move-object/from16 v1, v34

    move-object/from16 v18, v35

    move v15, v2

    goto/16 :goto_3d

    :cond_3f
    move v4, v9

    move v1, v10

    move-object v14, v11

    move-object/from16 v3, v22

    move-object/from16 v15, v36

    move-object v12, v3

    move-object v11, v15

    goto/16 :goto_3b

    :pswitch_12
    move v1, v10

    move-object v14, v11

    move/from16 v5, v18

    move/from16 v4, v21

    move/from16 v2, v26

    move-object/from16 v11, v36

    const/4 v7, 0x2

    move-object/from16 v26, v3

    move-object/from16 v3, v22

    if-ne v15, v7, :cond_68

    const-wide/32 v21, 0x20000000

    and-long v7, v8, v21

    cmp-long v7, v7, v30

    if-nez v7, :cond_46

    invoke-static {v6, v5, v14}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v7

    iget v8, v14, Lcom/google/android/gms/internal/play_billing/v;->a:I

    if-ltz v8, :cond_45

    if-nez v8, :cond_40

    move v8, v2

    move-object/from16 v22, v3

    move v3, v5

    move-object v15, v14

    move/from16 v18, v16

    move/from16 v10, v20

    move-object/from16 v5, v25

    move-object/from16 v14, p6

    move v2, v1

    move-object/from16 v20, v17

    move-object/from16 v1, v34

    move/from16 v17, v8

    goto :goto_2f

    :cond_40
    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/play_billing/s0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v6, v7, v8, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object/from16 v22, v3

    move v3, v5

    move-object v15, v14

    move/from16 v18, v16

    move/from16 v10, v20

    move-object/from16 v5, v25

    move-object/from16 v14, p6

    move/from16 v16, v2

    move-object/from16 v20, v17

    move/from16 v17, v16

    move v2, v1

    move-object/from16 v1, v34

    :goto_2d
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v7, v8

    move/from16 v8, v16

    :goto_2e
    if-ge v7, v8, :cond_43

    invoke-static {v6, v7, v15}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v9

    move/from16 p1, v0

    iget v0, v15, Lcom/google/android/gms/internal/play_billing/v;->a:I

    if-ne v4, v0, :cond_44

    invoke-static {v6, v9, v15}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v7

    iget v0, v15, Lcom/google/android/gms/internal/play_billing/v;->a:I

    if-ltz v0, :cond_42

    if-nez v0, :cond_41

    move/from16 v0, p1

    :goto_2f
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_41
    new-instance v9, Ljava/lang/String;

    move-object/from16 p2, v1

    sget-object v1, Lcom/google/android/gms/internal/play_billing/s0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v6, v7, v0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object/from16 v1, p2

    move/from16 v16, v8

    move v8, v0

    move/from16 v0, p1

    goto :goto_2d

    :cond_42
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->b()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :cond_43
    move/from16 p1, v0

    :cond_44
    move-object/from16 p2, v1

    move/from16 v0, p1

    move-object/from16 v1, p2

    move v9, v7

    move-object v12, v13

    move-object v13, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move-object/from16 v17, v20

    move-object/from16 v14, v27

    move-object/from16 v18, v35

    move v7, v2

    move v2, v8

    move v8, v4

    goto/16 :goto_3d

    :cond_45
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->b()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :cond_46
    invoke-static {v6, v5, v14}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v7

    iget v8, v14, Lcom/google/android/gms/internal/play_billing/v;->a:I

    if-ltz v8, :cond_4e

    if-nez v8, :cond_47

    move v15, v2

    move-object/from16 v22, v3

    move v8, v4

    move v9, v7

    move-object/from16 v18, v35

    move-object/from16 v3, p6

    move v7, v1

    move v4, v15

    move v2, v5

    move-object/from16 v5, v25

    move-object/from16 v1, v34

    goto :goto_32

    :cond_47
    add-int v9, v7, v8

    invoke-static {v6, v7, v9}, Lcom/google/android/gms/internal/play_billing/h2;->c([BII)Z

    move-result v10

    if-eqz v10, :cond_4d

    new-instance v10, Ljava/lang/String;

    sget-object v15, Lcom/google/android/gms/internal/play_billing/s0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v10, v6, v7, v8, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move v7, v1

    move v15, v2

    move-object/from16 v22, v3

    move v8, v4

    move-object/from16 v1, v34

    move-object/from16 v18, v35

    move-object/from16 v3, p6

    move v4, v15

    move v2, v5

    move-object/from16 v5, v25

    :goto_30
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_31
    if-ge v9, v15, :cond_4b

    invoke-static {v6, v9, v14}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v10

    move/from16 p1, v0

    iget v0, v14, Lcom/google/android/gms/internal/play_billing/v;->a:I

    if-ne v8, v0, :cond_4c

    invoke-static {v6, v10, v14}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v0

    iget v9, v14, Lcom/google/android/gms/internal/play_billing/v;->a:I

    if-ltz v9, :cond_4a

    if-nez v9, :cond_48

    move v9, v0

    move/from16 v0, p1

    :goto_32
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_48
    add-int v10, v0, v9

    invoke-static {v6, v0, v10}, Lcom/google/android/gms/internal/play_billing/h2;->c([BII)Z

    move-result v21

    if-eqz v21, :cond_49

    move-object/from16 p2, v1

    new-instance v1, Ljava/lang/String;

    move/from16 p3, v2

    sget-object v2, Lcom/google/android/gms/internal/play_billing/s0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v6, v0, v9, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move/from16 v0, p1

    move/from16 v2, p3

    move v9, v10

    move-object v10, v1

    move-object/from16 v1, p2

    goto :goto_30

    :cond_49
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->a()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :cond_4a
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->b()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :cond_4b
    move/from16 p1, v0

    :cond_4c
    move-object/from16 p2, v1

    move/from16 p3, v2

    move/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v3, p3

    move-object v12, v13

    move-object v13, v14

    move v2, v15

    move/from16 v10, v20

    move-object/from16 v14, v27

    move v15, v4

    goto/16 :goto_3d

    :cond_4d
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->a()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :cond_4e
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->b()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :pswitch_13
    move v1, v10

    move-object v14, v11

    move/from16 v5, v18

    move/from16 v4, v21

    move/from16 v2, v26

    move-object/from16 v11, v36

    const/4 v7, 0x2

    move-object/from16 v26, v3

    move-object/from16 v3, v22

    if-ne v15, v7, :cond_51

    invoke-static {v12}, La1/b;->i(Lcom/google/android/gms/internal/play_billing/r0;)V

    invoke-static {v6, v5, v14}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v7

    iget v8, v14, Lcom/google/android/gms/internal/play_billing/v;->a:I

    add-int/2addr v8, v7

    if-lt v7, v8, :cond_50

    if-ne v7, v8, :cond_4f

    goto/16 :goto_35

    :cond_4f
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->d()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :cond_50
    invoke-static {v6, v7, v14}, Lc1/b;->W([BILcom/google/android/gms/internal/play_billing/v;)I

    throw v23

    :cond_51
    if-eqz v15, :cond_52

    goto/16 :goto_3a

    :cond_52
    invoke-static {v12}, La1/b;->i(Lcom/google/android/gms/internal/play_billing/r0;)V

    invoke-static {v6, v5, v14}, Lc1/b;->W([BILcom/google/android/gms/internal/play_billing/v;)I

    throw v23

    :pswitch_14
    move v1, v10

    move-object v14, v11

    move/from16 v5, v18

    move/from16 v4, v21

    move/from16 v2, v26

    move-object/from16 v11, v36

    const/4 v7, 0x2

    move-object/from16 v26, v3

    move-object/from16 v3, v22

    if-ne v15, v7, :cond_55

    check-cast v12, Lcom/google/android/gms/internal/play_billing/m0;

    invoke-static {v6, v5, v14}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v7

    iget v8, v14, Lcom/google/android/gms/internal/play_billing/v;->a:I

    add-int/2addr v8, v7

    :goto_33
    if-ge v7, v8, :cond_53

    invoke-static {v6, v7}, Lc1/b;->G([BI)I

    move-result v9

    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/play_billing/m0;->h(I)V

    add-int/lit8 v7, v7, 0x4

    goto :goto_33

    :cond_53
    if-ne v7, v8, :cond_54

    goto :goto_35

    :cond_54
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->d()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :cond_55
    const/4 v7, 0x5

    if-ne v15, v7, :cond_68

    add-int/lit8 v9, v5, 0x4

    check-cast v12, Lcom/google/android/gms/internal/play_billing/m0;

    invoke-static {v6, v5}, Lc1/b;->G([BI)I

    move-result v7

    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/play_billing/m0;->h(I)V

    :goto_34
    if-ge v9, v2, :cond_5b

    invoke-static {v6, v9, v14}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v7

    iget v8, v14, Lcom/google/android/gms/internal/play_billing/v;->a:I

    if-ne v4, v8, :cond_5b

    invoke-static {v6, v7}, Lc1/b;->G([BI)I

    move-result v8

    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/play_billing/m0;->h(I)V

    add-int/lit8 v9, v7, 0x4

    goto :goto_34

    :pswitch_15
    move v1, v10

    move-object v14, v11

    move/from16 v5, v18

    move/from16 v4, v21

    move/from16 v2, v26

    move-object/from16 v11, v36

    const/4 v7, 0x2

    move-object/from16 v26, v3

    move-object/from16 v3, v22

    if-ne v15, v7, :cond_58

    invoke-static {v12}, La1/b;->i(Lcom/google/android/gms/internal/play_billing/r0;)V

    invoke-static {v6, v5, v14}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v7

    iget v8, v14, Lcom/google/android/gms/internal/play_billing/v;->a:I

    add-int/2addr v8, v7

    if-lt v7, v8, :cond_57

    if-ne v7, v8, :cond_56

    :goto_35
    goto :goto_36

    :cond_56
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->d()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :cond_57
    invoke-static {v6, v7}, Lc1/b;->Z([BI)J

    throw v23

    :cond_58
    const/4 v7, 0x1

    if-eq v15, v7, :cond_59

    goto/16 :goto_3a

    :cond_59
    invoke-static {v12}, La1/b;->i(Lcom/google/android/gms/internal/play_billing/r0;)V

    invoke-static {v6, v5}, Lc1/b;->Z([BI)J

    throw v23

    :pswitch_16
    move v1, v10

    move-object v14, v11

    move/from16 v5, v18

    move/from16 v4, v21

    move/from16 v2, v26

    move-object/from16 v11, v36

    const/4 v7, 0x2

    move-object/from16 v26, v3

    move-object/from16 v3, v22

    if-ne v15, v7, :cond_5a

    invoke-static {v6, v5, v12, v14}, Lc1/b;->R([BILcom/google/android/gms/internal/play_billing/r0;Lcom/google/android/gms/internal/play_billing/v;)I

    move-result v7

    :goto_36
    move v15, v2

    move-object/from16 v22, v3

    move v8, v4

    move v3, v5

    move v9, v7

    move-object v12, v13

    move-object v13, v14

    move/from16 v10, v20

    move-object/from16 v5, v25

    move-object/from16 v14, v27

    move-object/from16 v18, v35

    move v7, v1

    move-object/from16 v1, v34

    goto/16 :goto_3d

    :cond_5a
    if-nez v15, :cond_68

    move/from16 p1, v4

    move-object/from16 p2, v27

    move/from16 p3, v5

    move/from16 p4, v2

    move-object/from16 p5, v12

    move-object/from16 p6, v17

    invoke-static/range {p1 .. p6}, Lc1/b;->V(I[BIILcom/google/android/gms/internal/play_billing/r0;Lcom/google/android/gms/internal/play_billing/v;)I

    move-result v9

    :cond_5b
    :goto_37
    move v7, v1

    move v15, v2

    move-object/from16 v22, v3

    move v8, v4

    move v3, v5

    move-object v12, v13

    goto/16 :goto_3c

    :pswitch_17
    move v1, v10

    move-object v14, v11

    move/from16 v5, v18

    move/from16 v4, v21

    move/from16 v2, v26

    move-object/from16 v11, v36

    const/4 v7, 0x2

    move-object/from16 v26, v3

    move-object/from16 v3, v22

    if-ne v15, v7, :cond_5e

    invoke-static {v12}, La1/b;->i(Lcom/google/android/gms/internal/play_billing/r0;)V

    invoke-static {v6, v5, v14}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v9

    iget v7, v14, Lcom/google/android/gms/internal/play_billing/v;->a:I

    add-int/2addr v7, v9

    if-lt v9, v7, :cond_5d

    if-ne v9, v7, :cond_5c

    goto/16 :goto_38

    :cond_5c
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->d()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :cond_5d
    invoke-static {v6, v9, v14}, Lc1/b;->W([BILcom/google/android/gms/internal/play_billing/v;)I

    throw v23

    :cond_5e
    if-eqz v15, :cond_5f

    goto/16 :goto_3a

    :cond_5f
    invoke-static {v12}, La1/b;->i(Lcom/google/android/gms/internal/play_billing/r0;)V

    invoke-static {v6, v5, v14}, Lc1/b;->W([BILcom/google/android/gms/internal/play_billing/v;)I

    throw v23

    :pswitch_18
    move v1, v10

    move-object v14, v11

    move/from16 v5, v18

    move/from16 v4, v21

    move/from16 v2, v26

    move-object/from16 v11, v36

    const/4 v7, 0x2

    move-object/from16 v26, v3

    move-object/from16 v3, v22

    if-ne v15, v7, :cond_62

    invoke-static {v12}, La1/b;->i(Lcom/google/android/gms/internal/play_billing/r0;)V

    invoke-static {v6, v5, v14}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v9

    iget v7, v14, Lcom/google/android/gms/internal/play_billing/v;->a:I

    add-int/2addr v7, v9

    if-lt v9, v7, :cond_61

    if-ne v9, v7, :cond_60

    goto :goto_38

    :cond_60
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->d()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :cond_61
    invoke-static {v6, v9}, Lc1/b;->G([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    throw v23

    :cond_62
    const/4 v7, 0x5

    if-eq v15, v7, :cond_63

    goto/16 :goto_3a

    :cond_63
    invoke-static {v12}, La1/b;->i(Lcom/google/android/gms/internal/play_billing/r0;)V

    invoke-static {v6, v5}, Lc1/b;->G([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    throw v23

    :pswitch_19
    move v1, v10

    move-object v14, v11

    move/from16 v5, v18

    move/from16 v4, v21

    move/from16 v2, v26

    move-object/from16 v11, v36

    const/4 v7, 0x2

    move-object/from16 v26, v3

    move-object/from16 v3, v22

    if-ne v15, v7, :cond_66

    invoke-static {v12}, La1/b;->i(Lcom/google/android/gms/internal/play_billing/r0;)V

    invoke-static {v6, v5, v14}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v9

    iget v7, v14, Lcom/google/android/gms/internal/play_billing/v;->a:I

    add-int/2addr v7, v9

    if-lt v9, v7, :cond_65

    if-ne v9, v7, :cond_64

    :goto_38
    goto/16 :goto_37

    :cond_64
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->d()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :cond_65
    invoke-static {v6, v9}, Lc1/b;->Z([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    throw v23

    :cond_66
    const/4 v7, 0x1

    if-eq v15, v7, :cond_67

    goto :goto_3a

    :cond_67
    invoke-static {v12}, La1/b;->i(Lcom/google/android/gms/internal/play_billing/r0;)V

    invoke-static {v6, v5}, Lc1/b;->Z([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    throw v23

    :goto_39
    iget-object v10, v14, Lcom/google/android/gms/internal/play_billing/v;->c:Ljava/lang/Object;

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge v9, v2, :cond_5b

    invoke-static {v6, v9, v14}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v10

    iget v15, v14, Lcom/google/android/gms/internal/play_billing/v;->a:I

    if-ne v4, v15, :cond_5b

    move-object/from16 p1, v8

    move-object/from16 p2, v27

    move/from16 p3, v10

    move/from16 p4, v2

    move/from16 p5, v7

    move-object/from16 p6, v17

    invoke-static/range {p1 .. p6}, Lc1/b;->J(Lcom/google/android/gms/internal/play_billing/t1;[BIIILcom/google/android/gms/internal/play_billing/v;)I

    move-result v9

    goto :goto_39

    :cond_68
    :goto_3a
    move-object v12, v13

    :goto_3b
    move v7, v1

    move v15, v2

    move-object/from16 v22, v3

    move v8, v4

    move v3, v5

    move v9, v3

    :goto_3c
    move-object v13, v14

    move/from16 v10, v20

    move-object/from16 v5, v25

    move-object/from16 v14, v27

    move-object/from16 v1, v34

    move-object/from16 v18, v35

    :goto_3d
    move/from16 v20, v0

    move-object v4, v5

    if-eq v9, v3, :cond_69

    move/from16 v21, v8

    move/from16 v11, v32

    move v8, v2

    move v2, v7

    move v7, v9

    :goto_3e
    move/from16 v9, v16

    move-object/from16 v0, v26

    goto/16 :goto_0

    :cond_69
    move v2, v7

    move v3, v8

    move-object v8, v11

    move/from16 v0, v16

    move-object/from16 v13, v26

    move/from16 v11, v32

    goto/16 :goto_50

    :cond_6a
    move/from16 v9, p2

    move-object/from16 v35, v3

    move-object/from16 p6, v8

    move/from16 v4, v21

    move-object/from16 v3, v22

    move-object/from16 v37, v25

    move-object/from16 v25, v5

    move/from16 v5, v18

    move/from16 v18, v26

    move-object/from16 v26, v37

    move-object/from16 v38, v12

    move-object v12, v11

    move-object/from16 v11, v38

    const/16 v8, 0x32

    if-ne v7, v8, :cond_6d

    const/4 v8, 0x2

    if-ne v15, v8, :cond_6c

    const/4 v3, 0x3

    .line 9
    div-int/2addr v0, v3

    add-int/2addr v0, v0

    aget-object v0, v14, v0

    move-object/from16 v8, v25

    move-object/from16 v7, v26

    .line 10
    invoke-virtual {v7, v8, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/play_billing/e1;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/e1;->d()Z

    move-result v4

    if-nez v4, :cond_6b

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/e1;->a()Lcom/google/android/gms/internal/play_billing/e1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/e1;->b()Lcom/google/android/gms/internal/play_billing/e1;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/play_billing/f1;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/e1;

    invoke-virtual {v7, v8, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_6b
    invoke-static {v0}, La1/b;->j(Ljava/lang/Object;)V

    throw v23

    :cond_6c
    move-object/from16 v8, v25

    move-object/from16 v7, v26

    move-object v1, v8

    :goto_3f
    move-object/from16 v22, v3

    move v3, v4

    move v9, v5

    move-object v5, v8

    move v2, v10

    move-object v8, v11

    move-object v12, v13

    move/from16 v15, v18

    move/from16 v10, v20

    move-object/from16 v14, v27

    move/from16 v11, v32

    move-object/from16 v18, v35

    move/from16 v20, v0

    move-object v4, v1

    move-object v13, v7

    move/from16 v0, v16

    move-object/from16 v1, v34

    goto/16 :goto_50

    :cond_6d
    move-object/from16 v21, v3

    move-object/from16 v8, v25

    move-object/from16 v3, v26

    add-int/lit8 v22, v0, 0x2

    aget v22, v34, v22

    move-object/from16 v36, v11

    const v19, 0xfffff

    and-int v11, v22, v19

    move-object/from16 p2, v12

    int-to-long v11, v11

    packed-switch v7, :pswitch_data_2

    move/from16 v22, v0

    move v9, v4

    move v7, v10

    move-object/from16 v25, v13

    move-object v13, v3

    move-object v10, v8

    move-object/from16 v8, v36

    move-object/from16 v3, p2

    goto/16 :goto_4e

    :pswitch_1a
    const/4 v7, 0x3

    if-ne v15, v7, :cond_6e

    and-int/lit8 v1, v4, -0x8

    or-int/lit8 v12, v1, 0x4

    invoke-virtual {v13, v8, v10, v0}, Lcom/google/android/gms/internal/play_billing/l1;->D(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/play_billing/l1;->B(I)Lcom/google/android/gms/internal/play_billing/t1;

    move-result-object v2

    move-object v7, v1

    move-object v14, v8

    move-object v8, v2

    move-object/from16 v9, v27

    move v2, v10

    move v10, v5

    move-object/from16 v15, v36

    move/from16 v11, v18

    move-object/from16 v25, v3

    move-object/from16 v3, p2

    move/from16 v22, v4

    move-object v4, v13

    move-object/from16 v13, v17

    invoke-static/range {v7 .. v13}, Lc1/b;->X(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/t1;[BIIILcom/google/android/gms/internal/play_billing/v;)I

    move-result v7

    invoke-virtual {v4, v2, v0, v14, v1}, Lcom/google/android/gms/internal/play_billing/l1;->o(IILjava/lang/Object;Ljava/lang/Object;)V

    move v9, v7

    move-object v10, v14

    move-object v8, v15

    move/from16 v14, v22

    move-object/from16 v13, v25

    move v7, v2

    goto/16 :goto_45

    :cond_6e
    move-object/from16 v25, v3

    move/from16 v22, v4

    move-object/from16 v3, p2

    move v7, v10

    move/from16 v9, v22

    move/from16 v22, v0

    move-object v10, v8

    move-object/from16 v8, v36

    move-object/from16 v37, v25

    move-object/from16 v25, v13

    move-object/from16 v13, v37

    goto/16 :goto_4e

    :pswitch_1b
    move-object/from16 v25, v3

    move/from16 v22, v4

    move-object v14, v8

    move v7, v10

    move-object v4, v13

    move-object/from16 v8, v36

    move-object/from16 v3, p2

    if-nez v15, :cond_6f

    invoke-static {v6, v5, v3}, Lc1/b;->W([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v9

    move/from16 p1, v9

    iget-wide v9, v3, Lcom/google/android/gms/internal/play_billing/v;->b:J

    invoke-static {v9, v10}, Lc1/b;->K(J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move/from16 v15, p1

    goto :goto_40

    :pswitch_1c
    move-object/from16 v25, v3

    move/from16 v22, v4

    move-object v14, v8

    move v7, v10

    move-object v4, v13

    move-object/from16 v8, v36

    move-object/from16 v3, p2

    if-nez v15, :cond_6f

    invoke-static {v6, v5, v3}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v9

    iget v10, v3, Lcom/google/android/gms/internal/play_billing/v;->a:I

    invoke-static {v10}, Lc1/b;->F(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move v15, v9

    move-object v9, v10

    :goto_40
    move-object v10, v14

    move/from16 v14, v22

    move-object/from16 v13, v25

    goto/16 :goto_44

    :cond_6f
    move-object v10, v14

    goto :goto_43

    :pswitch_1d
    move-object/from16 v25, v3

    move/from16 v22, v4

    move v7, v10

    move-object v4, v13

    move-object/from16 v3, p2

    move-object v10, v8

    move-object/from16 v8, v36

    if-nez v15, :cond_73

    invoke-static {v6, v5, v3}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v9

    iget v13, v3, Lcom/google/android/gms/internal/play_billing/v;->a:I

    .line 11
    div-int/lit8 v15, v0, 0x3

    add-int/2addr v15, v15

    const/16 v26, 0x1

    add-int/lit8 v15, v15, 0x1

    aget-object v14, v14, v15

    check-cast v14, Lcom/google/android/gms/internal/play_billing/o0;

    if-eqz v14, :cond_72

    .line 12
    invoke-interface {v14, v13}, Lcom/google/android/gms/internal/play_billing/o0;->a(I)Z

    move-result v14

    if-eqz v14, :cond_70

    goto :goto_41

    .line 13
    :cond_70
    move-object v1, v10

    check-cast v1, Lcom/google/android/gms/internal/play_billing/l0;

    iget-object v2, v1, Lcom/google/android/gms/internal/play_billing/l0;->zzc:Lcom/google/android/gms/internal/play_billing/w1;

    if-ne v2, v8, :cond_71

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/w1;->b()Lcom/google/android/gms/internal/play_billing/w1;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/play_billing/l0;->zzc:Lcom/google/android/gms/internal/play_billing/w1;

    :cond_71
    int-to-long v11, v13

    .line 14
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move/from16 v14, v22

    invoke-virtual {v2, v14, v1}, Lcom/google/android/gms/internal/play_billing/w1;->c(ILjava/lang/Object;)V

    move-object/from16 v15, v25

    goto :goto_42

    :cond_72
    :goto_41
    move/from16 v14, v22

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v15, v25

    invoke-virtual {v15, v10, v1, v2, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v10, v11, v12, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_42
    move-object v13, v15

    goto :goto_45

    :cond_73
    :goto_43
    move/from16 v14, v22

    move-object/from16 v13, v25

    goto/16 :goto_47

    :pswitch_1e
    move v14, v4

    move v7, v10

    move-object v4, v13

    const/4 v9, 0x2

    move-object v13, v3

    move-object v10, v8

    move-object/from16 v8, v36

    move-object/from16 v3, p2

    if-ne v15, v9, :cond_74

    invoke-static {v6, v5, v3}, Lc1/b;->z([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v9

    iget-object v15, v3, Lcom/google/android/gms/internal/play_billing/v;->c:Ljava/lang/Object;

    move-object/from16 v37, v15

    move v15, v9

    move-object/from16 v9, v37

    :goto_44
    invoke-virtual {v13, v10, v1, v2, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v13, v10, v11, v12, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v9, v15

    :goto_45
    move/from16 v22, v0

    move-object/from16 v25, v4

    move v0, v9

    goto :goto_46

    :pswitch_1f
    move v14, v4

    move v7, v10

    move-object v4, v13

    const/4 v9, 0x2

    move-object v13, v3

    move-object v10, v8

    move-object/from16 v8, v36

    move-object/from16 v3, p2

    if-ne v15, v9, :cond_74

    invoke-virtual {v4, v10, v7, v0}, Lcom/google/android/gms/internal/play_billing/l1;->D(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/play_billing/l1;->B(I)Lcom/google/android/gms/internal/play_billing/t1;

    move-result-object v2

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v27

    move/from16 p4, v5

    move/from16 p5, v18

    move-object/from16 p6, v17

    invoke-static/range {p1 .. p6}, Lc1/b;->Y(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/t1;[BIILcom/google/android/gms/internal/play_billing/v;)I

    move-result v2

    invoke-virtual {v4, v7, v0, v10, v1}, Lcom/google/android/gms/internal/play_billing/l1;->o(IILjava/lang/Object;Ljava/lang/Object;)V

    move/from16 v22, v0

    move v0, v2

    move-object/from16 v25, v4

    :goto_46
    move v9, v14

    goto/16 :goto_4f

    :cond_74
    :goto_47
    move/from16 v22, v0

    :cond_75
    move-object/from16 v25, v4

    :cond_76
    move v9, v14

    goto/16 :goto_4e

    :pswitch_20
    move/from16 v22, v0

    move v14, v4

    move v7, v10

    move-object v4, v13

    const/4 v0, 0x2

    move-object v13, v3

    move-object v10, v8

    move-object/from16 v8, v36

    move-object/from16 v3, p2

    if-ne v15, v0, :cond_75

    invoke-static {v6, v5, v3}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v0

    iget v15, v3, Lcom/google/android/gms/internal/play_billing/v;->a:I

    move-object/from16 v25, v4

    if-nez v15, :cond_77

    move-object/from16 v4, p6

    invoke-virtual {v13, v10, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_49

    :cond_77
    and-int v4, v9, v29

    add-int v9, v0, v15

    if-eqz v4, :cond_79

    invoke-static {v6, v0, v9}, Lcom/google/android/gms/internal/play_billing/h2;->c([BII)Z

    move-result v4

    if-eqz v4, :cond_78

    goto :goto_48

    :cond_78
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->a()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :cond_79
    :goto_48
    new-instance v4, Ljava/lang/String;

    move/from16 p1, v9

    sget-object v9, Lcom/google/android/gms/internal/play_billing/s0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v6, v0, v15, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v13, v10, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v0, p1

    :goto_49
    invoke-virtual {v13, v10, v11, v12, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_46

    :pswitch_21
    move/from16 v22, v0

    move v14, v4

    move v7, v10

    move-object/from16 v25, v13

    move-object v13, v3

    move-object v10, v8

    move-object/from16 v8, v36

    move-object/from16 v3, p2

    if-nez v15, :cond_76

    invoke-static {v6, v5, v3}, Lc1/b;->W([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v0

    move v9, v14

    iget-wide v14, v3, Lcom/google/android/gms/internal/play_billing/v;->b:J

    cmp-long v4, v14, v30

    if-eqz v4, :cond_7a

    const/16 v28, 0x1

    goto :goto_4a

    :cond_7a
    move/from16 v28, v24

    :goto_4a
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_4d

    :pswitch_22
    move/from16 v22, v0

    move v9, v4

    move v7, v10

    move-object/from16 v25, v13

    const/4 v0, 0x5

    move-object v13, v3

    move-object v10, v8

    move-object/from16 v8, v36

    move-object/from16 v3, p2

    if-ne v15, v0, :cond_7b

    add-int/lit8 v0, v5, 0x4

    invoke-static {v6, v5}, Lc1/b;->G([BI)I

    move-result v4

    goto :goto_4c

    :pswitch_23
    move/from16 v22, v0

    move v9, v4

    move v7, v10

    move-object/from16 v25, v13

    const/4 v0, 0x1

    move-object v13, v3

    move-object v10, v8

    move-object/from16 v8, v36

    move-object/from16 v3, p2

    if-ne v15, v0, :cond_7b

    add-int/lit8 v0, v5, 0x8

    invoke-static {v6, v5}, Lc1/b;->Z([BI)J

    move-result-wide v14

    :goto_4b
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto/16 :goto_4d

    :pswitch_24
    move/from16 v22, v0

    move v9, v4

    move v7, v10

    move-object/from16 v25, v13

    move-object v13, v3

    move-object v10, v8

    move-object/from16 v8, v36

    move-object/from16 v3, p2

    if-nez v15, :cond_7b

    invoke-static {v6, v5, v3}, Lc1/b;->T([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v0

    iget v4, v3, Lcom/google/android/gms/internal/play_billing/v;->a:I

    :goto_4c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_4d

    :pswitch_25
    move/from16 v22, v0

    move v9, v4

    move v7, v10

    move-object/from16 v25, v13

    move-object v13, v3

    move-object v10, v8

    move-object/from16 v8, v36

    move-object/from16 v3, p2

    if-nez v15, :cond_7b

    invoke-static {v6, v5, v3}, Lc1/b;->W([BILcom/google/android/gms/internal/play_billing/v;)I

    move-result v0

    iget-wide v14, v3, Lcom/google/android/gms/internal/play_billing/v;->b:J

    goto :goto_4b

    :pswitch_26
    move/from16 v22, v0

    move v9, v4

    move v7, v10

    move-object/from16 v25, v13

    const/4 v0, 0x5

    move-object v13, v3

    move-object v10, v8

    move-object/from16 v8, v36

    move-object/from16 v3, p2

    if-ne v15, v0, :cond_7b

    add-int/lit8 v0, v5, 0x4

    invoke-static {v6, v5}, Lc1/b;->G([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_4d

    :pswitch_27
    move/from16 v22, v0

    move v9, v4

    move v7, v10

    move-object/from16 v25, v13

    const/4 v0, 0x1

    move-object v13, v3

    move-object v10, v8

    move-object/from16 v8, v36

    move-object/from16 v3, p2

    if-ne v15, v0, :cond_7b

    add-int/lit8 v0, v5, 0x8

    invoke-static {v6, v5}, Lc1/b;->Z([BI)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    :goto_4d
    invoke-virtual {v13, v10, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v13, v10, v11, v12, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4f

    :cond_7b
    :goto_4e
    move v0, v5

    :goto_4f
    move v2, v7

    if-eq v0, v5, :cond_7c

    move-object v4, v10

    move-object v5, v4

    move/from16 v8, v18

    move v15, v8

    move/from16 v10, v20

    move/from16 v20, v22

    move-object/from16 v12, v25

    move-object/from16 v14, v27

    move/from16 v11, v32

    move-object/from16 v18, v35

    move v7, v0

    move-object v0, v13

    move-object/from16 v22, v21

    move-object v13, v3

    move/from16 v21, v9

    move/from16 v9, v16

    goto/16 :goto_0

    :cond_7c
    move v3, v9

    move-object v4, v10

    move-object v5, v4

    move/from16 v15, v18

    move/from16 v10, v20

    move/from16 v20, v22

    move-object/from16 v12, v25

    move-object/from16 v14, v27

    move/from16 v11, v32

    move-object/from16 v1, v34

    move-object/from16 v18, v35

    move v9, v0

    move/from16 v0, v16

    move-object/from16 v22, v21

    :goto_50
    if-ne v3, v0, :cond_7d

    if-eqz v0, :cond_7d

    move v7, v9

    const v2, 0xfffff

    move v9, v0

    move-object/from16 v0, v18

    goto :goto_51

    .line 15
    :cond_7d
    move-object v1, v5

    check-cast v1, Lcom/google/android/gms/internal/play_billing/l0;

    iget-object v7, v1, Lcom/google/android/gms/internal/play_billing/l0;->zzc:Lcom/google/android/gms/internal/play_billing/w1;

    if-ne v7, v8, :cond_7e

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/w1;->b()Lcom/google/android/gms/internal/play_billing/w1;

    move-result-object v7

    iput-object v7, v1, Lcom/google/android/gms/internal/play_billing/l0;->zzc:Lcom/google/android/gms/internal/play_billing/w1;

    :cond_7e
    move/from16 p1, v3

    move-object/from16 p2, v14

    move/from16 p3, v9

    move/from16 p4, v15

    move-object/from16 p5, v7

    move-object/from16 p6, v17

    .line 16
    invoke-static/range {p1 .. p6}, Lc1/b;->S(I[BIILcom/google/android/gms/internal/play_billing/w1;Lcom/google/android/gms/internal/play_billing/v;)I

    move-result v7

    move v9, v0

    move/from16 v16, v9

    move/from16 v21, v3

    move-object v0, v13

    move v8, v15

    move-object/from16 v13, v17

    goto/16 :goto_0

    :cond_7f
    move-object/from16 v34, v1

    move/from16 v20, v10

    move/from16 v32, v11

    move-object/from16 v25, v12

    move-object/from16 v35, v18

    move/from16 v18, v15

    move/from16 v3, v21

    move-object/from16 v0, v35

    const v2, 0xfffff

    :goto_51
    if-eq v10, v2, :cond_80

    int-to-long v5, v10

    invoke-virtual {v0, v4, v5, v6, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_80
    iget v0, v12, Lcom/google/android/gms/internal/play_billing/l1;->g:I

    :goto_52
    iget v2, v12, Lcom/google/android/gms/internal/play_billing/l1;->h:I

    if-ge v0, v2, :cond_83

    iget-object v2, v12, Lcom/google/android/gms/internal/play_billing/l1;->f:[I

    aget v2, v2, v0

    aget v5, v1, v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/play_billing/l1;->z(I)I

    move-result v5

    const v6, 0xfffff

    and-int/2addr v5, v6

    int-to-long v10, v5

    invoke-static {v4, v10, v11}, Lcom/google/android/gms/internal/play_billing/f2;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_81

    goto :goto_53

    .line 17
    :cond_81
    div-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v2

    add-int/lit8 v8, v2, 0x1

    iget-object v10, v12, Lcom/google/android/gms/internal/play_billing/l1;->b:[Ljava/lang/Object;

    aget-object v8, v10, v8

    check-cast v8, Lcom/google/android/gms/internal/play_billing/o0;

    if-nez v8, :cond_82

    :goto_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 18
    :cond_82
    check-cast v5, Lcom/google/android/gms/internal/play_billing/e1;

    .line 19
    aget-object v0, v10, v2

    .line 20
    invoke-static {v0}, La1/b;->j(Ljava/lang/Object;)V

    throw v23

    :cond_83
    if-nez v9, :cond_85

    if-ne v7, v15, :cond_84

    goto :goto_54

    :cond_84
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->c()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    :cond_85
    if-gt v7, v15, :cond_86

    if-ne v3, v9, :cond_86

    :goto_54
    return v7

    :cond_86
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u0;->c()Lcom/google/android/gms/internal/play_billing/u0;

    move-result-object v0

    throw v0

    .line 21
    :cond_87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mutating immutable message: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public final y(II)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/l1;->a:[I

    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    const/4 v2, -0x1

    add-int/2addr v1, v2

    :goto_0
    if-gt p2, v1, :cond_2

    add-int v3, v1, p2

    ushr-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v3, 0x3

    aget v5, v0, v4

    if-ne p1, v5, :cond_0

    return v4

    :cond_0
    if-ge p1, v5, :cond_1

    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final z(I)I
    .locals 1

    .line 1
    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/l1;->a:[I

    aget p1, v0, p1

    return p1
.end method
