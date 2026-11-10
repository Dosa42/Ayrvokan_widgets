.class public final La2/x;
.super La2/b0;
.source "SourceFile"


# instance fields
.field public r:F

.field public s:F

.field public final t:La2/w;

.field public final u:La2/w;

.field public final v:La2/w;

.field public final w:La2/w;


# direct methods
.method public constructor <init>(Lq1/f;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, La2/b0;-><init>(Lq1/f;)V

    new-instance p1, La2/w;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, La2/w;-><init>(La2/x;I)V

    iput-object p1, p0, La2/x;->t:La2/w;

    new-instance p1, La2/w;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, La2/w;-><init>(La2/x;I)V

    iput-object p1, p0, La2/x;->u:La2/w;

    new-instance p1, La2/w;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, La2/w;-><init>(La2/x;I)V

    iput-object p1, p0, La2/x;->v:La2/w;

    new-instance p1, La2/w;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, La2/w;-><init>(La2/x;I)V

    iput-object p1, p0, La2/x;->w:La2/w;

    return-void
.end method

.method public static synthetic E(La2/x;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Lu1/w;

    .line 5
    .line 6
    invoke-super {p0, p1}, La2/e0;->u(Lu1/w;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method


# virtual methods
.method public final F(La2/w;Ljava/lang/Object;)Z
    .locals 5

    .line 1
    sget-object v0, Lz1/f;->w:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Lz1/f;->x:F

    .line 5
    .line 6
    sget v2, Lz1/f;->y:F

    .line 7
    .line 8
    sget v3, Lz1/f;->x:F

    .line 9
    .line 10
    iget v4, p0, La2/x;->r:F

    .line 11
    .line 12
    add-float/2addr v3, v4

    .line 13
    sput v3, Lz1/f;->x:F

    .line 14
    .line 15
    sget v3, Lz1/f;->y:F

    .line 16
    .line 17
    iget v4, p0, La2/x;->s:F

    .line 18
    .line 19
    add-float/2addr v3, v4

    .line 20
    sput v3, Lz1/f;->y:F

    .line 21
    .line 22
    iget v3, p1, La2/w;->a:I

    .line 23
    .line 24
    iget-object p1, p1, La2/w;->b:La2/x;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    packed-switch v3, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    check-cast p2, Lo1/q;

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-virtual {p1, p2, v3}, La2/b0;->D(Lo1/q;Z)Z

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    check-cast p2, Lo1/q;

    .line 45
    .line 46
    invoke-virtual {p1, p2, v4}, La2/b0;->D(Lo1/q;Z)Z

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :pswitch_2
    invoke-static {p1, p2}, La2/x;->E(La2/x;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    goto :goto_1

    .line 55
    :goto_0
    invoke-super {p1}, La2/b0;->k()Z

    .line 56
    .line 57
    .line 58
    :goto_1
    sput v1, Lz1/f;->x:F

    .line 59
    .line 60
    sput v2, Lz1/f;->y:F

    .line 61
    .line 62
    monitor-exit v0

    .line 63
    return v4

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p1

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Lo1/q;)Z
    .locals 1

    .line 1
    iget-object v0, p0, La2/x;->v:La2/w;

    invoke-virtual {p0, v0, p1}, La2/x;->F(La2/w;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final k()Z
    .locals 2

    .line 1
    iget-object v0, p0, La2/x;->w:La2/w;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, La2/x;->F(La2/w;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final t(Lo1/q;)Z
    .locals 1

    .line 1
    iget-object v0, p0, La2/x;->u:La2/w;

    invoke-virtual {p0, v0, p1}, La2/x;->F(La2/w;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final u(Lu1/w;)Z
    .locals 1

    .line 1
    iget-object v0, p0, La2/x;->t:La2/w;

    invoke-virtual {p0, v0, p1}, La2/x;->F(La2/w;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
