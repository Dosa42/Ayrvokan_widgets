.class public final synthetic La2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:La2/p;


# direct methods
.method public synthetic constructor <init>(La2/p;I)V
    .locals 0

    .line 1
    iput p2, p0, La2/m;->f:I

    .line 2
    .line 3
    iput-object p1, p0, La2/m;->g:La2/p;

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
    .locals 3

    .line 1
    iget v0, p0, La2/m;->f:I

    .line 2
    .line 3
    iget-object v1, p0, La2/m;->g:La2/p;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    const/4 v0, 0x1

    .line 11
    invoke-virtual {v1, v0, v0, v2}, La2/p;->N(ZZZ)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :goto_0
    iput-boolean v2, v1, La2/p;->M0:Z

    .line 16
    .line 17
    invoke-virtual {v1}, La2/i;->D()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
