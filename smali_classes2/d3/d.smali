.class public final synthetic Ld3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ld3/e;

.field public final synthetic h:[B


# direct methods
.method public synthetic constructor <init>(Ld3/e;[BI)V
    .locals 0

    .line 1
    iput p3, p0, Ld3/d;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Ld3/d;->g:Ld3/e;

    .line 4
    .line 5
    iput-object p2, p0, Ld3/d;->h:[B

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Ld3/d;->f:I

    .line 3
    .line 4
    iget-object v2, p0, Ld3/d;->h:[B

    .line 5
    .line 6
    iget-object v3, p0, Ld3/d;->g:Ld3/e;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_0
    iget-object v1, v3, Ld3/e;->a:Ld3/f;

    .line 13
    .line 14
    iget-object v1, v1, Ld3/f;->a:Landroid/os/Handler;

    .line 15
    .line 16
    new-instance v4, Ld3/d;

    .line 17
    .line 18
    invoke-direct {v4, v3, v2, v0}, Ld3/d;-><init>(Ld3/e;[BI)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :goto_0
    iget-object v1, v3, Ld3/e;->a:Ld3/f;

    .line 26
    .line 27
    iget v3, v1, Ld3/f;->j:I

    .line 28
    .line 29
    if-ne v3, v0, :cond_0

    .line 30
    .line 31
    iget-object v0, v1, Ld3/f;->f:Landroid/hardware/Camera;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
