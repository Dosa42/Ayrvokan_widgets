.class public final Lx0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public g:I

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/nomone/browser_module/OpenGLView;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lx0/m;->f:I

    .line 1
    iput-object p1, p0, Lx0/m;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xa

    iput p1, p0, Lx0/m;->g:I

    return-void
.end method

.method public constructor <init>(Lx0/o;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lx0/m;->f:I

    .line 2
    iput-object p1, p0, Lx0/m;->h:Ljava/lang/Object;

    iput p2, p0, Lx0/m;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lx0/m;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Lx0/m;->h:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast v1, Lx0/o;

    .line 10
    .line 11
    iget v0, p0, Lx0/m;->g:I

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lx0/o;->i(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :goto_0
    check-cast v1, Lcom/nomone/browser_module/OpenGLView;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, v1, Lcom/nomone/browser_module/OpenGLView;->j:Z

    .line 21
    .line 22
    iget v0, p0, Lx0/m;->g:I

    .line 23
    .line 24
    add-int/lit8 v2, v0, -0x1

    .line 25
    .line 26
    iput v2, p0, Lx0/m;->g:I

    .line 27
    .line 28
    if-lez v0, :cond_0

    .line 29
    .line 30
    const-wide/16 v2, 0x11

    .line 31
    .line 32
    invoke-virtual {v1, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
