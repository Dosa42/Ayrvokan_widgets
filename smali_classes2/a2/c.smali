.class public final synthetic La2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lq1/s;


# direct methods
.method public synthetic constructor <init>(Lq1/s;I)V
    .locals 0

    .line 1
    iput p2, p0, La2/c;->f:I

    .line 2
    .line 3
    iput-object p1, p0, La2/c;->g:Lq1/s;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, La2/c;->f:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, La2/c;->g:Lq1/s;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    iget-object v0, v2, Lq1/s;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Runnable;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iput-boolean v1, v2, Lq1/s;->a:Z

    .line 20
    .line 21
    return-void

    .line 22
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    sget-object v0, Lq1/f;->L:Lo1/j0;

    .line 26
    .line 27
    iget-object v3, v2, Lq1/s;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Ljava/lang/Runnable;

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    iput-boolean v1, v2, Lq1/s;->a:Z

    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
