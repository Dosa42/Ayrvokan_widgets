.class public final synthetic Ls1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:La2/a;


# direct methods
.method public synthetic constructor <init>(La2/a;I)V
    .locals 0

    .line 1
    iput p2, p0, Ls1/o;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ls1/o;->b:La2/a;

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
    .locals 5

    .line 1
    iget v0, p0, Ls1/o;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ls1/o;->b:La2/a;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast v1, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;

    .line 10
    .line 11
    sget-object v0, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->a0:Lq1/c0;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->i()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput-boolean v0, v1, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->U:Z

    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_1
    check-cast v1, Ls1/r;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->i()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput-boolean v0, v1, Ls1/r;->Z:Z

    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    iput v0, v1, Ls1/r;->W:I

    .line 36
    .line 37
    return-void

    .line 38
    :goto_0
    check-cast v1, La2/p;

    .line 39
    .line 40
    iget-boolean v0, v1, La2/p;->n0:Z

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    sget-object v0, Lq1/f;->L:Lo1/j0;

    .line 45
    .line 46
    new-instance v2, La2/m;

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-direct {v2, v1, v3}, La2/m;-><init>(La2/p;I)V

    .line 50
    .line 51
    .line 52
    const-string v1, "Update fullscreen dimensions"

    .line 53
    .line 54
    const-wide/16 v3, 0x64

    .line 55
    .line 56
    invoke-virtual {v0, v2, v1, v3, v4}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
