.class public final Lf2/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lt2/d;
.implements Lf2/f;


# instance fields
.field public A:[Lf2/e0;

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:I

.field public G:Z

.field public H:Z

.field public I:I

.field public J:Lf2/q;

.field public K:J

.field public L:I

.field public final f:[Lf2/e0;

.field public final g:[Lf2/f0;

.field public final h:Lz2/n;

.field public final i:Landroidx/activity/result/c;

.field public final j:Lf2/e;

.field public final k:La3/d;

.field public final l:Lh/a;

.field public final m:Landroid/os/HandlerThread;

.field public final n:Landroid/os/Handler;

.field public final o:Lf2/k0;

.field public final p:Lf2/j0;

.field public final q:J

.field public final r:Z

.field public final s:Lf2/g;

.field public final t:Lf2/p;

.field public final u:Ljava/util/ArrayList;

.field public final v:Lb3/a;

.field public final w:Lf2/y;

.field public x:Lf2/h0;

.field public y:Lf2/a0;

.field public z:Lt2/g;


# direct methods
.method public constructor <init>([Lf2/e0;Lz2/n;Landroidx/activity/result/c;Lf2/e;La3/d;ZLe1/d;Lb3/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/r;->f:[Lf2/e0;

    iput-object p2, p0, Lf2/r;->h:Lz2/n;

    iput-object p3, p0, Lf2/r;->i:Landroidx/activity/result/c;

    iput-object p4, p0, Lf2/r;->j:Lf2/e;

    iput-object p5, p0, Lf2/r;->k:La3/d;

    iput-boolean p6, p0, Lf2/r;->C:Z

    const/4 p6, 0x0

    iput p6, p0, Lf2/r;->F:I

    iput-boolean p6, p0, Lf2/r;->G:Z

    iput-object p7, p0, Lf2/r;->n:Landroid/os/Handler;

    iput-object p8, p0, Lf2/r;->v:Lb3/a;

    new-instance p7, Lf2/y;

    invoke-direct {p7}, Lf2/y;-><init>()V

    iput-object p7, p0, Lf2/r;->w:Lf2/y;

    .line 1
    iget-wide v0, p4, Lf2/e;->i:J

    .line 2
    iput-wide v0, p0, Lf2/r;->q:J

    iget-boolean p4, p4, Lf2/e;->j:Z

    iput-boolean p4, p0, Lf2/r;->r:Z

    sget-object p4, Lf2/h0;->c:Lf2/h0;

    iput-object p4, p0, Lf2/r;->x:Lf2/h0;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v1, p3}, Lf2/a0;->d(JLandroidx/activity/result/c;)Lf2/a0;

    move-result-object p3

    iput-object p3, p0, Lf2/r;->y:Lf2/a0;

    new-instance p3, Lf2/p;

    invoke-direct {p3}, Lf2/p;-><init>()V

    iput-object p3, p0, Lf2/r;->t:Lf2/p;

    array-length p3, p1

    new-array p3, p3, [Lf2/f0;

    iput-object p3, p0, Lf2/r;->g:[Lf2/f0;

    move p3, p6

    :goto_0
    array-length p4, p1

    if-ge p3, p4, :cond_0

    aget-object p4, p1, p3

    invoke-interface {p4, p3}, Lf2/e0;->setIndex(I)V

    iget-object p4, p0, Lf2/r;->g:[Lf2/f0;

    aget-object p7, p1, p3

    invoke-interface {p7}, Lf2/e0;->getCapabilities()Lf2/f0;

    move-result-object p7

    aput-object p7, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lf2/g;

    invoke-direct {p1, p0, p8}, Lf2/g;-><init>(Lf2/f;Lb3/a;)V

    iput-object p1, p0, Lf2/r;->s:Lf2/g;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lf2/r;->u:Ljava/util/ArrayList;

    new-array p1, p6, [Lf2/e0;

    iput-object p1, p0, Lf2/r;->A:[Lf2/e0;

    new-instance p1, Lf2/k0;

    invoke-direct {p1}, Lf2/k0;-><init>()V

    iput-object p1, p0, Lf2/r;->o:Lf2/k0;

    new-instance p1, Lf2/j0;

    invoke-direct {p1}, Lf2/j0;-><init>()V

    iput-object p1, p0, Lf2/r;->p:Lf2/j0;

    .line 3
    iput-object p5, p2, Lz2/n;->a:La3/d;

    .line 4
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "ExoPlayerImplInternal:Handler"

    const/16 p3, -0x10

    invoke-direct {p1, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lf2/r;->m:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    check-cast p8, Ly0/i;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance p2, Lh/a;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    const/16 p1, 0x16

    invoke-direct {p2, p3, p1}, Lh/a;-><init>(Ljava/lang/Object;I)V

    .line 6
    iput-object p2, p0, Lf2/r;->l:Lh/a;

    return-void
.end method


# virtual methods
.method public final A(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lf2/r;->D:Z

    iput-boolean p1, p0, Lf2/r;->C:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lf2/r;->H()V

    invoke-virtual {p0}, Lf2/r;->K()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lf2/r;->y:Lf2/a0;

    iget p1, p1, Lf2/a0;->e:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lf2/r;->F()V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    :goto_0
    iget-object p1, p0, Lf2/r;->l:Lh/a;

    invoke-virtual {p1, v1}, Lh/a;->G(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final B(Lf2/b0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf2/r;->s:Lf2/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lf2/g;->b(Lf2/b0;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lf2/g;->a()Lf2/b0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lf2/r;->l:Lh/a;

    .line 11
    .line 12
    iget-object v0, v0, Lh/a;->g:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroid/os/Handler;

    .line 15
    .line 16
    const/16 v1, 0x11

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final C(I)V
    .locals 1

    .line 1
    iput p1, p0, Lf2/r;->F:I

    .line 2
    .line 3
    iget-object v0, p0, Lf2/r;->w:Lf2/y;

    .line 4
    .line 5
    iput p1, v0, Lf2/y;->e:I

    .line 6
    .line 7
    invoke-virtual {v0}, Lf2/y;->k()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lf2/r;->w(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Lf2/r;->h(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final D(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lf2/r;->G:Z

    .line 2
    .line 3
    iget-object v0, p0, Lf2/r;->w:Lf2/y;

    .line 4
    .line 5
    iput-boolean p1, v0, Lf2/y;->f:Z

    .line 6
    .line 7
    invoke-virtual {v0}, Lf2/y;->k()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lf2/r;->w(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Lf2/r;->h(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final E(I)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lf2/r;->y:Lf2/a0;

    .line 4
    .line 5
    iget v2, v1, Lf2/a0;->e:I

    .line 6
    .line 7
    move/from16 v10, p1

    .line 8
    .line 9
    if-eq v2, v10, :cond_0

    .line 10
    .line 11
    new-instance v2, Lf2/a0;

    .line 12
    .line 13
    move-object v3, v2

    .line 14
    iget-object v4, v1, Lf2/a0;->a:Lf2/l0;

    .line 15
    .line 16
    iget-object v5, v1, Lf2/a0;->b:Lt2/f;

    .line 17
    .line 18
    iget-wide v6, v1, Lf2/a0;->c:J

    .line 19
    .line 20
    iget-wide v8, v1, Lf2/a0;->d:J

    .line 21
    .line 22
    iget-object v11, v1, Lf2/a0;->f:Lf2/h;

    .line 23
    .line 24
    iget-boolean v12, v1, Lf2/a0;->g:Z

    .line 25
    .line 26
    iget-object v13, v1, Lf2/a0;->h:Lt2/x;

    .line 27
    .line 28
    iget-object v14, v1, Lf2/a0;->i:Landroidx/activity/result/c;

    .line 29
    .line 30
    iget-object v15, v1, Lf2/a0;->j:Lt2/f;

    .line 31
    .line 32
    move-object/from16 v22, v2

    .line 33
    .line 34
    move-object/from16 v23, v3

    .line 35
    .line 36
    iget-wide v2, v1, Lf2/a0;->k:J

    .line 37
    .line 38
    move-wide/from16 v16, v2

    .line 39
    .line 40
    iget-wide v2, v1, Lf2/a0;->l:J

    .line 41
    .line 42
    move-wide/from16 v18, v2

    .line 43
    .line 44
    iget-wide v1, v1, Lf2/a0;->m:J

    .line 45
    .line 46
    move-wide/from16 v20, v1

    .line 47
    .line 48
    move/from16 v10, p1

    .line 49
    .line 50
    move-object/from16 v3, v23

    .line 51
    .line 52
    invoke-direct/range {v3 .. v21}, Lf2/a0;-><init>(Lf2/l0;Lt2/f;JJILf2/h;ZLt2/x;Landroidx/activity/result/c;Lt2/f;JJJ)V

    .line 53
    .line 54
    .line 55
    move-object/from16 v1, v22

    .line 56
    .line 57
    iput-object v1, v0, Lf2/r;->y:Lf2/a0;

    .line 58
    .line 59
    :cond_0
    return-void
.end method

.method public final F()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lf2/r;->D:Z

    .line 3
    .line 4
    iget-object v1, p0, Lf2/r;->s:Lf2/g;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v1, Lf2/g;->b:Z

    .line 8
    .line 9
    iget-object v1, v1, Lf2/g;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lt2/o;

    .line 12
    .line 13
    invoke-virtual {v1}, Lt2/o;->e()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lf2/r;->A:[Lf2/e0;

    .line 17
    .line 18
    array-length v2, v1

    .line 19
    :goto_0
    if-ge v0, v2, :cond_0

    .line 20
    .line 21
    aget-object v3, v1, v0

    .line 22
    .line 23
    invoke-interface {v3}, Lf2/e0;->start()V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public final G(ZZZ)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    iget-boolean p1, p0, Lf2/r;->H:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v3, v0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    move v3, v1

    .line 13
    :goto_1
    const/4 v4, 0x1

    .line 14
    move-object v2, p0

    .line 15
    move v5, p2

    .line 16
    move v6, p2

    .line 17
    move v7, p2

    .line 18
    invoke-virtual/range {v2 .. v7}, Lf2/r;->s(ZZZZZ)V

    .line 19
    .line 20
    .line 21
    iget p1, p0, Lf2/r;->I:I

    .line 22
    .line 23
    add-int/2addr p1, p3

    .line 24
    iget-object p2, p0, Lf2/r;->t:Lf2/p;

    .line 25
    .line 26
    iget p3, p2, Lf2/p;->b:I

    .line 27
    .line 28
    add-int/2addr p3, p1

    .line 29
    iput p3, p2, Lf2/p;->b:I

    .line 30
    .line 31
    iput v0, p0, Lf2/r;->I:I

    .line 32
    .line 33
    iget-object p1, p0, Lf2/r;->j:Lf2/e;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lf2/e;->b(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lf2/r;->E(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final H()V
    .locals 6

    .line 1
    iget-object v0, p0, Lf2/r;->s:Lf2/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lf2/g;->b:Z

    .line 5
    .line 6
    iget-object v0, v0, Lf2/g;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lt2/o;

    .line 9
    .line 10
    iget-boolean v2, v0, Lt2/o;->a:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lt2/o;->c()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    invoke-virtual {v0, v2, v3}, Lt2/o;->d(J)V

    .line 19
    .line 20
    .line 21
    iput-boolean v1, v0, Lt2/o;->a:Z

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lf2/r;->A:[Lf2/e0;

    .line 24
    .line 25
    array-length v2, v0

    .line 26
    :goto_0
    if-ge v1, v2, :cond_2

    .line 27
    .line 28
    aget-object v3, v0, v1

    .line 29
    .line 30
    invoke-interface {v3}, Lf2/e0;->getState()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/4 v5, 0x2

    .line 35
    if-ne v4, v5, :cond_1

    .line 36
    .line 37
    invoke-interface {v3}, Lf2/e0;->stop()V

    .line 38
    .line 39
    .line 40
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return-void
.end method

.method public final I()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lf2/r;->w:Lf2/y;

    .line 4
    .line 5
    iget-object v1, v1, Lf2/y;->i:Lf2/w;

    .line 6
    .line 7
    iget-boolean v2, v0, Lf2/r;->E:Z

    .line 8
    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v1, Lf2/w;->a:Lt2/e;

    .line 14
    .line 15
    invoke-interface {v1}, Lt2/u;->e()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 25
    :goto_1
    move v11, v1

    .line 26
    iget-object v1, v0, Lf2/r;->y:Lf2/a0;

    .line 27
    .line 28
    iget-boolean v2, v1, Lf2/a0;->g:Z

    .line 29
    .line 30
    if-eq v11, v2, :cond_2

    .line 31
    .line 32
    new-instance v15, Lf2/a0;

    .line 33
    .line 34
    move-object v2, v15

    .line 35
    iget-object v3, v1, Lf2/a0;->a:Lf2/l0;

    .line 36
    .line 37
    iget-object v4, v1, Lf2/a0;->b:Lt2/f;

    .line 38
    .line 39
    iget-wide v5, v1, Lf2/a0;->c:J

    .line 40
    .line 41
    iget-wide v7, v1, Lf2/a0;->d:J

    .line 42
    .line 43
    iget v9, v1, Lf2/a0;->e:I

    .line 44
    .line 45
    iget-object v10, v1, Lf2/a0;->f:Lf2/h;

    .line 46
    .line 47
    iget-object v12, v1, Lf2/a0;->h:Lt2/x;

    .line 48
    .line 49
    iget-object v13, v1, Lf2/a0;->i:Landroidx/activity/result/c;

    .line 50
    .line 51
    iget-object v14, v1, Lf2/a0;->j:Lt2/f;

    .line 52
    .line 53
    move-object/from16 v21, v2

    .line 54
    .line 55
    move-object/from16 v22, v3

    .line 56
    .line 57
    iget-wide v2, v1, Lf2/a0;->k:J

    .line 58
    .line 59
    move-object/from16 v23, v15

    .line 60
    .line 61
    move-wide v15, v2

    .line 62
    iget-wide v2, v1, Lf2/a0;->l:J

    .line 63
    .line 64
    move-wide/from16 v17, v2

    .line 65
    .line 66
    iget-wide v1, v1, Lf2/a0;->m:J

    .line 67
    .line 68
    move-wide/from16 v19, v1

    .line 69
    .line 70
    move-object/from16 v2, v21

    .line 71
    .line 72
    move-object/from16 v3, v22

    .line 73
    .line 74
    invoke-direct/range {v2 .. v20}, Lf2/a0;-><init>(Lf2/l0;Lt2/f;JJILf2/h;ZLt2/x;Landroidx/activity/result/c;Lt2/f;JJJ)V

    .line 75
    .line 76
    .line 77
    move-object/from16 v1, v23

    .line 78
    .line 79
    iput-object v1, v0, Lf2/r;->y:Lf2/a0;

    .line 80
    .line 81
    :cond_2
    return-void
.end method

.method public final J(Landroidx/activity/result/c;)V
    .locals 7

    .line 1
    iget-object p1, p1, Landroidx/activity/result/c;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lz2/q;

    .line 4
    .line 5
    iget-object v0, p0, Lf2/r;->j:Lf2/e;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    iget-object v3, p0, Lf2/r;->f:[Lf2/e0;

    .line 13
    .line 14
    array-length v4, v3

    .line 15
    const/4 v5, 0x1

    .line 16
    if-ge v2, v4, :cond_1

    .line 17
    .line 18
    aget-object v4, v3, v2

    .line 19
    .line 20
    invoke-interface {v4}, Lf2/e0;->getTrackType()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const/4 v6, 0x2

    .line 25
    if-ne v4, v6, :cond_0

    .line 26
    .line 27
    iget-object v4, p1, Lz2/q;->b:[Lz2/p;

    .line 28
    .line 29
    aget-object v4, v4, v2

    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    move v2, v5

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v2, v1

    .line 39
    :goto_1
    iput-boolean v2, v0, Lf2/e;->m:Z

    .line 40
    .line 41
    iget v2, v0, Lf2/e;->g:I

    .line 42
    .line 43
    const/4 v4, -0x1

    .line 44
    if-ne v2, v4, :cond_3

    .line 45
    .line 46
    move v2, v1

    .line 47
    move v4, v2

    .line 48
    :goto_2
    array-length v6, v3

    .line 49
    if-ge v4, v6, :cond_3

    .line 50
    .line 51
    iget-object v6, p1, Lz2/q;->b:[Lz2/p;

    .line 52
    .line 53
    aget-object v6, v6, v4

    .line 54
    .line 55
    if-eqz v6, :cond_2

    .line 56
    .line 57
    aget-object v6, v3, v4

    .line 58
    .line 59
    invoke-interface {v6}, Lf2/e0;->getTrackType()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    packed-switch v6, :pswitch_data_0

    .line 64
    .line 65
    .line 66
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :pswitch_0
    move v6, v1

    .line 73
    goto :goto_3

    .line 74
    :pswitch_1
    const/high16 v6, 0x20000

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :pswitch_2
    const/high16 v6, 0x1f40000

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :pswitch_3
    const/high16 v6, 0x360000

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :pswitch_4
    const/high16 v6, 0x22c0000

    .line 84
    .line 85
    :goto_3
    add-int/2addr v2, v6

    .line 86
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    iput v2, v0, Lf2/e;->k:I

    .line 90
    .line 91
    iget-object p1, v0, Lf2/e;->a:La3/m;

    .line 92
    .line 93
    monitor-enter p1

    .line 94
    :try_start_0
    iget v0, p1, La3/m;->d:I

    .line 95
    .line 96
    if-ge v2, v0, :cond_4

    .line 97
    .line 98
    move v1, v5

    .line 99
    :cond_4
    iput v2, p1, La3/m;->d:I

    .line 100
    .line 101
    if-eqz v1, :cond_5

    .line 102
    .line 103
    invoke-virtual {p1}, La3/m;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    .line 106
    :cond_5
    monitor-exit p1

    .line 107
    return-void

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    monitor-exit p1

    .line 110
    throw v0

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final K()V
    .locals 12

    .line 1
    iget-object v0, p0, Lf2/r;->w:Lf2/y;

    .line 2
    .line 3
    iget-object v0, v0, Lf2/y;->g:Lf2/w;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v1, v0, Lf2/w;->d:Z

    .line 9
    .line 10
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lf2/w;->a:Lt2/e;

    .line 18
    .line 19
    invoke-interface {v1}, Lt2/e;->u()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    move-wide v8, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-wide v8, v2

    .line 26
    :goto_0
    cmp-long v1, v8, v2

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0, v8, v9}, Lf2/r;->t(J)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lf2/r;->y:Lf2/a0;

    .line 34
    .line 35
    iget-wide v0, v0, Lf2/a0;->m:J

    .line 36
    .line 37
    cmp-long v0, v8, v0

    .line 38
    .line 39
    if-eqz v0, :cond_d

    .line 40
    .line 41
    iget-object v0, p0, Lf2/r;->y:Lf2/a0;

    .line 42
    .line 43
    iget-object v7, v0, Lf2/a0;->b:Lt2/f;

    .line 44
    .line 45
    iget-wide v10, v0, Lf2/a0;->d:J

    .line 46
    .line 47
    move-object v6, p0

    .line 48
    invoke-virtual/range {v6 .. v11}, Lf2/r;->c(Lt2/f;JJ)Lf2/a0;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lf2/r;->y:Lf2/a0;

    .line 53
    .line 54
    iget-object v0, p0, Lf2/r;->t:Lf2/p;

    .line 55
    .line 56
    const/4 v1, 0x4

    .line 57
    invoke-virtual {v0, v1}, Lf2/p;->a(I)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_6

    .line 61
    .line 62
    :cond_2
    iget-object v1, p0, Lf2/r;->s:Lf2/g;

    .line 63
    .line 64
    iget-object v2, p0, Lf2/r;->w:Lf2/y;

    .line 65
    .line 66
    iget-object v2, v2, Lf2/y;->h:Lf2/w;

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    const/4 v4, 0x1

    .line 70
    if-eq v0, v2, :cond_3

    .line 71
    .line 72
    move v2, v4

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    move v2, v3

    .line 75
    :goto_1
    iget-object v5, v1, Lf2/g;->e:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v5, Lf2/e0;

    .line 78
    .line 79
    if-eqz v5, :cond_5

    .line 80
    .line 81
    invoke-interface {v5}, Lf2/e0;->isEnded()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-nez v5, :cond_5

    .line 86
    .line 87
    iget-object v5, v1, Lf2/g;->e:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v5, Lf2/e0;

    .line 90
    .line 91
    invoke-interface {v5}, Lf2/e0;->isReady()Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-nez v5, :cond_4

    .line 96
    .line 97
    if-nez v2, :cond_5

    .line 98
    .line 99
    iget-object v2, v1, Lf2/g;->e:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v2, Lf2/e0;

    .line 102
    .line 103
    invoke-interface {v2}, Lf2/e0;->hasReadStreamToEnd()Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_4

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    move v2, v3

    .line 111
    goto :goto_3

    .line 112
    :cond_5
    :goto_2
    move v2, v4

    .line 113
    :goto_3
    iget-object v5, v1, Lf2/g;->c:Ljava/lang/Object;

    .line 114
    .line 115
    if-eqz v2, :cond_6

    .line 116
    .line 117
    iput-boolean v4, v1, Lf2/g;->a:Z

    .line 118
    .line 119
    iget-boolean v2, v1, Lf2/g;->b:Z

    .line 120
    .line 121
    if-eqz v2, :cond_9

    .line 122
    .line 123
    check-cast v5, Lt2/o;

    .line 124
    .line 125
    invoke-virtual {v5}, Lt2/o;->e()V

    .line 126
    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_6
    iget-object v2, v1, Lf2/g;->f:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v2, Lb3/b;

    .line 132
    .line 133
    invoke-interface {v2}, Lb3/b;->c()J

    .line 134
    .line 135
    .line 136
    move-result-wide v6

    .line 137
    iget-boolean v2, v1, Lf2/g;->a:Z

    .line 138
    .line 139
    if-eqz v2, :cond_8

    .line 140
    .line 141
    move-object v2, v5

    .line 142
    check-cast v2, Lt2/o;

    .line 143
    .line 144
    invoke-virtual {v2}, Lt2/o;->c()J

    .line 145
    .line 146
    .line 147
    move-result-wide v8

    .line 148
    cmp-long v4, v6, v8

    .line 149
    .line 150
    if-gez v4, :cond_7

    .line 151
    .line 152
    iget-boolean v4, v2, Lt2/o;->a:Z

    .line 153
    .line 154
    if-eqz v4, :cond_9

    .line 155
    .line 156
    invoke-virtual {v2}, Lt2/o;->c()J

    .line 157
    .line 158
    .line 159
    move-result-wide v4

    .line 160
    invoke-virtual {v2, v4, v5}, Lt2/o;->d(J)V

    .line 161
    .line 162
    .line 163
    iput-boolean v3, v2, Lt2/o;->a:Z

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_7
    iput-boolean v3, v1, Lf2/g;->a:Z

    .line 167
    .line 168
    iget-boolean v4, v1, Lf2/g;->b:Z

    .line 169
    .line 170
    if-eqz v4, :cond_8

    .line 171
    .line 172
    invoke-virtual {v2}, Lt2/o;->e()V

    .line 173
    .line 174
    .line 175
    :cond_8
    check-cast v5, Lt2/o;

    .line 176
    .line 177
    invoke-virtual {v5, v6, v7}, Lt2/o;->d(J)V

    .line 178
    .line 179
    .line 180
    iget-object v2, v1, Lf2/g;->f:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v2, Lb3/b;

    .line 183
    .line 184
    invoke-interface {v2}, Lb3/b;->a()Lf2/b0;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    iget-object v4, v5, Lt2/o;->e:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v4, Lf2/b0;

    .line 191
    .line 192
    invoke-virtual {v2, v4}, Lf2/b0;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-nez v4, :cond_9

    .line 197
    .line 198
    invoke-virtual {v5, v2}, Lt2/o;->b(Lf2/b0;)V

    .line 199
    .line 200
    .line 201
    iget-object v4, v1, Lf2/g;->d:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v4, Lf2/f;

    .line 204
    .line 205
    check-cast v4, Lf2/r;

    .line 206
    .line 207
    iget-object v4, v4, Lf2/r;->l:Lh/a;

    .line 208
    .line 209
    iget-object v4, v4, Lh/a;->g:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v4, Landroid/os/Handler;

    .line 212
    .line 213
    const/16 v5, 0x11

    .line 214
    .line 215
    invoke-virtual {v4, v5, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 220
    .line 221
    .line 222
    :cond_9
    :goto_4
    invoke-virtual {v1}, Lf2/g;->c()J

    .line 223
    .line 224
    .line 225
    move-result-wide v1

    .line 226
    iput-wide v1, p0, Lf2/r;->K:J

    .line 227
    .line 228
    iget-wide v3, v0, Lf2/w;->n:J

    .line 229
    .line 230
    sub-long/2addr v1, v3

    .line 231
    iget-object v0, p0, Lf2/r;->y:Lf2/a0;

    .line 232
    .line 233
    iget-wide v3, v0, Lf2/a0;->m:J

    .line 234
    .line 235
    iget-object v0, p0, Lf2/r;->u:Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-nez v3, :cond_c

    .line 242
    .line 243
    iget-object v3, p0, Lf2/r;->y:Lf2/a0;

    .line 244
    .line 245
    iget-object v3, v3, Lf2/a0;->b:Lt2/f;

    .line 246
    .line 247
    invoke-virtual {v3}, Lt2/f;->a()Z

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    if-eqz v3, :cond_a

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_a
    iget-object v3, p0, Lf2/r;->y:Lf2/a0;

    .line 255
    .line 256
    iget-wide v4, v3, Lf2/a0;->c:J

    .line 257
    .line 258
    iget-object v4, v3, Lf2/a0;->a:Lf2/l0;

    .line 259
    .line 260
    iget-object v3, v3, Lf2/a0;->b:Lt2/f;

    .line 261
    .line 262
    iget-object v3, v3, Lt2/f;->a:Ljava/lang/Object;

    .line 263
    .line 264
    invoke-virtual {v4, v3}, Lf2/l0;->a(Ljava/lang/Object;)I

    .line 265
    .line 266
    .line 267
    iget v3, p0, Lf2/r;->L:I

    .line 268
    .line 269
    if-lez v3, :cond_b

    .line 270
    .line 271
    add-int/lit8 v3, v3, -0x1

    .line 272
    .line 273
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-static {v3}, La1/b;->j(Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    :cond_b
    iget v3, p0, Lf2/r;->L:I

    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    if-ge v3, v4, :cond_c

    .line 287
    .line 288
    iget v3, p0, Lf2/r;->L:I

    .line 289
    .line 290
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-static {v0}, La1/b;->j(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    :cond_c
    :goto_5
    iget-object v0, p0, Lf2/r;->y:Lf2/a0;

    .line 298
    .line 299
    iput-wide v1, v0, Lf2/a0;->m:J

    .line 300
    .line 301
    :cond_d
    :goto_6
    iget-object v0, p0, Lf2/r;->w:Lf2/y;

    .line 302
    .line 303
    iget-object v0, v0, Lf2/y;->i:Lf2/w;

    .line 304
    .line 305
    iget-object v1, p0, Lf2/r;->y:Lf2/a0;

    .line 306
    .line 307
    invoke-virtual {v0}, Lf2/w;->d()J

    .line 308
    .line 309
    .line 310
    move-result-wide v2

    .line 311
    iput-wide v2, v1, Lf2/a0;->k:J

    .line 312
    .line 313
    iget-object v0, p0, Lf2/r;->y:Lf2/a0;

    .line 314
    .line 315
    iget-wide v1, v0, Lf2/a0;->k:J

    .line 316
    .line 317
    iget-object v3, p0, Lf2/r;->w:Lf2/y;

    .line 318
    .line 319
    iget-object v3, v3, Lf2/y;->i:Lf2/w;

    .line 320
    .line 321
    const-wide/16 v4, 0x0

    .line 322
    .line 323
    if-nez v3, :cond_e

    .line 324
    .line 325
    goto :goto_7

    .line 326
    :cond_e
    iget-wide v6, p0, Lf2/r;->K:J

    .line 327
    .line 328
    iget-wide v8, v3, Lf2/w;->n:J

    .line 329
    .line 330
    sub-long/2addr v6, v8

    .line 331
    sub-long/2addr v1, v6

    .line 332
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 333
    .line 334
    .line 335
    move-result-wide v4

    .line 336
    :goto_7
    iput-wide v4, v0, Lf2/a0;->l:J

    .line 337
    .line 338
    return-void
.end method

.method public final L(Lf2/w;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lf2/r;->w:Lf2/y;

    .line 2
    .line 3
    iget-object v0, v0, Lf2/y;->g:Lf2/w;

    .line 4
    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget-object v1, p0, Lf2/r;->f:[Lf2/e0;

    .line 11
    .line 12
    array-length v2, v1

    .line 13
    new-array v2, v2, [Z

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    move v5, v4

    .line 18
    :goto_0
    array-length v6, v1

    .line 19
    if-ge v4, v6, :cond_5

    .line 20
    .line 21
    aget-object v6, v1, v4

    .line 22
    .line 23
    invoke-interface {v6}, Lf2/e0;->getState()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    if-eqz v7, :cond_1

    .line 28
    .line 29
    const/4 v7, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v7, v3

    .line 32
    :goto_1
    aput-boolean v7, v2, v4

    .line 33
    .line 34
    iget-object v7, v0, Lf2/w;->m:Landroidx/activity/result/c;

    .line 35
    .line 36
    invoke-virtual {v7, v4}, Landroidx/activity/result/c;->b(I)Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-eqz v7, :cond_2

    .line 41
    .line 42
    add-int/lit8 v5, v5, 0x1

    .line 43
    .line 44
    :cond_2
    aget-boolean v7, v2, v4

    .line 45
    .line 46
    if-eqz v7, :cond_4

    .line 47
    .line 48
    iget-object v7, v0, Lf2/w;->m:Landroidx/activity/result/c;

    .line 49
    .line 50
    invoke-virtual {v7, v4}, Landroidx/activity/result/c;->b(I)Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-eqz v7, :cond_3

    .line 55
    .line 56
    invoke-interface {v6}, Lf2/e0;->isCurrentStreamFinal()Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_4

    .line 61
    .line 62
    invoke-interface {v6}, Lf2/e0;->getStream()Lt2/s;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    iget-object v8, p1, Lf2/w;->c:[Lt2/s;

    .line 67
    .line 68
    aget-object v8, v8, v4

    .line 69
    .line 70
    if-ne v7, v8, :cond_4

    .line 71
    .line 72
    :cond_3
    invoke-virtual {p0, v6}, Lf2/r;->d(Lf2/e0;)V

    .line 73
    .line 74
    .line 75
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    iget-object p1, p0, Lf2/r;->y:Lf2/a0;

    .line 79
    .line 80
    iget-object v1, v0, Lf2/w;->l:Lt2/x;

    .line 81
    .line 82
    iget-object v0, v0, Lf2/w;->m:Landroidx/activity/result/c;

    .line 83
    .line 84
    invoke-virtual {p1, v1, v0}, Lf2/a0;->c(Lt2/x;Landroidx/activity/result/c;)Lf2/a0;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lf2/r;->y:Lf2/a0;

    .line 89
    .line 90
    invoke-virtual {p0, v2, v5}, Lf2/r;->f([ZI)V

    .line 91
    .line 92
    .line 93
    :cond_6
    :goto_2
    return-void
.end method

.method public final a(Lt2/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/r;->l:Lh/a;

    .line 2
    .line 3
    iget-object v0, v0, Lh/a;->g:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/os/Handler;

    .line 6
    .line 7
    const/16 v1, 0x9

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final b(Lt2/u;)V
    .locals 2

    .line 1
    check-cast p1, Lt2/e;

    .line 2
    .line 3
    iget-object v0, p0, Lf2/r;->l:Lh/a;

    .line 4
    .line 5
    iget-object v0, v0, Lh/a;->g:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroid/os/Handler;

    .line 8
    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final c(Lt2/f;JJ)Lf2/a0;
    .locals 10

    .line 1
    iget-object v0, p0, Lf2/r;->y:Lf2/a0;

    .line 2
    .line 3
    iget-wide v1, v0, Lf2/a0;->k:J

    .line 4
    .line 5
    iget-object v3, p0, Lf2/r;->w:Lf2/y;

    .line 6
    .line 7
    iget-object v3, v3, Lf2/y;->i:Lf2/w;

    .line 8
    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    move-wide v6, v4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-wide v6, p0, Lf2/r;->K:J

    .line 16
    .line 17
    iget-wide v8, v3, Lf2/w;->n:J

    .line 18
    .line 19
    sub-long/2addr v6, v8

    .line 20
    sub-long/2addr v1, v6

    .line 21
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    move-wide v6, v1

    .line 26
    :goto_0
    move-object v1, p1

    .line 27
    move-wide v2, p2

    .line 28
    move-wide v4, p4

    .line 29
    invoke-virtual/range {v0 .. v7}, Lf2/a0;->a(Lt2/f;JJJ)Lf2/a0;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public final d(Lf2/e0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/r;->s:Lf2/g;

    .line 2
    .line 3
    iget-object v1, v0, Lf2/g;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lf2/e0;

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Lf2/g;->f:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object v1, v0, Lf2/g;->e:Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, Lf2/g;->a:Z

    .line 16
    .line 17
    :cond_0
    invoke-interface {p1}, Lf2/e0;->getState()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x2

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    invoke-interface {p1}, Lf2/e0;->stop()V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-interface {p1}, Lf2/e0;->disable()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final e()V
    .locals 29

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    iget-object v0, v7, Lf2/r;->v:Lb3/a;

    .line 4
    .line 5
    check-cast v0, Ly0/i;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v8

    .line 14
    iget-object v0, v7, Lf2/r;->z:Lt2/g;

    .line 15
    .line 16
    const-wide/high16 v10, -0x8000000000000000L

    .line 17
    .line 18
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget v1, v7, Lf2/r;->I:I

    .line 27
    .line 28
    if-lez v1, :cond_4

    .line 29
    .line 30
    check-cast v0, Lw2/k;

    .line 31
    .line 32
    iget-object v0, v0, Lw2/k;->o:Lx2/l;

    .line 33
    .line 34
    check-cast v0, Lx2/b;

    .line 35
    .line 36
    iget-object v1, v0, Lx2/b;->m:La3/c0;

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1}, La3/c0;->a()V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v1, v0, Lx2/b;->q:Landroid/net/Uri;

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    iget-object v0, v0, Lx2/b;->i:Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lx2/a;

    .line 54
    .line 55
    iget-object v1, v0, Lx2/a;->g:La3/c0;

    .line 56
    .line 57
    invoke-virtual {v1}, La3/c0;->a()V

    .line 58
    .line 59
    .line 60
    iget-object v0, v0, Lx2/a;->o:Ljava/io/IOException;

    .line 61
    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    throw v0

    .line 66
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 67
    const/4 v10, 0x0

    .line 68
    goto/16 :goto_1e

    .line 69
    .line 70
    :cond_4
    iget-wide v0, v7, Lf2/r;->K:J

    .line 71
    .line 72
    iget-object v6, v7, Lf2/r;->w:Lf2/y;

    .line 73
    .line 74
    iget-object v2, v6, Lf2/y;->i:Lf2/w;

    .line 75
    .line 76
    if-eqz v2, :cond_6

    .line 77
    .line 78
    iget-object v3, v2, Lf2/w;->k:Lf2/w;

    .line 79
    .line 80
    if-nez v3, :cond_5

    .line 81
    .line 82
    const/4 v3, 0x1

    .line 83
    goto :goto_1

    .line 84
    :cond_5
    const/4 v3, 0x0

    .line 85
    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 86
    .line 87
    .line 88
    iget-boolean v3, v2, Lf2/w;->d:Z

    .line 89
    .line 90
    if-eqz v3, :cond_6

    .line 91
    .line 92
    iget-object v3, v2, Lf2/w;->a:Lt2/e;

    .line 93
    .line 94
    iget-wide v12, v2, Lf2/w;->n:J

    .line 95
    .line 96
    sub-long/2addr v0, v12

    .line 97
    invoke-interface {v3, v0, v1}, Lt2/u;->y(J)V

    .line 98
    .line 99
    .line 100
    :cond_6
    iget-object v0, v6, Lf2/y;->i:Lf2/w;

    .line 101
    .line 102
    if-eqz v0, :cond_a

    .line 103
    .line 104
    iget-object v1, v0, Lf2/w;->f:Lf2/x;

    .line 105
    .line 106
    iget-boolean v1, v1, Lf2/x;->g:Z

    .line 107
    .line 108
    if-nez v1, :cond_9

    .line 109
    .line 110
    iget-boolean v1, v0, Lf2/w;->d:Z

    .line 111
    .line 112
    if-eqz v1, :cond_8

    .line 113
    .line 114
    iget-boolean v1, v0, Lf2/w;->e:Z

    .line 115
    .line 116
    if-eqz v1, :cond_7

    .line 117
    .line 118
    iget-object v0, v0, Lf2/w;->a:Lt2/e;

    .line 119
    .line 120
    invoke-interface {v0}, Lt2/u;->m()J

    .line 121
    .line 122
    .line 123
    move-result-wide v0

    .line 124
    cmp-long v0, v0, v10

    .line 125
    .line 126
    if-nez v0, :cond_8

    .line 127
    .line 128
    :cond_7
    const/4 v0, 0x1

    .line 129
    goto :goto_2

    .line 130
    :cond_8
    const/4 v0, 0x0

    .line 131
    :goto_2
    if-eqz v0, :cond_9

    .line 132
    .line 133
    iget-object v0, v6, Lf2/y;->i:Lf2/w;

    .line 134
    .line 135
    iget-object v0, v0, Lf2/w;->f:Lf2/x;

    .line 136
    .line 137
    iget-wide v0, v0, Lf2/x;->e:J

    .line 138
    .line 139
    cmp-long v0, v0, v16

    .line 140
    .line 141
    if-eqz v0, :cond_9

    .line 142
    .line 143
    iget v0, v6, Lf2/y;->j:I

    .line 144
    .line 145
    const/16 v1, 0x64

    .line 146
    .line 147
    if-ge v0, v1, :cond_9

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_9
    const/4 v0, 0x0

    .line 151
    goto :goto_4

    .line 152
    :cond_a
    :goto_3
    const/4 v0, 0x1

    .line 153
    :goto_4
    if-eqz v0, :cond_16

    .line 154
    .line 155
    iget-wide v0, v7, Lf2/r;->K:J

    .line 156
    .line 157
    iget-object v2, v7, Lf2/r;->y:Lf2/a0;

    .line 158
    .line 159
    iget-object v3, v6, Lf2/y;->i:Lf2/w;

    .line 160
    .line 161
    if-nez v3, :cond_b

    .line 162
    .line 163
    iget-object v0, v2, Lf2/a0;->b:Lt2/f;

    .line 164
    .line 165
    iget-wide v1, v2, Lf2/a0;->c:J

    .line 166
    .line 167
    invoke-virtual {v6, v0, v1, v2}, Lf2/y;->d(Lt2/f;J)Lf2/x;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    goto :goto_5

    .line 172
    :cond_b
    invoke-virtual {v6, v3, v0, v1}, Lf2/y;->c(Lf2/w;J)Lf2/x;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    :goto_5
    if-nez v0, :cond_10

    .line 177
    .line 178
    iget-object v0, v6, Lf2/y;->i:Lf2/w;

    .line 179
    .line 180
    if-eqz v0, :cond_d

    .line 181
    .line 182
    iget-object v0, v7, Lf2/r;->A:[Lf2/e0;

    .line 183
    .line 184
    array-length v1, v0

    .line 185
    const/4 v2, 0x0

    .line 186
    :goto_6
    if-ge v2, v1, :cond_d

    .line 187
    .line 188
    aget-object v3, v0, v2

    .line 189
    .line 190
    invoke-interface {v3}, Lf2/e0;->hasReadStreamToEnd()Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-nez v3, :cond_c

    .line 195
    .line 196
    goto/16 :goto_a

    .line 197
    .line 198
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 199
    .line 200
    goto :goto_6

    .line 201
    :cond_d
    iget-object v0, v7, Lf2/r;->z:Lt2/g;

    .line 202
    .line 203
    check-cast v0, Lw2/k;

    .line 204
    .line 205
    iget-object v0, v0, Lw2/k;->o:Lx2/l;

    .line 206
    .line 207
    check-cast v0, Lx2/b;

    .line 208
    .line 209
    iget-object v1, v0, Lx2/b;->m:La3/c0;

    .line 210
    .line 211
    if-eqz v1, :cond_e

    .line 212
    .line 213
    invoke-virtual {v1}, La3/c0;->a()V

    .line 214
    .line 215
    .line 216
    :cond_e
    iget-object v1, v0, Lx2/b;->q:Landroid/net/Uri;

    .line 217
    .line 218
    if-eqz v1, :cond_16

    .line 219
    .line 220
    iget-object v0, v0, Lx2/b;->i:Ljava/util/HashMap;

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Lx2/a;

    .line 227
    .line 228
    iget-object v1, v0, Lx2/a;->g:La3/c0;

    .line 229
    .line 230
    invoke-virtual {v1}, La3/c0;->a()V

    .line 231
    .line 232
    .line 233
    iget-object v0, v0, Lx2/a;->o:Ljava/io/IOException;

    .line 234
    .line 235
    if-nez v0, :cond_f

    .line 236
    .line 237
    goto/16 :goto_a

    .line 238
    .line 239
    :cond_f
    throw v0

    .line 240
    :cond_10
    iget-object v1, v7, Lf2/r;->g:[Lf2/f0;

    .line 241
    .line 242
    iget-object v2, v7, Lf2/r;->h:Lz2/n;

    .line 243
    .line 244
    iget-object v3, v7, Lf2/r;->j:Lf2/e;

    .line 245
    .line 246
    iget-object v3, v3, Lf2/e;->a:La3/m;

    .line 247
    .line 248
    iget-object v4, v7, Lf2/r;->z:Lt2/g;

    .line 249
    .line 250
    iget-object v12, v7, Lf2/r;->i:Landroidx/activity/result/c;

    .line 251
    .line 252
    iget-object v13, v6, Lf2/y;->i:Lf2/w;

    .line 253
    .line 254
    iget-wide v10, v0, Lf2/x;->b:J

    .line 255
    .line 256
    if-nez v13, :cond_12

    .line 257
    .line 258
    iget-object v13, v0, Lf2/x;->a:Lt2/f;

    .line 259
    .line 260
    invoke-virtual {v13}, Lt2/f;->a()Z

    .line 261
    .line 262
    .line 263
    move-result v13

    .line 264
    if-eqz v13, :cond_11

    .line 265
    .line 266
    iget-wide v13, v0, Lf2/x;->c:J

    .line 267
    .line 268
    cmp-long v18, v13, v16

    .line 269
    .line 270
    if-eqz v18, :cond_11

    .line 271
    .line 272
    move-object/from16 v27, v6

    .line 273
    .line 274
    move-wide v5, v13

    .line 275
    goto :goto_7

    .line 276
    :cond_11
    move-object/from16 v27, v6

    .line 277
    .line 278
    const-wide/16 v20, 0x0

    .line 279
    .line 280
    goto :goto_8

    .line 281
    :cond_12
    move-object/from16 v27, v6

    .line 282
    .line 283
    iget-wide v5, v13, Lf2/w;->n:J

    .line 284
    .line 285
    iget-object v13, v13, Lf2/w;->f:Lf2/x;

    .line 286
    .line 287
    iget-wide v14, v13, Lf2/x;->e:J

    .line 288
    .line 289
    add-long/2addr v5, v14

    .line 290
    sub-long/2addr v5, v10

    .line 291
    :goto_7
    move-wide/from16 v20, v5

    .line 292
    .line 293
    :goto_8
    new-instance v5, Lf2/w;

    .line 294
    .line 295
    move-object/from16 v18, v5

    .line 296
    .line 297
    move-object/from16 v19, v1

    .line 298
    .line 299
    move-object/from16 v22, v2

    .line 300
    .line 301
    move-object/from16 v23, v3

    .line 302
    .line 303
    move-object/from16 v24, v4

    .line 304
    .line 305
    move-object/from16 v25, v0

    .line 306
    .line 307
    move-object/from16 v26, v12

    .line 308
    .line 309
    invoke-direct/range {v18 .. v26}, Lf2/w;-><init>([Lf2/f0;JLz2/n;La3/m;Lt2/g;Lf2/x;Landroidx/activity/result/c;)V

    .line 310
    .line 311
    .line 312
    move-object/from16 v0, v27

    .line 313
    .line 314
    iget-object v1, v0, Lf2/y;->i:Lf2/w;

    .line 315
    .line 316
    if-eqz v1, :cond_14

    .line 317
    .line 318
    iget-object v2, v1, Lf2/w;->k:Lf2/w;

    .line 319
    .line 320
    if-ne v5, v2, :cond_13

    .line 321
    .line 322
    goto :goto_9

    .line 323
    :cond_13
    invoke-virtual {v1}, Lf2/w;->b()V

    .line 324
    .line 325
    .line 326
    iput-object v5, v1, Lf2/w;->k:Lf2/w;

    .line 327
    .line 328
    invoke-virtual {v1}, Lf2/w;->c()V

    .line 329
    .line 330
    .line 331
    goto :goto_9

    .line 332
    :cond_14
    iput-object v5, v0, Lf2/y;->g:Lf2/w;

    .line 333
    .line 334
    iput-object v5, v0, Lf2/y;->h:Lf2/w;

    .line 335
    .line 336
    :goto_9
    const/4 v1, 0x0

    .line 337
    iput-object v1, v0, Lf2/y;->k:Ljava/lang/Object;

    .line 338
    .line 339
    iput-object v5, v0, Lf2/y;->i:Lf2/w;

    .line 340
    .line 341
    iget v1, v0, Lf2/y;->j:I

    .line 342
    .line 343
    const/16 v28, 0x1

    .line 344
    .line 345
    add-int/lit8 v1, v1, 0x1

    .line 346
    .line 347
    iput v1, v0, Lf2/y;->j:I

    .line 348
    .line 349
    iget-object v1, v5, Lf2/w;->a:Lt2/e;

    .line 350
    .line 351
    invoke-interface {v1, v7, v10, v11}, Lt2/e;->x(Lt2/d;J)V

    .line 352
    .line 353
    .line 354
    iget-object v1, v0, Lf2/y;->g:Lf2/w;

    .line 355
    .line 356
    if-ne v1, v5, :cond_15

    .line 357
    .line 358
    iget-object v1, v5, Lf2/w;->f:Lf2/x;

    .line 359
    .line 360
    iget-wide v1, v1, Lf2/x;->b:J

    .line 361
    .line 362
    iget-wide v3, v5, Lf2/w;->n:J

    .line 363
    .line 364
    add-long/2addr v1, v3

    .line 365
    invoke-virtual {v7, v1, v2}, Lf2/r;->t(J)V

    .line 366
    .line 367
    .line 368
    :cond_15
    const/4 v10, 0x0

    .line 369
    invoke-virtual {v7, v10}, Lf2/r;->h(Z)V

    .line 370
    .line 371
    .line 372
    goto :goto_b

    .line 373
    :cond_16
    :goto_a
    move-object v0, v6

    .line 374
    const/4 v10, 0x0

    .line 375
    const/16 v28, 0x1

    .line 376
    .line 377
    :goto_b
    iget-boolean v1, v7, Lf2/r;->E:Z

    .line 378
    .line 379
    if-eqz v1, :cond_1a

    .line 380
    .line 381
    iget-object v1, v7, Lf2/r;->w:Lf2/y;

    .line 382
    .line 383
    iget-object v1, v1, Lf2/y;->i:Lf2/w;

    .line 384
    .line 385
    if-nez v1, :cond_17

    .line 386
    .line 387
    :goto_c
    move v1, v10

    .line 388
    goto :goto_e

    .line 389
    :cond_17
    iget-boolean v2, v1, Lf2/w;->d:Z

    .line 390
    .line 391
    if-nez v2, :cond_18

    .line 392
    .line 393
    const-wide/16 v1, 0x0

    .line 394
    .line 395
    goto :goto_d

    .line 396
    :cond_18
    iget-object v1, v1, Lf2/w;->a:Lt2/e;

    .line 397
    .line 398
    invoke-interface {v1}, Lt2/u;->t()J

    .line 399
    .line 400
    .line 401
    move-result-wide v1

    .line 402
    :goto_d
    const-wide/high16 v3, -0x8000000000000000L

    .line 403
    .line 404
    cmp-long v1, v1, v3

    .line 405
    .line 406
    if-nez v1, :cond_19

    .line 407
    .line 408
    goto :goto_c

    .line 409
    :cond_19
    move/from16 v1, v28

    .line 410
    .line 411
    :goto_e
    iput-boolean v1, v7, Lf2/r;->E:Z

    .line 412
    .line 413
    invoke-virtual/range {p0 .. p0}, Lf2/r;->I()V

    .line 414
    .line 415
    .line 416
    goto :goto_f

    .line 417
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lf2/r;->n()V

    .line 418
    .line 419
    .line 420
    :goto_f
    iget-object v1, v0, Lf2/y;->h:Lf2/w;

    .line 421
    .line 422
    if-nez v1, :cond_1b

    .line 423
    .line 424
    goto/16 :goto_18

    .line 425
    .line 426
    :cond_1b
    iget-object v2, v1, Lf2/w;->k:Lf2/w;

    .line 427
    .line 428
    iget-object v3, v7, Lf2/r;->f:[Lf2/e0;

    .line 429
    .line 430
    if-nez v2, :cond_1d

    .line 431
    .line 432
    iget-object v2, v1, Lf2/w;->f:Lf2/x;

    .line 433
    .line 434
    iget-boolean v2, v2, Lf2/x;->g:Z

    .line 435
    .line 436
    if-eqz v2, :cond_28

    .line 437
    .line 438
    move v2, v10

    .line 439
    :goto_10
    array-length v4, v3

    .line 440
    if-ge v2, v4, :cond_28

    .line 441
    .line 442
    aget-object v4, v3, v2

    .line 443
    .line 444
    iget-object v5, v1, Lf2/w;->c:[Lt2/s;

    .line 445
    .line 446
    aget-object v5, v5, v2

    .line 447
    .line 448
    if-eqz v5, :cond_1c

    .line 449
    .line 450
    invoke-interface {v4}, Lf2/e0;->getStream()Lt2/s;

    .line 451
    .line 452
    .line 453
    move-result-object v6

    .line 454
    if-ne v6, v5, :cond_1c

    .line 455
    .line 456
    invoke-interface {v4}, Lf2/e0;->hasReadStreamToEnd()Z

    .line 457
    .line 458
    .line 459
    move-result v5

    .line 460
    if-eqz v5, :cond_1c

    .line 461
    .line 462
    invoke-interface {v4}, Lf2/e0;->setCurrentStreamFinal()V

    .line 463
    .line 464
    .line 465
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    .line 466
    .line 467
    goto :goto_10

    .line 468
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lf2/r;->l()Z

    .line 469
    .line 470
    .line 471
    move-result v2

    .line 472
    if-nez v2, :cond_1e

    .line 473
    .line 474
    goto/16 :goto_18

    .line 475
    .line 476
    :cond_1e
    iget-object v2, v1, Lf2/w;->k:Lf2/w;

    .line 477
    .line 478
    iget-boolean v2, v2, Lf2/w;->d:Z

    .line 479
    .line 480
    if-nez v2, :cond_1f

    .line 481
    .line 482
    goto/16 :goto_18

    .line 483
    .line 484
    :cond_1f
    iget-object v1, v1, Lf2/w;->m:Landroidx/activity/result/c;

    .line 485
    .line 486
    iget-object v2, v0, Lf2/y;->h:Lf2/w;

    .line 487
    .line 488
    if-eqz v2, :cond_20

    .line 489
    .line 490
    iget-object v2, v2, Lf2/w;->k:Lf2/w;

    .line 491
    .line 492
    if-eqz v2, :cond_20

    .line 493
    .line 494
    move/from16 v2, v28

    .line 495
    .line 496
    goto :goto_11

    .line 497
    :cond_20
    move v2, v10

    .line 498
    :goto_11
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 499
    .line 500
    .line 501
    iget-object v2, v0, Lf2/y;->h:Lf2/w;

    .line 502
    .line 503
    iget-object v2, v2, Lf2/w;->k:Lf2/w;

    .line 504
    .line 505
    iput-object v2, v0, Lf2/y;->h:Lf2/w;

    .line 506
    .line 507
    iget-object v4, v2, Lf2/w;->m:Landroidx/activity/result/c;

    .line 508
    .line 509
    iget-object v5, v2, Lf2/w;->a:Lt2/e;

    .line 510
    .line 511
    invoke-interface {v5}, Lt2/e;->u()J

    .line 512
    .line 513
    .line 514
    move-result-wide v5

    .line 515
    cmp-long v5, v5, v16

    .line 516
    .line 517
    if-eqz v5, :cond_22

    .line 518
    .line 519
    iget-object v1, v7, Lf2/r;->f:[Lf2/e0;

    .line 520
    .line 521
    array-length v2, v1

    .line 522
    move v3, v10

    .line 523
    :goto_12
    if-ge v3, v2, :cond_28

    .line 524
    .line 525
    aget-object v4, v1, v3

    .line 526
    .line 527
    invoke-interface {v4}, Lf2/e0;->getStream()Lt2/s;

    .line 528
    .line 529
    .line 530
    move-result-object v5

    .line 531
    if-eqz v5, :cond_21

    .line 532
    .line 533
    invoke-interface {v4}, Lf2/e0;->setCurrentStreamFinal()V

    .line 534
    .line 535
    .line 536
    :cond_21
    add-int/lit8 v3, v3, 0x1

    .line 537
    .line 538
    goto :goto_12

    .line 539
    :cond_22
    move v5, v10

    .line 540
    :goto_13
    array-length v6, v3

    .line 541
    if-ge v5, v6, :cond_28

    .line 542
    .line 543
    aget-object v6, v3, v5

    .line 544
    .line 545
    invoke-virtual {v1, v5}, Landroidx/activity/result/c;->b(I)Z

    .line 546
    .line 547
    .line 548
    move-result v11

    .line 549
    if-eqz v11, :cond_27

    .line 550
    .line 551
    invoke-interface {v6}, Lf2/e0;->isCurrentStreamFinal()Z

    .line 552
    .line 553
    .line 554
    move-result v11

    .line 555
    if-nez v11, :cond_27

    .line 556
    .line 557
    iget-object v11, v4, Landroidx/activity/result/c;->c:Ljava/lang/Object;

    .line 558
    .line 559
    check-cast v11, Lz2/q;

    .line 560
    .line 561
    iget-object v11, v11, Lz2/q;->b:[Lz2/p;

    .line 562
    .line 563
    aget-object v11, v11, v5

    .line 564
    .line 565
    invoke-virtual {v4, v5}, Landroidx/activity/result/c;->b(I)Z

    .line 566
    .line 567
    .line 568
    move-result v12

    .line 569
    iget-object v13, v7, Lf2/r;->g:[Lf2/f0;

    .line 570
    .line 571
    aget-object v13, v13, v5

    .line 572
    .line 573
    invoke-interface {v13}, Lf2/f0;->getTrackType()I

    .line 574
    .line 575
    .line 576
    move-result v13

    .line 577
    const/4 v14, 0x6

    .line 578
    if-ne v13, v14, :cond_23

    .line 579
    .line 580
    move/from16 v13, v28

    .line 581
    .line 582
    goto :goto_14

    .line 583
    :cond_23
    move v13, v10

    .line 584
    :goto_14
    iget-object v14, v1, Landroidx/activity/result/c;->b:Ljava/io/Serializable;

    .line 585
    .line 586
    check-cast v14, [Lf2/g0;

    .line 587
    .line 588
    aget-object v14, v14, v5

    .line 589
    .line 590
    iget-object v15, v4, Landroidx/activity/result/c;->b:Ljava/io/Serializable;

    .line 591
    .line 592
    check-cast v15, [Lf2/g0;

    .line 593
    .line 594
    aget-object v15, v15, v5

    .line 595
    .line 596
    if-eqz v12, :cond_26

    .line 597
    .line 598
    invoke-virtual {v15, v14}, Lf2/g0;->equals(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    move-result v12

    .line 602
    if-eqz v12, :cond_26

    .line 603
    .line 604
    if-nez v13, :cond_26

    .line 605
    .line 606
    if-eqz v11, :cond_24

    .line 607
    .line 608
    move-object v12, v11

    .line 609
    check-cast v12, Lz2/d;

    .line 610
    .line 611
    iget-object v12, v12, Lz2/d;->c:[I

    .line 612
    .line 613
    array-length v12, v12

    .line 614
    goto :goto_15

    .line 615
    :cond_24
    move v12, v10

    .line 616
    :goto_15
    new-array v13, v12, [Lf2/t;

    .line 617
    .line 618
    move v14, v10

    .line 619
    :goto_16
    if-ge v14, v12, :cond_25

    .line 620
    .line 621
    move-object v15, v11

    .line 622
    check-cast v15, Lz2/d;

    .line 623
    .line 624
    iget-object v15, v15, Lz2/d;->d:[Lf2/t;

    .line 625
    .line 626
    aget-object v15, v15, v14

    .line 627
    .line 628
    aput-object v15, v13, v14

    .line 629
    .line 630
    add-int/lit8 v14, v14, 0x1

    .line 631
    .line 632
    goto :goto_16

    .line 633
    :cond_25
    iget-object v11, v2, Lf2/w;->c:[Lt2/s;

    .line 634
    .line 635
    aget-object v11, v11, v5

    .line 636
    .line 637
    iget-wide v14, v2, Lf2/w;->n:J

    .line 638
    .line 639
    invoke-interface {v6, v13, v11, v14, v15}, Lf2/e0;->replaceStream([Lf2/t;Lt2/s;J)V

    .line 640
    .line 641
    .line 642
    goto :goto_17

    .line 643
    :cond_26
    invoke-interface {v6}, Lf2/e0;->setCurrentStreamFinal()V

    .line 644
    .line 645
    .line 646
    :cond_27
    :goto_17
    add-int/lit8 v5, v5, 0x1

    .line 647
    .line 648
    goto :goto_13

    .line 649
    :cond_28
    :goto_18
    move v1, v10

    .line 650
    :goto_19
    iget-boolean v2, v7, Lf2/r;->C:Z

    .line 651
    .line 652
    if-nez v2, :cond_29

    .line 653
    .line 654
    goto :goto_1a

    .line 655
    :cond_29
    iget-object v2, v0, Lf2/y;->g:Lf2/w;

    .line 656
    .line 657
    if-nez v2, :cond_2a

    .line 658
    .line 659
    goto :goto_1a

    .line 660
    :cond_2a
    iget-object v3, v2, Lf2/w;->k:Lf2/w;

    .line 661
    .line 662
    if-nez v3, :cond_2b

    .line 663
    .line 664
    goto :goto_1a

    .line 665
    :cond_2b
    iget-object v4, v0, Lf2/y;->h:Lf2/w;

    .line 666
    .line 667
    if-ne v2, v4, :cond_2c

    .line 668
    .line 669
    invoke-virtual/range {p0 .. p0}, Lf2/r;->l()Z

    .line 670
    .line 671
    .line 672
    move-result v2

    .line 673
    if-nez v2, :cond_2c

    .line 674
    .line 675
    goto :goto_1a

    .line 676
    :cond_2c
    iget-wide v4, v7, Lf2/r;->K:J

    .line 677
    .line 678
    iget-object v2, v3, Lf2/w;->f:Lf2/x;

    .line 679
    .line 680
    iget-wide v11, v2, Lf2/x;->b:J

    .line 681
    .line 682
    iget-wide v2, v3, Lf2/w;->n:J

    .line 683
    .line 684
    add-long/2addr v11, v2

    .line 685
    cmp-long v2, v4, v11

    .line 686
    .line 687
    if-ltz v2, :cond_2d

    .line 688
    .line 689
    move/from16 v2, v28

    .line 690
    .line 691
    goto :goto_1b

    .line 692
    :cond_2d
    :goto_1a
    move v2, v10

    .line 693
    :goto_1b
    if-eqz v2, :cond_32

    .line 694
    .line 695
    if-eqz v1, :cond_2e

    .line 696
    .line 697
    invoke-virtual/range {p0 .. p0}, Lf2/r;->o()V

    .line 698
    .line 699
    .line 700
    :cond_2e
    iget-object v11, v0, Lf2/y;->g:Lf2/w;

    .line 701
    .line 702
    iget-object v1, v0, Lf2/y;->h:Lf2/w;

    .line 703
    .line 704
    if-ne v11, v1, :cond_30

    .line 705
    .line 706
    iget-object v1, v7, Lf2/r;->f:[Lf2/e0;

    .line 707
    .line 708
    array-length v2, v1

    .line 709
    move v3, v10

    .line 710
    :goto_1c
    if-ge v3, v2, :cond_30

    .line 711
    .line 712
    aget-object v4, v1, v3

    .line 713
    .line 714
    invoke-interface {v4}, Lf2/e0;->getStream()Lt2/s;

    .line 715
    .line 716
    .line 717
    move-result-object v5

    .line 718
    if-eqz v5, :cond_2f

    .line 719
    .line 720
    invoke-interface {v4}, Lf2/e0;->setCurrentStreamFinal()V

    .line 721
    .line 722
    .line 723
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    .line 724
    .line 725
    goto :goto_1c

    .line 726
    :cond_30
    invoke-virtual {v0}, Lf2/y;->a()Lf2/w;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    invoke-virtual {v7, v11}, Lf2/r;->L(Lf2/w;)V

    .line 731
    .line 732
    .line 733
    iget-object v1, v1, Lf2/w;->f:Lf2/x;

    .line 734
    .line 735
    iget-object v2, v1, Lf2/x;->a:Lt2/f;

    .line 736
    .line 737
    iget-wide v3, v1, Lf2/x;->b:J

    .line 738
    .line 739
    iget-wide v5, v1, Lf2/x;->c:J

    .line 740
    .line 741
    move-object/from16 v1, p0

    .line 742
    .line 743
    move-object v12, v0

    .line 744
    move/from16 v0, v28

    .line 745
    .line 746
    invoke-virtual/range {v1 .. v6}, Lf2/r;->c(Lt2/f;JJ)Lf2/a0;

    .line 747
    .line 748
    .line 749
    move-result-object v1

    .line 750
    iput-object v1, v7, Lf2/r;->y:Lf2/a0;

    .line 751
    .line 752
    iget-object v1, v11, Lf2/w;->f:Lf2/x;

    .line 753
    .line 754
    iget-boolean v1, v1, Lf2/x;->f:Z

    .line 755
    .line 756
    if-eqz v1, :cond_31

    .line 757
    .line 758
    move v1, v10

    .line 759
    goto :goto_1d

    .line 760
    :cond_31
    const/4 v1, 0x3

    .line 761
    :goto_1d
    iget-object v2, v7, Lf2/r;->t:Lf2/p;

    .line 762
    .line 763
    invoke-virtual {v2, v1}, Lf2/p;->a(I)V

    .line 764
    .line 765
    .line 766
    invoke-virtual/range {p0 .. p0}, Lf2/r;->K()V

    .line 767
    .line 768
    .line 769
    move v1, v0

    .line 770
    move/from16 v28, v1

    .line 771
    .line 772
    move-object v0, v12

    .line 773
    goto :goto_19

    .line 774
    :cond_32
    move/from16 v0, v28

    .line 775
    .line 776
    :goto_1e
    iget-object v1, v7, Lf2/r;->y:Lf2/a0;

    .line 777
    .line 778
    iget v1, v1, Lf2/a0;->e:I

    .line 779
    .line 780
    const/4 v2, 0x2

    .line 781
    if-eq v1, v0, :cond_59

    .line 782
    .line 783
    const/4 v3, 0x4

    .line 784
    if-ne v1, v3, :cond_33

    .line 785
    .line 786
    goto/16 :goto_37

    .line 787
    .line 788
    :cond_33
    iget-object v1, v7, Lf2/r;->w:Lf2/y;

    .line 789
    .line 790
    iget-object v1, v1, Lf2/y;->g:Lf2/w;

    .line 791
    .line 792
    const-wide/16 v4, 0xa

    .line 793
    .line 794
    if-nez v1, :cond_34

    .line 795
    .line 796
    iget-object v0, v7, Lf2/r;->l:Lh/a;

    .line 797
    .line 798
    iget-object v1, v0, Lh/a;->g:Ljava/lang/Object;

    .line 799
    .line 800
    check-cast v1, Landroid/os/Handler;

    .line 801
    .line 802
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 803
    .line 804
    .line 805
    add-long/2addr v8, v4

    .line 806
    iget-object v0, v0, Lh/a;->g:Ljava/lang/Object;

    .line 807
    .line 808
    check-cast v0, Landroid/os/Handler;

    .line 809
    .line 810
    invoke-virtual {v0, v2, v8, v9}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 811
    .line 812
    .line 813
    return-void

    .line 814
    :cond_34
    const-string v6, "doSomeWork"

    .line 815
    .line 816
    sget v11, Lb3/n;->a:I

    .line 817
    .line 818
    const/16 v12, 0x12

    .line 819
    .line 820
    if-lt v11, v12, :cond_35

    .line 821
    .line 822
    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 823
    .line 824
    .line 825
    :cond_35
    invoke-virtual/range {p0 .. p0}, Lf2/r;->K()V

    .line 826
    .line 827
    .line 828
    iget-boolean v6, v1, Lf2/w;->d:Z

    .line 829
    .line 830
    const-wide/16 v13, 0x3e8

    .line 831
    .line 832
    if-eqz v6, :cond_3f

    .line 833
    .line 834
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 835
    .line 836
    .line 837
    move-result-wide v18

    .line 838
    mul-long v10, v18, v13

    .line 839
    .line 840
    iget-object v6, v1, Lf2/w;->a:Lt2/e;

    .line 841
    .line 842
    iget-object v15, v7, Lf2/r;->y:Lf2/a0;

    .line 843
    .line 844
    iget-wide v12, v15, Lf2/a0;->m:J

    .line 845
    .line 846
    iget-wide v14, v7, Lf2/r;->q:J

    .line 847
    .line 848
    sub-long/2addr v12, v14

    .line 849
    iget-boolean v14, v7, Lf2/r;->r:Z

    .line 850
    .line 851
    invoke-interface {v6, v12, v13, v14}, Lt2/e;->o(JZ)V

    .line 852
    .line 853
    .line 854
    move v6, v0

    .line 855
    move v12, v6

    .line 856
    const/4 v13, 0x0

    .line 857
    :goto_1f
    iget-object v14, v7, Lf2/r;->f:[Lf2/e0;

    .line 858
    .line 859
    array-length v15, v14

    .line 860
    if-ge v13, v15, :cond_3e

    .line 861
    .line 862
    aget-object v14, v14, v13

    .line 863
    .line 864
    invoke-interface {v14}, Lf2/e0;->getState()I

    .line 865
    .line 866
    .line 867
    move-result v15

    .line 868
    if-nez v15, :cond_36

    .line 869
    .line 870
    goto :goto_26

    .line 871
    :cond_36
    iget-wide v4, v7, Lf2/r;->K:J

    .line 872
    .line 873
    invoke-interface {v14, v4, v5, v10, v11}, Lf2/e0;->render(JJ)V

    .line 874
    .line 875
    .line 876
    if-eqz v6, :cond_37

    .line 877
    .line 878
    invoke-interface {v14}, Lf2/e0;->isEnded()Z

    .line 879
    .line 880
    .line 881
    move-result v4

    .line 882
    if-eqz v4, :cond_37

    .line 883
    .line 884
    move v5, v0

    .line 885
    goto :goto_20

    .line 886
    :cond_37
    const/4 v5, 0x0

    .line 887
    :goto_20
    iget-object v4, v1, Lf2/w;->c:[Lt2/s;

    .line 888
    .line 889
    aget-object v4, v4, v13

    .line 890
    .line 891
    invoke-interface {v14}, Lf2/e0;->getStream()Lt2/s;

    .line 892
    .line 893
    .line 894
    move-result-object v6

    .line 895
    if-eq v4, v6, :cond_38

    .line 896
    .line 897
    move v4, v0

    .line 898
    goto :goto_21

    .line 899
    :cond_38
    const/4 v4, 0x0

    .line 900
    :goto_21
    if-nez v4, :cond_39

    .line 901
    .line 902
    iget-object v6, v1, Lf2/w;->k:Lf2/w;

    .line 903
    .line 904
    if-eqz v6, :cond_39

    .line 905
    .line 906
    invoke-interface {v14}, Lf2/e0;->hasReadStreamToEnd()Z

    .line 907
    .line 908
    .line 909
    move-result v6

    .line 910
    if-eqz v6, :cond_39

    .line 911
    .line 912
    move v6, v0

    .line 913
    goto :goto_22

    .line 914
    :cond_39
    const/4 v6, 0x0

    .line 915
    :goto_22
    if-nez v4, :cond_3b

    .line 916
    .line 917
    if-nez v6, :cond_3b

    .line 918
    .line 919
    invoke-interface {v14}, Lf2/e0;->isReady()Z

    .line 920
    .line 921
    .line 922
    move-result v4

    .line 923
    if-nez v4, :cond_3b

    .line 924
    .line 925
    invoke-interface {v14}, Lf2/e0;->isEnded()Z

    .line 926
    .line 927
    .line 928
    move-result v4

    .line 929
    if-eqz v4, :cond_3a

    .line 930
    .line 931
    goto :goto_23

    .line 932
    :cond_3a
    const/4 v4, 0x0

    .line 933
    goto :goto_24

    .line 934
    :cond_3b
    :goto_23
    move v4, v0

    .line 935
    :goto_24
    if-eqz v12, :cond_3c

    .line 936
    .line 937
    if-eqz v4, :cond_3c

    .line 938
    .line 939
    move v6, v0

    .line 940
    goto :goto_25

    .line 941
    :cond_3c
    const/4 v6, 0x0

    .line 942
    :goto_25
    if-nez v4, :cond_3d

    .line 943
    .line 944
    invoke-interface {v14}, Lf2/e0;->maybeThrowStreamError()V

    .line 945
    .line 946
    .line 947
    :cond_3d
    move v12, v6

    .line 948
    move v6, v5

    .line 949
    :goto_26
    add-int/lit8 v13, v13, 0x1

    .line 950
    .line 951
    const-wide/16 v4, 0xa

    .line 952
    .line 953
    goto :goto_1f

    .line 954
    :cond_3e
    move v5, v6

    .line 955
    goto :goto_27

    .line 956
    :cond_3f
    iget-object v4, v1, Lf2/w;->a:Lt2/e;

    .line 957
    .line 958
    invoke-interface {v4}, Lt2/e;->n()V

    .line 959
    .line 960
    .line 961
    move v5, v0

    .line 962
    move v12, v5

    .line 963
    :goto_27
    iget-object v4, v1, Lf2/w;->f:Lf2/x;

    .line 964
    .line 965
    iget-wide v10, v4, Lf2/x;->e:J

    .line 966
    .line 967
    if-eqz v5, :cond_41

    .line 968
    .line 969
    iget-boolean v4, v1, Lf2/w;->d:Z

    .line 970
    .line 971
    if-eqz v4, :cond_41

    .line 972
    .line 973
    cmp-long v4, v10, v16

    .line 974
    .line 975
    if-eqz v4, :cond_40

    .line 976
    .line 977
    iget-object v4, v7, Lf2/r;->y:Lf2/a0;

    .line 978
    .line 979
    iget-wide v4, v4, Lf2/a0;->m:J

    .line 980
    .line 981
    cmp-long v4, v10, v4

    .line 982
    .line 983
    if-gtz v4, :cond_41

    .line 984
    .line 985
    :cond_40
    iget-object v1, v1, Lf2/w;->f:Lf2/x;

    .line 986
    .line 987
    iget-boolean v1, v1, Lf2/x;->g:Z

    .line 988
    .line 989
    if-eqz v1, :cond_41

    .line 990
    .line 991
    invoke-virtual {v7, v3}, Lf2/r;->E(I)V

    .line 992
    .line 993
    .line 994
    goto/16 :goto_32

    .line 995
    .line 996
    :cond_41
    iget-object v1, v7, Lf2/r;->y:Lf2/a0;

    .line 997
    .line 998
    iget v4, v1, Lf2/a0;->e:I

    .line 999
    .line 1000
    if-ne v4, v2, :cond_4f

    .line 1001
    .line 1002
    iget-object v4, v7, Lf2/r;->A:[Lf2/e0;

    .line 1003
    .line 1004
    array-length v4, v4

    .line 1005
    if-nez v4, :cond_42

    .line 1006
    .line 1007
    invoke-virtual/range {p0 .. p0}, Lf2/r;->m()Z

    .line 1008
    .line 1009
    .line 1010
    move-result v5

    .line 1011
    goto/16 :goto_31

    .line 1012
    .line 1013
    :cond_42
    if-nez v12, :cond_43

    .line 1014
    .line 1015
    goto/16 :goto_2f

    .line 1016
    .line 1017
    :cond_43
    iget-boolean v1, v1, Lf2/a0;->g:Z

    .line 1018
    .line 1019
    if-nez v1, :cond_44

    .line 1020
    .line 1021
    goto/16 :goto_30

    .line 1022
    .line 1023
    :cond_44
    iget-object v1, v7, Lf2/r;->w:Lf2/y;

    .line 1024
    .line 1025
    iget-object v1, v1, Lf2/y;->i:Lf2/w;

    .line 1026
    .line 1027
    iget-boolean v4, v1, Lf2/w;->d:Z

    .line 1028
    .line 1029
    if-eqz v4, :cond_46

    .line 1030
    .line 1031
    iget-boolean v4, v1, Lf2/w;->e:Z

    .line 1032
    .line 1033
    if-eqz v4, :cond_45

    .line 1034
    .line 1035
    iget-object v4, v1, Lf2/w;->a:Lt2/e;

    .line 1036
    .line 1037
    invoke-interface {v4}, Lt2/u;->m()J

    .line 1038
    .line 1039
    .line 1040
    move-result-wide v4

    .line 1041
    const-wide/high16 v10, -0x8000000000000000L

    .line 1042
    .line 1043
    cmp-long v4, v4, v10

    .line 1044
    .line 1045
    if-nez v4, :cond_46

    .line 1046
    .line 1047
    :cond_45
    move v5, v0

    .line 1048
    goto :goto_28

    .line 1049
    :cond_46
    const/4 v5, 0x0

    .line 1050
    :goto_28
    if-eqz v5, :cond_47

    .line 1051
    .line 1052
    iget-object v1, v1, Lf2/w;->f:Lf2/x;

    .line 1053
    .line 1054
    iget-boolean v1, v1, Lf2/x;->g:Z

    .line 1055
    .line 1056
    if-eqz v1, :cond_47

    .line 1057
    .line 1058
    move v5, v0

    .line 1059
    goto :goto_29

    .line 1060
    :cond_47
    const/4 v5, 0x0

    .line 1061
    :goto_29
    if-nez v5, :cond_4e

    .line 1062
    .line 1063
    iget-object v1, v7, Lf2/r;->y:Lf2/a0;

    .line 1064
    .line 1065
    iget-wide v4, v1, Lf2/a0;->k:J

    .line 1066
    .line 1067
    iget-object v1, v7, Lf2/r;->w:Lf2/y;

    .line 1068
    .line 1069
    iget-object v1, v1, Lf2/y;->i:Lf2/w;

    .line 1070
    .line 1071
    if-nez v1, :cond_48

    .line 1072
    .line 1073
    const-wide/16 v10, 0x0

    .line 1074
    .line 1075
    goto :goto_2a

    .line 1076
    :cond_48
    iget-wide v10, v7, Lf2/r;->K:J

    .line 1077
    .line 1078
    iget-wide v13, v1, Lf2/w;->n:J

    .line 1079
    .line 1080
    sub-long/2addr v10, v13

    .line 1081
    sub-long/2addr v4, v10

    .line 1082
    const-wide/16 v10, 0x0

    .line 1083
    .line 1084
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 1085
    .line 1086
    .line 1087
    move-result-wide v4

    .line 1088
    move-wide v10, v4

    .line 1089
    :goto_2a
    iget-object v1, v7, Lf2/r;->s:Lf2/g;

    .line 1090
    .line 1091
    invoke-virtual {v1}, Lf2/g;->a()Lf2/b0;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v1

    .line 1095
    iget v1, v1, Lf2/b0;->a:F

    .line 1096
    .line 1097
    iget-boolean v4, v7, Lf2/r;->D:Z

    .line 1098
    .line 1099
    iget-object v5, v7, Lf2/r;->j:Lf2/e;

    .line 1100
    .line 1101
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1102
    .line 1103
    .line 1104
    sget v6, Lb3/n;->a:I

    .line 1105
    .line 1106
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1107
    .line 1108
    cmpl-float v6, v1, v6

    .line 1109
    .line 1110
    if-nez v6, :cond_49

    .line 1111
    .line 1112
    goto :goto_2b

    .line 1113
    :cond_49
    long-to-double v10, v10

    .line 1114
    float-to-double v13, v1

    .line 1115
    div-double/2addr v10, v13

    .line 1116
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    .line 1117
    .line 1118
    .line 1119
    move-result-wide v10

    .line 1120
    :goto_2b
    if-eqz v4, :cond_4a

    .line 1121
    .line 1122
    iget-wide v13, v5, Lf2/e;->f:J

    .line 1123
    .line 1124
    goto :goto_2c

    .line 1125
    :cond_4a
    iget-wide v13, v5, Lf2/e;->e:J

    .line 1126
    .line 1127
    :goto_2c
    const-wide/16 v15, 0x0

    .line 1128
    .line 1129
    cmp-long v1, v13, v15

    .line 1130
    .line 1131
    if-lez v1, :cond_4c

    .line 1132
    .line 1133
    cmp-long v1, v10, v13

    .line 1134
    .line 1135
    if-gez v1, :cond_4c

    .line 1136
    .line 1137
    iget-boolean v1, v5, Lf2/e;->h:Z

    .line 1138
    .line 1139
    if-nez v1, :cond_4b

    .line 1140
    .line 1141
    iget-object v1, v5, Lf2/e;->a:La3/m;

    .line 1142
    .line 1143
    monitor-enter v1

    .line 1144
    :try_start_0
    iget v4, v1, La3/m;->e:I

    .line 1145
    .line 1146
    iget v6, v1, La3/m;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1147
    .line 1148
    mul-int/2addr v4, v6

    .line 1149
    monitor-exit v1

    .line 1150
    iget v1, v5, Lf2/e;->k:I

    .line 1151
    .line 1152
    if-lt v4, v1, :cond_4b

    .line 1153
    .line 1154
    goto :goto_2d

    .line 1155
    :catchall_0
    move-exception v0

    .line 1156
    monitor-exit v1

    .line 1157
    throw v0

    .line 1158
    :cond_4b
    const/4 v5, 0x0

    .line 1159
    goto :goto_2e

    .line 1160
    :cond_4c
    :goto_2d
    move v5, v0

    .line 1161
    :goto_2e
    if-eqz v5, :cond_4d

    .line 1162
    .line 1163
    goto :goto_30

    .line 1164
    :cond_4d
    :goto_2f
    const/4 v5, 0x0

    .line 1165
    goto :goto_31

    .line 1166
    :cond_4e
    :goto_30
    move v5, v0

    .line 1167
    :goto_31
    if-eqz v5, :cond_4f

    .line 1168
    .line 1169
    const/4 v0, 0x3

    .line 1170
    invoke-virtual {v7, v0}, Lf2/r;->E(I)V

    .line 1171
    .line 1172
    .line 1173
    iget-boolean v1, v7, Lf2/r;->C:Z

    .line 1174
    .line 1175
    if-eqz v1, :cond_52

    .line 1176
    .line 1177
    invoke-virtual/range {p0 .. p0}, Lf2/r;->F()V

    .line 1178
    .line 1179
    .line 1180
    goto :goto_33

    .line 1181
    :cond_4f
    const/4 v0, 0x3

    .line 1182
    iget-object v1, v7, Lf2/r;->y:Lf2/a0;

    .line 1183
    .line 1184
    iget v1, v1, Lf2/a0;->e:I

    .line 1185
    .line 1186
    if-ne v1, v0, :cond_52

    .line 1187
    .line 1188
    iget-object v0, v7, Lf2/r;->A:[Lf2/e0;

    .line 1189
    .line 1190
    array-length v0, v0

    .line 1191
    if-nez v0, :cond_50

    .line 1192
    .line 1193
    invoke-virtual/range {p0 .. p0}, Lf2/r;->m()Z

    .line 1194
    .line 1195
    .line 1196
    move-result v0

    .line 1197
    if-eqz v0, :cond_51

    .line 1198
    .line 1199
    goto :goto_33

    .line 1200
    :cond_50
    if-nez v12, :cond_52

    .line 1201
    .line 1202
    :cond_51
    iget-boolean v0, v7, Lf2/r;->C:Z

    .line 1203
    .line 1204
    iput-boolean v0, v7, Lf2/r;->D:Z

    .line 1205
    .line 1206
    invoke-virtual {v7, v2}, Lf2/r;->E(I)V

    .line 1207
    .line 1208
    .line 1209
    :goto_32
    invoke-virtual/range {p0 .. p0}, Lf2/r;->H()V

    .line 1210
    .line 1211
    .line 1212
    :cond_52
    :goto_33
    iget-object v0, v7, Lf2/r;->y:Lf2/a0;

    .line 1213
    .line 1214
    iget v0, v0, Lf2/a0;->e:I

    .line 1215
    .line 1216
    if-ne v0, v2, :cond_53

    .line 1217
    .line 1218
    iget-object v0, v7, Lf2/r;->A:[Lf2/e0;

    .line 1219
    .line 1220
    array-length v1, v0

    .line 1221
    const/4 v15, 0x0

    .line 1222
    :goto_34
    if-ge v15, v1, :cond_53

    .line 1223
    .line 1224
    aget-object v4, v0, v15

    .line 1225
    .line 1226
    invoke-interface {v4}, Lf2/e0;->maybeThrowStreamError()V

    .line 1227
    .line 1228
    .line 1229
    add-int/lit8 v15, v15, 0x1

    .line 1230
    .line 1231
    goto :goto_34

    .line 1232
    :cond_53
    iget-boolean v0, v7, Lf2/r;->C:Z

    .line 1233
    .line 1234
    if-eqz v0, :cond_54

    .line 1235
    .line 1236
    iget-object v0, v7, Lf2/r;->y:Lf2/a0;

    .line 1237
    .line 1238
    iget v0, v0, Lf2/a0;->e:I

    .line 1239
    .line 1240
    const/4 v1, 0x3

    .line 1241
    if-eq v0, v1, :cond_55

    .line 1242
    .line 1243
    :cond_54
    iget-object v0, v7, Lf2/r;->y:Lf2/a0;

    .line 1244
    .line 1245
    iget v0, v0, Lf2/a0;->e:I

    .line 1246
    .line 1247
    if-ne v0, v2, :cond_56

    .line 1248
    .line 1249
    :cond_55
    iget-object v0, v7, Lf2/r;->l:Lh/a;

    .line 1250
    .line 1251
    iget-object v1, v0, Lh/a;->g:Ljava/lang/Object;

    .line 1252
    .line 1253
    check-cast v1, Landroid/os/Handler;

    .line 1254
    .line 1255
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1256
    .line 1257
    .line 1258
    const-wide/16 v3, 0xa

    .line 1259
    .line 1260
    :goto_35
    add-long/2addr v8, v3

    .line 1261
    iget-object v0, v0, Lh/a;->g:Ljava/lang/Object;

    .line 1262
    .line 1263
    check-cast v0, Landroid/os/Handler;

    .line 1264
    .line 1265
    invoke-virtual {v0, v2, v8, v9}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 1266
    .line 1267
    .line 1268
    goto :goto_36

    .line 1269
    :cond_56
    iget-object v1, v7, Lf2/r;->A:[Lf2/e0;

    .line 1270
    .line 1271
    array-length v1, v1

    .line 1272
    if-eqz v1, :cond_57

    .line 1273
    .line 1274
    if-eq v0, v3, :cond_57

    .line 1275
    .line 1276
    iget-object v0, v7, Lf2/r;->l:Lh/a;

    .line 1277
    .line 1278
    iget-object v1, v0, Lh/a;->g:Ljava/lang/Object;

    .line 1279
    .line 1280
    check-cast v1, Landroid/os/Handler;

    .line 1281
    .line 1282
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1283
    .line 1284
    .line 1285
    const-wide/16 v3, 0x3e8

    .line 1286
    .line 1287
    goto :goto_35

    .line 1288
    :cond_57
    iget-object v0, v7, Lf2/r;->l:Lh/a;

    .line 1289
    .line 1290
    iget-object v0, v0, Lh/a;->g:Ljava/lang/Object;

    .line 1291
    .line 1292
    check-cast v0, Landroid/os/Handler;

    .line 1293
    .line 1294
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1295
    .line 1296
    .line 1297
    :goto_36
    sget v0, Lb3/n;->a:I

    .line 1298
    .line 1299
    const/16 v1, 0x12

    .line 1300
    .line 1301
    if-lt v0, v1, :cond_58

    .line 1302
    .line 1303
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1304
    .line 1305
    .line 1306
    :cond_58
    return-void

    .line 1307
    :cond_59
    :goto_37
    iget-object v0, v7, Lf2/r;->l:Lh/a;

    .line 1308
    .line 1309
    iget-object v0, v0, Lh/a;->g:Ljava/lang/Object;

    .line 1310
    .line 1311
    check-cast v0, Landroid/os/Handler;

    .line 1312
    .line 1313
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1314
    .line 1315
    .line 1316
    return-void
.end method

.method public final f([ZI)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    new-array v1, v1, [Lf2/e0;

    .line 6
    .line 7
    iput-object v1, v0, Lf2/r;->A:[Lf2/e0;

    .line 8
    .line 9
    iget-object v1, v0, Lf2/r;->w:Lf2/y;

    .line 10
    .line 11
    iget-object v2, v1, Lf2/y;->g:Lf2/w;

    .line 12
    .line 13
    iget-object v2, v2, Lf2/w;->m:Landroidx/activity/result/c;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    :goto_0
    iget-object v5, v0, Lf2/r;->f:[Lf2/e0;

    .line 17
    .line 18
    array-length v6, v5

    .line 19
    if-ge v4, v6, :cond_1

    .line 20
    .line 21
    invoke-virtual {v2, v4}, Landroidx/activity/result/c;->b(I)Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-nez v6, :cond_0

    .line 26
    .line 27
    aget-object v5, v5, v4

    .line 28
    .line 29
    invoke-interface {v5}, Lf2/e0;->reset()V

    .line 30
    .line 31
    .line 32
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v4, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    :goto_1
    array-length v7, v5

    .line 38
    if-ge v4, v7, :cond_b

    .line 39
    .line 40
    invoke-virtual {v2, v4}, Landroidx/activity/result/c;->b(I)Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-eqz v7, :cond_a

    .line 45
    .line 46
    aget-boolean v7, p1, v4

    .line 47
    .line 48
    add-int/lit8 v8, v6, 0x1

    .line 49
    .line 50
    iget-object v9, v1, Lf2/y;->g:Lf2/w;

    .line 51
    .line 52
    aget-object v14, v5, v4

    .line 53
    .line 54
    iget-object v10, v0, Lf2/r;->A:[Lf2/e0;

    .line 55
    .line 56
    aput-object v14, v10, v6

    .line 57
    .line 58
    invoke-interface {v14}, Lf2/e0;->getState()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-nez v6, :cond_8

    .line 63
    .line 64
    iget-object v6, v9, Lf2/w;->m:Landroidx/activity/result/c;

    .line 65
    .line 66
    iget-object v10, v6, Landroidx/activity/result/c;->b:Ljava/io/Serializable;

    .line 67
    .line 68
    check-cast v10, [Lf2/g0;

    .line 69
    .line 70
    aget-object v11, v10, v4

    .line 71
    .line 72
    iget-object v6, v6, Landroidx/activity/result/c;->c:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v6, Lz2/q;

    .line 75
    .line 76
    iget-object v6, v6, Lz2/q;->b:[Lz2/p;

    .line 77
    .line 78
    aget-object v6, v6, v4

    .line 79
    .line 80
    if-eqz v6, :cond_2

    .line 81
    .line 82
    move-object v10, v6

    .line 83
    check-cast v10, Lz2/d;

    .line 84
    .line 85
    iget-object v10, v10, Lz2/d;->c:[I

    .line 86
    .line 87
    array-length v10, v10

    .line 88
    goto :goto_2

    .line 89
    :cond_2
    const/4 v10, 0x0

    .line 90
    :goto_2
    new-array v12, v10, [Lf2/t;

    .line 91
    .line 92
    const/4 v13, 0x0

    .line 93
    :goto_3
    if-ge v13, v10, :cond_3

    .line 94
    .line 95
    move-object v15, v6

    .line 96
    check-cast v15, Lz2/d;

    .line 97
    .line 98
    iget-object v15, v15, Lz2/d;->d:[Lf2/t;

    .line 99
    .line 100
    aget-object v15, v15, v13

    .line 101
    .line 102
    aput-object v15, v12, v13

    .line 103
    .line 104
    add-int/lit8 v13, v13, 0x1

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_3
    iget-boolean v6, v0, Lf2/r;->C:Z

    .line 108
    .line 109
    const/4 v10, 0x1

    .line 110
    if-eqz v6, :cond_4

    .line 111
    .line 112
    iget-object v6, v0, Lf2/r;->y:Lf2/a0;

    .line 113
    .line 114
    iget v6, v6, Lf2/a0;->e:I

    .line 115
    .line 116
    const/4 v13, 0x3

    .line 117
    if-ne v6, v13, :cond_4

    .line 118
    .line 119
    move v6, v10

    .line 120
    goto :goto_4

    .line 121
    :cond_4
    const/4 v6, 0x0

    .line 122
    :goto_4
    if-nez v7, :cond_5

    .line 123
    .line 124
    if-eqz v6, :cond_5

    .line 125
    .line 126
    move/from16 v16, v10

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_5
    const/16 v16, 0x0

    .line 130
    .line 131
    :goto_5
    iget-object v7, v9, Lf2/w;->c:[Lt2/s;

    .line 132
    .line 133
    aget-object v13, v7, v4

    .line 134
    .line 135
    move v7, v4

    .line 136
    iget-wide v3, v0, Lf2/r;->K:J

    .line 137
    .line 138
    iget-wide v9, v9, Lf2/w;->n:J

    .line 139
    .line 140
    move-wide/from16 v17, v9

    .line 141
    .line 142
    move-object v10, v14

    .line 143
    move-object v9, v14

    .line 144
    move-wide v14, v3

    .line 145
    invoke-interface/range {v10 .. v18}, Lf2/e0;->enable(Lf2/g0;[Lf2/t;Lt2/s;JZJ)V

    .line 146
    .line 147
    .line 148
    iget-object v3, v0, Lf2/r;->s:Lf2/g;

    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-interface {v9}, Lf2/e0;->getMediaClock()Lb3/b;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    if-eqz v4, :cond_7

    .line 158
    .line 159
    iget-object v10, v3, Lf2/g;->f:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v10, Lb3/b;

    .line 162
    .line 163
    if-eq v4, v10, :cond_7

    .line 164
    .line 165
    if-nez v10, :cond_6

    .line 166
    .line 167
    iput-object v4, v3, Lf2/g;->f:Ljava/lang/Object;

    .line 168
    .line 169
    iput-object v9, v3, Lf2/g;->e:Ljava/lang/Object;

    .line 170
    .line 171
    iget-object v3, v3, Lf2/g;->c:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v3, Lt2/o;

    .line 174
    .line 175
    iget-object v3, v3, Lt2/o;->e:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v3, Lf2/b0;

    .line 178
    .line 179
    invoke-interface {v4, v3}, Lb3/b;->b(Lf2/b0;)V

    .line 180
    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 184
    .line 185
    const-string v2, "Multiple renderer media clocks enabled."

    .line 186
    .line 187
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    new-instance v2, Lf2/h;

    .line 191
    .line 192
    const/4 v3, 0x2

    .line 193
    invoke-direct {v2, v3, v1}, Lf2/h;-><init>(ILjava/lang/Throwable;)V

    .line 194
    .line 195
    .line 196
    throw v2

    .line 197
    :cond_7
    :goto_6
    if-eqz v6, :cond_9

    .line 198
    .line 199
    invoke-interface {v9}, Lf2/e0;->start()V

    .line 200
    .line 201
    .line 202
    goto :goto_7

    .line 203
    :cond_8
    move v7, v4

    .line 204
    :cond_9
    :goto_7
    move v6, v8

    .line 205
    goto :goto_8

    .line 206
    :cond_a
    move v7, v4

    .line 207
    :goto_8
    add-int/lit8 v4, v7, 0x1

    .line 208
    .line 209
    goto/16 :goto_1

    .line 210
    .line 211
    :cond_b
    return-void
.end method

.method public final g(Lt2/e;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lf2/r;->w:Lf2/y;

    .line 2
    .line 3
    iget-object v0, v0, Lf2/y;->i:Lf2/w;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v3, v0, Lf2/w;->a:Lt2/e;

    .line 10
    .line 11
    if-ne v3, p1, :cond_0

    .line 12
    .line 13
    move p1, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p1, v2

    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-wide v3, p0, Lf2/r;->K:J

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    iget-object p1, v0, Lf2/w;->k:Lf2/w;

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    move v1, v2

    .line 29
    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 30
    .line 31
    .line 32
    iget-boolean p1, v0, Lf2/w;->d:Z

    .line 33
    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    iget-object p1, v0, Lf2/w;->a:Lt2/e;

    .line 37
    .line 38
    iget-wide v0, v0, Lf2/w;->n:J

    .line 39
    .line 40
    sub-long/2addr v3, v0

    .line 41
    invoke-interface {p1, v3, v4}, Lt2/u;->y(J)V

    .line 42
    .line 43
    .line 44
    :cond_3
    invoke-virtual {p0}, Lf2/r;->n()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final h(Z)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lf2/r;->w:Lf2/y;

    .line 4
    .line 5
    iget-object v1, v1, Lf2/y;->i:Lf2/w;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v2, v0, Lf2/r;->y:Lf2/a0;

    .line 10
    .line 11
    iget-object v2, v2, Lf2/a0;->b:Lt2/f;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, v1, Lf2/w;->f:Lf2/x;

    .line 15
    .line 16
    iget-object v2, v2, Lf2/x;->a:Lt2/f;

    .line 17
    .line 18
    :goto_0
    move-object v15, v2

    .line 19
    iget-object v2, v0, Lf2/r;->y:Lf2/a0;

    .line 20
    .line 21
    iget-object v2, v2, Lf2/a0;->j:Lt2/f;

    .line 22
    .line 23
    invoke-virtual {v2, v15}, Lt2/f;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    xor-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget-object v14, v0, Lf2/r;->y:Lf2/a0;

    .line 32
    .line 33
    new-instance v13, Lf2/a0;

    .line 34
    .line 35
    move-object v3, v13

    .line 36
    iget-object v4, v14, Lf2/a0;->a:Lf2/l0;

    .line 37
    .line 38
    iget-object v5, v14, Lf2/a0;->b:Lt2/f;

    .line 39
    .line 40
    iget-wide v6, v14, Lf2/a0;->c:J

    .line 41
    .line 42
    iget-wide v8, v14, Lf2/a0;->d:J

    .line 43
    .line 44
    iget v10, v14, Lf2/a0;->e:I

    .line 45
    .line 46
    iget-object v11, v14, Lf2/a0;->f:Lf2/h;

    .line 47
    .line 48
    iget-boolean v12, v14, Lf2/a0;->g:Z

    .line 49
    .line 50
    move-object/from16 v16, v13

    .line 51
    .line 52
    iget-object v13, v14, Lf2/a0;->h:Lt2/x;

    .line 53
    .line 54
    move/from16 v22, v2

    .line 55
    .line 56
    move-object/from16 v2, v16

    .line 57
    .line 58
    move-object/from16 v23, v1

    .line 59
    .line 60
    iget-object v1, v14, Lf2/a0;->i:Landroidx/activity/result/c;

    .line 61
    .line 62
    move-object v0, v14

    .line 63
    move-object v14, v1

    .line 64
    move-object/from16 v24, v2

    .line 65
    .line 66
    iget-wide v1, v0, Lf2/a0;->k:J

    .line 67
    .line 68
    move-wide/from16 v16, v1

    .line 69
    .line 70
    iget-wide v1, v0, Lf2/a0;->l:J

    .line 71
    .line 72
    move-wide/from16 v18, v1

    .line 73
    .line 74
    iget-wide v0, v0, Lf2/a0;->m:J

    .line 75
    .line 76
    move-wide/from16 v20, v0

    .line 77
    .line 78
    invoke-direct/range {v3 .. v21}, Lf2/a0;-><init>(Lf2/l0;Lt2/f;JJILf2/h;ZLt2/x;Landroidx/activity/result/c;Lt2/f;JJJ)V

    .line 79
    .line 80
    .line 81
    move-object/from16 v0, p0

    .line 82
    .line 83
    move-object/from16 v1, v24

    .line 84
    .line 85
    iput-object v1, v0, Lf2/r;->y:Lf2/a0;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    move-object/from16 v23, v1

    .line 89
    .line 90
    move/from16 v22, v2

    .line 91
    .line 92
    :goto_1
    iget-object v1, v0, Lf2/r;->y:Lf2/a0;

    .line 93
    .line 94
    if-nez v23, :cond_2

    .line 95
    .line 96
    iget-wide v2, v1, Lf2/a0;->m:J

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_2
    invoke-virtual/range {v23 .. v23}, Lf2/w;->d()J

    .line 100
    .line 101
    .line 102
    move-result-wide v2

    .line 103
    :goto_2
    iput-wide v2, v1, Lf2/a0;->k:J

    .line 104
    .line 105
    iget-object v1, v0, Lf2/r;->y:Lf2/a0;

    .line 106
    .line 107
    iget-wide v2, v1, Lf2/a0;->k:J

    .line 108
    .line 109
    iget-object v4, v0, Lf2/r;->w:Lf2/y;

    .line 110
    .line 111
    iget-object v4, v4, Lf2/y;->i:Lf2/w;

    .line 112
    .line 113
    const-wide/16 v5, 0x0

    .line 114
    .line 115
    if-nez v4, :cond_3

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_3
    iget-wide v7, v0, Lf2/r;->K:J

    .line 119
    .line 120
    iget-wide v9, v4, Lf2/w;->n:J

    .line 121
    .line 122
    sub-long/2addr v7, v9

    .line 123
    sub-long/2addr v2, v7

    .line 124
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 125
    .line 126
    .line 127
    move-result-wide v5

    .line 128
    :goto_3
    iput-wide v5, v1, Lf2/a0;->l:J

    .line 129
    .line 130
    if-nez v22, :cond_4

    .line 131
    .line 132
    if-eqz p1, :cond_5

    .line 133
    .line 134
    :cond_4
    if-eqz v23, :cond_5

    .line 135
    .line 136
    move-object/from16 v1, v23

    .line 137
    .line 138
    iget-boolean v2, v1, Lf2/w;->d:Z

    .line 139
    .line 140
    if-eqz v2, :cond_5

    .line 141
    .line 142
    iget-object v1, v1, Lf2/w;->m:Landroidx/activity/result/c;

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Lf2/r;->J(Landroidx/activity/result/c;)V

    .line 145
    .line 146
    .line 147
    :cond_5
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    packed-switch v4, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    return v3

    .line 12
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v4, Lf2/b0;

    .line 15
    .line 16
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    move p1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move p1, v3

    .line 23
    :goto_0
    invoke-virtual {p0, v4, p1}, Lf2/r;->j(Lf2/b0;Z)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_7

    .line 27
    .line 28
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    throw v5

    .line 34
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    throw v5

    .line 40
    :pswitch_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 41
    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    move v4, v2

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move v4, v3

    .line 47
    :goto_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    .line 51
    invoke-virtual {p0, v4, p1}, Lf2/r;->z(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_7

    .line 55
    .line 56
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    move p1, v2

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    move p1, v3

    .line 63
    :goto_2
    invoke-virtual {p0, p1}, Lf2/r;->D(Z)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_7

    .line 67
    .line 68
    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lf2/r;->C(I)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_7

    .line 74
    .line 75
    :pswitch_6
    invoke-virtual {p0}, Lf2/r;->r()V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_7

    .line 79
    .line 80
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast p1, Lt2/e;

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lf2/r;->g(Lt2/e;)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_7

    .line 88
    .line 89
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast p1, Lt2/e;

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lf2/r;->i(Lt2/e;)V

    .line 94
    .line 95
    .line 96
    goto :goto_7

    .line 97
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p1, Lf2/o;

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lf2/r;->k(Lf2/o;)V

    .line 102
    .line 103
    .line 104
    goto :goto_7

    .line 105
    :pswitch_a
    invoke-virtual {p0}, Lf2/r;->q()V

    .line 106
    .line 107
    .line 108
    return v2

    .line 109
    :pswitch_b
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 110
    .line 111
    if-eqz p1, :cond_3

    .line 112
    .line 113
    move p1, v2

    .line 114
    goto :goto_3

    .line 115
    :cond_3
    move p1, v3

    .line 116
    :goto_3
    invoke-virtual {p0, v3, p1, v2}, Lf2/r;->G(ZZZ)V

    .line 117
    .line 118
    .line 119
    goto :goto_7

    .line 120
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p1, Lf2/h0;

    .line 123
    .line 124
    iput-object p1, p0, Lf2/r;->x:Lf2/h0;

    .line 125
    .line 126
    goto :goto_7

    .line 127
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast p1, Lf2/b0;

    .line 130
    .line 131
    invoke-virtual {p0, p1}, Lf2/r;->B(Lf2/b0;)V

    .line 132
    .line 133
    .line 134
    goto :goto_7

    .line 135
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast p1, Lf2/q;

    .line 138
    .line 139
    invoke-virtual {p0, p1}, Lf2/r;->x(Lf2/q;)V

    .line 140
    .line 141
    .line 142
    goto :goto_7

    .line 143
    :pswitch_f
    invoke-virtual {p0}, Lf2/r;->e()V

    .line 144
    .line 145
    .line 146
    goto :goto_7

    .line 147
    :pswitch_10
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 148
    .line 149
    if-eqz p1, :cond_4

    .line 150
    .line 151
    move p1, v2

    .line 152
    goto :goto_4

    .line 153
    :cond_4
    move p1, v3

    .line 154
    :goto_4
    invoke-virtual {p0, p1}, Lf2/r;->A(Z)V

    .line 155
    .line 156
    .line 157
    goto :goto_7

    .line 158
    :pswitch_11
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v4, Lt2/g;

    .line 161
    .line 162
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 163
    .line 164
    if-eqz v5, :cond_5

    .line 165
    .line 166
    move v5, v2

    .line 167
    goto :goto_5

    .line 168
    :cond_5
    move v5, v3

    .line 169
    :goto_5
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 170
    .line 171
    if-eqz p1, :cond_6

    .line 172
    .line 173
    move p1, v2

    .line 174
    goto :goto_6

    .line 175
    :cond_6
    move p1, v3

    .line 176
    :goto_6
    invoke-virtual {p0, v4, v5, p1}, Lf2/r;->p(Lt2/g;ZZ)V

    .line 177
    .line 178
    .line 179
    :goto_7
    invoke-virtual {p0}, Lf2/r;->o()V
    :try_end_0
    .catch Lf2/h; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .line 181
    .line 182
    goto/16 :goto_c

    .line 183
    .line 184
    :catch_0
    move-exception p1

    .line 185
    goto :goto_8

    .line 186
    :catch_1
    move-exception p1

    .line 187
    :goto_8
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/i0;->B(Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    instance-of v4, p1, Ljava/lang/OutOfMemoryError;

    .line 191
    .line 192
    if-eqz v4, :cond_7

    .line 193
    .line 194
    check-cast p1, Ljava/lang/OutOfMemoryError;

    .line 195
    .line 196
    new-instance v0, Lf2/h;

    .line 197
    .line 198
    invoke-direct {v0, v1, p1}, Lf2/h;-><init>(ILjava/lang/Throwable;)V

    .line 199
    .line 200
    .line 201
    goto :goto_9

    .line 202
    :cond_7
    check-cast p1, Ljava/lang/RuntimeException;

    .line 203
    .line 204
    new-instance v1, Lf2/h;

    .line 205
    .line 206
    invoke-direct {v1, v0, p1}, Lf2/h;-><init>(ILjava/lang/Throwable;)V

    .line 207
    .line 208
    .line 209
    move-object v0, v1

    .line 210
    :goto_9
    invoke-virtual {p0, v2, v3, v3}, Lf2/r;->G(ZZZ)V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lf2/r;->y:Lf2/a0;

    .line 214
    .line 215
    invoke-virtual {p1, v0}, Lf2/a0;->b(Lf2/h;)Lf2/a0;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    goto :goto_b

    .line 220
    :catch_2
    move-exception p1

    .line 221
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/i0;->B(Ljava/lang/Throwable;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, v3, v3, v3}, Lf2/r;->G(ZZZ)V

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lf2/r;->y:Lf2/a0;

    .line 228
    .line 229
    new-instance v1, Lf2/h;

    .line 230
    .line 231
    invoke-direct {v1, v3, p1}, Lf2/h;-><init>(ILjava/lang/Throwable;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v1}, Lf2/a0;->b(Lf2/h;)Lf2/a0;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    goto :goto_b

    .line 239
    :catch_3
    move-exception p1

    .line 240
    iget v4, p1, Lf2/h;->a:I

    .line 241
    .line 242
    if-eq v4, v2, :cond_8

    .line 243
    .line 244
    goto :goto_a

    .line 245
    :cond_8
    iget v4, p1, Lf2/h;->b:I

    .line 246
    .line 247
    iget-object v5, p0, Lf2/r;->f:[Lf2/e0;

    .line 248
    .line 249
    aget-object v4, v5, v4

    .line 250
    .line 251
    invoke-interface {v4}, Lf2/e0;->getTrackType()I

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    sget v5, Lb3/n;->a:I

    .line 256
    .line 257
    packed-switch v4, :pswitch_data_1

    .line 258
    .line 259
    .line 260
    const/16 v5, 0x2710

    .line 261
    .line 262
    if-lt v4, v5, :cond_9

    .line 263
    .line 264
    new-instance v5, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    const-string v6, "custom ("

    .line 267
    .line 268
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v4, ")"

    .line 275
    .line 276
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    :cond_9
    :pswitch_12
    iget-object v4, p1, Lf2/h;->c:Lf2/t;

    .line 280
    .line 281
    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    iget v4, p1, Lf2/h;->d:I

    .line 285
    .line 286
    if-eqz v4, :cond_b

    .line 287
    .line 288
    if-eq v4, v2, :cond_b

    .line 289
    .line 290
    if-eq v4, v0, :cond_b

    .line 291
    .line 292
    const/4 v0, 0x3

    .line 293
    if-eq v4, v0, :cond_b

    .line 294
    .line 295
    if-ne v4, v1, :cond_a

    .line 296
    .line 297
    goto :goto_a

    .line 298
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 299
    .line 300
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 301
    .line 302
    .line 303
    throw p1

    .line 304
    :cond_b
    :goto_a
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/i0;->B(Ljava/lang/Throwable;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0, v2, v3, v3}, Lf2/r;->G(ZZZ)V

    .line 308
    .line 309
    .line 310
    iget-object v0, p0, Lf2/r;->y:Lf2/a0;

    .line 311
    .line 312
    invoke-virtual {v0, p1}, Lf2/a0;->b(Lf2/h;)Lf2/a0;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    :goto_b
    iput-object p1, p0, Lf2/r;->y:Lf2/a0;

    .line 317
    .line 318
    invoke-virtual {p0}, Lf2/r;->o()V

    .line 319
    .line 320
    .line 321
    :goto_c
    return v2

    .line 322
    nop

    .line 323
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

    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public final i(Lt2/e;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lf2/r;->w:Lf2/y;

    .line 4
    .line 5
    iget-object v8, v1, Lf2/y;->i:Lf2/w;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v8, :cond_0

    .line 9
    .line 10
    iget-object v3, v8, Lf2/w;->a:Lt2/e;

    .line 11
    .line 12
    move-object/from16 v4, p1

    .line 13
    .line 14
    if-ne v3, v4, :cond_0

    .line 15
    .line 16
    move v3, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-nez v3, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v3, v0, Lf2/r;->s:Lf2/g;

    .line 23
    .line 24
    invoke-virtual {v3}, Lf2/g;->a()Lf2/b0;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iget v3, v3, Lf2/b0;->a:F

    .line 29
    .line 30
    iget-object v4, v0, Lf2/r;->y:Lf2/a0;

    .line 31
    .line 32
    iget-object v4, v4, Lf2/a0;->a:Lf2/l0;

    .line 33
    .line 34
    iput-boolean v2, v8, Lf2/w;->d:Z

    .line 35
    .line 36
    iget-object v2, v8, Lf2/w;->a:Lt2/e;

    .line 37
    .line 38
    invoke-interface {v2}, Lt2/e;->g()Lt2/x;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iput-object v2, v8, Lf2/w;->l:Lt2/x;

    .line 43
    .line 44
    invoke-virtual {v8, v3}, Lf2/w;->f(F)Landroidx/activity/result/c;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iget-object v2, v8, Lf2/w;->f:Lf2/x;

    .line 49
    .line 50
    iget-wide v4, v2, Lf2/x;->b:J

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    iget-object v2, v8, Lf2/w;->h:[Lf2/f0;

    .line 54
    .line 55
    array-length v2, v2

    .line 56
    new-array v7, v2, [Z

    .line 57
    .line 58
    move-object v2, v8

    .line 59
    invoke-virtual/range {v2 .. v7}, Lf2/w;->a(Landroidx/activity/result/c;JZ[Z)J

    .line 60
    .line 61
    .line 62
    move-result-wide v11

    .line 63
    iget-wide v2, v8, Lf2/w;->n:J

    .line 64
    .line 65
    iget-object v4, v8, Lf2/w;->f:Lf2/x;

    .line 66
    .line 67
    iget-wide v5, v4, Lf2/x;->b:J

    .line 68
    .line 69
    sub-long v9, v5, v11

    .line 70
    .line 71
    add-long/2addr v9, v2

    .line 72
    iput-wide v9, v8, Lf2/w;->n:J

    .line 73
    .line 74
    cmp-long v2, v11, v5

    .line 75
    .line 76
    if-nez v2, :cond_2

    .line 77
    .line 78
    move-object v3, v1

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    new-instance v2, Lf2/x;

    .line 81
    .line 82
    iget-object v10, v4, Lf2/x;->a:Lt2/f;

    .line 83
    .line 84
    iget-wide v13, v4, Lf2/x;->c:J

    .line 85
    .line 86
    iget-wide v5, v4, Lf2/x;->d:J

    .line 87
    .line 88
    move-object v3, v1

    .line 89
    iget-wide v0, v4, Lf2/x;->e:J

    .line 90
    .line 91
    iget-boolean v7, v4, Lf2/x;->f:Z

    .line 92
    .line 93
    iget-boolean v4, v4, Lf2/x;->g:Z

    .line 94
    .line 95
    move-object v9, v2

    .line 96
    move-wide v15, v5

    .line 97
    move-wide/from16 v17, v0

    .line 98
    .line 99
    move/from16 v19, v7

    .line 100
    .line 101
    move/from16 v20, v4

    .line 102
    .line 103
    invoke-direct/range {v9 .. v20}, Lf2/x;-><init>(Lt2/f;JJJJZZ)V

    .line 104
    .line 105
    .line 106
    move-object v4, v2

    .line 107
    :goto_1
    iput-object v4, v8, Lf2/w;->f:Lf2/x;

    .line 108
    .line 109
    iget-object v0, v8, Lf2/w;->m:Landroidx/activity/result/c;

    .line 110
    .line 111
    move-object/from16 v1, p0

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Lf2/r;->J(Landroidx/activity/result/c;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, v3, Lf2/y;->g:Lf2/w;

    .line 117
    .line 118
    if-ne v8, v0, :cond_3

    .line 119
    .line 120
    iget-object v0, v8, Lf2/w;->f:Lf2/x;

    .line 121
    .line 122
    iget-wide v2, v0, Lf2/x;->b:J

    .line 123
    .line 124
    invoke-virtual {v1, v2, v3}, Lf2/r;->t(J)V

    .line 125
    .line 126
    .line 127
    const/4 v0, 0x0

    .line 128
    invoke-virtual {v1, v0}, Lf2/r;->L(Lf2/w;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lf2/r;->n()V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final j(Lf2/b0;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lf2/r;->n:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 10
    .line 11
    .line 12
    iget p2, p1, Lf2/b0;->a:F

    .line 13
    .line 14
    iget-object v0, p0, Lf2/r;->w:Lf2/y;

    .line 15
    .line 16
    iget-object v0, v0, Lf2/y;->g:Lf2/w;

    .line 17
    .line 18
    :goto_0
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v1, v0, Lf2/w;->m:Landroidx/activity/result/c;

    .line 21
    .line 22
    iget-object v1, v1, Landroidx/activity/result/c;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lz2/q;

    .line 25
    .line 26
    iget-object v1, v1, Lz2/q;->b:[Lz2/p;

    .line 27
    .line 28
    invoke-virtual {v1}, [Lz2/p;->clone()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, [Lz2/p;

    .line 33
    .line 34
    array-length v3, v1

    .line 35
    move v4, v2

    .line 36
    :goto_1
    if-ge v4, v3, :cond_1

    .line 37
    .line 38
    aget-object v5, v1, v4

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    invoke-interface {v5, p2}, Lz2/p;->e(F)V

    .line 43
    .line 44
    .line 45
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget-object v0, v0, Lf2/w;->k:Lf2/w;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object p2, p0, Lf2/r;->f:[Lf2/e0;

    .line 52
    .line 53
    array-length v0, p2

    .line 54
    :goto_2
    if-ge v2, v0, :cond_4

    .line 55
    .line 56
    aget-object v1, p2, v2

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    iget v3, p1, Lf2/b0;->a:F

    .line 61
    .line 62
    invoke-interface {v1, v3}, Lf2/e0;->setOperatingRate(F)V

    .line 63
    .line 64
    .line 65
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    return-void
.end method

.method public final k(Lf2/o;)V
    .locals 37

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v1, v0, Lf2/o;->a:Lt2/g;

    .line 6
    .line 7
    iget-object v2, v6, Lf2/r;->z:Lt2/g;

    .line 8
    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, v6, Lf2/r;->t:Lf2/p;

    .line 13
    .line 14
    iget v2, v6, Lf2/r;->I:I

    .line 15
    .line 16
    iget v3, v1, Lf2/p;->b:I

    .line 17
    .line 18
    add-int/2addr v3, v2

    .line 19
    iput v3, v1, Lf2/p;->b:I

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    iput v7, v6, Lf2/r;->I:I

    .line 23
    .line 24
    iget-object v1, v6, Lf2/r;->y:Lf2/a0;

    .line 25
    .line 26
    iget-object v2, v1, Lf2/a0;->a:Lf2/l0;

    .line 27
    .line 28
    iget-object v0, v0, Lf2/o;->b:Lf2/l0;

    .line 29
    .line 30
    move-object v9, v0

    .line 31
    iget-object v3, v6, Lf2/r;->w:Lf2/y;

    .line 32
    .line 33
    iput-object v0, v3, Lf2/y;->d:Lf2/l0;

    .line 34
    .line 35
    new-instance v3, Lf2/a0;

    .line 36
    .line 37
    move-object v8, v3

    .line 38
    iget-object v10, v1, Lf2/a0;->b:Lt2/f;

    .line 39
    .line 40
    iget-wide v11, v1, Lf2/a0;->c:J

    .line 41
    .line 42
    iget-wide v13, v1, Lf2/a0;->d:J

    .line 43
    .line 44
    iget v15, v1, Lf2/a0;->e:I

    .line 45
    .line 46
    iget-object v4, v1, Lf2/a0;->f:Lf2/h;

    .line 47
    .line 48
    move-object/from16 v16, v4

    .line 49
    .line 50
    iget-boolean v4, v1, Lf2/a0;->g:Z

    .line 51
    .line 52
    move/from16 v17, v4

    .line 53
    .line 54
    iget-object v4, v1, Lf2/a0;->h:Lt2/x;

    .line 55
    .line 56
    move-object/from16 v18, v4

    .line 57
    .line 58
    iget-object v4, v1, Lf2/a0;->i:Landroidx/activity/result/c;

    .line 59
    .line 60
    move-object/from16 v19, v4

    .line 61
    .line 62
    iget-object v4, v1, Lf2/a0;->j:Lt2/f;

    .line 63
    .line 64
    move-object/from16 v20, v4

    .line 65
    .line 66
    iget-wide v4, v1, Lf2/a0;->k:J

    .line 67
    .line 68
    move-wide/from16 v21, v4

    .line 69
    .line 70
    iget-wide v4, v1, Lf2/a0;->l:J

    .line 71
    .line 72
    move-wide/from16 v23, v4

    .line 73
    .line 74
    iget-wide v4, v1, Lf2/a0;->m:J

    .line 75
    .line 76
    move-wide/from16 v25, v4

    .line 77
    .line 78
    invoke-direct/range {v8 .. v26}, Lf2/a0;-><init>(Lf2/l0;Lt2/f;JJILf2/h;ZLt2/x;Landroidx/activity/result/c;Lt2/f;JJJ)V

    .line 79
    .line 80
    .line 81
    iput-object v3, v6, Lf2/r;->y:Lf2/a0;

    .line 82
    .line 83
    iget-object v1, v6, Lf2/r;->u:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    const/4 v4, -0x1

    .line 90
    add-int/2addr v3, v4

    .line 91
    const/4 v5, 0x0

    .line 92
    if-gez v3, :cond_25

    .line 93
    .line 94
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, v6, Lf2/r;->y:Lf2/a0;

    .line 98
    .line 99
    iget-object v1, v1, Lf2/a0;->b:Lt2/f;

    .line 100
    .line 101
    invoke-virtual {v1}, Lt2/f;->a()Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_1

    .line 106
    .line 107
    iget-object v3, v6, Lf2/r;->y:Lf2/a0;

    .line 108
    .line 109
    iget-wide v8, v3, Lf2/a0;->d:J

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    iget-object v3, v6, Lf2/r;->y:Lf2/a0;

    .line 113
    .line 114
    iget-wide v8, v3, Lf2/a0;->m:J

    .line 115
    .line 116
    :goto_0
    move-wide v14, v8

    .line 117
    iget-object v3, v6, Lf2/r;->J:Lf2/q;

    .line 118
    .line 119
    const/4 v8, 0x4

    .line 120
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    const/4 v12, 0x1

    .line 126
    if-eqz v3, :cond_4

    .line 127
    .line 128
    invoke-virtual {v6, v3}, Lf2/r;->u(Lf2/q;)Landroid/util/Pair;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iput-object v5, v6, Lf2/r;->J:Lf2/q;

    .line 133
    .line 134
    if-nez v0, :cond_3

    .line 135
    .line 136
    iget-object v0, v6, Lf2/r;->y:Lf2/a0;

    .line 137
    .line 138
    iget v0, v0, Lf2/a0;->e:I

    .line 139
    .line 140
    if-eq v0, v12, :cond_2

    .line 141
    .line 142
    invoke-virtual {v6, v8}, Lf2/r;->E(I)V

    .line 143
    .line 144
    .line 145
    :cond_2
    const/4 v1, 0x0

    .line 146
    const/4 v2, 0x0

    .line 147
    const/4 v3, 0x1

    .line 148
    const/4 v4, 0x0

    .line 149
    const/4 v5, 0x1

    .line 150
    move-object/from16 v0, p0

    .line 151
    .line 152
    invoke-virtual/range {v0 .. v5}, Lf2/r;->s(ZZZZZ)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_3
    move-object v1, v0

    .line 157
    move-wide v3, v14

    .line 158
    goto/16 :goto_3

    .line 159
    .line 160
    :cond_4
    cmp-long v3, v14, v16

    .line 161
    .line 162
    if-nez v3, :cond_7

    .line 163
    .line 164
    invoke-virtual {v0}, Lf2/l0;->k()Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-nez v3, :cond_7

    .line 169
    .line 170
    invoke-virtual {v0}, Lf2/l0;->k()Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_5

    .line 175
    .line 176
    move v11, v4

    .line 177
    goto :goto_1

    .line 178
    :cond_5
    move v11, v7

    .line 179
    :goto_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    iget-object v9, v6, Lf2/r;->o:Lf2/k0;

    .line 185
    .line 186
    iget-object v10, v6, Lf2/r;->p:Lf2/j0;

    .line 187
    .line 188
    const-wide/16 v3, 0x0

    .line 189
    .line 190
    move-object v8, v0

    .line 191
    move v0, v12

    .line 192
    move-wide v12, v1

    .line 193
    move-wide v1, v14

    .line 194
    move-wide v14, v3

    .line 195
    invoke-virtual/range {v8 .. v15}, Lf2/l0;->f(Lf2/k0;Lf2/j0;IJJ)Landroid/util/Pair;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    iget-object v4, v6, Lf2/r;->w:Lf2/y;

    .line 203
    .line 204
    iget-object v8, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 205
    .line 206
    iget-object v9, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v9, Ljava/lang/Long;

    .line 209
    .line 210
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 211
    .line 212
    .line 213
    move-result-wide v9

    .line 214
    invoke-virtual {v4, v8, v9, v10}, Lf2/y;->i(Ljava/lang/Object;J)Lt2/f;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-virtual {v4}, Lt2/f;->a()Z

    .line 219
    .line 220
    .line 221
    move-result v8

    .line 222
    if-nez v8, :cond_6

    .line 223
    .line 224
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v3, Ljava/lang/Long;

    .line 227
    .line 228
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 229
    .line 230
    .line 231
    move-result-wide v14

    .line 232
    goto :goto_2

    .line 233
    :cond_6
    move-wide v14, v1

    .line 234
    :goto_2
    move-wide/from16 v35, v1

    .line 235
    .line 236
    move-object v1, v4

    .line 237
    move-wide/from16 v3, v35

    .line 238
    .line 239
    goto/16 :goto_4

    .line 240
    .line 241
    :cond_7
    move v3, v12

    .line 242
    iget-object v9, v1, Lt2/f;->a:Ljava/lang/Object;

    .line 243
    .line 244
    invoke-virtual {v0, v9}, Lf2/l0;->a(Ljava/lang/Object;)I

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    if-ne v9, v4, :cond_a

    .line 249
    .line 250
    iget-object v1, v1, Lt2/f;->a:Ljava/lang/Object;

    .line 251
    .line 252
    invoke-virtual {v6, v1, v2, v0}, Lf2/r;->v(Ljava/lang/Object;Lf2/l0;Lf2/l0;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    if-nez v1, :cond_9

    .line 257
    .line 258
    iget-object v0, v6, Lf2/r;->y:Lf2/a0;

    .line 259
    .line 260
    iget v0, v0, Lf2/a0;->e:I

    .line 261
    .line 262
    if-eq v0, v3, :cond_8

    .line 263
    .line 264
    invoke-virtual {v6, v8}, Lf2/r;->E(I)V

    .line 265
    .line 266
    .line 267
    :cond_8
    const/4 v1, 0x0

    .line 268
    const/4 v2, 0x0

    .line 269
    const/4 v3, 0x1

    .line 270
    const/4 v4, 0x0

    .line 271
    const/4 v5, 0x1

    .line 272
    move-object/from16 v0, p0

    .line 273
    .line 274
    invoke-virtual/range {v0 .. v5}, Lf2/r;->s(ZZZZZ)V

    .line 275
    .line 276
    .line 277
    return-void

    .line 278
    :cond_9
    iget-object v2, v6, Lf2/r;->p:Lf2/j0;

    .line 279
    .line 280
    invoke-virtual {v0, v1, v2}, Lf2/l0;->d(Ljava/lang/Object;Lf2/j0;)Lf2/j0;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    iget v11, v1, Lf2/j0;->b:I

    .line 285
    .line 286
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    iget-object v9, v6, Lf2/r;->o:Lf2/k0;

    .line 292
    .line 293
    iget-object v10, v6, Lf2/r;->p:Lf2/j0;

    .line 294
    .line 295
    const-wide/16 v1, 0x0

    .line 296
    .line 297
    move-object v8, v0

    .line 298
    move-wide v3, v14

    .line 299
    move-wide v14, v1

    .line 300
    invoke-virtual/range {v8 .. v15}, Lf2/l0;->f(Lf2/k0;Lf2/j0;IJJ)Landroid/util/Pair;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    :goto_3
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast v2, Ljava/lang/Long;

    .line 310
    .line 311
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 312
    .line 313
    .line 314
    move-result-wide v8

    .line 315
    iget-object v2, v6, Lf2/r;->w:Lf2/y;

    .line 316
    .line 317
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 318
    .line 319
    invoke-virtual {v2, v1, v8, v9}, Lf2/y;->i(Ljava/lang/Object;J)Lt2/f;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    move-wide v14, v8

    .line 324
    goto :goto_4

    .line 325
    :cond_a
    move-wide v3, v14

    .line 326
    iget-object v1, v6, Lf2/r;->w:Lf2/y;

    .line 327
    .line 328
    iget-object v2, v6, Lf2/r;->y:Lf2/a0;

    .line 329
    .line 330
    iget-object v2, v2, Lf2/a0;->b:Lt2/f;

    .line 331
    .line 332
    iget-object v2, v2, Lt2/f;->a:Ljava/lang/Object;

    .line 333
    .line 334
    invoke-virtual {v1, v2, v3, v4}, Lf2/y;->i(Ljava/lang/Object;J)Lt2/f;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    iget-object v2, v6, Lf2/r;->y:Lf2/a0;

    .line 339
    .line 340
    iget-object v2, v2, Lf2/a0;->b:Lt2/f;

    .line 341
    .line 342
    invoke-virtual {v2}, Lt2/f;->a()Z

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    if-nez v2, :cond_b

    .line 347
    .line 348
    invoke-virtual {v1}, Lt2/f;->a()Z

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    if-nez v2, :cond_b

    .line 353
    .line 354
    iget-object v1, v6, Lf2/r;->y:Lf2/a0;

    .line 355
    .line 356
    iget-object v1, v1, Lf2/a0;->b:Lt2/f;

    .line 357
    .line 358
    :cond_b
    move-wide v14, v3

    .line 359
    :goto_4
    iget-object v2, v6, Lf2/r;->y:Lf2/a0;

    .line 360
    .line 361
    iget-object v2, v2, Lf2/a0;->b:Lt2/f;

    .line 362
    .line 363
    invoke-virtual {v2, v1}, Lt2/f;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    const-wide/16 v8, 0x0

    .line 368
    .line 369
    if-eqz v2, :cond_1f

    .line 370
    .line 371
    cmp-long v2, v3, v14

    .line 372
    .line 373
    if-nez v2, :cond_1f

    .line 374
    .line 375
    iget-object v1, v6, Lf2/r;->w:Lf2/y;

    .line 376
    .line 377
    iget-wide v2, v6, Lf2/r;->K:J

    .line 378
    .line 379
    iget-object v4, v1, Lf2/y;->h:Lf2/w;

    .line 380
    .line 381
    const-wide/high16 v10, -0x8000000000000000L

    .line 382
    .line 383
    if-nez v4, :cond_c

    .line 384
    .line 385
    goto :goto_7

    .line 386
    :cond_c
    iget-wide v8, v4, Lf2/w;->n:J

    .line 387
    .line 388
    iget-boolean v12, v4, Lf2/w;->d:Z

    .line 389
    .line 390
    if-nez v12, :cond_d

    .line 391
    .line 392
    goto :goto_7

    .line 393
    :cond_d
    move v12, v7

    .line 394
    :goto_5
    iget-object v13, v6, Lf2/r;->f:[Lf2/e0;

    .line 395
    .line 396
    array-length v14, v13

    .line 397
    if-ge v12, v14, :cond_11

    .line 398
    .line 399
    aget-object v14, v13, v12

    .line 400
    .line 401
    invoke-interface {v14}, Lf2/e0;->getState()I

    .line 402
    .line 403
    .line 404
    move-result v14

    .line 405
    if-eqz v14, :cond_10

    .line 406
    .line 407
    aget-object v14, v13, v12

    .line 408
    .line 409
    invoke-interface {v14}, Lf2/e0;->getStream()Lt2/s;

    .line 410
    .line 411
    .line 412
    move-result-object v14

    .line 413
    iget-object v15, v4, Lf2/w;->c:[Lt2/s;

    .line 414
    .line 415
    aget-object v15, v15, v12

    .line 416
    .line 417
    if-eq v14, v15, :cond_e

    .line 418
    .line 419
    goto :goto_6

    .line 420
    :cond_e
    aget-object v13, v13, v12

    .line 421
    .line 422
    invoke-interface {v13}, Lf2/e0;->getReadingPositionUs()J

    .line 423
    .line 424
    .line 425
    move-result-wide v13

    .line 426
    cmp-long v15, v13, v10

    .line 427
    .line 428
    if-nez v15, :cond_f

    .line 429
    .line 430
    move-wide v8, v10

    .line 431
    goto :goto_7

    .line 432
    :cond_f
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 433
    .line 434
    .line 435
    move-result-wide v8

    .line 436
    :cond_10
    :goto_6
    add-int/lit8 v12, v12, 0x1

    .line 437
    .line 438
    goto :goto_5

    .line 439
    :cond_11
    :goto_7
    iget-object v4, v1, Lf2/y;->g:Lf2/w;

    .line 440
    .line 441
    move-object/from16 v35, v5

    .line 442
    .line 443
    move-object v5, v4

    .line 444
    move-object/from16 v4, v35

    .line 445
    .line 446
    :goto_8
    if-eqz v5, :cond_1e

    .line 447
    .line 448
    iget-object v12, v5, Lf2/w;->f:Lf2/x;

    .line 449
    .line 450
    if-nez v4, :cond_12

    .line 451
    .line 452
    invoke-virtual {v1, v12}, Lf2/y;->f(Lf2/x;)Lf2/x;

    .line 453
    .line 454
    .line 455
    move-result-object v4

    .line 456
    move-wide/from16 v19, v8

    .line 457
    .line 458
    const/4 v0, 0x1

    .line 459
    goto :goto_b

    .line 460
    :cond_12
    invoke-virtual {v1, v4, v2, v3}, Lf2/y;->c(Lf2/w;J)Lf2/x;

    .line 461
    .line 462
    .line 463
    move-result-object v13

    .line 464
    if-nez v13, :cond_13

    .line 465
    .line 466
    goto :goto_a

    .line 467
    :cond_13
    iget-wide v14, v12, Lf2/x;->b:J

    .line 468
    .line 469
    move-wide/from16 v19, v8

    .line 470
    .line 471
    iget-wide v7, v13, Lf2/x;->b:J

    .line 472
    .line 473
    cmp-long v7, v14, v7

    .line 474
    .line 475
    if-nez v7, :cond_14

    .line 476
    .line 477
    iget-object v7, v12, Lf2/x;->a:Lt2/f;

    .line 478
    .line 479
    iget-object v8, v13, Lf2/x;->a:Lt2/f;

    .line 480
    .line 481
    invoke-virtual {v7, v8}, Lt2/f;->equals(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v7

    .line 485
    if-eqz v7, :cond_14

    .line 486
    .line 487
    const/4 v7, 0x1

    .line 488
    goto :goto_9

    .line 489
    :cond_14
    const/4 v7, 0x0

    .line 490
    :goto_9
    if-nez v7, :cond_15

    .line 491
    .line 492
    :goto_a
    invoke-virtual {v1, v4}, Lf2/y;->h(Lf2/w;)Z

    .line 493
    .line 494
    .line 495
    move-result v1

    .line 496
    const/4 v0, 0x1

    .line 497
    xor-int v12, v0, v1

    .line 498
    .line 499
    goto/16 :goto_12

    .line 500
    .line 501
    :cond_15
    const/4 v0, 0x1

    .line 502
    move-object v4, v13

    .line 503
    :goto_b
    iget-wide v7, v12, Lf2/x;->c:J

    .line 504
    .line 505
    iget-wide v13, v4, Lf2/x;->c:J

    .line 506
    .line 507
    cmp-long v9, v7, v13

    .line 508
    .line 509
    if-nez v9, :cond_16

    .line 510
    .line 511
    move-object/from16 p1, v1

    .line 512
    .line 513
    move-wide/from16 v33, v2

    .line 514
    .line 515
    move-object v9, v4

    .line 516
    goto :goto_c

    .line 517
    :cond_16
    new-instance v9, Lf2/x;

    .line 518
    .line 519
    iget-object v13, v4, Lf2/x;->a:Lt2/f;

    .line 520
    .line 521
    iget-wide v14, v4, Lf2/x;->b:J

    .line 522
    .line 523
    iget-wide v10, v4, Lf2/x;->d:J

    .line 524
    .line 525
    move-object/from16 p1, v1

    .line 526
    .line 527
    iget-wide v0, v4, Lf2/x;->e:J

    .line 528
    .line 529
    move-wide/from16 v33, v2

    .line 530
    .line 531
    iget-boolean v2, v4, Lf2/x;->f:Z

    .line 532
    .line 533
    iget-boolean v3, v4, Lf2/x;->g:Z

    .line 534
    .line 535
    move-object/from16 v21, v9

    .line 536
    .line 537
    move-object/from16 v22, v13

    .line 538
    .line 539
    move-wide/from16 v23, v14

    .line 540
    .line 541
    move-wide/from16 v25, v7

    .line 542
    .line 543
    move-wide/from16 v27, v10

    .line 544
    .line 545
    move-wide/from16 v29, v0

    .line 546
    .line 547
    move/from16 v31, v2

    .line 548
    .line 549
    move/from16 v32, v3

    .line 550
    .line 551
    invoke-direct/range {v21 .. v32}, Lf2/x;-><init>(Lt2/f;JJJJZZ)V

    .line 552
    .line 553
    .line 554
    :goto_c
    iput-object v9, v5, Lf2/w;->f:Lf2/x;

    .line 555
    .line 556
    iget-wide v0, v12, Lf2/x;->e:J

    .line 557
    .line 558
    cmp-long v2, v0, v16

    .line 559
    .line 560
    iget-wide v3, v4, Lf2/x;->e:J

    .line 561
    .line 562
    if-eqz v2, :cond_18

    .line 563
    .line 564
    cmp-long v0, v0, v3

    .line 565
    .line 566
    if-nez v0, :cond_17

    .line 567
    .line 568
    goto :goto_d

    .line 569
    :cond_17
    const/4 v12, 0x0

    .line 570
    goto :goto_e

    .line 571
    :cond_18
    :goto_d
    const/4 v12, 0x1

    .line 572
    :goto_e
    if-nez v12, :cond_1d

    .line 573
    .line 574
    cmp-long v0, v3, v16

    .line 575
    .line 576
    if-nez v0, :cond_19

    .line 577
    .line 578
    const-wide v0, 0x7fffffffffffffffL

    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    goto :goto_f

    .line 584
    :cond_19
    iget-wide v0, v5, Lf2/w;->n:J

    .line 585
    .line 586
    add-long/2addr v0, v3

    .line 587
    :goto_f
    move-object/from16 v2, p1

    .line 588
    .line 589
    iget-object v3, v2, Lf2/y;->h:Lf2/w;

    .line 590
    .line 591
    if-ne v5, v3, :cond_1b

    .line 592
    .line 593
    const-wide/high16 v3, -0x8000000000000000L

    .line 594
    .line 595
    cmp-long v3, v19, v3

    .line 596
    .line 597
    if-eqz v3, :cond_1a

    .line 598
    .line 599
    cmp-long v0, v19, v0

    .line 600
    .line 601
    if-ltz v0, :cond_1b

    .line 602
    .line 603
    :cond_1a
    const/4 v12, 0x1

    .line 604
    goto :goto_10

    .line 605
    :cond_1b
    const/4 v12, 0x0

    .line 606
    :goto_10
    invoke-virtual {v2, v5}, Lf2/y;->h(Lf2/w;)Z

    .line 607
    .line 608
    .line 609
    move-result v0

    .line 610
    if-nez v0, :cond_1c

    .line 611
    .line 612
    if-nez v12, :cond_1c

    .line 613
    .line 614
    goto :goto_11

    .line 615
    :cond_1c
    const/4 v12, 0x0

    .line 616
    goto :goto_12

    .line 617
    :cond_1d
    move-object/from16 v2, p1

    .line 618
    .line 619
    const-wide/high16 v3, -0x8000000000000000L

    .line 620
    .line 621
    iget-object v0, v5, Lf2/w;->k:Lf2/w;

    .line 622
    .line 623
    move-object v1, v2

    .line 624
    move-wide v10, v3

    .line 625
    move-object v4, v5

    .line 626
    move-wide/from16 v8, v19

    .line 627
    .line 628
    move-wide/from16 v2, v33

    .line 629
    .line 630
    const/4 v7, 0x0

    .line 631
    move-object v5, v0

    .line 632
    goto/16 :goto_8

    .line 633
    .line 634
    :cond_1e
    :goto_11
    const/4 v12, 0x1

    .line 635
    :goto_12
    if-nez v12, :cond_24

    .line 636
    .line 637
    const/4 v0, 0x0

    .line 638
    invoke-virtual {v6, v0}, Lf2/r;->w(Z)V

    .line 639
    .line 640
    .line 641
    goto :goto_16

    .line 642
    :cond_1f
    iget-object v0, v6, Lf2/r;->w:Lf2/y;

    .line 643
    .line 644
    iget-object v0, v0, Lf2/y;->g:Lf2/w;

    .line 645
    .line 646
    if-eqz v0, :cond_21

    .line 647
    .line 648
    :cond_20
    :goto_13
    iget-object v0, v0, Lf2/w;->k:Lf2/w;

    .line 649
    .line 650
    if-eqz v0, :cond_21

    .line 651
    .line 652
    iget-object v2, v0, Lf2/w;->f:Lf2/x;

    .line 653
    .line 654
    iget-object v2, v2, Lf2/x;->a:Lt2/f;

    .line 655
    .line 656
    invoke-virtual {v2, v1}, Lt2/f;->equals(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    move-result v2

    .line 660
    if-eqz v2, :cond_20

    .line 661
    .line 662
    iget-object v2, v6, Lf2/r;->w:Lf2/y;

    .line 663
    .line 664
    iget-object v3, v0, Lf2/w;->f:Lf2/x;

    .line 665
    .line 666
    invoke-virtual {v2, v3}, Lf2/y;->f(Lf2/x;)Lf2/x;

    .line 667
    .line 668
    .line 669
    move-result-object v2

    .line 670
    iput-object v2, v0, Lf2/w;->f:Lf2/x;

    .line 671
    .line 672
    goto :goto_13

    .line 673
    :cond_21
    invoke-virtual {v1}, Lt2/f;->a()Z

    .line 674
    .line 675
    .line 676
    move-result v0

    .line 677
    if-eqz v0, :cond_22

    .line 678
    .line 679
    goto :goto_14

    .line 680
    :cond_22
    move-wide v8, v14

    .line 681
    :goto_14
    iget-object v0, v6, Lf2/r;->w:Lf2/y;

    .line 682
    .line 683
    iget-object v2, v0, Lf2/y;->g:Lf2/w;

    .line 684
    .line 685
    iget-object v0, v0, Lf2/y;->h:Lf2/w;

    .line 686
    .line 687
    if-eq v2, v0, :cond_23

    .line 688
    .line 689
    const/4 v12, 0x1

    .line 690
    goto :goto_15

    .line 691
    :cond_23
    const/4 v12, 0x0

    .line 692
    :goto_15
    invoke-virtual {v6, v1, v8, v9, v12}, Lf2/r;->y(Lt2/f;JZ)J

    .line 693
    .line 694
    .line 695
    move-result-wide v2

    .line 696
    move-object/from16 v0, p0

    .line 697
    .line 698
    move-wide v4, v14

    .line 699
    invoke-virtual/range {v0 .. v5}, Lf2/r;->c(Lt2/f;JJ)Lf2/a0;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    iput-object v0, v6, Lf2/r;->y:Lf2/a0;

    .line 704
    .line 705
    :cond_24
    const/4 v0, 0x0

    .line 706
    :goto_16
    invoke-virtual {v6, v0}, Lf2/r;->h(Z)V

    .line 707
    .line 708
    .line 709
    return-void

    .line 710
    :cond_25
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    invoke-static {v0}, La1/b;->j(Ljava/lang/Object;)V

    .line 715
    .line 716
    .line 717
    throw v5
.end method

.method public final l()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lf2/r;->w:Lf2/y;

    .line 2
    .line 3
    iget-object v0, v0, Lf2/y;->h:Lf2/w;

    .line 4
    .line 5
    iget-boolean v1, v0, Lf2/w;->d:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    move v1, v2

    .line 12
    :goto_0
    iget-object v3, p0, Lf2/r;->f:[Lf2/e0;

    .line 13
    .line 14
    array-length v4, v3

    .line 15
    if-ge v1, v4, :cond_3

    .line 16
    .line 17
    aget-object v3, v3, v1

    .line 18
    .line 19
    iget-object v4, v0, Lf2/w;->c:[Lt2/s;

    .line 20
    .line 21
    aget-object v4, v4, v1

    .line 22
    .line 23
    invoke-interface {v3}, Lf2/e0;->getStream()Lt2/s;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-ne v5, v4, :cond_2

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    invoke-interface {v3}, Lf2/e0;->hasReadStreamToEnd()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    :goto_1
    return v2

    .line 42
    :cond_3
    const/4 v0, 0x1

    .line 43
    return v0
.end method

.method public final m()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lf2/r;->w:Lf2/y;

    .line 2
    .line 3
    iget-object v0, v0, Lf2/y;->g:Lf2/w;

    .line 4
    .line 5
    iget-object v1, v0, Lf2/w;->f:Lf2/x;

    .line 6
    .line 7
    iget-wide v1, v1, Lf2/x;->e:J

    .line 8
    .line 9
    iget-boolean v0, v0, Lf2/w;->d:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmp-long v0, v1, v3

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lf2/r;->y:Lf2/a0;

    .line 23
    .line 24
    iget-wide v3, v0, Lf2/a0;->m:J

    .line 25
    .line 26
    cmp-long v0, v3, v1

    .line 27
    .line 28
    if-gez v0, :cond_1

    .line 29
    .line 30
    :cond_0
    const/4 v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0
.end method

.method public final n()V
    .locals 15

    .line 1
    iget-object v0, p0, Lf2/r;->w:Lf2/y;

    .line 2
    .line 3
    iget-object v0, v0, Lf2/y;->i:Lf2/w;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    :goto_0
    move v0, v4

    .line 12
    goto :goto_2

    .line 13
    :cond_0
    iget-boolean v5, v0, Lf2/w;->d:Z

    .line 14
    .line 15
    if-nez v5, :cond_1

    .line 16
    .line 17
    move-wide v5, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget-object v0, v0, Lf2/w;->a:Lt2/e;

    .line 20
    .line 21
    invoke-interface {v0}, Lt2/u;->t()J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    :goto_1
    const-wide/high16 v7, -0x8000000000000000L

    .line 26
    .line 27
    cmp-long v0, v5, v7

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move v0, v1

    .line 33
    :goto_2
    iget-object v5, p0, Lf2/r;->w:Lf2/y;

    .line 34
    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    move v0, v4

    .line 38
    goto/16 :goto_9

    .line 39
    .line 40
    :cond_3
    iget-object v0, v5, Lf2/y;->i:Lf2/w;

    .line 41
    .line 42
    iget-boolean v6, v0, Lf2/w;->d:Z

    .line 43
    .line 44
    if-nez v6, :cond_4

    .line 45
    .line 46
    move-wide v6, v2

    .line 47
    goto :goto_3

    .line 48
    :cond_4
    iget-object v0, v0, Lf2/w;->a:Lt2/e;

    .line 49
    .line 50
    invoke-interface {v0}, Lt2/u;->t()J

    .line 51
    .line 52
    .line 53
    move-result-wide v6

    .line 54
    :goto_3
    iget-object v0, p0, Lf2/r;->w:Lf2/y;

    .line 55
    .line 56
    iget-object v0, v0, Lf2/y;->i:Lf2/w;

    .line 57
    .line 58
    if-nez v0, :cond_5

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_5
    iget-wide v8, p0, Lf2/r;->K:J

    .line 62
    .line 63
    iget-wide v10, v0, Lf2/w;->n:J

    .line 64
    .line 65
    sub-long/2addr v8, v10

    .line 66
    sub-long/2addr v6, v8

    .line 67
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    :goto_4
    iget-object v0, p0, Lf2/r;->s:Lf2/g;

    .line 72
    .line 73
    invoke-virtual {v0}, Lf2/g;->a()Lf2/b0;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget v0, v0, Lf2/b0;->a:F

    .line 78
    .line 79
    iget-object v6, p0, Lf2/r;->j:Lf2/e;

    .line 80
    .line 81
    iget-object v7, v6, Lf2/e;->a:La3/m;

    .line 82
    .line 83
    monitor-enter v7

    .line 84
    :try_start_0
    iget v8, v7, La3/m;->e:I

    .line 85
    .line 86
    iget v9, v7, La3/m;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    mul-int/2addr v8, v9

    .line 89
    monitor-exit v7

    .line 90
    iget v7, v6, Lf2/e;->k:I

    .line 91
    .line 92
    if-lt v8, v7, :cond_6

    .line 93
    .line 94
    move v7, v1

    .line 95
    goto :goto_5

    .line 96
    :cond_6
    move v7, v4

    .line 97
    :goto_5
    iget-boolean v8, v6, Lf2/e;->m:Z

    .line 98
    .line 99
    if-eqz v8, :cond_7

    .line 100
    .line 101
    iget-wide v8, v6, Lf2/e;->c:J

    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_7
    iget-wide v8, v6, Lf2/e;->b:J

    .line 105
    .line 106
    :goto_6
    const/high16 v10, 0x3f800000    # 1.0f

    .line 107
    .line 108
    cmpl-float v10, v0, v10

    .line 109
    .line 110
    iget-wide v11, v6, Lf2/e;->d:J

    .line 111
    .line 112
    if-lez v10, :cond_9

    .line 113
    .line 114
    sget v13, Lb3/n;->a:I

    .line 115
    .line 116
    if-nez v10, :cond_8

    .line 117
    .line 118
    goto :goto_7

    .line 119
    :cond_8
    long-to-double v8, v8

    .line 120
    float-to-double v13, v0

    .line 121
    mul-double/2addr v8, v13

    .line 122
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    .line 123
    .line 124
    .line 125
    move-result-wide v8

    .line 126
    :goto_7
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 127
    .line 128
    .line 129
    move-result-wide v8

    .line 130
    :cond_9
    cmp-long v0, v2, v8

    .line 131
    .line 132
    if-gez v0, :cond_b

    .line 133
    .line 134
    iget-boolean v0, v6, Lf2/e;->h:Z

    .line 135
    .line 136
    if-nez v0, :cond_a

    .line 137
    .line 138
    if-nez v7, :cond_c

    .line 139
    .line 140
    :cond_a
    move v0, v1

    .line 141
    goto :goto_8

    .line 142
    :cond_b
    cmp-long v0, v2, v11

    .line 143
    .line 144
    if-gez v0, :cond_c

    .line 145
    .line 146
    if-eqz v7, :cond_d

    .line 147
    .line 148
    :cond_c
    move v0, v4

    .line 149
    :goto_8
    iput-boolean v0, v6, Lf2/e;->l:Z

    .line 150
    .line 151
    :cond_d
    iget-boolean v0, v6, Lf2/e;->l:Z

    .line 152
    .line 153
    :goto_9
    iput-boolean v0, p0, Lf2/r;->E:Z

    .line 154
    .line 155
    if-eqz v0, :cond_f

    .line 156
    .line 157
    iget-object v0, v5, Lf2/y;->i:Lf2/w;

    .line 158
    .line 159
    iget-wide v2, p0, Lf2/r;->K:J

    .line 160
    .line 161
    iget-object v5, v0, Lf2/w;->k:Lf2/w;

    .line 162
    .line 163
    if-nez v5, :cond_e

    .line 164
    .line 165
    goto :goto_a

    .line 166
    :cond_e
    move v1, v4

    .line 167
    :goto_a
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 168
    .line 169
    .line 170
    iget-wide v4, v0, Lf2/w;->n:J

    .line 171
    .line 172
    sub-long/2addr v2, v4

    .line 173
    iget-object v0, v0, Lf2/w;->a:Lt2/e;

    .line 174
    .line 175
    invoke-interface {v0, v2, v3}, Lt2/u;->v(J)Z

    .line 176
    .line 177
    .line 178
    :cond_f
    invoke-virtual {p0}, Lf2/r;->I()V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :catchall_0
    move-exception v0

    .line 183
    monitor-exit v7

    .line 184
    throw v0
.end method

.method public final o()V
    .locals 6

    .line 1
    iget-object v0, p0, Lf2/r;->y:Lf2/a0;

    .line 2
    .line 3
    iget-object v1, p0, Lf2/r;->t:Lf2/p;

    .line 4
    .line 5
    iget-object v2, v1, Lf2/p;->a:Lf2/a0;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v0, v2, :cond_1

    .line 9
    .line 10
    iget v2, v1, Lf2/p;->b:I

    .line 11
    .line 12
    if-gtz v2, :cond_1

    .line 13
    .line 14
    iget-boolean v2, v1, Lf2/p;->c:Z

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v2, v3

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 22
    :goto_1
    if-eqz v2, :cond_3

    .line 23
    .line 24
    iget v2, v1, Lf2/p;->b:I

    .line 25
    .line 26
    iget-boolean v4, v1, Lf2/p;->c:Z

    .line 27
    .line 28
    if-eqz v4, :cond_2

    .line 29
    .line 30
    iget v4, v1, Lf2/p;->d:I

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    const/4 v4, -0x1

    .line 34
    :goto_2
    iget-object v5, p0, Lf2/r;->n:Landroid/os/Handler;

    .line 35
    .line 36
    invoke-virtual {v5, v3, v2, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lf2/r;->y:Lf2/a0;

    .line 44
    .line 45
    iput-object v0, v1, Lf2/p;->a:Lf2/a0;

    .line 46
    .line 47
    iput v3, v1, Lf2/p;->b:I

    .line 48
    .line 49
    iput-boolean v3, v1, Lf2/p;->c:Z

    .line 50
    .line 51
    :cond_3
    return-void
.end method

.method public final p(Lt2/g;ZZ)V
    .locals 23

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget v0, v6, Lf2/r;->I:I

    .line 6
    .line 7
    const/4 v8, 0x1

    .line 8
    add-int/2addr v0, v8

    .line 9
    iput v0, v6, Lf2/r;->I:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v5, 0x1

    .line 14
    move-object/from16 v0, p0

    .line 15
    .line 16
    move/from16 v3, p2

    .line 17
    .line 18
    move/from16 v4, p3

    .line 19
    .line 20
    invoke-virtual/range {v0 .. v5}, Lf2/r;->s(ZZZZZ)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v6, Lf2/r;->j:Lf2/e;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lf2/e;->b(Z)V

    .line 26
    .line 27
    .line 28
    iput-object v7, v6, Lf2/r;->z:Lt2/g;

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    invoke-virtual {v6, v0}, Lf2/r;->E(I)V

    .line 32
    .line 33
    .line 34
    iget-object v2, v6, Lf2/r;->k:La3/d;

    .line 35
    .line 36
    check-cast v2, La3/o;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-object v3, v7

    .line 42
    check-cast v3, Lt2/a;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    iget-object v5, v3, Lt2/a;->d:Landroid/os/Looper;

    .line 52
    .line 53
    if-eqz v5, :cond_1

    .line 54
    .line 55
    if-ne v5, v4, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v5, v1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    move v5, v8

    .line 61
    :goto_1
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/i0;->g(Z)V

    .line 62
    .line 63
    .line 64
    iget-object v5, v3, Lt2/a;->e:Lf2/l0;

    .line 65
    .line 66
    iget-object v7, v3, Lt2/a;->a:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    iget-object v7, v3, Lt2/a;->d:Landroid/os/Looper;

    .line 72
    .line 73
    iget-object v9, v3, Lt2/a;->b:Ljava/util/HashSet;

    .line 74
    .line 75
    iget-object v10, v6, Lf2/r;->l:Lh/a;

    .line 76
    .line 77
    if-nez v7, :cond_5

    .line 78
    .line 79
    iput-object v4, v3, Lt2/a;->d:Landroid/os/Looper;

    .line 80
    .line 81
    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    check-cast v3, Lw2/k;

    .line 85
    .line 86
    iput-object v2, v3, Lw2/k;->q:La3/g0;

    .line 87
    .line 88
    iget-object v2, v3, Lw2/k;->j:Lj2/d;

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    new-instance v11, Lcom/google/android/gms/internal/play_billing/v;

    .line 94
    .line 95
    iget-object v2, v3, Lt2/a;->c:Lcom/google/android/gms/internal/play_billing/v;

    .line 96
    .line 97
    iget-object v2, v2, Lcom/google/android/gms/internal/play_billing/v;->d:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 100
    .line 101
    const/4 v4, 0x0

    .line 102
    invoke-direct {v11, v2, v4}, Lcom/google/android/gms/internal/play_billing/v;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Lt2/f;)V

    .line 103
    .line 104
    .line 105
    iget-object v2, v3, Lw2/k;->o:Lx2/l;

    .line 106
    .line 107
    check-cast v2, Lx2/b;

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    new-instance v4, Landroid/os/Handler;

    .line 113
    .line 114
    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 115
    .line 116
    .line 117
    iput-object v4, v2, Lx2/b;->n:Landroid/os/Handler;

    .line 118
    .line 119
    iput-object v11, v2, Lx2/b;->l:Lcom/google/android/gms/internal/play_billing/v;

    .line 120
    .line 121
    iput-object v3, v2, Lx2/b;->o:Lx2/k;

    .line 122
    .line 123
    new-instance v4, La3/e0;

    .line 124
    .line 125
    iget-object v5, v2, Lx2/b;->f:Lw2/b;

    .line 126
    .line 127
    iget-object v5, v5, Lw2/b;->a:La3/h;

    .line 128
    .line 129
    invoke-interface {v5}, La3/h;->a()La3/i;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    iget-object v7, v2, Lx2/b;->g:Lx2/j;

    .line 134
    .line 135
    invoke-interface {v7}, Lx2/j;->t()La3/d0;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    iget-object v3, v3, Lw2/k;->g:Landroid/net/Uri;

    .line 140
    .line 141
    invoke-direct {v4, v5, v3, v7}, La3/e0;-><init>(La3/i;Landroid/net/Uri;La3/d0;)V

    .line 142
    .line 143
    .line 144
    iget-object v3, v2, Lx2/b;->m:La3/c0;

    .line 145
    .line 146
    if-nez v3, :cond_2

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_2
    move v8, v1

    .line 150
    :goto_2
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 151
    .line 152
    .line 153
    new-instance v1, La3/c0;

    .line 154
    .line 155
    const-string v3, "DefaultHlsPlaylistTracker:MasterPlaylist"

    .line 156
    .line 157
    invoke-direct {v1, v3}, La3/c0;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iput-object v1, v2, Lx2/b;->m:La3/c0;

    .line 161
    .line 162
    iget v13, v4, La3/e0;->b:I

    .line 163
    .line 164
    iget-object v3, v2, Lx2/b;->h:La3/r;

    .line 165
    .line 166
    iget v3, v3, La3/r;->a:I

    .line 167
    .line 168
    const/4 v5, -0x1

    .line 169
    if-ne v3, v5, :cond_4

    .line 170
    .line 171
    const/4 v3, 0x7

    .line 172
    if-ne v13, v3, :cond_3

    .line 173
    .line 174
    const/4 v3, 0x6

    .line 175
    goto :goto_3

    .line 176
    :cond_3
    const/4 v3, 0x3

    .line 177
    :cond_4
    :goto_3
    invoke-virtual {v1, v4, v2, v3}, La3/c0;->c(La3/z;La3/w;I)J

    .line 178
    .line 179
    .line 180
    move-result-wide v21

    .line 181
    iget-object v12, v4, La3/e0;->a:La3/l;

    .line 182
    .line 183
    const/4 v14, -0x1

    .line 184
    const/4 v15, 0x0

    .line 185
    const/16 v16, 0x0

    .line 186
    .line 187
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    invoke-virtual/range {v11 .. v22}, Lcom/google/android/gms/internal/play_billing/v;->h(La3/l;IIILjava/lang/Object;JJJ)V

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_5
    if-eqz v5, :cond_6

    .line 202
    .line 203
    invoke-virtual {v9}, Ljava/util/HashSet;->isEmpty()Z

    .line 204
    .line 205
    .line 206
    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    new-instance v1, Lf2/o;

    .line 210
    .line 211
    invoke-direct {v1, v3, v5}, Lf2/o;-><init>(Lt2/g;Lf2/l0;)V

    .line 212
    .line 213
    .line 214
    iget-object v2, v10, Lh/a;->g:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v2, Landroid/os/Handler;

    .line 217
    .line 218
    const/16 v3, 0x8

    .line 219
    .line 220
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 225
    .line 226
    .line 227
    :cond_6
    :goto_4
    invoke-virtual {v10, v0}, Lh/a;->G(I)V

    .line 228
    .line 229
    .line 230
    return-void
.end method

.method public final q()V
    .locals 6

    .line 1
    const/4 v1, 0x1

    .line 2
    const/4 v2, 0x1

    .line 3
    const/4 v3, 0x1

    .line 4
    const/4 v4, 0x1

    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, p0

    .line 7
    invoke-virtual/range {v0 .. v5}, Lf2/r;->s(ZZZZZ)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lf2/r;->j:Lf2/e;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lf2/e;->b(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lf2/r;->E(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lf2/r;->m:Landroid/os/HandlerThread;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 22
    .line 23
    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    iput-boolean v1, p0, Lf2/r;->B:Z

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v0
.end method

.method public final r()V
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    iget-object v0, v6, Lf2/r;->s:Lf2/g;

    .line 4
    .line 5
    invoke-virtual {v0}, Lf2/g;->a()Lf2/b0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Lf2/b0;->a:F

    .line 10
    .line 11
    iget-object v1, v6, Lf2/r;->w:Lf2/y;

    .line 12
    .line 13
    iget-object v2, v1, Lf2/y;->g:Lf2/w;

    .line 14
    .line 15
    iget-object v1, v1, Lf2/y;->h:Lf2/w;

    .line 16
    .line 17
    const/4 v7, 0x1

    .line 18
    move-object v8, v2

    .line 19
    move v2, v7

    .line 20
    :goto_0
    if-eqz v8, :cond_10

    .line 21
    .line 22
    iget-boolean v3, v8, Lf2/w;->d:Z

    .line 23
    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    goto/16 :goto_9

    .line 27
    .line 28
    :cond_0
    iget-object v3, v6, Lf2/r;->y:Lf2/a0;

    .line 29
    .line 30
    iget-object v3, v3, Lf2/a0;->a:Lf2/l0;

    .line 31
    .line 32
    invoke-virtual {v8, v0}, Lf2/w;->f(F)Landroidx/activity/result/c;

    .line 33
    .line 34
    .line 35
    move-result-object v10

    .line 36
    iget-object v3, v8, Lf2/w;->m:Landroidx/activity/result/c;

    .line 37
    .line 38
    const/4 v15, 0x0

    .line 39
    if-eqz v3, :cond_4

    .line 40
    .line 41
    iget-object v4, v3, Landroidx/activity/result/c;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v4, Lz2/q;

    .line 44
    .line 45
    iget v4, v4, Lz2/q;->a:I

    .line 46
    .line 47
    iget-object v5, v10, Landroidx/activity/result/c;->c:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v5, Lz2/q;

    .line 50
    .line 51
    iget v9, v5, Lz2/q;->a:I

    .line 52
    .line 53
    if-eq v4, v9, :cond_1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    move v4, v15

    .line 57
    :goto_1
    iget v9, v5, Lz2/q;->a:I

    .line 58
    .line 59
    if-ge v4, v9, :cond_3

    .line 60
    .line 61
    invoke-virtual {v10, v3, v4}, Landroidx/activity/result/c;->a(Landroidx/activity/result/c;I)Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-nez v9, :cond_2

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    move v3, v7

    .line 72
    goto :goto_3

    .line 73
    :cond_4
    :goto_2
    move v3, v15

    .line 74
    :goto_3
    if-nez v3, :cond_e

    .line 75
    .line 76
    iget-object v0, v6, Lf2/r;->w:Lf2/y;

    .line 77
    .line 78
    const/4 v4, 0x4

    .line 79
    if-eqz v2, :cond_b

    .line 80
    .line 81
    iget-object v8, v0, Lf2/y;->g:Lf2/w;

    .line 82
    .line 83
    invoke-virtual {v0, v8}, Lf2/y;->h(Lf2/w;)Z

    .line 84
    .line 85
    .line 86
    move-result v13

    .line 87
    iget-object v0, v6, Lf2/r;->f:[Lf2/e0;

    .line 88
    .line 89
    array-length v0, v0

    .line 90
    new-array v5, v0, [Z

    .line 91
    .line 92
    iget-object v0, v6, Lf2/r;->y:Lf2/a0;

    .line 93
    .line 94
    iget-wide v11, v0, Lf2/a0;->m:J

    .line 95
    .line 96
    move-object v9, v8

    .line 97
    move-object v14, v5

    .line 98
    invoke-virtual/range {v9 .. v14}, Lf2/w;->a(Landroidx/activity/result/c;JZ[Z)J

    .line 99
    .line 100
    .line 101
    move-result-wide v9

    .line 102
    iget-object v0, v6, Lf2/r;->y:Lf2/a0;

    .line 103
    .line 104
    iget v1, v0, Lf2/a0;->e:I

    .line 105
    .line 106
    if-eq v1, v4, :cond_5

    .line 107
    .line 108
    iget-wide v0, v0, Lf2/a0;->m:J

    .line 109
    .line 110
    cmp-long v0, v9, v0

    .line 111
    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    iget-object v0, v6, Lf2/r;->y:Lf2/a0;

    .line 115
    .line 116
    iget-object v1, v0, Lf2/a0;->b:Lt2/f;

    .line 117
    .line 118
    iget-wide v11, v0, Lf2/a0;->d:J

    .line 119
    .line 120
    move-object/from16 v0, p0

    .line 121
    .line 122
    move-wide v2, v9

    .line 123
    move v14, v4

    .line 124
    move-object v13, v5

    .line 125
    move-wide v4, v11

    .line 126
    invoke-virtual/range {v0 .. v5}, Lf2/r;->c(Lt2/f;JJ)Lf2/a0;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iput-object v0, v6, Lf2/r;->y:Lf2/a0;

    .line 131
    .line 132
    iget-object v0, v6, Lf2/r;->t:Lf2/p;

    .line 133
    .line 134
    invoke-virtual {v0, v14}, Lf2/p;->a(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6, v9, v10}, Lf2/r;->t(J)V

    .line 138
    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_5
    move v14, v4

    .line 142
    move-object v13, v5

    .line 143
    :goto_4
    iget-object v0, v6, Lf2/r;->f:[Lf2/e0;

    .line 144
    .line 145
    array-length v0, v0

    .line 146
    new-array v0, v0, [Z

    .line 147
    .line 148
    move v1, v15

    .line 149
    move v2, v1

    .line 150
    :goto_5
    iget-object v3, v6, Lf2/r;->f:[Lf2/e0;

    .line 151
    .line 152
    array-length v4, v3

    .line 153
    if-ge v1, v4, :cond_a

    .line 154
    .line 155
    aget-object v3, v3, v1

    .line 156
    .line 157
    invoke-interface {v3}, Lf2/e0;->getState()I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_6

    .line 162
    .line 163
    move v4, v7

    .line 164
    goto :goto_6

    .line 165
    :cond_6
    move v4, v15

    .line 166
    :goto_6
    aput-boolean v4, v0, v1

    .line 167
    .line 168
    iget-object v5, v8, Lf2/w;->c:[Lt2/s;

    .line 169
    .line 170
    aget-object v5, v5, v1

    .line 171
    .line 172
    if-eqz v5, :cond_7

    .line 173
    .line 174
    add-int/lit8 v2, v2, 0x1

    .line 175
    .line 176
    :cond_7
    if-eqz v4, :cond_9

    .line 177
    .line 178
    invoke-interface {v3}, Lf2/e0;->getStream()Lt2/s;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    if-eq v5, v4, :cond_8

    .line 183
    .line 184
    invoke-virtual {v6, v3}, Lf2/r;->d(Lf2/e0;)V

    .line 185
    .line 186
    .line 187
    goto :goto_7

    .line 188
    :cond_8
    aget-boolean v4, v13, v1

    .line 189
    .line 190
    if-eqz v4, :cond_9

    .line 191
    .line 192
    iget-wide v4, v6, Lf2/r;->K:J

    .line 193
    .line 194
    invoke-interface {v3, v4, v5}, Lf2/e0;->resetPosition(J)V

    .line 195
    .line 196
    .line 197
    :cond_9
    :goto_7
    add-int/lit8 v1, v1, 0x1

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_a
    iget-object v1, v6, Lf2/r;->y:Lf2/a0;

    .line 201
    .line 202
    iget-object v3, v8, Lf2/w;->l:Lt2/x;

    .line 203
    .line 204
    iget-object v4, v8, Lf2/w;->m:Landroidx/activity/result/c;

    .line 205
    .line 206
    invoke-virtual {v1, v3, v4}, Lf2/a0;->c(Lt2/x;Landroidx/activity/result/c;)Lf2/a0;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    iput-object v1, v6, Lf2/r;->y:Lf2/a0;

    .line 211
    .line 212
    invoke-virtual {v6, v0, v2}, Lf2/r;->f([ZI)V

    .line 213
    .line 214
    .line 215
    goto :goto_8

    .line 216
    :cond_b
    move v14, v4

    .line 217
    invoke-virtual {v0, v8}, Lf2/y;->h(Lf2/w;)Z

    .line 218
    .line 219
    .line 220
    iget-boolean v0, v8, Lf2/w;->d:Z

    .line 221
    .line 222
    if-eqz v0, :cond_c

    .line 223
    .line 224
    iget-object v0, v8, Lf2/w;->f:Lf2/x;

    .line 225
    .line 226
    iget-wide v0, v0, Lf2/x;->b:J

    .line 227
    .line 228
    iget-wide v2, v6, Lf2/r;->K:J

    .line 229
    .line 230
    iget-wide v4, v8, Lf2/w;->n:J

    .line 231
    .line 232
    sub-long/2addr v2, v4

    .line 233
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 234
    .line 235
    .line 236
    move-result-wide v0

    .line 237
    const/4 v12, 0x0

    .line 238
    iget-object v2, v8, Lf2/w;->h:[Lf2/f0;

    .line 239
    .line 240
    array-length v2, v2

    .line 241
    new-array v13, v2, [Z

    .line 242
    .line 243
    move-object v9, v10

    .line 244
    move-wide v10, v0

    .line 245
    invoke-virtual/range {v8 .. v13}, Lf2/w;->a(Landroidx/activity/result/c;JZ[Z)J

    .line 246
    .line 247
    .line 248
    :cond_c
    :goto_8
    invoke-virtual {v6, v7}, Lf2/r;->h(Z)V

    .line 249
    .line 250
    .line 251
    iget-object v0, v6, Lf2/r;->y:Lf2/a0;

    .line 252
    .line 253
    iget v0, v0, Lf2/a0;->e:I

    .line 254
    .line 255
    if-eq v0, v14, :cond_d

    .line 256
    .line 257
    invoke-virtual/range {p0 .. p0}, Lf2/r;->n()V

    .line 258
    .line 259
    .line 260
    invoke-virtual/range {p0 .. p0}, Lf2/r;->K()V

    .line 261
    .line 262
    .line 263
    iget-object v0, v6, Lf2/r;->l:Lh/a;

    .line 264
    .line 265
    const/4 v1, 0x2

    .line 266
    invoke-virtual {v0, v1}, Lh/a;->G(I)V

    .line 267
    .line 268
    .line 269
    :cond_d
    return-void

    .line 270
    :cond_e
    if-ne v8, v1, :cond_f

    .line 271
    .line 272
    move v2, v15

    .line 273
    :cond_f
    iget-object v8, v8, Lf2/w;->k:Lf2/w;

    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :cond_10
    :goto_9
    return-void
.end method

.method public final s(ZZZZZ)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lf2/r;->l:Lh/a;

    .line 4
    .line 5
    iget-object v0, v0, Lh/a;->g:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroid/os/Handler;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput-boolean v2, v1, Lf2/r;->D:Z

    .line 15
    .line 16
    iget-object v0, v1, Lf2/r;->s:Lf2/g;

    .line 17
    .line 18
    iput-boolean v2, v0, Lf2/g;->b:Z

    .line 19
    .line 20
    iget-object v0, v0, Lf2/g;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lt2/o;

    .line 23
    .line 24
    iget-boolean v3, v0, Lt2/o;->a:Z

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Lt2/o;->c()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    invoke-virtual {v0, v3, v4}, Lt2/o;->d(J)V

    .line 33
    .line 34
    .line 35
    iput-boolean v2, v0, Lt2/o;->a:Z

    .line 36
    .line 37
    :cond_0
    const-wide/16 v3, 0x0

    .line 38
    .line 39
    iput-wide v3, v1, Lf2/r;->K:J

    .line 40
    .line 41
    iget-object v3, v1, Lf2/r;->A:[Lf2/e0;

    .line 42
    .line 43
    array-length v4, v3

    .line 44
    move v5, v2

    .line 45
    :goto_0
    if-ge v5, v4, :cond_1

    .line 46
    .line 47
    aget-object v0, v3, v5

    .line 48
    .line 49
    :try_start_0
    invoke-virtual {v1, v0}, Lf2/r;->d(Lf2/e0;)V
    :try_end_0
    .catch Lf2/h; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :catch_0
    move-exception v0

    .line 54
    goto :goto_1

    .line 55
    :catch_1
    move-exception v0

    .line 56
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->B(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    if-eqz p1, :cond_2

    .line 63
    .line 64
    iget-object v3, v1, Lf2/r;->f:[Lf2/e0;

    .line 65
    .line 66
    array-length v4, v3

    .line 67
    move v5, v2

    .line 68
    :goto_3
    if-ge v5, v4, :cond_2

    .line 69
    .line 70
    aget-object v0, v3, v5

    .line 71
    .line 72
    :try_start_1
    invoke-interface {v0}, Lf2/e0;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 73
    .line 74
    .line 75
    goto :goto_4

    .line 76
    :catch_2
    move-exception v0

    .line 77
    move-object v6, v0

    .line 78
    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/i0;->B(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_2
    new-array v0, v2, [Lf2/e0;

    .line 85
    .line 86
    iput-object v0, v1, Lf2/r;->A:[Lf2/e0;

    .line 87
    .line 88
    sget-object v0, Lf2/l0;->a:Lf2/i0;

    .line 89
    .line 90
    const/4 v3, 0x1

    .line 91
    const/4 v4, 0x0

    .line 92
    if-eqz p3, :cond_3

    .line 93
    .line 94
    iput-object v4, v1, Lf2/r;->J:Lf2/q;

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_3
    if-eqz p4, :cond_5

    .line 98
    .line 99
    iget-object v5, v1, Lf2/r;->J:Lf2/q;

    .line 100
    .line 101
    if-nez v5, :cond_4

    .line 102
    .line 103
    iget-object v5, v1, Lf2/r;->y:Lf2/a0;

    .line 104
    .line 105
    iget-object v5, v5, Lf2/a0;->a:Lf2/l0;

    .line 106
    .line 107
    invoke-virtual {v5}, Lf2/l0;->k()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-nez v5, :cond_4

    .line 112
    .line 113
    iget-object v5, v1, Lf2/r;->y:Lf2/a0;

    .line 114
    .line 115
    iget-object v6, v5, Lf2/a0;->a:Lf2/l0;

    .line 116
    .line 117
    iget-object v5, v5, Lf2/a0;->b:Lt2/f;

    .line 118
    .line 119
    iget-object v5, v5, Lt2/f;->a:Ljava/lang/Object;

    .line 120
    .line 121
    iget-object v7, v1, Lf2/r;->p:Lf2/j0;

    .line 122
    .line 123
    invoke-virtual {v6, v5, v7}, Lf2/l0;->d(Ljava/lang/Object;Lf2/j0;)Lf2/j0;

    .line 124
    .line 125
    .line 126
    iget-object v5, v1, Lf2/r;->y:Lf2/a0;

    .line 127
    .line 128
    iget-wide v5, v5, Lf2/a0;->m:J

    .line 129
    .line 130
    iget-object v7, v1, Lf2/r;->p:Lf2/j0;

    .line 131
    .line 132
    iget-wide v8, v7, Lf2/j0;->d:J

    .line 133
    .line 134
    add-long/2addr v5, v8

    .line 135
    new-instance v8, Lf2/q;

    .line 136
    .line 137
    iget v7, v7, Lf2/j0;->b:I

    .line 138
    .line 139
    invoke-direct {v8, v0, v7, v5, v6}, Lf2/q;-><init>(Lf2/l0;IJ)V

    .line 140
    .line 141
    .line 142
    iput-object v8, v1, Lf2/r;->J:Lf2/q;

    .line 143
    .line 144
    :cond_4
    move v5, v3

    .line 145
    goto :goto_6

    .line 146
    :cond_5
    :goto_5
    move/from16 v5, p3

    .line 147
    .line 148
    :goto_6
    iget-object v6, v1, Lf2/r;->w:Lf2/y;

    .line 149
    .line 150
    xor-int/lit8 v7, p4, 0x1

    .line 151
    .line 152
    invoke-virtual {v6, v7}, Lf2/y;->b(Z)V

    .line 153
    .line 154
    .line 155
    iput-boolean v2, v1, Lf2/r;->E:Z

    .line 156
    .line 157
    if-eqz p4, :cond_7

    .line 158
    .line 159
    iget-object v6, v1, Lf2/r;->w:Lf2/y;

    .line 160
    .line 161
    iput-object v0, v6, Lf2/y;->d:Lf2/l0;

    .line 162
    .line 163
    iget-object v6, v1, Lf2/r;->u:Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    if-nez v7, :cond_6

    .line 174
    .line 175
    iget-object v6, v1, Lf2/r;->u:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 178
    .line 179
    .line 180
    iput v2, v1, Lf2/r;->L:I

    .line 181
    .line 182
    goto :goto_7

    .line 183
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-static {v0}, La1/b;->j(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    throw v4

    .line 191
    :cond_7
    :goto_7
    iget-object v2, v1, Lf2/r;->y:Lf2/a0;

    .line 192
    .line 193
    if-eqz v5, :cond_8

    .line 194
    .line 195
    iget-boolean v6, v1, Lf2/r;->G:Z

    .line 196
    .line 197
    iget-object v7, v1, Lf2/r;->o:Lf2/k0;

    .line 198
    .line 199
    iget-object v8, v1, Lf2/r;->p:Lf2/j0;

    .line 200
    .line 201
    invoke-virtual {v2, v6, v7, v8}, Lf2/a0;->e(ZLf2/k0;Lf2/j0;)Lt2/f;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    goto :goto_8

    .line 206
    :cond_8
    iget-object v2, v2, Lf2/a0;->b:Lt2/f;

    .line 207
    .line 208
    :goto_8
    move-object/from16 v18, v2

    .line 209
    .line 210
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    if-eqz v5, :cond_9

    .line 216
    .line 217
    move-wide/from16 v23, v14

    .line 218
    .line 219
    goto :goto_9

    .line 220
    :cond_9
    iget-object v2, v1, Lf2/r;->y:Lf2/a0;

    .line 221
    .line 222
    iget-wide v6, v2, Lf2/a0;->m:J

    .line 223
    .line 224
    move-wide/from16 v23, v6

    .line 225
    .line 226
    :goto_9
    if-eqz v5, :cond_a

    .line 227
    .line 228
    move-wide v11, v14

    .line 229
    goto :goto_a

    .line 230
    :cond_a
    iget-object v2, v1, Lf2/r;->y:Lf2/a0;

    .line 231
    .line 232
    iget-wide v5, v2, Lf2/a0;->d:J

    .line 233
    .line 234
    move-wide v11, v5

    .line 235
    :goto_a
    new-instance v2, Lf2/a0;

    .line 236
    .line 237
    if-eqz p4, :cond_b

    .line 238
    .line 239
    goto :goto_b

    .line 240
    :cond_b
    iget-object v0, v1, Lf2/r;->y:Lf2/a0;

    .line 241
    .line 242
    iget-object v0, v0, Lf2/a0;->a:Lf2/l0;

    .line 243
    .line 244
    :goto_b
    move-object v7, v0

    .line 245
    iget-object v0, v1, Lf2/r;->y:Lf2/a0;

    .line 246
    .line 247
    iget v13, v0, Lf2/a0;->e:I

    .line 248
    .line 249
    if-eqz p5, :cond_c

    .line 250
    .line 251
    move-object v5, v4

    .line 252
    goto :goto_c

    .line 253
    :cond_c
    iget-object v5, v0, Lf2/a0;->f:Lf2/h;

    .line 254
    .line 255
    :goto_c
    const/16 v16, 0x0

    .line 256
    .line 257
    if-eqz p4, :cond_d

    .line 258
    .line 259
    sget-object v6, Lt2/x;->d:Lt2/x;

    .line 260
    .line 261
    goto :goto_d

    .line 262
    :cond_d
    iget-object v6, v0, Lf2/a0;->h:Lt2/x;

    .line 263
    .line 264
    :goto_d
    move-object/from16 v17, v6

    .line 265
    .line 266
    if-eqz p4, :cond_e

    .line 267
    .line 268
    iget-object v0, v1, Lf2/r;->i:Landroidx/activity/result/c;

    .line 269
    .line 270
    goto :goto_e

    .line 271
    :cond_e
    iget-object v0, v0, Lf2/a0;->i:Landroidx/activity/result/c;

    .line 272
    .line 273
    :goto_e
    const-wide/16 v21, 0x0

    .line 274
    .line 275
    move-object v6, v2

    .line 276
    move-object/from16 v8, v18

    .line 277
    .line 278
    move-wide/from16 v9, v23

    .line 279
    .line 280
    move-object v14, v5

    .line 281
    move/from16 v15, v16

    .line 282
    .line 283
    move-object/from16 v16, v17

    .line 284
    .line 285
    move-object/from16 v17, v0

    .line 286
    .line 287
    move-wide/from16 v19, v23

    .line 288
    .line 289
    invoke-direct/range {v6 .. v24}, Lf2/a0;-><init>(Lf2/l0;Lt2/f;JJILf2/h;ZLt2/x;Landroidx/activity/result/c;Lt2/f;JJJ)V

    .line 290
    .line 291
    .line 292
    iput-object v2, v1, Lf2/r;->y:Lf2/a0;

    .line 293
    .line 294
    if-eqz p2, :cond_12

    .line 295
    .line 296
    iget-object v0, v1, Lf2/r;->z:Lt2/g;

    .line 297
    .line 298
    if-eqz v0, :cond_12

    .line 299
    .line 300
    check-cast v0, Lt2/a;

    .line 301
    .line 302
    iget-object v2, v0, Lt2/a;->a:Ljava/util/ArrayList;

    .line 303
    .line 304
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    iget-object v5, v0, Lt2/a;->b:Ljava/util/HashSet;

    .line 312
    .line 313
    if-eqz v2, :cond_10

    .line 314
    .line 315
    iput-object v4, v0, Lt2/a;->d:Landroid/os/Looper;

    .line 316
    .line 317
    iput-object v4, v0, Lt2/a;->e:Lf2/l0;

    .line 318
    .line 319
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 320
    .line 321
    .line 322
    check-cast v0, Lw2/k;

    .line 323
    .line 324
    iget-object v2, v0, Lw2/k;->o:Lx2/l;

    .line 325
    .line 326
    check-cast v2, Lx2/b;

    .line 327
    .line 328
    iput-object v4, v2, Lx2/b;->q:Landroid/net/Uri;

    .line 329
    .line 330
    iput-object v4, v2, Lx2/b;->r:Lx2/g;

    .line 331
    .line 332
    iput-object v4, v2, Lx2/b;->p:Lx2/e;

    .line 333
    .line 334
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    iput-wide v5, v2, Lx2/b;->t:J

    .line 340
    .line 341
    iget-object v3, v2, Lx2/b;->m:La3/c0;

    .line 342
    .line 343
    invoke-virtual {v3, v4}, La3/c0;->b(Lw2/p;)V

    .line 344
    .line 345
    .line 346
    iput-object v4, v2, Lx2/b;->m:La3/c0;

    .line 347
    .line 348
    iget-object v3, v2, Lx2/b;->i:Ljava/util/HashMap;

    .line 349
    .line 350
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 355
    .line 356
    .line 357
    move-result-object v5

    .line 358
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 359
    .line 360
    .line 361
    move-result v6

    .line 362
    if-eqz v6, :cond_f

    .line 363
    .line 364
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v6

    .line 368
    check-cast v6, Lx2/a;

    .line 369
    .line 370
    iget-object v6, v6, Lx2/a;->g:La3/c0;

    .line 371
    .line 372
    invoke-virtual {v6, v4}, La3/c0;->b(Lw2/p;)V

    .line 373
    .line 374
    .line 375
    goto :goto_f

    .line 376
    :cond_f
    iget-object v5, v2, Lx2/b;->n:Landroid/os/Handler;

    .line 377
    .line 378
    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    iput-object v4, v2, Lx2/b;->n:Landroid/os/Handler;

    .line 382
    .line 383
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 384
    .line 385
    .line 386
    iget-object v0, v0, Lw2/k;->j:Lj2/d;

    .line 387
    .line 388
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    goto :goto_10

    .line 392
    :cond_10
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    xor-int/2addr v0, v3

    .line 397
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    if-eqz v0, :cond_11

    .line 401
    .line 402
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    .line 403
    .line 404
    .line 405
    :cond_11
    :goto_10
    iput-object v4, v1, Lf2/r;->z:Lt2/g;

    .line 406
    .line 407
    :cond_12
    return-void
.end method

.method public final t(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lf2/r;->w:Lf2/y;

    .line 2
    .line 3
    iget-object v1, v0, Lf2/y;->g:Lf2/w;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-wide v1, v1, Lf2/w;->n:J

    .line 9
    .line 10
    add-long/2addr p1, v1

    .line 11
    :goto_0
    iput-wide p1, p0, Lf2/r;->K:J

    .line 12
    .line 13
    iget-object v1, p0, Lf2/r;->s:Lf2/g;

    .line 14
    .line 15
    iget-object v1, v1, Lf2/g;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lt2/o;

    .line 18
    .line 19
    invoke-virtual {v1, p1, p2}, Lt2/o;->d(J)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lf2/r;->A:[Lf2/e0;

    .line 23
    .line 24
    array-length p2, p1

    .line 25
    const/4 v1, 0x0

    .line 26
    move v2, v1

    .line 27
    :goto_1
    if-ge v2, p2, :cond_1

    .line 28
    .line 29
    aget-object v3, p1, v2

    .line 30
    .line 31
    iget-wide v4, p0, Lf2/r;->K:J

    .line 32
    .line 33
    invoke-interface {v3, v4, v5}, Lf2/e0;->resetPosition(J)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object p1, v0, Lf2/y;->g:Lf2/w;

    .line 40
    .line 41
    :goto_2
    if-eqz p1, :cond_3

    .line 42
    .line 43
    iget-object p2, p1, Lf2/w;->m:Landroidx/activity/result/c;

    .line 44
    .line 45
    iget-object p2, p2, Landroidx/activity/result/c;->c:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p2, Lz2/q;

    .line 48
    .line 49
    iget-object p2, p2, Lz2/q;->b:[Lz2/p;

    .line 50
    .line 51
    invoke-virtual {p2}, [Lz2/p;->clone()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, [Lz2/p;

    .line 56
    .line 57
    array-length v0, p2

    .line 58
    move v2, v1

    .line 59
    :goto_3
    if-ge v2, v0, :cond_2

    .line 60
    .line 61
    aget-object v3, p2, v2

    .line 62
    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_2
    iget-object p1, p1, Lf2/w;->k:Lf2/w;

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    return-void
.end method

.method public final u(Lf2/q;)Landroid/util/Pair;
    .locals 12

    .line 1
    iget-object v0, p0, Lf2/r;->y:Lf2/a0;

    .line 2
    .line 3
    iget-object v1, v0, Lf2/a0;->a:Lf2/l0;

    .line 4
    .line 5
    iget-object v0, p1, Lf2/q;->a:Lf2/l0;

    .line 6
    .line 7
    invoke-virtual {v1}, Lf2/l0;->k()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    return-object v3

    .line 15
    :cond_0
    invoke-virtual {v0}, Lf2/l0;->k()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    move-object v0, v1

    .line 22
    :cond_1
    :try_start_0
    iget-object v5, p0, Lf2/r;->o:Lf2/k0;

    .line 23
    .line 24
    iget-object v6, p0, Lf2/r;->p:Lf2/j0;

    .line 25
    .line 26
    iget v7, p1, Lf2/q;->b:I

    .line 27
    .line 28
    iget-wide v8, p1, Lf2/q;->c:J

    .line 29
    .line 30
    const-wide/16 v10, 0x0

    .line 31
    .line 32
    move-object v4, v0

    .line 33
    invoke-virtual/range {v4 .. v11}, Lf2/l0;->f(Lf2/k0;Lf2/j0;IJJ)Landroid/util/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    if-ne v1, v0, :cond_2

    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_2
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lf2/l0;->a(Ljava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const/4 v4, -0x1

    .line 50
    if-eq v2, v4, :cond_3

    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_3
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {p0, p1, v0, v1}, Lf2/r;->v(Ljava/lang/Object;Lf2/l0;Lf2/l0;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    iget-object v0, p0, Lf2/r;->p:Lf2/j0;

    .line 62
    .line 63
    invoke-virtual {v1, p1, v0}, Lf2/l0;->d(Ljava/lang/Object;Lf2/j0;)Lf2/j0;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget v4, p1, Lf2/j0;->b:I

    .line 68
    .line 69
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lf2/r;->o:Lf2/k0;

    .line 75
    .line 76
    iget-object v3, p0, Lf2/r;->p:Lf2/j0;

    .line 77
    .line 78
    const-wide/16 v7, 0x0

    .line 79
    .line 80
    invoke-virtual/range {v1 .. v8}, Lf2/l0;->f(Lf2/k0;Lf2/j0;IJJ)Landroid/util/Pair;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    return-object p1

    .line 88
    :catch_0
    :cond_4
    return-object v3
.end method

.method public final v(Ljava/lang/Object;Lf2/l0;Lf2/l0;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p2, p1}, Lf2/l0;->a(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p2}, Lf2/l0;->e()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p1

    move p1, v1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p1, v1, :cond_1

    iget-object v5, p0, Lf2/r;->p:Lf2/j0;

    iget-object v6, p0, Lf2/r;->o:Lf2/k0;

    iget v7, p0, Lf2/r;->F:I

    iget-boolean v8, p0, Lf2/r;->G:Z

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Lf2/l0;->b(ILf2/j0;Lf2/k0;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2, v4}, Lf2/l0;->g(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Lf2/l0;->a(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p3, p1}, Lf2/l0;->g(I)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public final w(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lf2/r;->w:Lf2/y;

    .line 2
    .line 3
    iget-object v0, v0, Lf2/y;->g:Lf2/w;

    .line 4
    .line 5
    iget-object v0, v0, Lf2/w;->f:Lf2/x;

    .line 6
    .line 7
    iget-object v2, v0, Lf2/x;->a:Lt2/f;

    .line 8
    .line 9
    iget-object v0, p0, Lf2/r;->y:Lf2/a0;

    .line 10
    .line 11
    iget-wide v0, v0, Lf2/a0;->m:J

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {p0, v2, v0, v1, v3}, Lf2/r;->y(Lt2/f;JZ)J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    iget-object v0, p0, Lf2/r;->y:Lf2/a0;

    .line 19
    .line 20
    iget-wide v0, v0, Lf2/a0;->m:J

    .line 21
    .line 22
    cmp-long v0, v3, v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lf2/r;->y:Lf2/a0;

    .line 27
    .line 28
    iget-wide v5, v0, Lf2/a0;->d:J

    .line 29
    .line 30
    move-object v1, p0

    .line 31
    invoke-virtual/range {v1 .. v6}, Lf2/r;->c(Lt2/f;JJ)Lf2/a0;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lf2/r;->y:Lf2/a0;

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Lf2/r;->t:Lf2/p;

    .line 40
    .line 41
    const/4 v0, 0x4

    .line 42
    invoke-virtual {p1, v0}, Lf2/p;->a(I)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final x(Lf2/q;)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v1, v7, Lf2/r;->t:Lf2/p;

    .line 6
    .line 7
    iget v2, v1, Lf2/p;->b:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    add-int/2addr v2, v3

    .line 11
    iput v2, v1, Lf2/p;->b:I

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p1}, Lf2/r;->u(Lf2/q;)Landroid/util/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iget-object v1, v7, Lf2/r;->y:Lf2/a0;

    .line 27
    .line 28
    iget-boolean v6, v7, Lf2/r;->G:Z

    .line 29
    .line 30
    iget-object v10, v7, Lf2/r;->o:Lf2/k0;

    .line 31
    .line 32
    iget-object v11, v7, Lf2/r;->p:Lf2/j0;

    .line 33
    .line 34
    invoke-virtual {v1, v6, v10, v11}, Lf2/a0;->e(ZLf2/k0;Lf2/j0;)Lt2/f;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    move-object v11, v1

    .line 39
    move v10, v3

    .line 40
    move-wide v12, v8

    .line 41
    move-wide v14, v12

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 44
    .line 45
    iget-object v10, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v10, Ljava/lang/Long;

    .line 48
    .line 49
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 50
    .line 51
    .line 52
    move-result-wide v10

    .line 53
    iget-object v12, v7, Lf2/r;->w:Lf2/y;

    .line 54
    .line 55
    invoke-virtual {v12, v6, v10, v11}, Lf2/y;->i(Ljava/lang/Object;J)Lt2/f;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v6}, Lt2/f;->a()Z

    .line 60
    .line 61
    .line 62
    move-result v12

    .line 63
    if-eqz v12, :cond_1

    .line 64
    .line 65
    move v1, v3

    .line 66
    move-wide v12, v4

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v1, Ljava/lang/Long;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 73
    .line 74
    .line 75
    move-result-wide v12

    .line 76
    iget-wide v14, v0, Lf2/q;->c:J

    .line 77
    .line 78
    cmp-long v1, v14, v8

    .line 79
    .line 80
    if-nez v1, :cond_2

    .line 81
    .line 82
    move v1, v3

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const/4 v1, 0x0

    .line 85
    :goto_0
    move-wide v14, v10

    .line 86
    move v10, v1

    .line 87
    move-object v11, v6

    .line 88
    :goto_1
    const/4 v6, 0x2

    .line 89
    :try_start_0
    iget-object v1, v7, Lf2/r;->z:Lt2/g;

    .line 90
    .line 91
    if-eqz v1, :cond_b

    .line 92
    .line 93
    iget v1, v7, Lf2/r;->I:I

    .line 94
    .line 95
    if-lez v1, :cond_3

    .line 96
    .line 97
    goto/16 :goto_5

    .line 98
    .line 99
    :cond_3
    cmp-long v0, v12, v8

    .line 100
    .line 101
    if-nez v0, :cond_4

    .line 102
    .line 103
    const/4 v0, 0x4

    .line 104
    invoke-virtual {v7, v0}, Lf2/r;->E(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    .line 106
    .line 107
    const/4 v2, 0x0

    .line 108
    const/4 v3, 0x0

    .line 109
    const/4 v4, 0x1

    .line 110
    const/4 v5, 0x0

    .line 111
    const/4 v0, 0x1

    .line 112
    move-object/from16 v1, p0

    .line 113
    .line 114
    move v8, v6

    .line 115
    move v6, v0

    .line 116
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lf2/r;->s(ZZZZZ)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_6

    .line 120
    .line 121
    :cond_4
    move v8, v6

    .line 122
    iget-object v0, v7, Lf2/r;->y:Lf2/a0;

    .line 123
    .line 124
    iget-object v0, v0, Lf2/a0;->b:Lt2/f;

    .line 125
    .line 126
    invoke-virtual {v11, v0}, Lt2/f;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_7

    .line 131
    .line 132
    iget-object v0, v7, Lf2/r;->w:Lf2/y;

    .line 133
    .line 134
    iget-object v0, v0, Lf2/y;->g:Lf2/w;

    .line 135
    .line 136
    if-eqz v0, :cond_5

    .line 137
    .line 138
    iget-boolean v1, v0, Lf2/w;->d:Z

    .line 139
    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    cmp-long v1, v12, v4

    .line 143
    .line 144
    if-eqz v1, :cond_5

    .line 145
    .line 146
    iget-object v0, v0, Lf2/w;->a:Lt2/e;

    .line 147
    .line 148
    iget-object v1, v7, Lf2/r;->x:Lf2/h0;

    .line 149
    .line 150
    invoke-interface {v0, v12, v13, v1}, Lt2/e;->f(JLf2/h0;)J

    .line 151
    .line 152
    .line 153
    move-result-wide v0

    .line 154
    goto :goto_2

    .line 155
    :cond_5
    move-wide v0, v12

    .line 156
    :goto_2
    invoke-static {v0, v1}, Lf2/d;->b(J)J

    .line 157
    .line 158
    .line 159
    move-result-wide v4

    .line 160
    iget-object v6, v7, Lf2/r;->y:Lf2/a0;

    .line 161
    .line 162
    iget-wide v2, v6, Lf2/a0;->m:J

    .line 163
    .line 164
    invoke-static {v2, v3}, Lf2/d;->b(J)J

    .line 165
    .line 166
    .line 167
    move-result-wide v2

    .line 168
    cmp-long v2, v4, v2

    .line 169
    .line 170
    if-nez v2, :cond_8

    .line 171
    .line 172
    iget-object v0, v7, Lf2/r;->y:Lf2/a0;

    .line 173
    .line 174
    iget-wide v3, v0, Lf2/a0;->m:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .line 176
    move-object/from16 v1, p0

    .line 177
    .line 178
    move-object v2, v11

    .line 179
    move-wide v5, v14

    .line 180
    invoke-virtual/range {v1 .. v6}, Lf2/r;->c(Lt2/f;JJ)Lf2/a0;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iput-object v0, v7, Lf2/r;->y:Lf2/a0;

    .line 185
    .line 186
    if-eqz v10, :cond_6

    .line 187
    .line 188
    iget-object v0, v7, Lf2/r;->t:Lf2/p;

    .line 189
    .line 190
    invoke-virtual {v0, v8}, Lf2/p;->a(I)V

    .line 191
    .line 192
    .line 193
    :cond_6
    return-void

    .line 194
    :cond_7
    move-wide v0, v12

    .line 195
    :cond_8
    :try_start_2
    iget-object v2, v7, Lf2/r;->w:Lf2/y;

    .line 196
    .line 197
    iget-object v3, v2, Lf2/y;->g:Lf2/w;

    .line 198
    .line 199
    iget-object v2, v2, Lf2/y;->h:Lf2/w;

    .line 200
    .line 201
    if-eq v3, v2, :cond_9

    .line 202
    .line 203
    const/4 v2, 0x1

    .line 204
    goto :goto_3

    .line 205
    :cond_9
    const/4 v2, 0x0

    .line 206
    :goto_3
    invoke-virtual {v7, v11, v0, v1, v2}, Lf2/r;->y(Lt2/f;JZ)J

    .line 207
    .line 208
    .line 209
    move-result-wide v0

    .line 210
    cmp-long v2, v12, v0

    .line 211
    .line 212
    if-eqz v2, :cond_a

    .line 213
    .line 214
    const/4 v3, 0x1

    .line 215
    goto :goto_4

    .line 216
    :cond_a
    const/4 v3, 0x0

    .line 217
    :goto_4
    or-int/2addr v10, v3

    .line 218
    move-wide v3, v0

    .line 219
    goto :goto_7

    .line 220
    :catchall_0
    move-exception v0

    .line 221
    goto :goto_8

    .line 222
    :cond_b
    :goto_5
    move v8, v6

    .line 223
    iput-object v0, v7, Lf2/r;->J:Lf2/q;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    .line 225
    :goto_6
    move-wide v3, v12

    .line 226
    :goto_7
    move-object/from16 v1, p0

    .line 227
    .line 228
    move-object v2, v11

    .line 229
    move-wide v5, v14

    .line 230
    invoke-virtual/range {v1 .. v6}, Lf2/r;->c(Lt2/f;JJ)Lf2/a0;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    iput-object v0, v7, Lf2/r;->y:Lf2/a0;

    .line 235
    .line 236
    if-eqz v10, :cond_c

    .line 237
    .line 238
    iget-object v0, v7, Lf2/r;->t:Lf2/p;

    .line 239
    .line 240
    invoke-virtual {v0, v8}, Lf2/p;->a(I)V

    .line 241
    .line 242
    .line 243
    :cond_c
    return-void

    .line 244
    :catchall_1
    move-exception v0

    .line 245
    move v8, v6

    .line 246
    :goto_8
    move-object/from16 v1, p0

    .line 247
    .line 248
    move-object v2, v11

    .line 249
    move-wide v3, v12

    .line 250
    move-wide v5, v14

    .line 251
    invoke-virtual/range {v1 .. v6}, Lf2/r;->c(Lt2/f;JJ)Lf2/a0;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    iput-object v1, v7, Lf2/r;->y:Lf2/a0;

    .line 256
    .line 257
    if-eqz v10, :cond_d

    .line 258
    .line 259
    iget-object v1, v7, Lf2/r;->t:Lf2/p;

    .line 260
    .line 261
    invoke-virtual {v1, v8}, Lf2/p;->a(I)V

    .line 262
    .line 263
    .line 264
    :cond_d
    throw v0
.end method

.method public final y(Lt2/f;JZ)J
    .locals 10

    .line 1
    invoke-virtual {p0}, Lf2/r;->H()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lf2/r;->D:Z

    .line 6
    .line 7
    iget-object v1, p0, Lf2/r;->y:Lf2/a0;

    .line 8
    .line 9
    iget v2, v1, Lf2/a0;->e:I

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x1

    .line 13
    if-eq v2, v4, :cond_0

    .line 14
    .line 15
    iget-object v1, v1, Lf2/a0;->a:Lf2/l0;

    .line 16
    .line 17
    invoke-virtual {v1}, Lf2/l0;->k()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v3}, Lf2/r;->E(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lf2/r;->w:Lf2/y;

    .line 27
    .line 28
    iget-object v2, v1, Lf2/y;->g:Lf2/w;

    .line 29
    .line 30
    move-object v5, v2

    .line 31
    :goto_0
    if-eqz v5, :cond_2

    .line 32
    .line 33
    iget-object v6, v5, Lf2/w;->f:Lf2/x;

    .line 34
    .line 35
    iget-object v6, v6, Lf2/x;->a:Lt2/f;

    .line 36
    .line 37
    invoke-virtual {p1, v6}, Lt2/f;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_1

    .line 42
    .line 43
    iget-boolean v6, v5, Lf2/w;->d:Z

    .line 44
    .line 45
    if-eqz v6, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1, v5}, Lf2/y;->h(Lf2/w;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {v1}, Lf2/y;->a()Lf2/w;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    :goto_1
    const-wide/16 v6, 0x0

    .line 57
    .line 58
    if-nez p4, :cond_3

    .line 59
    .line 60
    if-ne v2, v5, :cond_3

    .line 61
    .line 62
    if-eqz v5, :cond_6

    .line 63
    .line 64
    iget-wide v8, v5, Lf2/w;->n:J

    .line 65
    .line 66
    add-long/2addr v8, p2

    .line 67
    cmp-long p1, v8, v6

    .line 68
    .line 69
    if-gez p1, :cond_6

    .line 70
    .line 71
    :cond_3
    iget-object p1, p0, Lf2/r;->A:[Lf2/e0;

    .line 72
    .line 73
    array-length p4, p1

    .line 74
    move v2, v0

    .line 75
    :goto_2
    if-ge v2, p4, :cond_4

    .line 76
    .line 77
    aget-object v8, p1, v2

    .line 78
    .line 79
    invoke-virtual {p0, v8}, Lf2/r;->d(Lf2/e0;)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v2, v2, 0x1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    new-array p1, v0, [Lf2/e0;

    .line 86
    .line 87
    iput-object p1, p0, Lf2/r;->A:[Lf2/e0;

    .line 88
    .line 89
    if-eqz v5, :cond_5

    .line 90
    .line 91
    iput-wide v6, v5, Lf2/w;->n:J

    .line 92
    .line 93
    :cond_5
    const/4 v2, 0x0

    .line 94
    :cond_6
    if-eqz v5, :cond_8

    .line 95
    .line 96
    invoke-virtual {p0, v2}, Lf2/r;->L(Lf2/w;)V

    .line 97
    .line 98
    .line 99
    iget-boolean p1, v5, Lf2/w;->e:Z

    .line 100
    .line 101
    if-eqz p1, :cond_7

    .line 102
    .line 103
    iget-object p1, v5, Lf2/w;->a:Lt2/e;

    .line 104
    .line 105
    invoke-interface {p1, p2, p3}, Lt2/e;->r(J)J

    .line 106
    .line 107
    .line 108
    move-result-wide p2

    .line 109
    iget-wide v1, p0, Lf2/r;->q:J

    .line 110
    .line 111
    sub-long v1, p2, v1

    .line 112
    .line 113
    iget-boolean p4, p0, Lf2/r;->r:Z

    .line 114
    .line 115
    invoke-interface {p1, v1, v2, p4}, Lt2/e;->o(JZ)V

    .line 116
    .line 117
    .line 118
    :cond_7
    invoke-virtual {p0, p2, p3}, Lf2/r;->t(J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lf2/r;->n()V

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_8
    invoke-virtual {v1, v4}, Lf2/y;->b(Z)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lf2/r;->y:Lf2/a0;

    .line 129
    .line 130
    sget-object p4, Lt2/x;->d:Lt2/x;

    .line 131
    .line 132
    iget-object v1, p0, Lf2/r;->i:Landroidx/activity/result/c;

    .line 133
    .line 134
    invoke-virtual {p1, p4, v1}, Lf2/a0;->c(Lt2/x;Landroidx/activity/result/c;)Lf2/a0;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iput-object p1, p0, Lf2/r;->y:Lf2/a0;

    .line 139
    .line 140
    invoke-virtual {p0, p2, p3}, Lf2/r;->t(J)V

    .line 141
    .line 142
    .line 143
    :goto_3
    invoke-virtual {p0, v0}, Lf2/r;->h(Z)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lf2/r;->l:Lh/a;

    .line 147
    .line 148
    invoke-virtual {p1, v3}, Lh/a;->G(I)V

    .line 149
    .line 150
    .line 151
    return-wide p2
.end method

.method public final z(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lf2/r;->H:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lf2/r;->H:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lf2/r;->f:[Lf2/e0;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-interface {v2}, Lf2/e0;->getState()I

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lf2/e0;->reset()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method
