.class public final Ld3/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Ld3/z;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Ld3/z;->g:Ljava/lang/Object;

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
    .locals 5

    .line 1
    iget v0, p0, Ld3/z;->f:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :pswitch_0
    iget-object v0, p0, Ld3/z;->g:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ld3/a0;

    .line 12
    .line 13
    iget v0, v0, Ld3/a0;->c:I

    .line 14
    .line 15
    int-to-float v0, v0

    .line 16
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 17
    .line 18
    mul-float/2addr v0, v3

    .line 19
    const/high16 v3, 0x44fa0000    # 2000.0f

    .line 20
    .line 21
    div-float/2addr v0, v3

    .line 22
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v4, "Camera fps: "

    .line 29
    .line 30
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, "."

    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v3, "CameraStatistics"

    .line 46
    .line 47
    invoke-static {v1, v3, v0}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Ld3/z;->g:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Ld3/a0;

    .line 53
    .line 54
    iget v1, v0, Ld3/a0;->c:I

    .line 55
    .line 56
    if-nez v1, :cond_0

    .line 57
    .line 58
    iget v1, v0, Ld3/a0;->d:I

    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    iput v1, v0, Ld3/a0;->d:I

    .line 63
    .line 64
    mul-int/lit16 v1, v1, 0x7d0

    .line 65
    .line 66
    const/16 v4, 0xfa0

    .line 67
    .line 68
    if-lt v1, v4, :cond_1

    .line 69
    .line 70
    iget-object v1, v0, Ld3/a0;->b:Ld3/y;

    .line 71
    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    const-string v0, "Camera freezed."

    .line 75
    .line 76
    const/4 v1, 0x5

    .line 77
    invoke-static {v1, v3, v0}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Ld3/z;->g:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Ld3/a0;

    .line 83
    .line 84
    iget-object v0, v0, Ld3/a0;->a:Ld3/p0;

    .line 85
    .line 86
    iget-boolean v0, v0, Ld3/p0;->j:Z

    .line 87
    .line 88
    iget-object v0, p0, Ld3/z;->g:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Ld3/a0;

    .line 91
    .line 92
    iget-object v0, v0, Ld3/a0;->b:Ld3/y;

    .line 93
    .line 94
    invoke-interface {v0}, Ld3/y;->a()V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    iput v2, v0, Ld3/a0;->d:I

    .line 99
    .line 100
    :cond_1
    iput v2, v0, Ld3/a0;->c:I

    .line 101
    .line 102
    iget-object v0, v0, Ld3/a0;->a:Ld3/p0;

    .line 103
    .line 104
    iget-object v0, v0, Ld3/p0;->b:Landroid/os/Handler;

    .line 105
    .line 106
    const-wide/16 v1, 0x7d0

    .line 107
    .line 108
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    .line 110
    .line 111
    :goto_0
    return-void

    .line 112
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v3, "Setting listener to "

    .line 115
    .line 116
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v3, p0, Ld3/z;->g:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v3, Ld3/p0;

    .line 122
    .line 123
    iget-object v4, v3, Ld3/p0;->m:Ld3/w0;

    .line 124
    .line 125
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const-string v4, "SurfaceTextureHelper"

    .line 133
    .line 134
    invoke-static {v1, v4, v0}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, v3, Ld3/p0;->m:Ld3/w0;

    .line 138
    .line 139
    iput-object v0, v3, Ld3/p0;->h:Ld3/w0;

    .line 140
    .line 141
    const/4 v0, 0x0

    .line 142
    iput-object v0, v3, Ld3/p0;->m:Ld3/w0;

    .line 143
    .line 144
    iget-boolean v0, v3, Ld3/p0;->i:Z

    .line 145
    .line 146
    if-eqz v0, :cond_2

    .line 147
    .line 148
    sget-object v0, Ld3/h0;->a:Ljava/lang/Object;

    .line 149
    .line 150
    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, v3, Ld3/p0;->d:Landroid/graphics/SurfaceTexture;

    .line 152
    .line 153
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 154
    .line 155
    .line 156
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    iput-boolean v2, v3, Ld3/p0;->i:Z

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :catchall_0
    move-exception v1

    .line 161
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    throw v1

    .line 163
    :cond_2
    :goto_2
    return-void

    .line 164
    nop

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
