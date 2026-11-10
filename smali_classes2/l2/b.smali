.class public final Ll2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/d;


# instance fields
.field public final a:[J

.field public final b:[J


# direct methods
.method public constructor <init>([J[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll2/b;->a:[J

    iput-object p2, p0, Ll2/b;->b:[J

    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget-wide p1, p2, p1

    sget-object p1, Lf2/d;->a:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final b(J)J
    .locals 13

    .line 1
    iget-object v0, p0, Ll2/b;->a:[J

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lb3/n;->b([JJ)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget-wide v2, v0, v1

    .line 8
    .line 9
    iget-object v4, p0, Ll2/b;->b:[J

    .line 10
    .line 11
    aget-wide v5, v4, v1

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    array-length v7, v0

    .line 16
    if-ne v1, v7, :cond_0

    .line 17
    .line 18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    aget-wide v7, v0, v1

    .line 28
    .line 29
    aget-wide v0, v4, v1

    .line 30
    .line 31
    cmp-long v4, v7, v2

    .line 32
    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    const-wide/16 v2, 0x0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    long-to-double v9, p1

    .line 39
    long-to-double v11, v2

    .line 40
    sub-double/2addr v9, v11

    .line 41
    sub-long/2addr v7, v2

    .line 42
    long-to-double v2, v7

    .line 43
    div-double v2, v9, v2

    .line 44
    .line 45
    :goto_0
    sub-long/2addr v0, v5

    .line 46
    long-to-double v0, v0

    .line 47
    mul-double/2addr v2, v0

    .line 48
    double-to-long v0, v2

    .line 49
    add-long/2addr v0, v5

    .line 50
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    :goto_1
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p1, Ljava/lang/Long;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 67
    .line 68
    .line 69
    move-result-wide p1

    .line 70
    invoke-static {p1, p2}, Lf2/d;->a(J)J

    .line 71
    .line 72
    .line 73
    move-result-wide p1

    .line 74
    return-wide p1
.end method

.method public final c()J
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    return-wide v0
.end method
