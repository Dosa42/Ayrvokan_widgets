.class public final synthetic La2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:La2/i;


# direct methods
.method public synthetic constructor <init>(La2/i;I)V
    .locals 0

    .line 1
    iput p2, p0, La2/d;->f:I

    .line 2
    .line 3
    iput-object p1, p0, La2/d;->g:La2/i;

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
    .locals 6

    .line 1
    iget v0, p0, La2/d;->f:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, La2/d;->g:La2/i;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_2

    .line 11
    :pswitch_0
    invoke-virtual {v3}, La2/i;->D()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_1
    iget-object v0, v3, La2/i;->g:Landroid/widget/FrameLayout$LayoutParams;

    .line 16
    .line 17
    iget-object v1, v3, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_2
    invoke-virtual {v3}, La2/i;->p()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x4

    .line 31
    :goto_0
    iget-object v0, v3, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_3
    iget-object v0, v3, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 38
    .line 39
    const/16 v1, 0x8

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_4
    iget v0, v3, La2/i;->p:I

    .line 46
    .line 47
    invoke-static {v0}, Lo1/r;->c(I)Lo1/o;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-nez v3, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    sget-object v4, Lo1/r;->a:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    iget-boolean v3, v3, Lo1/o;->b:Z

    .line 60
    .line 61
    if-eqz v3, :cond_2

    .line 62
    .line 63
    sget-object v3, Lo1/r;->b:[I

    .line 64
    .line 65
    aput v0, v3, v1

    .line 66
    .line 67
    invoke-static {v2, v3, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_1
    return-void

    .line 71
    :pswitch_5
    iget-object v0, v3, La2/i;->m:Lq1/f;

    .line 72
    .line 73
    iget-object v0, v0, Lq1/f;->c:Landroid/view/ViewGroup;

    .line 74
    .line 75
    iget-object v1, v3, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/nomone/GeckoView/MyGeckoView;->getSession()Lorg/mozilla/geckoview/GeckoSession;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->close()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :pswitch_6
    iput-boolean v2, v3, La2/i;->i:Z

    .line 89
    .line 90
    invoke-virtual {v3}, La2/i;->D()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :pswitch_7
    iput-boolean v2, v3, La2/i;->j:Z

    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_8
    iget-object v0, v3, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 100
    .line 101
    .line 102
    sget-object v0, Lq1/f;->L:Lo1/j0;

    .line 103
    .line 104
    new-instance v1, La2/d;

    .line 105
    .line 106
    const/4 v2, 0x5

    .line 107
    invoke-direct {v1, v3, v2}, La2/d;-><init>(La2/i;I)V

    .line 108
    .line 109
    .line 110
    const-string v2, "toggleFullScreenTask haptic feedback"

    .line 111
    .line 112
    const-wide/16 v4, 0x64

    .line 113
    .line 114
    invoke-virtual {v0, v1, v2, v4, v5}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 115
    .line 116
    .line 117
    iget-object v0, v3, La2/i;->e:La2/q;

    .line 118
    .line 119
    if-eqz v0, :cond_3

    .line 120
    .line 121
    invoke-interface {v0}, La2/q;->q()V

    .line 122
    .line 123
    .line 124
    :cond_3
    return-void

    .line 125
    :goto_2
    invoke-virtual {v3}, La2/i;->D()V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
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
