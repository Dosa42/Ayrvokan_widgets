.class public final Lw2/e;
.super Lz2/d;
.source "SourceFile"


# instance fields
.field public g:I


# direct methods
.method public constructor <init>(Lt2/w;[I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lz2/d;-><init>(Lt2/w;[I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lt2/w;->b:[Lf2/t;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    aget-object p1, p1, p2

    .line 8
    .line 9
    :goto_0
    iget v0, p0, Lz2/d;->b:I

    .line 10
    .line 11
    if-ge p2, v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lz2/d;->d:[Lf2/t;

    .line 14
    .line 15
    aget-object v0, v0, p2

    .line 16
    .line 17
    if-ne v0, p1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p2, -0x1

    .line 24
    :goto_1
    iput p2, p0, Lw2/e;->g:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lw2/e;->g:I

    return v0
.end method

.method public final c(JJ)V
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget p3, p0, Lw2/e;->g:I

    invoke-virtual {p0, p1, p2, p3}, Lz2/d;->i(JI)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget p3, p0, Lz2/d;->b:I

    :cond_1
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lz2/d;->i(JI)Z

    move-result p4

    if-nez p4, :cond_1

    iput p3, p0, Lw2/e;->g:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final f()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method
