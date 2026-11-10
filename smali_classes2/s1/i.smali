.class public final Ls1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/c1;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ls1/h;I)V
    .locals 0

    .line 1
    iput p2, p0, Ls1/i;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Ls1/i;->g:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Process;)V
    .locals 2

    .line 1
    iget v0, p0, Ls1/i;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Ls1/i;->g:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast v1, Ls1/h;

    .line 10
    .line 11
    iput-object p1, v1, Ls1/h;->a:Ljava/lang/Process;

    .line 12
    .line 13
    return-void

    .line 14
    :goto_0
    check-cast v1, Ls1/h;

    .line 15
    .line 16
    iput-object p1, v1, Ls1/h;->a:Ljava/lang/Process;

    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
