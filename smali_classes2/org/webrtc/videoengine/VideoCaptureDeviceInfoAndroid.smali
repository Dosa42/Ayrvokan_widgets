.class public Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ld3/w;)[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ld3/w;->a()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v1, v4

    invoke-interface {p0, v5}, Ld3/w;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v8, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v8}, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Facing "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v5}, Ld3/w;->c(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "front"

    goto :goto_1

    :cond_1
    const-string v10, "back"

    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->name:Ljava/lang/String;

    iput v3, v8, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->orientation:I

    new-array v9, v7, [I

    iput-object v9, v8, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:[I

    new-array v7, v7, [I

    iput-object v7, v8, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:[I

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld3/t;

    iget-object v7, v7, Ld3/t;->c:Ld3/s;

    iget v7, v7, Ld3/s;->a:I

    iput v7, v8, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->minMilliFPS:I

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld3/t;

    iget-object v7, v7, Ld3/t;->c:Ld3/s;

    iget v7, v7, Ld3/s;->b:I

    iput v7, v8, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxMilliFPS:I

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v3

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ld3/t;

    iget-object v10, v8, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:[I

    iget v11, v9, Ld3/t;->a:I

    aput v11, v10, v7

    iget-object v10, v8, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:[I

    iget v11, v9, Ld3/t;->b:I

    aput v11, v10, v7

    iget-object v9, v9, Ld3/t;->c:Ld3/s;

    iget v10, v9, Ld3/s;->a:I

    iget v11, v8, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->minMilliFPS:I

    if-ge v10, v11, :cond_2

    iput v10, v8, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->minMilliFPS:I

    :cond_2
    iget v10, v8, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxMilliFPS:I

    iget v9, v9, Ld3/s;->b:I

    if-le v9, v10, :cond_3

    iput v9, v8, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxMilliFPS:I

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {p0, v5}, Ld3/w;->c(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v8, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->frontFacing:Z

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_5
    new-array p0, v3, [Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    return-object p0
.end method

.method private static getDeviceInfo()[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    .locals 2
    .annotation build Lorg/mozilla/gecko/annotation/WebRTCJNITarget;
    .end annotation

    .line 1
    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ld3/h;->g(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ld3/h;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ld3/h;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->a(Ld3/w;)[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_0
    new-instance v0, Ld3/b;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-direct {v0, v1}, Ld3/b;-><init>(Z)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->a(Ld3/w;)[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method
