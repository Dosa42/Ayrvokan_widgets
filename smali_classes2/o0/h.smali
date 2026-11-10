.class public final synthetic Lo0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/b;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lo0/l;

.field public final synthetic h:Lj0/k;


# direct methods
.method public synthetic constructor <init>(Lo0/l;Lj0/k;I)V
    .locals 0

    .line 1
    iput p3, p0, Lo0/h;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lo0/h;->g:Lo0/l;

    .line 4
    .line 5
    iput-object p2, p0, Lo0/h;->h:Lj0/k;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lo0/h;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Lo0/h;->h:Lj0/k;

    .line 4
    .line 5
    iget-object v2, p0, Lo0/h;->g:Lo0/l;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    iget-object v0, v2, Lo0/l;->c:Lp0/d;

    .line 12
    .line 13
    check-cast v0, Lp0/k;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v2, Lp0/f;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v2, v0, v1, v3}, Lp0/f;-><init>(Lp0/k;Lj0/k;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lp0/k;->c(Lp0/i;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :goto_0
    iget-object v0, v2, Lo0/l;->c:Lp0/d;

    .line 40
    .line 41
    check-cast v0, Lp0/k;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    new-instance v2, Lp0/f;

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    invoke-direct {v2, v0, v1, v3}, Lp0/f;-><init>(Lp0/k;Lj0/k;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Lp0/k;->c(Lp0/i;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/Iterable;

    .line 57
    .line 58
    return-object v0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
