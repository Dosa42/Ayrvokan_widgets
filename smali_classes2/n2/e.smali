.class public final Ln2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/h;


# instance fields
.field public final a:Ln2/f;

.field public final b:Lb3/h;

.field public final c:Lb3/h;

.field public final d:Lb3/g;

.field public e:Lk2/i;

.field public f:J

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ln2/f;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, Ln2/f;-><init>(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ln2/e;->a:Ln2/f;

    .line 12
    .line 13
    new-instance v0, Lb3/h;

    .line 14
    .line 15
    const/16 v1, 0x800

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lb3/h;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Ln2/e;->b:Lb3/h;

    .line 21
    .line 22
    const-wide/16 v0, -0x1

    .line 23
    .line 24
    iput-wide v0, p0, Ln2/e;->f:J

    .line 25
    .line 26
    new-instance v0, Lb3/h;

    .line 27
    .line 28
    const/16 v1, 0xa

    .line 29
    .line 30
    invoke-direct {v0, v1}, Lb3/h;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Ln2/e;->c:Lb3/h;

    .line 34
    .line 35
    new-instance v1, Lb3/g;

    .line 36
    .line 37
    iget-object v0, v0, Lb3/h;->c:Ljava/io/Serializable;

    .line 38
    .line 39
    check-cast v0, [B

    .line 40
    .line 41
    invoke-direct {v1, v0}, Lb3/g;-><init>([B)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Ln2/e;->d:Lb3/g;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final a(Lk2/f;)I
    .locals 6

    .line 1
    iget-object v0, p0, Ln2/e;->b:Lb3/h;

    .line 2
    .line 3
    iget-object v1, v0, Lb3/h;->c:Ljava/io/Serializable;

    .line 4
    .line 5
    check-cast v1, [B

    .line 6
    .line 7
    const/16 v2, 0x800

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p1, v1, v3, v2}, Lk2/f;->c([BII)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, -0x1

    .line 16
    if-ne p1, v2, :cond_0

    .line 17
    .line 18
    move v4, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v4, v3

    .line 21
    :goto_0
    iget-boolean v5, p0, Ln2/e;->h:Z

    .line 22
    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-object v5, p0, Ln2/e;->e:Lk2/i;

    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iput-boolean v1, p0, Ln2/e;->h:Z

    .line 32
    .line 33
    :goto_1
    if-eqz v4, :cond_2

    .line 34
    .line 35
    return v2

    .line 36
    :cond_2
    invoke-virtual {v0, v3}, Lb3/h;->q(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lb3/h;->p(I)V

    .line 40
    .line 41
    .line 42
    iget-boolean p1, p0, Ln2/e;->g:Z

    .line 43
    .line 44
    iget-object v2, p0, Ln2/e;->a:Ln2/f;

    .line 45
    .line 46
    if-nez p1, :cond_3

    .line 47
    .line 48
    const-wide/16 v4, 0x0

    .line 49
    .line 50
    iput-wide v4, v2, Ln2/f;->s:J

    .line 51
    .line 52
    iput-boolean v1, p0, Ln2/e;->g:Z

    .line 53
    .line 54
    :cond_3
    invoke-virtual {v2, v0}, Ln2/f;->b(Lb3/h;)V

    .line 55
    .line 56
    .line 57
    return v3
.end method

.method public final b(Lw2/p;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ln2/e;->e:Lk2/i;

    new-instance v0, Ln2/e0;

    invoke-direct {v0}, Ln2/e0;-><init>()V

    iget-object v1, p0, Ln2/e;->a:Ln2/f;

    invoke-virtual {v1, p1, v0}, Ln2/f;->e(Lk2/i;Ln2/e0;)V

    invoke-virtual {p1}, Lw2/p;->j()V

    return-void
.end method

.method public final c(Lk2/f;)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Ln2/e;->d(Lk2/f;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    move v4, v3

    .line 9
    :goto_1
    iget-object v5, p0, Ln2/e;->c:Lb3/h;

    .line 10
    .line 11
    iget-object v6, v5, Lb3/h;->c:Ljava/io/Serializable;

    .line 12
    .line 13
    check-cast v6, [B

    .line 14
    .line 15
    const/4 v7, 0x2

    .line 16
    invoke-virtual {p1, v6, v2, v7, v2}, Lk2/f;->b([BIIZ)Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5, v2}, Lb3/h;->q(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5}, Lb3/h;->m()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    const v7, 0xfff6

    .line 27
    .line 28
    .line 29
    and-int/2addr v6, v7

    .line 30
    const v7, 0xfff0

    .line 31
    .line 32
    .line 33
    const/4 v8, 0x1

    .line 34
    if-ne v6, v7, :cond_0

    .line 35
    .line 36
    move v6, v8

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    move v6, v2

    .line 39
    :goto_2
    if-nez v6, :cond_2

    .line 40
    .line 41
    iput v2, p1, Lk2/f;->f:I

    .line 42
    .line 43
    add-int/2addr v1, v8

    .line 44
    sub-int v3, v1, v0

    .line 45
    .line 46
    const/16 v4, 0x2000

    .line 47
    .line 48
    if-lt v3, v4, :cond_1

    .line 49
    .line 50
    return v2

    .line 51
    :cond_1
    invoke-virtual {p1, v1, v2}, Lk2/f;->a(IZ)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    add-int/2addr v3, v8

    .line 56
    const/4 v6, 0x4

    .line 57
    if-lt v3, v6, :cond_3

    .line 58
    .line 59
    const/16 v7, 0xbc

    .line 60
    .line 61
    if-le v4, v7, :cond_3

    .line 62
    .line 63
    return v8

    .line 64
    :cond_3
    iget-object v5, v5, Lb3/h;->c:Ljava/io/Serializable;

    .line 65
    .line 66
    check-cast v5, [B

    .line 67
    .line 68
    invoke-virtual {p1, v5, v2, v6, v2}, Lk2/f;->b([BIIZ)Z

    .line 69
    .line 70
    .line 71
    iget-object v5, p0, Ln2/e;->d:Lb3/g;

    .line 72
    .line 73
    const/16 v6, 0xe

    .line 74
    .line 75
    invoke-virtual {v5, v6}, Lb3/g;->i(I)V

    .line 76
    .line 77
    .line 78
    const/16 v6, 0xd

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Lb3/g;->e(I)I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    const/4 v6, 0x6

    .line 85
    if-gt v5, v6, :cond_4

    .line 86
    .line 87
    return v2

    .line 88
    :cond_4
    add-int/lit8 v6, v5, -0x6

    .line 89
    .line 90
    invoke-virtual {p1, v6, v2}, Lk2/f;->a(IZ)Z

    .line 91
    .line 92
    .line 93
    add-int/2addr v4, v5

    .line 94
    goto :goto_1
.end method

.method public final d(Lk2/f;)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Ln2/e;->c:Lb3/h;

    .line 4
    .line 5
    iget-object v3, v2, Lb3/h;->c:Ljava/io/Serializable;

    .line 6
    .line 7
    check-cast v3, [B

    .line 8
    .line 9
    const/16 v4, 0xa

    .line 10
    .line 11
    invoke-virtual {p1, v3, v0, v4, v0}, Lk2/f;->b([BIIZ)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0}, Lb3/h;->q(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lb3/h;->j()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const v4, 0x494433

    .line 22
    .line 23
    .line 24
    if-eq v3, v4, :cond_1

    .line 25
    .line 26
    iput v0, p1, Lk2/f;->f:I

    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Lk2/f;->a(IZ)Z

    .line 29
    .line 30
    .line 31
    iget-wide v2, p0, Ln2/e;->f:J

    .line 32
    .line 33
    const-wide/16 v4, -0x1

    .line 34
    .line 35
    cmp-long p1, v2, v4

    .line 36
    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    int-to-long v2, v1

    .line 40
    iput-wide v2, p0, Ln2/e;->f:J

    .line 41
    .line 42
    :cond_0
    return v1

    .line 43
    :cond_1
    const/4 v3, 0x3

    .line 44
    invoke-virtual {v2, v3}, Lb3/h;->r(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lb3/h;->g()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    add-int/lit8 v3, v2, 0xa

    .line 52
    .line 53
    add-int/2addr v1, v3

    .line 54
    invoke-virtual {p1, v2, v0}, Lk2/f;->a(IZ)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0
.end method
