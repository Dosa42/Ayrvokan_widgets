.class public final synthetic Lw2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lt2/u;


# direct methods
.method public synthetic constructor <init>(Lt2/u;I)V
    .locals 0

    .line 1
    iput p2, p0, Lw2/m;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lw2/m;->g:Lt2/u;

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
    iget v0, p0, Lw2/m;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Lw2/m;->g:Lt2/u;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast v1, Lw2/p;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, v1, Lw2/p;->E:Z

    .line 13
    .line 14
    invoke-virtual {v1}, Lw2/p;->s()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    check-cast v1, Lw2/p;

    .line 19
    .line 20
    invoke-virtual {v1}, Lw2/p;->s()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :goto_0
    check-cast v1, Lw2/i;

    .line 25
    .line 26
    invoke-virtual {v1}, Lw2/i;->h()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
