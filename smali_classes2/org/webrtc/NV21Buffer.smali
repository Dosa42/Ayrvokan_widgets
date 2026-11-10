.class public Lorg/webrtc/NV21Buffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/u0;


# instance fields
.field public final a:[B

.field public final b:I

.field public final c:I

.field public final d:Ln2/a0;


# direct methods
.method public constructor <init>([BIILd3/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/NV21Buffer;->a:[B

    iput p2, p0, Lorg/webrtc/NV21Buffer;->b:I

    iput p3, p0, Lorg/webrtc/NV21Buffer;->c:I

    new-instance p1, Ln2/a0;

    invoke-direct {p1, p4}, Ln2/a0;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/webrtc/NV21Buffer;->d:Ln2/a0;

    return-void
.end method

.method private static native nativeCropAndScale(IIIIII[BIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)V
.end method


# virtual methods
.method public final a()Lorg/webrtc/JavaI420Buffer;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    iget v13, v0, Lorg/webrtc/NV21Buffer;->b:I

    .line 6
    .line 7
    iget v14, v0, Lorg/webrtc/NV21Buffer;->c:I

    .line 8
    .line 9
    add-int/lit8 v3, v14, 0x1

    .line 10
    .line 11
    div-int/lit8 v3, v3, 0x2

    .line 12
    .line 13
    add-int/lit8 v4, v13, 0x1

    .line 14
    .line 15
    div-int/lit8 v15, v4, 0x2

    .line 16
    .line 17
    mul-int v4, v13, v14

    .line 18
    .line 19
    add-int/lit8 v5, v4, 0x0

    .line 20
    .line 21
    mul-int v6, v15, v3

    .line 22
    .line 23
    add-int v7, v5, v6

    .line 24
    .line 25
    mul-int/lit8 v8, v15, 0x2

    .line 26
    .line 27
    mul-int/2addr v8, v3

    .line 28
    add-int/2addr v8, v4

    .line 29
    invoke-static {v8}, Lorg/webrtc/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    move-result-object v16

    .line 44
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    .line 53
    move-result-object v17

    .line 54
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 55
    .line 56
    .line 57
    add-int/2addr v7, v6

    .line 58
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    .line 64
    move-result-object v18

    .line 65
    new-instance v19, Lorg/webrtc/JavaI420Buffer;

    .line 66
    .line 67
    new-instance v12, Ld3/k0;

    .line 68
    .line 69
    invoke-direct {v12, v3, v4}, Ld3/k0;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 70
    .line 71
    .line 72
    move-object/from16 v3, v19

    .line 73
    .line 74
    move v4, v13

    .line 75
    move v5, v14

    .line 76
    move-object/from16 v6, v16

    .line 77
    .line 78
    move v7, v13

    .line 79
    move-object/from16 v8, v17

    .line 80
    .line 81
    move v9, v15

    .line 82
    move-object/from16 v10, v18

    .line 83
    .line 84
    move v11, v15

    .line 85
    invoke-direct/range {v3 .. v12}, Lorg/webrtc/JavaI420Buffer;-><init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILd3/k0;)V

    .line 86
    .line 87
    .line 88
    iget-object v7, v0, Lorg/webrtc/NV21Buffer;->a:[B

    .line 89
    .line 90
    iget v8, v0, Lorg/webrtc/NV21Buffer;->b:I

    .line 91
    .line 92
    iget v9, v0, Lorg/webrtc/NV21Buffer;->c:I

    .line 93
    .line 94
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    .line 105
    move-result-object v16

    .line 106
    move v3, v13

    .line 107
    move v4, v14

    .line 108
    move v5, v13

    .line 109
    move v6, v14

    .line 110
    move v11, v13

    .line 111
    move v13, v15

    .line 112
    move-object/from16 v14, v16

    .line 113
    .line 114
    invoke-static/range {v1 .. v15}, Lorg/webrtc/NV21Buffer;->nativeCropAndScale(IIIIII[BIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)V

    .line 115
    .line 116
    .line 117
    return-object v19
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/NV21Buffer;->d:Ln2/a0;

    invoke-virtual {v0}, Ln2/a0;->d()V

    return-void
.end method
