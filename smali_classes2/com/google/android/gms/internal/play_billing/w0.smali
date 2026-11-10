.class public final Lcom/google/android/gms/internal/play_billing/w0;
.super Lcom/google/android/gms/internal/play_billing/t;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/play_billing/x0;


# instance fields
.field public final b:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/w0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/w0;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/t;-><init>(Z)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/w0;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/t;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/w0;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/t;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/w0;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/play_billing/x0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/t;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/play_billing/a2;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/a2;-><init>(Lcom/google/android/gms/internal/play_billing/x0;)V

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    return-object p0
.end method

.method public final bridge synthetic add(ILjava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/t;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w0;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/t;->e()V

    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/x0;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/android/gms/internal/play_billing/x0;

    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/x0;->c()Ljava/util/List;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w0;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/w0;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/w0;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic b(I)Lcom/google/android/gms/internal/play_billing/r0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/w0;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/w0;->b:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lcom/google/android/gms/internal/play_billing/w0;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/play_billing/w0;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w0;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/t;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g(I)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w0;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v2, v1, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    instance-of v2, v1, Lcom/google/android/gms/internal/play_billing/z;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_3

    .line 18
    .line 19
    check-cast v1, Lcom/google/android/gms/internal/play_billing/z;

    .line 20
    .line 21
    sget-object v2, Lcom/google/android/gms/internal/play_billing/s0;->a:Ljava/nio/charset/Charset;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/z;->i()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    const-string v2, ""

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v4, v1

    .line 33
    check-cast v4, Lcom/google/android/gms/internal/play_billing/a0;

    .line 34
    .line 35
    new-instance v5, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/a0;->i()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    iget-object v4, v4, Lcom/google/android/gms/internal/play_billing/a0;->c:[B

    .line 42
    .line 43
    invoke-direct {v5, v4, v3, v6, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 44
    .line 45
    .line 46
    move-object v2, v5

    .line 47
    :goto_0
    check-cast v1, Lcom/google/android/gms/internal/play_billing/a0;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/a0;->i()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/a0;->c:[B

    .line 54
    .line 55
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/play_billing/h2;->c([BII)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :cond_2
    return-object v2

    .line 65
    :cond_3
    check-cast v1, [B

    .line 66
    .line 67
    new-instance v2, Ljava/lang/String;

    .line 68
    .line 69
    sget-object v4, Lcom/google/android/gms/internal/play_billing/s0;->a:Ljava/nio/charset/Charset;

    .line 70
    .line 71
    invoke-direct {v2, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 72
    .line 73
    .line 74
    sget-object v4, Lcom/google/android/gms/internal/play_billing/h2;->a:Ly0/i;

    .line 75
    .line 76
    array-length v4, v1

    .line 77
    sget-object v5, Lcom/google/android/gms/internal/play_billing/h2;->a:Ly0/i;

    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v3, v4}, Ly0/i;->i([BII)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_4

    .line 87
    .line 88
    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    :cond_4
    return-object v2
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/w0;->g(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/t;->e()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w0;->b:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 15
    .line 16
    instance-of v0, p1, Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    check-cast p1, Ljava/lang/String;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/z;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    check-cast p1, Lcom/google/android/gms/internal/play_billing/z;

    .line 28
    .line 29
    sget-object v0, Lcom/google/android/gms/internal/play_billing/s0;->a:Ljava/nio/charset/Charset;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/z;->i()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    const-string p1, ""

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/play_billing/a0;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/a0;->i()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/a0;->c:[B

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-direct {v1, p1, v3, v2, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 52
    .line 53
    .line 54
    move-object p1, v1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    check-cast p1, [B

    .line 57
    .line 58
    new-instance v0, Ljava/lang/String;

    .line 59
    .line 60
    sget-object v1, Lcom/google/android/gms/internal/play_billing/s0;->a:Ljava/nio/charset/Charset;

    .line 61
    .line 62
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 63
    .line 64
    .line 65
    move-object p1, v0

    .line 66
    :goto_0
    return-object p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/t;->e()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w0;->b:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    instance-of p2, p1, Ljava/lang/String;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    check-cast p1, Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    instance-of p2, p1, Lcom/google/android/gms/internal/play_billing/z;

    .line 20
    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    check-cast p1, Lcom/google/android/gms/internal/play_billing/z;

    .line 24
    .line 25
    sget-object p2, Lcom/google/android/gms/internal/play_billing/s0;->a:Ljava/nio/charset/Charset;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/z;->i()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    const-string p1, ""

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/play_billing/a0;

    .line 37
    .line 38
    new-instance v0, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/a0;->i()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/a0;->c:[B

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-direct {v0, p1, v2, v1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 48
    .line 49
    .line 50
    move-object p1, v0

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    check-cast p1, [B

    .line 53
    .line 54
    new-instance p2, Ljava/lang/String;

    .line 55
    .line 56
    sget-object v0, Lcom/google/android/gms/internal/play_billing/s0;->a:Ljava/nio/charset/Charset;

    .line 57
    .line 58
    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 59
    .line 60
    .line 61
    move-object p1, p2

    .line 62
    :goto_0
    return-object p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
