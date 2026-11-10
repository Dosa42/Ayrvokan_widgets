.class public abstract Lp/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Class;

.field public final c:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lp/i;->a:I

    iput-object p2, p0, Lp/i;->b:Ljava/lang/Class;

    const/16 p1, 0x1c

    iput p1, p0, Lp/i;->c:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    iget v1, p0, Lp/i;->c:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    move-object v0, p0

    .line 13
    check-cast v0, Lp/h;

    .line 14
    .line 15
    iget v1, v0, Lp/h;->d:I

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :pswitch_0
    invoke-static {p1}, Lj/f;->f(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_2

    .line 26
    :pswitch_1
    invoke-virtual {v0, p1}, Lp/h;->b(Landroid/view/View;)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_2

    .line 31
    :goto_1
    invoke-virtual {v0, p1}, Lp/h;->b(Landroid/view/View;)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_2
    return-object p1

    .line 36
    :cond_1
    iget v0, p0, Lp/i;->a:I

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v0, p0, Lp/i;->b:Ljava/lang/Class;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_2
    const/4 p1, 0x0

    .line 52
    return-object p1

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
