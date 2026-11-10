.class public final Ln2/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/u;
.implements La3/d0;
.implements Lx2/j;


# instance fields
.field public final synthetic f:I

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Ln2/a0;->f:I

    .line 1
    invoke-direct {p0, v0}, Ln2/a0;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Ln2/a0;->f:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x200

    invoke-direct {p1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object p1, p0, Ln2/a0;->g:Ljava/lang/Object;

    new-instance p1, Ljava/io/DataOutputStream;

    iget-object v0, p0, Ln2/a0;->g:Ljava/lang/Object;

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Ln2/a0;->h:Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 4
    iput p1, p0, Ln2/a0;->f:I

    iput-object p2, p0, Ln2/a0;->g:Ljava/lang/Object;

    iput-object p3, p0, Ln2/a0;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, Ln2/a0;->f:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ln2/a0;->g:Ljava/lang/Object;

    iput-object p1, p0, Ln2/a0;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Ln2/a0;->f:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p1, p0, Ln2/a0;->g:Ljava/lang/Object;

    iput-object p2, p0, Ln2/a0;->h:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Suffix must be provided."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ln2/c0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ln2/a0;->f:I

    .line 7
    iput-object p1, p0, Ln2/a0;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lb3/g;

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lb3/g;-><init>([B)V

    iput-object p1, p0, Ln2/a0;->g:Ljava/lang/Object;

    return-void
.end method

.method public static f(Ljava/io/DataOutputStream;J)V
    .locals 2

    .line 1
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method


# virtual methods
.method public final a(Lb3/l;Lk2/i;Ln2/e0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lb3/h;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lb3/h;->h()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x7

    .line 9
    invoke-virtual {p1, v0}, Lb3/h;->r(I)V

    .line 10
    .line 11
    .line 12
    iget v0, p1, Lb3/h;->b:I

    .line 13
    .line 14
    iget v1, p1, Lb3/h;->a:I

    .line 15
    .line 16
    sub-int/2addr v0, v1

    .line 17
    const/4 v1, 0x4

    .line 18
    div-int/2addr v0, v1

    .line 19
    const/4 v2, 0x0

    .line 20
    move v3, v2

    .line 21
    :goto_0
    if-ge v3, v0, :cond_2

    .line 22
    .line 23
    iget-object v4, p0, Ln2/a0;->g:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v4, Lb3/g;

    .line 26
    .line 27
    iget-object v5, v4, Lb3/g;->b:[B

    .line 28
    .line 29
    invoke-virtual {p1, v5, v2, v1}, Lb3/h;->a([BII)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v2}, Lb3/g;->i(I)V

    .line 33
    .line 34
    .line 35
    iget-object v4, p0, Ln2/a0;->g:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v4, Lb3/g;

    .line 38
    .line 39
    const/16 v5, 0x10

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Lb3/g;->e(I)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    iget-object v5, p0, Ln2/a0;->g:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v5, Lb3/g;

    .line 48
    .line 49
    const/4 v6, 0x3

    .line 50
    invoke-virtual {v5, v6}, Lb3/g;->l(I)V

    .line 51
    .line 52
    .line 53
    const/16 v5, 0xd

    .line 54
    .line 55
    if-nez v4, :cond_1

    .line 56
    .line 57
    iget-object v4, p0, Ln2/a0;->g:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v4, Lb3/g;

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Lb3/g;->l(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    iget-object v4, p0, Ln2/a0;->g:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v4, Lb3/g;

    .line 68
    .line 69
    invoke-virtual {v4, v5}, Lb3/g;->e(I)I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    iget-object v5, p0, Ln2/a0;->h:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v5, Ln2/c0;

    .line 76
    .line 77
    iget-object v6, v5, Ln2/c0;->d:Landroid/util/SparseArray;

    .line 78
    .line 79
    new-instance v7, Ln2/v;

    .line 80
    .line 81
    new-instance v8, Ln2/b0;

    .line 82
    .line 83
    invoke-direct {v8, v5, v4}, Ln2/b0;-><init>(Ln2/c0;I)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v7, v8}, Ln2/v;-><init>(Ln2/u;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object v4, p0, Ln2/a0;->h:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v4, Ln2/c0;

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    iget-object p1, p0, Ln2/a0;->h:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p1, Ln2/c0;

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final c(Landroid/net/Uri;La3/k;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ln2/a0;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La3/d0;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, La3/d0;->c(Landroid/net/Uri;La3/k;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ls2/a;

    .line 10
    .line 11
    iget-object p2, p0, Ln2/a0;->h:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p2, Ljava/util/List;

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p2, p0, Ln2/a0;->h:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p2, Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {p1, p2}, Ls2/a;->a(Ljava/util/List;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ls2/a;

    .line 33
    .line 34
    :cond_1
    :goto_0
    return-object p1
.end method

.method public final d()V
    .locals 4

    .line 1
    iget v0, p0, Ln2/a0;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Ln2/a0;->g:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ltz v0, :cond_1

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Ln2/a0;->h:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/lang/Runnable;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v1, "release() called on an object with refcount < 1"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :goto_0
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Ln2/a0;->g:Ljava/lang/Object;

    .line 39
    .line 40
    iget-object v1, p0, Ln2/a0;->h:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, [I

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    const/4 v3, 0x3

    .line 48
    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Ln2/a0;->h:Ljava/lang/Object;

    .line 52
    .line 53
    :cond_2
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln2/a0;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "retain() called on an object with refcount < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p(Lx2/e;)La3/d0;
    .locals 3

    .line 1
    new-instance v0, Ln2/a0;

    iget-object v1, p0, Ln2/a0;->g:Ljava/lang/Object;

    check-cast v1, Lx2/j;

    invoke-interface {v1, p1}, Lx2/j;->p(Lx2/e;)La3/d0;

    move-result-object p1

    iget-object v1, p0, Ln2/a0;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x2

    invoke-direct {v0, v2, p1, v1}, Ln2/a0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final t()La3/d0;
    .locals 4

    .line 1
    new-instance v0, Ln2/a0;

    iget-object v1, p0, Ln2/a0;->g:Ljava/lang/Object;

    check-cast v1, Lx2/j;

    invoke-interface {v1}, Lx2/j;->t()La3/d0;

    move-result-object v1

    iget-object v2, p0, Ln2/a0;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, Ln2/a0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Ln2/a0;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Ln2/a0;->g:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Le3/c;

    .line 14
    .line 15
    iget-object v1, p0, Ln2/a0;->h:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Ljava/util/Map;

    .line 18
    .line 19
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "VersionTagsTuple<%s, %s>"

    .line 24
    .line 25
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method
