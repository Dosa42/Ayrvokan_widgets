.class public final Lz2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Z


# direct methods
.method public constructor <init>(Lf2/t;Lz2/g;ILjava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lz2/k;->e(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lz2/j;->b:Z

    iget p3, p1, Lf2/t;->c:I

    iget v1, p2, Lz2/t;->e:I

    not-int v1, v1

    and-int/2addr p3, v1

    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lz2/j;->c:Z

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p3, v2

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_1
    iget-object v3, p2, Lz2/t;->b:Ljava/lang/String;

    iget-boolean v4, p2, Lz2/t;->d:Z

    invoke-static {p1, v3, v4}, Lz2/k;->c(Lf2/t;Ljava/lang/String;Z)I

    move-result v4

    iput v4, p0, Lz2/j;->e:I

    iget p2, p2, Lz2/t;->c:I

    iget v5, p1, Lf2/t;->d:I

    and-int/2addr p2, v5

    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result p2

    iput p2, p0, Lz2/j;->f:I

    and-int/lit16 v5, v5, 0x440

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    iput-boolean v5, p0, Lz2/j;->h:Z

    if-lez v4, :cond_3

    if-eqz p3, :cond_4

    :cond_3
    if-nez v4, :cond_5

    if-eqz p3, :cond_5

    :cond_4
    move v5, v2

    goto :goto_3

    :cond_5
    move v5, v0

    :goto_3
    iput-boolean v5, p0, Lz2/j;->d:Z

    invoke-static {p4}, Lz2/k;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    move v5, v2

    goto :goto_4

    :cond_6
    move v5, v0

    :goto_4
    invoke-static {p1, p4, v5}, Lz2/k;->c(Lf2/t;Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Lz2/j;->g:I

    if-gtz v4, :cond_8

    if-nez v3, :cond_7

    if-gtz p2, :cond_8

    :cond_7
    if-nez v1, :cond_8

    if-eqz p3, :cond_9

    if-lez p1, :cond_9

    :cond_8
    move v0, v2

    :cond_9
    iput-boolean v0, p0, Lz2/j;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lz2/j;)I
    .locals 5

    .line 1
    iget-boolean v0, p1, Lz2/j;->b:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    iget-boolean v3, p0, Lz2/j;->b:Z

    if-eq v3, v0, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget v0, p0, Lz2/j;->e:I

    iget v3, p1, Lz2/j;->e:I

    if-eq v0, v3, :cond_2

    invoke-static {v0, v3}, Lz2/k;->a(II)I

    move-result p1

    return p1

    :cond_2
    iget v0, p0, Lz2/j;->f:I

    iget v3, p1, Lz2/j;->f:I

    if-eq v0, v3, :cond_3

    invoke-static {v0, v3}, Lz2/k;->a(II)I

    move-result p1

    return p1

    :cond_3
    iget-boolean v3, p1, Lz2/j;->c:Z

    iget-boolean v4, p0, Lz2/j;->c:Z

    if-eq v4, v3, :cond_5

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1

    :cond_5
    iget-boolean v3, p1, Lz2/j;->d:Z

    iget-boolean v4, p0, Lz2/j;->d:Z

    if-eq v4, v3, :cond_7

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    return v1

    :cond_7
    iget v3, p0, Lz2/j;->g:I

    iget v4, p1, Lz2/j;->g:I

    if-eq v3, v4, :cond_8

    invoke-static {v3, v4}, Lz2/k;->a(II)I

    move-result p1

    return p1

    :cond_8
    if-nez v0, :cond_a

    iget-boolean p1, p1, Lz2/j;->h:Z

    iget-boolean v0, p0, Lz2/j;->h:Z

    if-eq v0, p1, :cond_a

    if-eqz v0, :cond_9

    move v1, v2

    :cond_9
    return v1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lz2/j;

    invoke-virtual {p0, p1}, Lz2/j;->a(Lz2/j;)I

    move-result p1

    return p1
.end method
