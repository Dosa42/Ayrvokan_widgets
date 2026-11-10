.class public final synthetic Lo1/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:Lcom/nomone/browser_module/OpenGLView;


# direct methods
.method public synthetic constructor <init>(Lcom/nomone/browser_module/OpenGLView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/s;->a:Lcom/nomone/browser_module/OpenGLView;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 5

    .line 1
    iget-object p1, p0, Lo1/s;->a:Lcom/nomone/browser_module/OpenGLView;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/nomone/browser_module/OpenGLView;->o:Lo1/u;

    .line 4
    .line 5
    if-eqz p2, :cond_3

    .line 6
    .line 7
    check-cast p2, Lq1/e;

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p2, Lq1/e;->k:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Lq1/f;

    .line 16
    .line 17
    iget-wide v3, v2, Lq1/f;->l:J

    .line 18
    .line 19
    sub-long v3, v0, v3

    .line 20
    .line 21
    long-to-float v3, v3

    .line 22
    const v4, 0x49742400    # 1000000.0f

    .line 23
    .line 24
    .line 25
    div-float/2addr v3, v4

    .line 26
    iput-wide v0, v2, Lq1/f;->l:J

    .line 27
    .line 28
    iget v0, v2, Lq1/f;->m:F

    .line 29
    .line 30
    cmpg-float v0, v3, v0

    .line 31
    .line 32
    if-gez v0, :cond_0

    .line 33
    .line 34
    iput v3, v2, Lq1/f;->m:F

    .line 35
    .line 36
    :cond_0
    iget-object v0, v2, Lq1/f;->n:Ljava/util/ArrayList;

    .line 37
    .line 38
    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p2, Lq1/e;->k:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Lq1/f;

    .line 42
    .line 43
    iget-object v1, v1, Lq1/f;->o:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 46
    .line 47
    .line 48
    iget-object v1, p2, Lq1/e;->k:Ljava/lang/Object;

    .line 49
    .line 50
    move-object v2, v1

    .line 51
    check-cast v2, Lq1/f;

    .line 52
    .line 53
    iget-object v2, v2, Lq1/f;->o:Ljava/util/ArrayList;

    .line 54
    .line 55
    check-cast v1, Lq1/f;

    .line 56
    .line 57
    iget-object v1, v1, Lq1/f;->n:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    .line 61
    .line 62
    iget-object v1, p2, Lq1/e;->k:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v1, Lq1/f;

    .line 65
    .line 66
    iget-object v1, v1, Lq1/f;->n:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 69
    .line 70
    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    iget-object v0, p2, Lq1/e;->k:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v0, Lq1/f;

    .line 75
    .line 76
    iget-object v0, v0, Lq1/f;->o:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_1

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Ljava/lang/Runnable;

    .line 93
    .line 94
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p2, Lq1/e;->k:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v0, Lq1/f;

    .line 101
    .line 102
    iget-object v0, v0, Lq1/f;->o:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    .line 106
    .line 107
    iget-object v0, p2, Lq1/e;->k:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v0, Lq1/f;

    .line 110
    .line 111
    iget-object v1, v0, Lq1/f;->k:Ljava/util/List;

    .line 112
    .line 113
    monitor-enter v1

    .line 114
    const/4 v0, 0x0

    .line 115
    :goto_1
    :try_start_1
    iget-object v2, p2, Lq1/e;->k:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v2, Lq1/f;

    .line 118
    .line 119
    iget-object v2, v2, Lq1/f;->k:Ljava/util/List;

    .line 120
    .line 121
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-ge v0, v2, :cond_2

    .line 126
    .line 127
    iget-object v2, p2, Lq1/e;->k:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v2, Lq1/f;

    .line 130
    .line 131
    iget-object v2, v2, Lq1/f;->k:Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Lq1/d;

    .line 138
    .line 139
    invoke-interface {v2}, Lq1/d;->d()V

    .line 140
    .line 141
    .line 142
    add-int/lit8 v0, v0, 0x1

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_2
    monitor-exit v1

    .line 146
    goto :goto_2

    .line 147
    :catchall_0
    move-exception p1

    .line 148
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    throw p1

    .line 150
    :catchall_1
    move-exception p1

    .line 151
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    throw p1

    .line 153
    :cond_3
    :goto_2
    iget-object p2, p1, Lcom/nomone/browser_module/OpenGLView;->n:Ljava/lang/Object;

    .line 154
    .line 155
    monitor-enter p2

    .line 156
    :try_start_3
    iget-boolean v0, p1, Lcom/nomone/browser_module/OpenGLView;->i:Z

    .line 157
    .line 158
    if-eqz v0, :cond_4

    .line 159
    .line 160
    iget-boolean v0, p1, Lcom/nomone/browser_module/OpenGLView;->j:Z

    .line 161
    .line 162
    if-eqz v0, :cond_4

    .line 163
    .line 164
    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p1, Lcom/nomone/browser_module/OpenGLView;->k:Z

    .line 166
    .line 167
    iget-object v0, p1, Lcom/nomone/browser_module/OpenGLView;->n:Ljava/lang/Object;

    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 170
    .line 171
    .line 172
    :cond_4
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 173
    iget-boolean p2, p1, Lcom/nomone/browser_module/OpenGLView;->m:Z

    .line 174
    .line 175
    if-nez p2, :cond_5

    .line 176
    .line 177
    iget-object p2, p1, Lcom/nomone/browser_module/OpenGLView;->d:Landroid/view/Choreographer;

    .line 178
    .line 179
    iget-object p1, p1, Lcom/nomone/browser_module/OpenGLView;->e:Lo1/s;

    .line 180
    .line 181
    invoke-virtual {p2, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 182
    .line 183
    .line 184
    :cond_5
    return-void

    .line 185
    :catchall_2
    move-exception p1

    .line 186
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 187
    throw p1
.end method
