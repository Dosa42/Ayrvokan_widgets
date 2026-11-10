.class public Lorg/webrtc/JavaI420Buffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/u0;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/nio/ByteBuffer;

.field public final d:Ljava/nio/ByteBuffer;

.field public final e:Ljava/nio/ByteBuffer;

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Ln2/a0;


# direct methods
.method public constructor <init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILd3/k0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/webrtc/JavaI420Buffer;->a:I

    iput p2, p0, Lorg/webrtc/JavaI420Buffer;->b:I

    iput-object p3, p0, Lorg/webrtc/JavaI420Buffer;->c:Ljava/nio/ByteBuffer;

    iput-object p5, p0, Lorg/webrtc/JavaI420Buffer;->d:Ljava/nio/ByteBuffer;

    iput-object p7, p0, Lorg/webrtc/JavaI420Buffer;->e:Ljava/nio/ByteBuffer;

    iput p4, p0, Lorg/webrtc/JavaI420Buffer;->f:I

    iput p6, p0, Lorg/webrtc/JavaI420Buffer;->g:I

    iput p8, p0, Lorg/webrtc/JavaI420Buffer;->h:I

    new-instance p1, Ln2/a0;

    invoke-direct {p1, p9}, Ln2/a0;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/webrtc/JavaI420Buffer;->i:Ln2/a0;

    return-void
.end method

.method public static b(ILjava/nio/ByteBuffer;II)V
    .locals 1

    .line 1
    add-int/lit8 p2, p2, -0x1

    mul-int/2addr p2, p3

    add-int/2addr p2, p0

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p0

    if-lt p0, p2, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Buffer must be at least "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes, but was "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Lorg/webrtc/JavaI420Buffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/JavaI420Buffer;->i:Ln2/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln2/a0;->e()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/JavaI420Buffer;->i:Ln2/a0;

    invoke-virtual {v0}, Ln2/a0;->d()V

    return-void
.end method
