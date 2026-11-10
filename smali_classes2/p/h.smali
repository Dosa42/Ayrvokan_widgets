.class public final Lp/h;
.super Lp/i;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lp/h;->d:I

    .line 1
    const-class v0, Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0}, Lp/i;-><init>(ILjava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    iput p2, p0, Lp/h;->d:I

    .line 3
    const-class p2, Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lp/i;-><init>(ILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget v0, p0, Lp/h;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    invoke-static {p1}, Lj/f;->m(Landroid/view/View;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :goto_0
    invoke-static {p1}, Lj/f;->s(Landroid/view/View;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
