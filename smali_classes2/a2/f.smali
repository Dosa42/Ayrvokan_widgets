.class public final synthetic La2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:La2/i;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(La2/i;Ljava/lang/Runnable;I)V
    .locals 0

    .line 1
    iput p3, p0, La2/f;->a:I

    .line 2
    .line 3
    iput-object p1, p0, La2/f;->b:La2/i;

    .line 4
    .line 5
    iput-object p2, p0, La2/f;->c:Ljava/lang/Runnable;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget p1, p0, La2/f;->a:I

    .line 2
    .line 3
    iget-object v0, p0, La2/f;->c:Ljava/lang/Runnable;

    .line 4
    .line 5
    iget-object v1, p0, La2/f;->b:La2/i;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    iget-object p1, v1, La2/i;->m:Lq1/f;

    .line 12
    .line 13
    iget-object p1, p1, Lq1/f;->d:Lcom/nomone/browser_module/OpenGLView;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/nomone/browser_module/OpenGLView;->a(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :goto_0
    iget-object p1, v1, La2/i;->m:Lq1/f;

    .line 20
    .line 21
    iget-object p1, p1, Lq1/f;->d:Lcom/nomone/browser_module/OpenGLView;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/nomone/browser_module/OpenGLView;->a(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
