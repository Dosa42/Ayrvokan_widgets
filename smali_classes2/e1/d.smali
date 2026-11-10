.class public Le1/d;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Looper;I)V
    .locals 1

    iput p2, p0, Le1/d;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Le1/d;->b:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Le1/d;->b:Ljava/lang/Object;

    return-void

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Le1/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;I)V
    .locals 1

    iput p3, p0, Le1/d;->a:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Le1/d;->b:Ljava/lang/Object;

    return-void

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Le1/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf2/n;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Le1/d;->a:I

    .line 6
    iput-object p1, p0, Le1/d;->b:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 1
    iget v0, p0, Le1/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object v0, p0, Le1/d;->b:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v1, v0

    .line 13
    check-cast v1, Lf2/n;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget v0, p1, Landroid/os/Message;->what:I

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    if-ne v0, v4, :cond_2

    .line 26
    .line 27
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lf2/b0;

    .line 30
    .line 31
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    move v3, v4

    .line 36
    :cond_0
    if-eqz v3, :cond_1

    .line 37
    .line 38
    iget p1, v1, Lf2/n;->n:I

    .line 39
    .line 40
    add-int/2addr p1, v2

    .line 41
    iput p1, v1, Lf2/n;->n:I

    .line 42
    .line 43
    :cond_1
    iget p1, v1, Lf2/n;->n:I

    .line 44
    .line 45
    if-nez p1, :cond_8

    .line 46
    .line 47
    iget-object p1, v1, Lf2/n;->o:Lf2/b0;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lf2/b0;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_8

    .line 54
    .line 55
    iput-object v0, v1, Lf2/n;->o:Lf2/b0;

    .line 56
    .line 57
    new-instance p1, Lh0/b;

    .line 58
    .line 59
    const/16 v2, 0x10

    .line 60
    .line 61
    invoke-direct {p1, v0, v2}, Lh0/b;-><init>(Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1}, Lf2/n;->h(Lf2/b;)V

    .line 65
    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    .line 76
    move-object v5, v0

    .line 77
    check-cast v5, Lf2/a0;

    .line 78
    .line 79
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 80
    .line 81
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 82
    .line 83
    if-eq p1, v2, :cond_4

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    move v4, v3

    .line 87
    :goto_0
    iget v2, v1, Lf2/n;->k:I

    .line 88
    .line 89
    sub-int/2addr v2, v0

    .line 90
    iput v2, v1, Lf2/n;->k:I

    .line 91
    .line 92
    if-nez v2, :cond_8

    .line 93
    .line 94
    iget-wide v6, v5, Lf2/a0;->c:J

    .line 95
    .line 96
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    cmp-long v0, v6, v8

    .line 102
    .line 103
    if-nez v0, :cond_5

    .line 104
    .line 105
    iget-object v6, v5, Lf2/a0;->b:Lt2/f;

    .line 106
    .line 107
    const-wide/16 v7, 0x0

    .line 108
    .line 109
    iget-wide v9, v5, Lf2/a0;->d:J

    .line 110
    .line 111
    iget-wide v11, v5, Lf2/a0;->l:J

    .line 112
    .line 113
    invoke-virtual/range {v5 .. v12}, Lf2/a0;->a(Lt2/f;JJJ)Lf2/a0;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    move-object v2, v0

    .line 118
    goto :goto_1

    .line 119
    :cond_5
    move-object v2, v5

    .line 120
    :goto_1
    iget-object v0, v1, Lf2/n;->p:Lf2/a0;

    .line 121
    .line 122
    iget-object v0, v0, Lf2/a0;->a:Lf2/l0;

    .line 123
    .line 124
    invoke-virtual {v0}, Lf2/l0;->k()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_6

    .line 129
    .line 130
    iget-object v0, v2, Lf2/a0;->a:Lf2/l0;

    .line 131
    .line 132
    invoke-virtual {v0}, Lf2/l0;->k()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_6

    .line 137
    .line 138
    iput v3, v1, Lf2/n;->r:I

    .line 139
    .line 140
    iput v3, v1, Lf2/n;->q:I

    .line 141
    .line 142
    const-wide/16 v5, 0x0

    .line 143
    .line 144
    iput-wide v5, v1, Lf2/n;->s:J

    .line 145
    .line 146
    :cond_6
    iget-boolean v0, v1, Lf2/n;->l:Z

    .line 147
    .line 148
    if-eqz v0, :cond_7

    .line 149
    .line 150
    move v5, v3

    .line 151
    goto :goto_2

    .line 152
    :cond_7
    const/4 v0, 0x2

    .line 153
    move v5, v0

    .line 154
    :goto_2
    iget-boolean v6, v1, Lf2/n;->m:Z

    .line 155
    .line 156
    iput-boolean v3, v1, Lf2/n;->l:Z

    .line 157
    .line 158
    iput-boolean v3, v1, Lf2/n;->m:Z

    .line 159
    .line 160
    move v3, v4

    .line 161
    move v4, p1

    .line 162
    invoke-virtual/range {v1 .. v6}, Lf2/n;->m(Lf2/a0;ZIIZ)V

    .line 163
    .line 164
    .line 165
    :cond_8
    :goto_3
    return-void

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
