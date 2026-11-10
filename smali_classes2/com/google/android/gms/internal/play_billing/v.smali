.class public final Lcom/google/android/gms/internal/play_billing/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/v;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;Lt2/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/v;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/v;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/v;->c:Ljava/lang/Object;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/play_billing/v;->b:J

    return-void
.end method

.method public static i(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 3

    .line 1
    invoke-static {p1, p2}, Lf2/d;->b(J)J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/play_billing/v;->b:J

    add-long/2addr v0, p1

    :goto_0
    return-wide v0
.end method

.method public final b(Landroid/net/Uri;IIILjava/lang/Object;JJJJJ)V
    .locals 0

    new-instance p10, Lt2/l;

    invoke-direct {p10, p1}, Lt2/l;-><init>(Landroid/net/Uri;)V

    new-instance p11, Lt2/m;

    invoke-virtual {p0, p6, p7}, Lcom/google/android/gms/internal/play_billing/v;->a(J)J

    invoke-virtual {p0, p8, p9}, Lcom/google/android/gms/internal/play_billing/v;->a(J)J

    invoke-direct {p11, p2, p5}, Lt2/m;-><init>(ILjava/lang/Object;)V

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/v;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p7

    :goto_0
    invoke-interface {p7}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object p8, p1

    check-cast p8, Lt2/k;

    iget-object p3, p8, Lt2/k;->b:Lt2/n;

    new-instance p9, Lt2/i;

    const/4 p6, 0x1

    move-object p1, p9

    move-object p2, p0

    move-object p4, p10

    move-object p5, p11

    invoke-direct/range {p1 .. p6}, Lt2/i;-><init>(Lcom/google/android/gms/internal/play_billing/v;Lt2/n;Lt2/l;Lt2/m;I)V

    iget-object p1, p8, Lt2/k;->a:Landroid/os/Handler;

    invoke-static {p1, p9}, Lcom/google/android/gms/internal/play_billing/v;->i(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Landroid/net/Uri;JJJ)V
    .locals 16

    .line 1
    const/4 v2, 0x4

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-wide/from16 v14, p6

    invoke-virtual/range {v0 .. v15}, Lcom/google/android/gms/internal/play_billing/v;->b(Landroid/net/Uri;IIILjava/lang/Object;JJJJJ)V

    return-void
.end method

.method public final d(Landroid/net/Uri;IIILjava/lang/Object;JJJJJ)V
    .locals 0

    new-instance p10, Lt2/l;

    invoke-direct {p10, p1}, Lt2/l;-><init>(Landroid/net/Uri;)V

    new-instance p11, Lt2/m;

    invoke-virtual {p0, p6, p7}, Lcom/google/android/gms/internal/play_billing/v;->a(J)J

    invoke-virtual {p0, p8, p9}, Lcom/google/android/gms/internal/play_billing/v;->a(J)J

    invoke-direct {p11, p2, p5}, Lt2/m;-><init>(ILjava/lang/Object;)V

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/v;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p7

    :goto_0
    invoke-interface {p7}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object p8, p1

    check-cast p8, Lt2/k;

    iget-object p3, p8, Lt2/k;->b:Lt2/n;

    new-instance p9, Lt2/i;

    const/4 p6, 0x2

    move-object p1, p9

    move-object p2, p0

    move-object p4, p10

    move-object p5, p11

    invoke-direct/range {p1 .. p6}, Lt2/i;-><init>(Lcom/google/android/gms/internal/play_billing/v;Lt2/n;Lt2/l;Lt2/m;I)V

    iget-object p1, p8, Lt2/k;->a:Landroid/os/Handler;

    invoke-static {p1, p9}, Lcom/google/android/gms/internal/play_billing/v;->i(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Landroid/net/Uri;JJJ)V
    .locals 16

    .line 1
    const/4 v2, 0x4

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-wide/from16 v14, p6

    invoke-virtual/range {v0 .. v15}, Lcom/google/android/gms/internal/play_billing/v;->d(Landroid/net/Uri;IIILjava/lang/Object;JJJJJ)V

    return-void
.end method

.method public final f(Landroid/net/Uri;IIILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .locals 7

    move-object v0, p0

    new-instance v1, Lt2/l;

    move-object v2, p1

    invoke-direct {v1, p1}, Lt2/l;-><init>(Landroid/net/Uri;)V

    new-instance v2, Lt2/m;

    move-wide v3, p6

    invoke-virtual {p0, p6, p7}, Lcom/google/android/gms/internal/play_billing/v;->a(J)J

    move-wide v3, p8

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/play_billing/v;->a(J)J

    move v3, p2

    move-object v4, p5

    invoke-direct {v2, p2, p5}, Lt2/m;-><init>(ILjava/lang/Object;)V

    .line 1
    iget-object v3, v0, Lcom/google/android/gms/internal/play_billing/v;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt2/k;

    iget-object v5, v4, Lt2/k;->b:Lt2/n;

    new-instance v6, Lt2/j;

    move-object p1, v6

    move-object p2, p0

    move-object p3, v5

    move-object p4, v1

    move-object p5, v2

    move-object/from16 p6, p16

    move/from16 p7, p17

    invoke-direct/range {p1 .. p7}, Lt2/j;-><init>(Lcom/google/android/gms/internal/play_billing/v;Lt2/n;Lt2/l;Lt2/m;Ljava/io/IOException;Z)V

    iget-object v4, v4, Lt2/k;->a:Landroid/os/Handler;

    invoke-static {v4, v6}, Lcom/google/android/gms/internal/play_billing/v;->i(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Landroid/net/Uri;JJJLjava/io/IOException;Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-wide/from16 v14, p6

    move-object/from16 v16, p8

    move/from16 v17, p9

    const/4 v2, 0x4

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v0 .. v17}, Lcom/google/android/gms/internal/play_billing/v;->f(Landroid/net/Uri;IIILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    return-void
.end method

.method public final h(La3/l;IIILjava/lang/Object;JJJ)V
    .locals 0

    new-instance p10, Lt2/l;

    iget-object p1, p1, La3/l;->a:Landroid/net/Uri;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    invoke-direct {p10, p1}, Lt2/l;-><init>(Landroid/net/Uri;)V

    new-instance p11, Lt2/m;

    invoke-virtual {p0, p6, p7}, Lcom/google/android/gms/internal/play_billing/v;->a(J)J

    invoke-virtual {p0, p8, p9}, Lcom/google/android/gms/internal/play_billing/v;->a(J)J

    invoke-direct {p11, p2, p5}, Lt2/m;-><init>(ILjava/lang/Object;)V

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/v;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p7

    :goto_0
    invoke-interface {p7}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object p8, p1

    check-cast p8, Lt2/k;

    iget-object p3, p8, Lt2/k;->b:Lt2/n;

    new-instance p9, Lt2/i;

    const/4 p6, 0x0

    move-object p1, p9

    move-object p2, p0

    move-object p4, p10

    move-object p5, p11

    invoke-direct/range {p1 .. p6}, Lt2/i;-><init>(Lcom/google/android/gms/internal/play_billing/v;Lt2/n;Lt2/l;Lt2/m;I)V

    iget-object p1, p8, Lt2/k;->a:Landroid/os/Handler;

    invoke-static {p1, p9}, Lcom/google/android/gms/internal/play_billing/v;->i(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
