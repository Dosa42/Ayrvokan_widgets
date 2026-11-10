.class public final synthetic La2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:La2/i;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(La2/i;III)V
    .locals 0

    .line 1
    iput p4, p0, La2/e;->f:I

    .line 2
    .line 3
    iput-object p1, p0, La2/e;->g:La2/i;

    .line 4
    .line 5
    iput p2, p0, La2/e;->h:I

    .line 6
    .line 7
    iput p3, p0, La2/e;->i:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, La2/e;->f:I

    .line 2
    .line 3
    iget v1, p0, La2/e;->i:I

    .line 4
    .line 5
    iget v2, p0, La2/e;->h:I

    .line 6
    .line 7
    iget-object v3, p0, La2/e;->g:La2/i;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    iget-object v0, v3, La2/i;->F:Lo0/j;

    .line 14
    .line 15
    iget-object v3, v0, Lo0/j;->g:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, La2/p;

    .line 18
    .line 19
    iget-object v0, v0, Lo0/j;->h:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lz1/c;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget-object v4, Lq1/f;->L:Lo1/j0;

    .line 27
    .line 28
    new-instance v5, La2/n;

    .line 29
    .line 30
    invoke-direct {v5, v2, v1, v0, v3}, La2/n;-><init>(IILz1/c;La2/p;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "Finalize resize"

    .line 34
    .line 35
    const-wide/16 v1, 0x21

    .line 36
    .line 37
    invoke-virtual {v4, v5, v0, v1, v2}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, v3, La2/p;->M0:Z

    .line 42
    .line 43
    sget-object v1, Lq1/f;->L:Lo1/j0;

    .line 44
    .line 45
    new-instance v2, La2/m;

    .line 46
    .line 47
    invoke-direct {v2, v3, v0}, La2/m;-><init>(La2/p;I)V

    .line 48
    .line 49
    .line 50
    const-string v0, "Restore normal transparency deduction"

    .line 51
    .line 52
    const-wide/16 v3, 0x3e8

    .line 53
    .line 54
    invoke-virtual {v1, v2, v0, v3, v4}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :goto_0
    iget-object v0, v3, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/nomone/GeckoView/MyGeckoView;->getSurface()Landroid/view/Surface;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    iget-object v0, v0, Lcom/nomone/GeckoView/MyGeckoView;->a:Ln1/l;

    .line 65
    .line 66
    invoke-virtual {v0, v3, v2, v1}, Ln1/l;->onSurfaceChanged(Landroid/view/Surface;II)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
