.class final Lorg/mozilla/gecko/SurfaceTextureListener;
.super Lorg/mozilla/gecko/mozglue/JNIObject;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# direct methods
.method private constructor <init>()V
    .locals 0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-direct {p0}, Lorg/mozilla/gecko/mozglue/JNIObject;-><init>()V

    return-void
.end method

.method private native nativeOnFrameAvailable()V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        stubName = "OnFrameAvailable"
    .end annotation
.end method


# virtual methods
.method public native disposeNative()V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/mozilla/gecko/SurfaceTextureListener;->disposeNative()V

    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/gecko/SurfaceTextureListener;->nativeOnFrameAvailable()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
