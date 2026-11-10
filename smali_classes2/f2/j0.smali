.class public final Lf2/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public c:J

.field public d:J

.field public e:Lu2/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lu2/b;->e:Lu2/b;

    iput-object v0, p0, Lf2/j0;->e:Lu2/b;

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 8

    .line 1
    iget-object v0, p0, Lf2/j0;->e:Lu2/b;

    .line 2
    .line 3
    iget-wide v1, p0, Lf2/j0;->c:J

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-wide/high16 v3, -0x8000000000000000L

    .line 9
    .line 10
    cmp-long v5, p1, v3

    .line 11
    .line 12
    if-eqz v5, :cond_3

    .line 13
    .line 14
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmp-long v5, v1, v5

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    cmp-long v1, p1, v1

    .line 24
    .line 25
    if-ltz v1, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    iget-object v2, v0, Lu2/b;->b:[J

    .line 30
    .line 31
    array-length v5, v2

    .line 32
    if-ge v1, v5, :cond_2

    .line 33
    .line 34
    aget-wide v5, v2, v1

    .line 35
    .line 36
    cmp-long v7, v5, v3

    .line 37
    .line 38
    if-eqz v7, :cond_2

    .line 39
    .line 40
    cmp-long v5, p1, v5

    .line 41
    .line 42
    if-gez v5, :cond_1

    .line 43
    .line 44
    iget-object p1, v0, Lu2/b;->c:[Lu2/a;

    .line 45
    .line 46
    aget-object p1, p1, v1

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    :goto_1
    array-length p1, v2

    .line 56
    if-ge v1, p1, :cond_3

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_3
    :goto_2
    const/4 v1, -0x1

    .line 60
    :goto_3
    return v1
.end method

.method public final b(J)I
    .locals 8

    .line 1
    iget-object v0, p0, Lf2/j0;->e:Lu2/b;

    .line 2
    .line 3
    iget-object v1, v0, Lu2/b;->b:[J

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x1

    .line 7
    sub-int/2addr v2, v3

    .line 8
    :goto_0
    if-ltz v2, :cond_4

    .line 9
    .line 10
    const-wide/high16 v4, -0x8000000000000000L

    .line 11
    .line 12
    cmp-long v6, p1, v4

    .line 13
    .line 14
    if-nez v6, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    aget-wide v6, v1, v2

    .line 18
    .line 19
    cmp-long v4, v6, v4

    .line 20
    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    iget-wide v6, v0, Lu2/b;->d:J

    .line 29
    .line 30
    cmp-long v4, v6, v4

    .line 31
    .line 32
    if-eqz v4, :cond_2

    .line 33
    .line 34
    cmp-long v4, p1, v6

    .line 35
    .line 36
    if-gez v4, :cond_3

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    cmp-long v4, p1, v6

    .line 40
    .line 41
    if-gez v4, :cond_3

    .line 42
    .line 43
    :cond_2
    :goto_1
    move v4, v3

    .line 44
    goto :goto_3

    .line 45
    :cond_3
    :goto_2
    const/4 v4, 0x0

    .line 46
    :goto_3
    if-eqz v4, :cond_4

    .line 47
    .line 48
    add-int/lit8 v2, v2, -0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    if-ltz v2, :cond_5

    .line 52
    .line 53
    iget-object p1, v0, Lu2/b;->c:[Lu2/a;

    .line 54
    .line 55
    aget-object p1, p1, v2

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_5
    const/4 v2, -0x1

    .line 62
    :goto_4
    return v2
.end method
