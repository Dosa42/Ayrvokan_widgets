.class public final La2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public g:I

.field public h:I

.field public final synthetic i:La2/i;


# direct methods
.method public constructor <init>(La2/i;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, La2/h;->f:I

    .line 1
    iput-object p1, p0, La2/h;->i:La2/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(La2/i;I)V
    .locals 0

    .line 2
    const/4 p2, 0x1

    iput p2, p0, La2/h;->f:I

    invoke-direct {p0, p1}, La2/h;-><init>(La2/i;)V

    return-void
.end method

.method public constructor <init>(La2/i;II)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, La2/h;->f:I

    .line 3
    iput-object p1, p0, La2/h;->i:La2/i;

    iput p2, p0, La2/h;->g:I

    iput p3, p0, La2/h;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, La2/h;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, La2/h;->i:La2/i;

    .line 8
    .line 9
    iget-object v1, v0, La2/i;->o:Landroid/graphics/SurfaceTexture;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v0, p0, La2/h;->g:I

    .line 20
    .line 21
    iget v2, p0, La2/h;->h:I

    .line 22
    .line 23
    invoke-virtual {v1, v0, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void

    .line 27
    :goto_1
    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v0, p0, La2/h;->i:La2/i;

    .line 29
    .line 30
    iget-object v1, v0, La2/i;->c:Lz1/c;

    .line 31
    .line 32
    iget v2, v1, Lz1/c;->c:I

    .line 33
    .line 34
    iget v1, v1, Lz1/c;->d:I

    .line 35
    .line 36
    invoke-static {v0, v2, v1}, La2/i;->A(La2/i;II)V

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw v0

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
