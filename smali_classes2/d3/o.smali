.class public final Ld3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ld3/x;


# direct methods
.method public synthetic constructor <init>(Ld3/x;I)V
    .locals 0

    .line 1
    iput p2, p0, Ld3/o;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Ld3/o;->g:Ld3/x;

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
    iget v0, p0, Ld3/o;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Ld3/o;->g:Ld3/x;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-interface {v1}, Ld3/x;->stop()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :goto_0
    invoke-interface {v1}, Ld3/x;->stop()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
