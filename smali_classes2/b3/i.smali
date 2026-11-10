.class public final synthetic Lb3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb3/i;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget v0, p0, Lb3/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Lb3/j;

    .line 8
    .line 9
    check-cast p2, Lb3/j;

    .line 10
    .line 11
    iget p1, p1, Lb3/j;->a:I

    .line 12
    .line 13
    iget p2, p2, Lb3/j;->a:I

    .line 14
    .line 15
    sub-int/2addr p1, p2

    .line 16
    return p1

    .line 17
    :goto_0
    check-cast p1, Lb3/j;

    .line 18
    .line 19
    check-cast p2, Lb3/j;

    .line 20
    .line 21
    iget p1, p1, Lb3/j;->c:F

    .line 22
    .line 23
    iget p2, p2, Lb3/j;->c:F

    .line 24
    .line 25
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
