.class public final Ll2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/d;


# instance fields
.field public final a:J

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:[J


# direct methods
.method public constructor <init>(JIJJ[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ll2/f;->a:J

    iput p3, p0, Ll2/f;->b:I

    iput-wide p4, p0, Ll2/f;->c:J

    iput-object p8, p0, Ll2/f;->f:[J

    iput-wide p6, p0, Ll2/f;->d:J

    const-wide/16 p3, -0x1

    cmp-long p5, p6, p3

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    add-long p3, p1, p6

    :goto_0
    iput-wide p3, p0, Ll2/f;->e:J

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll2/f;->f:[J

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b(J)J
    .locals 13

    .line 1
    iget-wide v0, p0, Ll2/f;->a:J

    .line 2
    .line 3
    sub-long/2addr p1, v0

    .line 4
    invoke-virtual {p0}, Ll2/f;->a()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget v0, p0, Ll2/f;->b:I

    .line 11
    .line 12
    int-to-long v0, v0

    .line 13
    cmp-long v0, p1, v0

    .line 14
    .line 15
    if-gtz v0, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    iget-object v0, p0, Ll2/f;->f:[J

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    long-to-double p1, p1

    .line 24
    const-wide/high16 v1, 0x4070000000000000L    # 256.0

    .line 25
    .line 26
    mul-double/2addr p1, v1

    .line 27
    iget-wide v1, p0, Ll2/f;->d:J

    .line 28
    .line 29
    long-to-double v1, v1

    .line 30
    div-double/2addr p1, v1

    .line 31
    double-to-long v1, p1

    .line 32
    invoke-static {v0, v1, v2}, Lb3/n;->b([JJ)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    int-to-long v2, v1

    .line 37
    iget-wide v4, p0, Ll2/f;->c:J

    .line 38
    .line 39
    mul-long/2addr v2, v4

    .line 40
    const-wide/16 v6, 0x64

    .line 41
    .line 42
    div-long/2addr v2, v6

    .line 43
    aget-wide v8, v0, v1

    .line 44
    .line 45
    add-int/lit8 v10, v1, 0x1

    .line 46
    .line 47
    int-to-long v11, v10

    .line 48
    mul-long/2addr v4, v11

    .line 49
    div-long/2addr v4, v6

    .line 50
    const/16 v6, 0x63

    .line 51
    .line 52
    if-ne v1, v6, :cond_1

    .line 53
    .line 54
    const-wide/16 v0, 0x100

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    aget-wide v6, v0, v10

    .line 58
    .line 59
    move-wide v0, v6

    .line 60
    :goto_0
    cmp-long v6, v8, v0

    .line 61
    .line 62
    if-nez v6, :cond_2

    .line 63
    .line 64
    const-wide/16 p1, 0x0

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    long-to-double v6, v8

    .line 68
    sub-double/2addr p1, v6

    .line 69
    sub-long/2addr v0, v8

    .line 70
    long-to-double v0, v0

    .line 71
    div-double/2addr p1, v0

    .line 72
    :goto_1
    sub-long/2addr v4, v2

    .line 73
    long-to-double v0, v4

    .line 74
    mul-double/2addr p1, v0

    .line 75
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    .line 76
    .line 77
    .line 78
    move-result-wide p1

    .line 79
    add-long/2addr p1, v2

    .line 80
    return-wide p1

    .line 81
    :cond_3
    :goto_2
    const-wide/16 p1, 0x0

    .line 82
    .line 83
    return-wide p1
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ll2/f;->e:J

    return-wide v0
.end method
