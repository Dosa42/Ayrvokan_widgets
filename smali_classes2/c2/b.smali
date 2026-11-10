.class public final synthetic Lc2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc2/e;


# direct methods
.method public synthetic constructor <init>(Lc2/e;I)V
    .locals 0

    .line 1
    iput p2, p0, Lc2/b;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lc2/b;->b:Lc2/e;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lc2/b;->a:I

    .line 3
    .line 4
    iget-object v2, p0, Lc2/b;->b:Lc2/e;

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    invoke-virtual {v2, v0}, Lc2/e;->B(Z)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :goto_0
    iput-boolean v0, v2, Lc2/e;->B:Z

    .line 15
    .line 16
    const-wide/16 v0, -0x1

    .line 17
    .line 18
    iput-wide v0, v2, Lc2/e;->C:J

    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
