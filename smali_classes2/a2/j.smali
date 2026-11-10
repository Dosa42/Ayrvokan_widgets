.class public final La2/j;
.super Lz1/c;
.source "SourceFile"


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lq1/f;


# direct methods
.method public synthetic constructor <init>(IILq1/f;I)V
    .locals 0

    .line 1
    iput p4, p0, La2/j;->j:I

    .line 2
    .line 3
    iput-object p3, p0, La2/j;->k:Lq1/f;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lz1/c;-><init>(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()Landroidx/fragment/app/h;
    .locals 2

    .line 1
    iget v0, p0, La2/j;->j:I

    .line 2
    .line 3
    iget-object v1, p0, La2/j;->k:Lq1/f;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object v0, v1, Lq1/f;->D:Landroidx/fragment/app/h;

    .line 10
    .line 11
    return-object v0

    .line 12
    :goto_0
    iget-object v0, v1, Lq1/f;->D:Landroidx/fragment/app/h;

    .line 13
    .line 14
    return-object v0

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final m()Landroidx/fragment/app/h;
    .locals 2

    .line 1
    iget v0, p0, La2/j;->j:I

    .line 2
    .line 3
    iget-object v1, p0, La2/j;->k:Lq1/f;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object v0, v1, Lq1/f;->C:Landroidx/fragment/app/h;

    .line 10
    .line 11
    return-object v0

    .line 12
    :goto_0
    iget-object v0, v1, Lq1/f;->C:Landroidx/fragment/app/h;

    .line 13
    .line 14
    return-object v0

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
