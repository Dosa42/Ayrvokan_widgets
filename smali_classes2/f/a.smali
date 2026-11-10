.class public final Lf/a;
.super Lf/h;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lf/a;->d:I

    .line 2
    .line 3
    iput-object p1, p0, Lf/a;->e:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Lf/h;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget v0, p0, Lf/a;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Lf/a;->e:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast v1, Lf/b;

    .line 10
    .line 11
    invoke-virtual {v1}, Lf/i;->clear()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :goto_0
    check-cast v1, Lf/c;

    .line 16
    .line 17
    invoke-virtual {v1}, Lf/c;->clear()V

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

.method public final b(II)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lf/a;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Lf/a;->e:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast v1, Lf/b;

    .line 10
    .line 11
    iget-object v0, v1, Lf/i;->b:[Ljava/lang/Object;

    .line 12
    .line 13
    shl-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    add-int/2addr p1, p2

    .line 16
    aget-object p1, v0, p1

    .line 17
    .line 18
    return-object p1

    .line 19
    :goto_0
    check-cast v1, Lf/c;

    .line 20
    .line 21
    iget-object p2, v1, Lf/c;->b:[Ljava/lang/Object;

    .line 22
    .line 23
    aget-object p1, p2, p1

    .line 24
    .line 25
    return-object p1

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Lf/b;
    .locals 2

    .line 1
    iget v0, p0, Lf/a;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lf/a;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lf/b;

    .line 10
    .line 11
    return-object v0

    .line 12
    :goto_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string v1, "not a map"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()I
    .locals 2

    .line 1
    iget v0, p0, Lf/a;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Lf/a;->e:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast v1, Lf/b;

    .line 10
    .line 11
    iget v0, v1, Lf/i;->c:I

    .line 12
    .line 13
    return v0

    .line 14
    :goto_0
    check-cast v1, Lf/c;

    .line 15
    .line 16
    iget v0, v1, Lf/c;->c:I

    .line 17
    .line 18
    return v0

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget v0, p0, Lf/a;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Lf/a;->e:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast v1, Lf/b;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Lf/i;->e(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :goto_0
    check-cast v1, Lf/c;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lf/c;->indexOf(Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(I)V
    .locals 2

    .line 1
    iget v0, p0, Lf/a;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Lf/a;->e:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast v1, Lf/b;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Lf/i;->i(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :goto_0
    check-cast v1, Lf/c;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lf/c;->i(I)Ljava/lang/Object;

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
