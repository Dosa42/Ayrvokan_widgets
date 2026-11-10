.class public final Ln0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll0/b;


# instance fields
.field public final synthetic f:I

.field public final g:Ld2/a;

.field public final h:Ld2/a;

.field public final i:Ld2/a;

.field public final j:Ld2/a;


# direct methods
.method public synthetic constructor <init>(Ld2/a;Ld2/a;Ll0/b;Ld2/a;I)V
    .locals 0

    .line 1
    iput p5, p0, Ln0/f;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Ln0/f;->g:Ld2/a;

    .line 4
    .line 5
    iput-object p2, p0, Ln0/f;->h:Ld2/a;

    .line 6
    .line 7
    iput-object p3, p0, Ln0/f;->i:Ld2/a;

    .line 8
    .line 9
    iput-object p4, p0, Ln0/f;->j:Ld2/a;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final m()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Ln0/f;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Ln0/f;->j:Ld2/a;

    .line 4
    .line 5
    iget-object v2, p0, Ln0/f;->i:Ld2/a;

    .line 6
    .line 7
    iget-object v3, p0, Ln0/f;->h:Ld2/a;

    .line 8
    .line 9
    iget-object v4, p0, Ln0/f;->g:Ld2/a;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_0
    invoke-interface {v4}, Ld2/a;->m()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/content/Context;

    .line 20
    .line 21
    invoke-interface {v3}, Ld2/a;->m()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lp0/d;

    .line 26
    .line 27
    invoke-interface {v2}, Ld2/a;->m()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lo0/b;

    .line 32
    .line 33
    invoke-interface {v1}, Ld2/a;->m()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lr0/a;

    .line 38
    .line 39
    new-instance v1, Lo0/d;

    .line 40
    .line 41
    invoke-direct {v1, v0, v3, v2}, Lo0/d;-><init>(Landroid/content/Context;Lp0/d;Lo0/b;)V

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :goto_0
    invoke-interface {v4}, Ld2/a;->m()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 50
    .line 51
    invoke-interface {v3}, Ld2/a;->m()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lp0/d;

    .line 56
    .line 57
    invoke-interface {v2}, Ld2/a;->m()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lo0/p;

    .line 62
    .line 63
    invoke-interface {v1}, Ld2/a;->m()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lq0/c;

    .line 68
    .line 69
    new-instance v4, Lo0/o;

    .line 70
    .line 71
    invoke-direct {v4, v0, v3, v2, v1}, Lo0/o;-><init>(Ljava/util/concurrent/Executor;Lp0/d;Lo0/p;Lq0/c;)V

    .line 72
    .line 73
    .line 74
    return-object v4

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
