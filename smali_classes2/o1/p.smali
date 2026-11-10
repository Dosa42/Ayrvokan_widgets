.class public final Lo1/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:[F

.field public static final k:[F

.field public static final l:[S


# instance fields
.field public final a:Ljava/nio/FloatBuffer;

.field public final b:Ljava/nio/FloatBuffer;

.field public final c:Ljava/nio/FloatBuffer;

.field public final d:Ljava/nio/ShortBuffer;

.field public e:F

.field public f:F

.field public final g:[F

.field public final h:[F

.field public final i:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lo1/p;->j:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lo1/p;->k:[F

    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_2

    sput-object v0, Lo1/p;->l:[S

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lo1/p;-><init>(FFFFF)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 6

    .line 2
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lo1/p;-><init>(FFFFF)V

    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 12

    .line 3
    move-object v11, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    new-array v1, v0, [F

    iput-object v1, v11, Lo1/p;->g:[F

    const/16 v1, 0x8

    new-array v2, v1, [F

    iput-object v2, v11, Lo1/p;->h:[F

    new-array v1, v1, [F

    iput-object v1, v11, Lo1/p;->i:[F

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v11, Lo1/p;->a:Ljava/nio/FloatBuffer;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v11, Lo1/p;->b:Ljava/nio/FloatBuffer;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v11, Lo1/p;->c:Ljava/nio/FloatBuffer;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, v11, Lo1/p;->d:Ljava/nio/ShortBuffer;

    sget-object v1, Lo1/p;->l:[S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v8, p4

    move/from16 v10, p5

    invoke-virtual/range {v0 .. v10}, Lo1/p;->a(FFFFFFFFFF)V

    return-void
.end method


# virtual methods
.method public final a(FFFFFFFFFF)V
    .locals 9

    .line 1
    move-object v0, p0

    move v1, p1

    move v2, p2

    iput v1, v0, Lo1/p;->e:F

    iput v2, v0, Lo1/p;->f:F

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, v0, Lo1/p;->g:[F

    array-length v6, v5

    if-ge v4, v6, :cond_0

    sget-object v6, Lo1/p;->j:[F

    aget v7, v6, v4

    mul-float/2addr v7, v1

    add-float/2addr v7, p4

    aput v7, v5, v4

    add-int/lit8 v7, v4, 0x1

    aget v8, v6, v7

    mul-float/2addr v8, v2

    add-float/2addr v8, p5

    aput v8, v5, v7

    add-int/lit8 v7, v4, 0x2

    aget v6, v6, v7

    mul-float/2addr v6, p3

    add-float/2addr v6, p6

    aput v6, v5, v7

    add-int/lit8 v4, v4, 0x3

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_1
    iget-object v2, v0, Lo1/p;->h:[F

    array-length v4, v2

    if-ge v1, v4, :cond_1

    sget-object v4, Lo1/p;->k:[F

    aget v6, v4, v1

    mul-float v6, v6, p7

    add-float v6, v6, p9

    aput v6, v2, v1

    add-int/lit8 v6, v1, 0x1

    aget v4, v4, v6

    mul-float v4, v4, p8

    add-float v4, v4, p10

    aput v4, v2, v6

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_2
    array-length v4, v2

    iget-object v6, v0, Lo1/p;->i:[F

    if-ge v1, v4, :cond_2

    aget v4, v2, v1

    aput v4, v6, v1

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    aget v4, v2, v1

    const/4 v7, 0x1

    aput v4, v6, v7

    aget v4, v2, v7

    aput v4, v6, v1

    const/4 v1, 0x7

    aget v4, v2, v1

    const/4 v7, 0x5

    aput v4, v6, v7

    aget v4, v2, v7

    aput v4, v6, v1

    iget-object v1, v0, Lo1/p;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, v0, Lo1/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, v0, Lo1/p;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
