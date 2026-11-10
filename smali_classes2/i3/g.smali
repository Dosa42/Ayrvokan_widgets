.class public final Li3/g;
.super Li3/b;
.source "SourceFile"


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lh3/a;Lh3/a;I)V
    .locals 0

    .line 1
    iput p3, p0, Li3/g;->c:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Li3/b;-><init>(Lh3/a;Lh3/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Li3/g;->c:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x7

    return v0

    :pswitch_0
    const/4 v0, 0x4

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
