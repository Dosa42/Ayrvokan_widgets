.class public final Lf2/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final n:Lt2/f;


# instance fields
.field public final a:Lf2/l0;

.field public final b:Lt2/f;

.field public final c:J

.field public final d:J

.field public final e:I

.field public final f:Lf2/h;

.field public final g:Z

.field public final h:Lt2/x;

.field public final i:Landroidx/activity/result/c;

.field public final j:Lt2/f;

.field public volatile k:J

.field public volatile l:J

.field public volatile m:J


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lt2/f;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, -0x1

    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v3}, Lt2/f;-><init>(Ljava/lang/Object;J)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lf2/a0;->n:Lt2/f;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lf2/l0;Lt2/f;JJILf2/h;ZLt2/x;Landroidx/activity/result/c;Lt2/f;JJJ)V
    .locals 3

    .line 1
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lf2/a0;->a:Lf2/l0;

    move-object v1, p2

    iput-object v1, v0, Lf2/a0;->b:Lt2/f;

    move-wide v1, p3

    iput-wide v1, v0, Lf2/a0;->c:J

    move-wide v1, p5

    iput-wide v1, v0, Lf2/a0;->d:J

    move v1, p7

    iput v1, v0, Lf2/a0;->e:I

    move-object v1, p8

    iput-object v1, v0, Lf2/a0;->f:Lf2/h;

    move v1, p9

    iput-boolean v1, v0, Lf2/a0;->g:Z

    move-object v1, p10

    iput-object v1, v0, Lf2/a0;->h:Lt2/x;

    move-object v1, p11

    iput-object v1, v0, Lf2/a0;->i:Landroidx/activity/result/c;

    move-object v1, p12

    iput-object v1, v0, Lf2/a0;->j:Lt2/f;

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lf2/a0;->k:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lf2/a0;->l:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lf2/a0;->m:J

    return-void
.end method

.method public static d(JLandroidx/activity/result/c;)Lf2/a0;
    .locals 20

    .line 1
    move-wide/from16 v3, p0

    move-wide/from16 v13, p0

    move-wide/from16 v17, p0

    move-object/from16 v11, p2

    new-instance v19, Lf2/a0;

    move-object/from16 v0, v19

    sget-object v1, Lf2/l0;->a:Lf2/i0;

    sget-object v2, Lf2/a0;->n:Lt2/f;

    move-object v12, v2

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Lt2/x;->d:Lt2/x;

    const-wide/16 v15, 0x0

    invoke-direct/range {v0 .. v18}, Lf2/a0;-><init>(Lf2/l0;Lt2/f;JJILf2/h;ZLt2/x;Landroidx/activity/result/c;Lt2/f;JJJ)V

    return-object v19
.end method


# virtual methods
.method public final a(Lt2/f;JJJ)Lf2/a0;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    new-instance v20, Lf2/a0;

    iget-object v2, v0, Lf2/a0;->a:Lf2/l0;

    invoke-virtual/range {p1 .. p1}, Lt2/f;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide/from16 v6, p4

    goto :goto_0

    :cond_0
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v6, v3

    :goto_0
    iget v8, v0, Lf2/a0;->e:I

    iget-object v9, v0, Lf2/a0;->f:Lf2/h;

    iget-boolean v10, v0, Lf2/a0;->g:Z

    iget-object v11, v0, Lf2/a0;->h:Lt2/x;

    iget-object v12, v0, Lf2/a0;->i:Landroidx/activity/result/c;

    iget-object v13, v0, Lf2/a0;->j:Lt2/f;

    iget-wide v14, v0, Lf2/a0;->k:J

    move-object/from16 v1, v20

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v16, p6

    move-wide/from16 v18, p2

    invoke-direct/range {v1 .. v19}, Lf2/a0;-><init>(Lf2/l0;Lt2/f;JJILf2/h;ZLt2/x;Landroidx/activity/result/c;Lt2/f;JJJ)V

    return-object v20
.end method

.method public final b(Lf2/h;)Lf2/a0;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    new-instance v20, Lf2/a0;

    move-object/from16 v1, v20

    iget-object v2, v0, Lf2/a0;->a:Lf2/l0;

    iget-object v3, v0, Lf2/a0;->b:Lt2/f;

    iget-wide v4, v0, Lf2/a0;->c:J

    iget-wide v6, v0, Lf2/a0;->d:J

    iget v8, v0, Lf2/a0;->e:I

    iget-boolean v10, v0, Lf2/a0;->g:Z

    iget-object v11, v0, Lf2/a0;->h:Lt2/x;

    iget-object v12, v0, Lf2/a0;->i:Landroidx/activity/result/c;

    iget-object v13, v0, Lf2/a0;->j:Lt2/f;

    iget-wide v14, v0, Lf2/a0;->k:J

    move-object/from16 p1, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Lf2/a0;->l:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lf2/a0;->m:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct/range {v1 .. v19}, Lf2/a0;-><init>(Lf2/l0;Lt2/f;JJILf2/h;ZLt2/x;Landroidx/activity/result/c;Lt2/f;JJJ)V

    return-object v20
.end method

.method public final c(Lt2/x;Landroidx/activity/result/c;)Lf2/a0;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    new-instance v20, Lf2/a0;

    move-object/from16 v1, v20

    iget-object v2, v0, Lf2/a0;->a:Lf2/l0;

    iget-object v3, v0, Lf2/a0;->b:Lt2/f;

    iget-wide v4, v0, Lf2/a0;->c:J

    iget-wide v6, v0, Lf2/a0;->d:J

    iget v8, v0, Lf2/a0;->e:I

    iget-object v9, v0, Lf2/a0;->f:Lf2/h;

    iget-boolean v10, v0, Lf2/a0;->g:Z

    iget-object v13, v0, Lf2/a0;->j:Lt2/f;

    iget-wide v14, v0, Lf2/a0;->k:J

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lf2/a0;->l:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lf2/a0;->m:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v19}, Lf2/a0;-><init>(Lf2/l0;Lt2/f;JJILf2/h;ZLt2/x;Landroidx/activity/result/c;Lt2/f;JJJ)V

    return-object v20
.end method

.method public final e(ZLf2/k0;Lf2/j0;)Lt2/f;
    .locals 5

    .line 1
    iget-object p1, p0, Lf2/a0;->a:Lf2/l0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lf2/l0;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Lf2/a0;->n:Lt2/f;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p1}, Lf2/l0;->k()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, -0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    move v0, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v2

    .line 23
    :goto_0
    invoke-virtual {p1, v0, p2}, Lf2/l0;->h(ILf2/k0;)Lf2/k0;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iget p2, p2, Lf2/k0;->e:I

    .line 28
    .line 29
    iget-object v3, p0, Lf2/a0;->b:Lt2/f;

    .line 30
    .line 31
    iget-object v4, v3, Lt2/f;->a:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-virtual {p1, v4}, Lf2/l0;->a(Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eq v4, v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1, v4, p3, v2}, Lf2/l0;->c(ILf2/j0;Z)Lf2/j0;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    iget p3, p3, Lf2/j0;->b:I

    .line 44
    .line 45
    if-ne v0, p3, :cond_2

    .line 46
    .line 47
    iget-wide v0, v3, Lt2/f;->d:J

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const-wide/16 v0, -0x1

    .line 51
    .line 52
    :goto_1
    new-instance p3, Lt2/f;

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Lf2/l0;->g(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p3, p1, v0, v1}, Lt2/f;-><init>(Ljava/lang/Object;J)V

    .line 59
    .line 60
    .line 61
    return-object p3
.end method
