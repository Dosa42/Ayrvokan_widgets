.class public final Lf0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/h;
.implements La3/h;


# instance fields
.field public final synthetic f:I

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lf0/k;->f:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(La1/c;Lc/a;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lf0/k;->f:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ClientTelemetry.API"

    iput-object v0, p0, Lf0/k;->g:Ljava/lang/Object;

    iput-object p1, p0, Lf0/k;->h:Ljava/lang/Object;

    iput-object p2, p0, Lf0/k;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(La2/i;Lz1/c;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lf0/k;->f:I

    .line 3
    iput-object p1, p0, Lf0/k;->i:Ljava/lang/Object;

    iput-object p2, p0, Lf0/k;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lf0/k;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;La3/g0;La3/t;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lf0/k;->f:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lf0/k;->g:Ljava/lang/Object;

    iput-object p2, p0, Lf0/k;->h:Ljava/lang/Object;

    iput-object p3, p0, Lf0/k;->i:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 5
    iput p4, p0, Lf0/k;->f:I

    iput-object p1, p0, Lf0/k;->g:Ljava/lang/Object;

    iput-object p2, p0, Lf0/k;->h:Ljava/lang/Object;

    iput-object p3, p0, Lf0/k;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayDeque;Ljava/io/BufferedReader;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lf0/k;->f:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/k;->i:Ljava/lang/Object;

    iput-object p2, p0, Lf0/k;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ly0/j0;Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lf0/k;->f:I

    .line 7
    iput-object p1, p0, Lf0/k;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lf0/k;->g:Ljava/lang/Object;

    iput-object p3, p0, Lf0/k;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()La3/i;
    .locals 3

    .line 1
    new-instance v0, La3/p;

    .line 2
    .line 3
    iget-object v1, p0, Lf0/k;->g:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lf0/k;->i:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, La3/h;

    .line 10
    .line 11
    invoke-interface {v2}, La3/h;->a()La3/i;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v0, v1, v2}, La3/p;-><init>(Landroid/content/Context;La3/i;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lf0/k;->h:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, La3/g0;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v1}, La3/p;->a(La3/g0;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-object v0
.end method

.method public final b()Lj0/k;
    .locals 4

    .line 1
    iget-object v0, p0, Lf0/k;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " backendName"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lf0/k;->i:Ljava/lang/Object;

    check-cast v1, Lg0/c;

    if-nez v1, :cond_1

    const-string v1, " priority"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lj0/k;

    iget-object v1, p0, Lf0/k;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lf0/k;->h:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v3, p0, Lf0/k;->i:Ljava/lang/Object;

    check-cast v3, Lg0/c;

    invoke-direct {v0, v1, v2, v3}, Lj0/k;-><init>(Ljava/lang/String;[BLg0/c;)V

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final c()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Lo0/c;
    .locals 8

    .line 1
    iget-object v0, p0, Lf0/k;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Long;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, " delta"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    :goto_0
    iget-object v1, p0, Lf0/k;->h:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ljava/lang/Long;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const-string v1, " maxAllowedDelay"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    iget-object v1, p0, Lf0/k;->i:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Ljava/util/Set;

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    const-string v1, " flags"

    .line 31
    .line 32
    invoke-static {v0, v1}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    new-instance v0, Lo0/c;

    .line 43
    .line 44
    iget-object v1, p0, Lf0/k;->g:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Ljava/lang/Long;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    iget-object v1, p0, Lf0/k;->h:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Ljava/lang/Long;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 57
    .line 58
    .line 59
    move-result-wide v5

    .line 60
    iget-object v1, p0, Lf0/k;->i:Ljava/lang/Object;

    .line 61
    .line 62
    move-object v7, v1

    .line 63
    check-cast v7, Ljava/util/Set;

    .line 64
    .line 65
    move-object v2, v0

    .line 66
    invoke-direct/range {v2 .. v7}, Lo0/c;-><init>(JJLjava/util/Set;)V

    .line 67
    .line 68
    .line 69
    return-object v0

    .line 70
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string v2, "Missing required properties:"

    .line 73
    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v1
.end method

.method public final e(Lm0/a;Ljava/io/ByteArrayOutputStream;)V
    .locals 4

    .line 1
    new-instance v0, Lm1/f;

    .line 2
    .line 3
    iget-object v1, p0, Lf0/k;->g:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/Map;

    .line 6
    .line 7
    iget-object v2, p0, Lf0/k;->h:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/util/Map;

    .line 10
    .line 11
    iget-object v3, p0, Lf0/k;->i:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Lj1/d;

    .line 14
    .line 15
    invoke-direct {v0, p2, v1, v2, v3}, Lm1/f;-><init>(Ljava/io/ByteArrayOutputStream;Ljava/util/Map;Ljava/util/Map;Lj1/d;)V

    .line 16
    .line 17
    .line 18
    const-class p2, Lm0/a;

    .line 19
    .line 20
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lj1/d;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {v1, p1, v0}, Lj1/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p1, Lj1/b;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "No encoder for "

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {p1, p2}, Lj1/b;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public final f(Lg0/b;Lc/a;)Lj0/j;
    .locals 3

    .line 1
    iget-object v0, p0, Lf0/k;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lj0/j;

    iget-object v1, p0, Lf0/k;->h:Ljava/lang/Object;

    check-cast v1, Lj0/k;

    iget-object v2, p0, Lf0/k;->i:Ljava/lang/Object;

    check-cast v2, Lj0/q;

    invoke-direct {v0, v1, p1, p2, v2}, Lj0/j;-><init>(Lj0/k;Lg0/b;Lc/a;Lj0/q;)V

    return-object v0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lf0/k;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s is not supported byt this factory. Supported encodings are: %s."

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf0/k;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lf0/k;->i:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ljava/util/Queue;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lf0/k;->i:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/Queue;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    .line 32
    iput-object v0, p0, Lf0/k;->g:Ljava/lang/Object;

    .line 33
    .line 34
    return v1

    .line 35
    :cond_1
    iget-object v0, p0, Lf0/k;->h:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Ljava/io/BufferedReader;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lf0/k;->g:Ljava/lang/Object;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lf0/k;->g:Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    return v1

    .line 60
    :cond_2
    const/4 v0, 0x0

    .line 61
    return v0
.end method

.method public final h()Landroid/graphics/Rect;
    .locals 4

    .line 1
    iget v0, p0, Lf0/k;->f:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object v0, p0, Lf0/k;->i:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {v0}, La1/b;->j(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    throw v1

    .line 14
    :pswitch_1
    iget-object v0, p0, Lf0/k;->i:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {v0}, La1/b;->j(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    throw v1

    .line 20
    :goto_0
    iget-object v0, p0, Lf0/k;->i:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, La2/i;

    .line 23
    .line 24
    iget v0, v0, La2/i;->I:I

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lf0/k;->g:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Landroid/graphics/Rect;

    .line 32
    .line 33
    iget-object v1, p0, Lf0/k;->h:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Lz1/c;

    .line 36
    .line 37
    iget v2, v1, Lz1/c;->c:I

    .line 38
    .line 39
    iget v1, v1, Lz1/c;->d:I

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    iget-object v0, p0, Lf0/k;->g:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Landroid/graphics/Rect;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 51
    .line 52
    .line 53
    :goto_1
    iget-object v0, p0, Lf0/k;->g:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Landroid/graphics/Rect;

    .line 56
    .line 57
    return-object v0

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget v0, p0, Lf0/k;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lf0/k;->i:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v0}, La1/b;->j(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    throw v0

    .line 14
    :pswitch_1
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :goto_0
    iget-object v0, p0, Lf0/k;->i:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, La2/i;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    instance-of v0, v0, La2/p;

    .line 24
    .line 25
    xor-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    return v0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf0/k;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf0/k;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lf0/k;->g:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    iput-object p1, p0, Lf0/k;->g:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null backendName"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(Lg0/c;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    iput-object p1, p0, Lf0/k;->i:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null priority"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
