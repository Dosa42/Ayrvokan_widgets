.class public final Lt2/v;
.super Lf2/l0;
.source "SourceFile"


# static fields
.field public static final i:Ljava/lang/Object;


# instance fields
.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Z

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lt2/v;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(JJJJJJZZLn2/a0;Ljava/lang/Object;)V
    .locals 3

    .line 1
    move-object v0, p0

    invoke-direct {p0}, Lf2/l0;-><init>()V

    move-wide v1, p5

    iput-wide v1, v0, Lt2/v;->b:J

    move-wide v1, p7

    iput-wide v1, v0, Lt2/v;->c:J

    move-wide v1, p9

    iput-wide v1, v0, Lt2/v;->d:J

    move-wide v1, p11

    iput-wide v1, v0, Lt2/v;->e:J

    move/from16 v1, p13

    iput-boolean v1, v0, Lt2/v;->f:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lt2/v;->h:Ljava/lang/Object;

    move-object/from16 v1, p16

    iput-object v1, v0, Lt2/v;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, Lt2/v;->i:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final c(ILf2/j0;Z)Lf2/j0;
    .locals 4

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ge p1, v0, :cond_1

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    sget-object p1, Lt2/v;->i:Ljava/lang/Object;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    iget-wide v0, p0, Lt2/v;->d:J

    .line 13
    .line 14
    neg-long v0, v0

    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object p3, Lu2/b;->e:Lu2/b;

    .line 19
    .line 20
    iput-object p1, p2, Lf2/j0;->a:Ljava/lang/Object;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput p1, p2, Lf2/j0;->b:I

    .line 24
    .line 25
    iget-wide v2, p0, Lt2/v;->b:J

    .line 26
    .line 27
    iput-wide v2, p2, Lf2/j0;->c:J

    .line 28
    .line 29
    iput-wide v0, p2, Lf2/j0;->d:J

    .line 30
    .line 31
    iput-object p3, p2, Lf2/j0;->e:Lu2/b;

    .line 32
    .line 33
    return-object p2

    .line 34
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public final e()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final g(I)Ljava/lang/Object;
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ge p1, v0, :cond_0

    .line 5
    .line 6
    sget-object p1, Lt2/v;->i:Ljava/lang/Object;

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public final i(ILf2/k0;J)Lf2/k0;
    .locals 7

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ge p1, v0, :cond_2

    .line 5
    .line 6
    iget-wide v0, p0, Lt2/v;->c:J

    .line 7
    .line 8
    iget-wide v2, p0, Lt2/v;->e:J

    .line 9
    .line 10
    iget-boolean p1, p0, Lt2/v;->f:Z

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    cmp-long v4, p3, v4

    .line 17
    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    cmp-long v6, v0, v4

    .line 26
    .line 27
    if-nez v6, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    add-long/2addr v2, p3

    .line 31
    cmp-long p3, v2, v0

    .line 32
    .line 33
    if-lez p3, :cond_1

    .line 34
    .line 35
    :goto_0
    move-wide v2, v4

    .line 36
    :cond_1
    sget-object p3, Lf2/k0;->j:Ljava/lang/Object;

    .line 37
    .line 38
    iput-object p3, p2, Lf2/k0;->a:Ljava/lang/Object;

    .line 39
    .line 40
    iget-object p3, p0, Lt2/v;->g:Ljava/lang/Object;

    .line 41
    .line 42
    iput-object p3, p2, Lf2/k0;->b:Ljava/lang/Object;

    .line 43
    .line 44
    iget-object p3, p0, Lt2/v;->h:Ljava/lang/Object;

    .line 45
    .line 46
    iput-object p3, p2, Lf2/k0;->c:Ljava/lang/Object;

    .line 47
    .line 48
    iput-boolean p1, p2, Lf2/k0;->d:Z

    .line 49
    .line 50
    iput-wide v2, p2, Lf2/k0;->g:J

    .line 51
    .line 52
    iput-wide v0, p2, Lf2/k0;->h:J

    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    iput p1, p2, Lf2/k0;->e:I

    .line 56
    .line 57
    iput p1, p2, Lf2/k0;->f:I

    .line 58
    .line 59
    iget-wide p3, p0, Lt2/v;->d:J

    .line 60
    .line 61
    iput-wide p3, p2, Lf2/k0;->i:J

    .line 62
    .line 63
    return-object p2

    .line 64
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method public final j()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
