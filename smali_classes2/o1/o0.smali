.class public final synthetic Lo1/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lo1/v0;


# direct methods
.method public synthetic constructor <init>(Lo1/v0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo1/o0;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lo1/o0;->g:Lo1/v0;

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
    .locals 9

    .line 1
    iget v0, p0, Lo1/o0;->f:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object v0, p0, Lo1/o0;->g:Lo1/v0;

    .line 9
    .line 10
    iput-boolean v1, v0, Lo1/v0;->n:Z

    .line 11
    .line 12
    return-void

    .line 13
    :goto_0
    iget-object v0, p0, Lo1/o0;->g:Lo1/v0;

    .line 14
    .line 15
    iget-object v2, v0, Lo1/v0;->s:Ljava/util/LinkedList;

    .line 16
    .line 17
    monitor-enter v2

    .line 18
    :try_start_0
    iget-object v3, v0, Lo1/v0;->c:[Lo1/r0;

    .line 19
    .line 20
    aget-object v3, v3, v1

    .line 21
    .line 22
    iget v3, v3, Lo1/r0;->i:F

    .line 23
    .line 24
    iget v4, v0, Lo1/v0;->q:F

    .line 25
    .line 26
    cmpg-float v3, v3, v4

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    if-gez v3, :cond_1

    .line 30
    .line 31
    iget-object v1, v0, Lo1/v0;->s:Ljava/util/LinkedList;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-lez v1, :cond_0

    .line 38
    .line 39
    iget-object v1, v0, Lo1/v0;->a:Lo1/j0;

    .line 40
    .line 41
    iget-object v3, v0, Lo1/v0;->u:Lo1/o0;

    .line 42
    .line 43
    const-string v5, "dispatch touchpad move event"

    .line 44
    .line 45
    invoke-virtual {v1, v5, v3}, Lo1/j0;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iput-boolean v4, v0, Lo1/v0;->t:Z

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_1
    iget-boolean v3, v0, Lo1/v0;->t:Z

    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    iput-boolean v1, v0, Lo1/v0;->t:Z

    .line 56
    .line 57
    invoke-virtual {v0}, Lo1/v0;->a()V

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_2
    iget-object v3, v0, Lo1/v0;->j:Lo1/p0;

    .line 62
    .line 63
    iget-boolean v5, v3, Lo1/t0;->g:Z

    .line 64
    .line 65
    if-eqz v5, :cond_3

    .line 66
    .line 67
    invoke-virtual {v3}, Lo1/t0;->b()V

    .line 68
    .line 69
    .line 70
    iget-object v3, v0, Lo1/v0;->j:Lo1/p0;

    .line 71
    .line 72
    invoke-virtual {v3}, Lo1/t0;->run()V

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v5

    .line 79
    :goto_1
    iget-object v3, v0, Lo1/v0;->s:Ljava/util/LinkedList;

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Lo1/s0;

    .line 86
    .line 87
    if-eqz v3, :cond_5

    .line 88
    .line 89
    iget-wide v7, v3, Lo1/s0;->c:J

    .line 90
    .line 91
    cmp-long v7, v7, v5

    .line 92
    .line 93
    if-lez v7, :cond_4

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    iget-object v7, v0, Lo1/v0;->b:Lu1/e;

    .line 97
    .line 98
    iget v8, v3, Lo1/s0;->a:F

    .line 99
    .line 100
    iget v3, v3, Lo1/s0;->b:F

    .line 101
    .line 102
    iget-object v7, v7, Lu1/e;->b:Lu1/i;

    .line 103
    .line 104
    invoke-virtual {v7}, Lu1/i;->i()V

    .line 105
    .line 106
    .line 107
    invoke-static {v7, v4}, Lu1/i;->d(Lu1/i;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7}, Lu1/i;->m()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7, v1}, Lu1/i;->k(Z)V

    .line 114
    .line 115
    .line 116
    iget-object v7, v7, Lu1/i;->r:Lu1/v;

    .line 117
    .line 118
    invoke-virtual {v7, v8, v3, v4}, Lu1/v;->c(FFZ)V

    .line 119
    .line 120
    .line 121
    iget-object v3, v0, Lo1/v0;->s:Ljava/util/LinkedList;

    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    :goto_2
    iget-object v1, v0, Lo1/v0;->s:Ljava/util/LinkedList;

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-lez v1, :cond_6

    .line 134
    .line 135
    iget-object v1, v0, Lo1/v0;->a:Lo1/j0;

    .line 136
    .line 137
    iget-object v0, v0, Lo1/v0;->u:Lo1/o0;

    .line 138
    .line 139
    const-string v3, "dispatch touchpad move event"

    .line 140
    .line 141
    invoke-virtual {v1, v3, v0}, Lo1/j0;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 142
    .line 143
    .line 144
    :cond_6
    :goto_3
    monitor-exit v2

    .line 145
    return-void

    .line 146
    :catchall_0
    move-exception v0

    .line 147
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    throw v0

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
