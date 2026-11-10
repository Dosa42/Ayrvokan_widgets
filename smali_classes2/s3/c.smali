.class public final Ls3/c;
.super Ls3/j;
.source "SourceFile"


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lh3/a;Lh3/a;I)V
    .locals 0

    .line 1
    iput p3, p0, Ls3/c;->c:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ls3/j;-><init>(Lh3/a;Lh3/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Ls3/c;->c:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x14

    return v0

    :pswitch_0
    const/16 v0, 0xf

    return v0

    :pswitch_1
    const/16 v0, 0xe

    return v0

    :pswitch_2
    const/16 v0, 0xd

    return v0

    :pswitch_3
    const/16 v0, 0xc

    return v0

    :pswitch_4
    const/16 v0, 0xb

    return v0

    :pswitch_5
    const/16 v0, 0xa

    return v0

    :pswitch_6
    const/16 v0, 0x9

    return v0

    :pswitch_7
    const/16 v0, 0x8

    return v0

    :pswitch_8
    const/4 v0, 0x6

    return v0

    :pswitch_9
    const/4 v0, 0x5

    return v0

    :pswitch_a
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
