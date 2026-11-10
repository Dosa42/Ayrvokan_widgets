.class public Lorg/mozilla/gecko/media/GeckoHlsAudioRenderer;
.super Lorg/mozilla/gecko/media/GeckoHlsRendererBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;-><init>(ILorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->assertTrue(Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->LOGTAG:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->DEBUG:Z

    return-void
.end method


# virtual methods
.method public clearInputSamplesQueue()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mDemuxedInputSamples:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method public final createInputBuffer()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public handleEndOfStream(Li2/c;)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInputStreamEnded:Z

    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mDemuxedInputSamples:Ljava/util/concurrent/ConcurrentLinkedQueue;

    sget-object v0, Lorg/mozilla/gecko/media/GeckoHLSSample;->EOS:Lorg/mozilla/gecko/media/GeckoHLSSample;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public handleFormatRead(Li2/c;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormatHolder:Lf2/u;

    iget-object p1, p1, Lf2/u;->a:Lf2/t;

    invoke-virtual {p0, p1}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->onInputFormatChanged(Lf2/t;)V

    return-void
.end method

.method public handleReconfiguration(Li2/c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public handleSamplePreparation(Li2/c;)V
    .locals 11

    .line 1
    iget-object v0, p1, Li2/c;->d:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 4
    .line 5
    .line 6
    move-result v3

    .line 7
    new-array v0, v3, [B

    .line 8
    .line 9
    iget-object v1, p1, Li2/c;->d:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    invoke-virtual {v1, v0, v7, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p1, Li2/c;->d:Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    iput-object v1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInputBuffer:Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 24
    .line 25
    .line 26
    const/high16 v1, 0x40000000    # 2.0f

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Li2/a;->b(I)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object v1, p1, Li2/c;->c:Li2/b;

    .line 35
    .line 36
    iget-object v1, v1, Li2/b;->d:Landroid/media/MediaCodec$CryptoInfo;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 40
    :goto_0
    move-object v8, v1

    .line 41
    new-instance v9, Landroid/media/MediaCodec$BufferInfo;

    .line 42
    .line 43
    invoke-direct {v9}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 44
    .line 45
    .line 46
    const/4 v10, 0x1

    .line 47
    invoke-virtual {p1, v10}, Li2/a;->b(I)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    or-int/2addr v1, v7

    .line 52
    const/4 v2, 0x4

    .line 53
    invoke-virtual {p1, v2}, Li2/a;->b(I)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move v2, v7

    .line 61
    :goto_1
    or-int v6, v1, v2

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    iget-wide v4, p1, Li2/c;->f:J

    .line 65
    .line 66
    move-object v1, v9

    .line 67
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormats:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-ltz p1, :cond_2

    .line 77
    .line 78
    move v7, v10

    .line 79
    :cond_2
    invoke-virtual {p0, v7}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->assertTrue(Z)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormats:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    sub-int/2addr p1, v10

    .line 89
    invoke-static {v0, v9, v8, p1}, Lorg/mozilla/gecko/media/GeckoHLSSample;->create(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec$CryptoInfo;I)Lorg/mozilla/gecko/media/GeckoHLSSample;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mDemuxedInputSamples:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public notifyPlayerInputFormatChanged(Lf2/t;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mPlayerEventDispatcher:Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;

    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;->onAudioInputFormatChanged(Lf2/t;)V

    return-void
.end method

.method public resetRenderer()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInitialized:Z

    return-void
.end method

.method public bridge synthetic setOperatingRate(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public final supportsFormat(Lf2/t;)I
    .locals 6

    .line 1
    iget-object v0, p1, Lf2/t;->i:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lb3/c;->e(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    :try_start_0
    invoke-static {v0}, Lo2/g;->c(Ljava/lang/String;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catch Lo2/d; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    :goto_0
    const/4 v1, 0x1

    .line 22
    if-eqz v0, :cond_11

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    goto/16 :goto_8

    .line 31
    .line 32
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lo2/a;

    .line 37
    .line 38
    const/4 v3, -0x1

    .line 39
    iget v4, p1, Lf2/t;->w:I

    .line 40
    .line 41
    if-eq v4, v3, :cond_5

    .line 42
    .line 43
    iget-object v5, v0, Lo2/a;->c:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 44
    .line 45
    if-nez v5, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    if-nez v5, :cond_3

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    invoke-virtual {v5, v4}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_4

    .line 60
    .line 61
    :goto_1
    sget v4, Lb3/n;->a:I

    .line 62
    .line 63
    move v4, v2

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    move v4, v1

    .line 66
    :goto_2
    if-eqz v4, :cond_e

    .line 67
    .line 68
    :cond_5
    iget p1, p1, Lf2/t;->v:I

    .line 69
    .line 70
    if-eq p1, v3, :cond_f

    .line 71
    .line 72
    iget-object v3, v0, Lo2/a;->c:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 73
    .line 74
    if-nez v3, :cond_6

    .line 75
    .line 76
    goto/16 :goto_4

    .line 77
    .line 78
    :cond_6
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-nez v3, :cond_7

    .line 83
    .line 84
    goto/16 :goto_4

    .line 85
    .line 86
    :cond_7
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-gt v3, v1, :cond_c

    .line 91
    .line 92
    sget v4, Lb3/n;->a:I

    .line 93
    .line 94
    const/16 v5, 0x1a

    .line 95
    .line 96
    if-lt v4, v5, :cond_8

    .line 97
    .line 98
    if-lez v3, :cond_8

    .line 99
    .line 100
    goto/16 :goto_3

    .line 101
    .line 102
    :cond_8
    const-string v4, "audio/mpeg"

    .line 103
    .line 104
    iget-object v0, v0, Lo2/a;->b:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-nez v4, :cond_c

    .line 111
    .line 112
    const-string v4, "audio/3gpp"

    .line 113
    .line 114
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-nez v4, :cond_c

    .line 119
    .line 120
    const-string v4, "audio/amr-wb"

    .line 121
    .line 122
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-nez v4, :cond_c

    .line 127
    .line 128
    const-string v4, "audio/mp4a-latm"

    .line 129
    .line 130
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-nez v4, :cond_c

    .line 135
    .line 136
    const-string v4, "audio/vorbis"

    .line 137
    .line 138
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-nez v4, :cond_c

    .line 143
    .line 144
    const-string v4, "audio/opus"

    .line 145
    .line 146
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-nez v4, :cond_c

    .line 151
    .line 152
    const-string v4, "audio/raw"

    .line 153
    .line 154
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-nez v4, :cond_c

    .line 159
    .line 160
    const-string v4, "audio/flac"

    .line 161
    .line 162
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-nez v4, :cond_c

    .line 167
    .line 168
    const-string v4, "audio/g711-alaw"

    .line 169
    .line 170
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-nez v4, :cond_c

    .line 175
    .line 176
    const-string v4, "audio/g711-mlaw"

    .line 177
    .line 178
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    if-nez v4, :cond_c

    .line 183
    .line 184
    const-string v4, "audio/gsm"

    .line 185
    .line 186
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-eqz v4, :cond_9

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_9
    const-string v3, "audio/ac3"

    .line 194
    .line 195
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-eqz v3, :cond_a

    .line 200
    .line 201
    const/4 v3, 0x6

    .line 202
    goto :goto_3

    .line 203
    :cond_a
    const-string v3, "audio/eac3"

    .line 204
    .line 205
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_b

    .line 210
    .line 211
    const/16 v3, 0x10

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_b
    const/16 v3, 0x1e

    .line 215
    .line 216
    :cond_c
    :goto_3
    if-ge v3, p1, :cond_d

    .line 217
    .line 218
    :goto_4
    sget p1, Lb3/n;->a:I

    .line 219
    .line 220
    move p1, v2

    .line 221
    goto :goto_5

    .line 222
    :cond_d
    move p1, v1

    .line 223
    :goto_5
    if-eqz p1, :cond_e

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_e
    move v1, v2

    .line 227
    :cond_f
    :goto_6
    if-eqz v1, :cond_10

    .line 228
    .line 229
    const/4 p1, 0x4

    .line 230
    goto :goto_7

    .line 231
    :cond_10
    const/4 p1, 0x3

    .line 232
    :goto_7
    or-int/lit8 p1, p1, 0x8

    .line 233
    .line 234
    or-int/2addr p1, v2

    .line 235
    return p1

    .line 236
    :cond_11
    :goto_8
    return v1
.end method
