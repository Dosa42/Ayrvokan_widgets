.class public final synthetic Ld3/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ld3/p0;


# direct methods
.method public synthetic constructor <init>(Ld3/p0;I)V
    .locals 0

    .line 1
    iput p2, p0, Ld3/m0;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Ld3/m0;->g:Ld3/p0;

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
    .locals 2

    .line 1
    iget v0, p0, Ld3/m0;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Ld3/m0;->g:Ld3/p0;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Ld3/p0;->h:Ld3/w0;

    .line 11
    .line 12
    iput-object v1, v0, Ld3/p0;->m:Ld3/w0;

    .line 13
    .line 14
    return-void

    .line 15
    :goto_0
    iget-object v0, p0, Ld3/m0;->g:Ld3/p0;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, v0, Ld3/p0;->j:Z

    .line 19
    .line 20
    invoke-virtual {v0}, Ld3/p0;->c()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
