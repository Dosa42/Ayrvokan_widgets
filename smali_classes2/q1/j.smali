.class public final synthetic Lq1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lq1/x;


# direct methods
.method public synthetic constructor <init>(Lq1/x;I)V
    .locals 0

    .line 1
    iput p2, p0, Lq1/j;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lq1/j;->g:Lq1/x;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lq1/j;->f:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Lq1/j;->g:Lq1/x;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    iget-object v0, v3, Lq1/x;->a:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_1
    invoke-virtual {v3}, Lq1/x;->n()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_2
    invoke-virtual {v3}, Lq1/x;->i()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_3
    iget-object v0, v3, Lq1/x;->o:Ly0/j0;

    .line 26
    .line 27
    invoke-virtual {v0}, Ly0/j0;->e()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const-string v0, "sdf"

    .line 35
    .line 36
    const-string v1, "Rechecking pending purchase state..."

    .line 37
    .line 38
    invoke-static {v0, v1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Lq1/x;->e()Lcom/nomone/giap/GIAP;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/nomone/giap/GIAP;->f()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v2}, Lq1/x;->f(Z)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    const-string v0, "Keystroked"

    .line 56
    .line 57
    invoke-static {v0, v1}, Lo1/y;->c(Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const v2, 0x149ad4a

    .line 62
    .line 63
    .line 64
    if-le v1, v2, :cond_0

    .line 65
    .line 66
    const v1, 0x376825

    .line 67
    .line 68
    .line 69
    :cond_0
    const v2, 0xea60

    .line 70
    .line 71
    .line 72
    sub-int/2addr v1, v2

    .line 73
    invoke-static {v1, v0}, Lo1/y;->g(ILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Lq1/x;->g()V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    const-wide/16 v0, 0x3e8

    .line 84
    .line 85
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    :catch_0
    invoke-virtual {v3, v2}, Lq1/x;->f(Z)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :pswitch_7
    iget-object v0, v3, Lq1/x;->e:Lq1/u;

    .line 93
    .line 94
    invoke-virtual {v0}, La2/e0;->y()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :goto_0
    invoke-virtual {v3, v1}, Lq1/x;->f(Z)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
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
