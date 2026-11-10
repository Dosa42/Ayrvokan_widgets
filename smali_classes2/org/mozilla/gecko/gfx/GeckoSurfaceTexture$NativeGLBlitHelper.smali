.class public final Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture$NativeGLBlitHelper;
.super Lorg/mozilla/gecko/mozglue/JNIObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeGLBlitHelper"
.end annotation

.annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/mozglue/JNIObject;-><init>()V

    return-void
.end method

.method public static native create(ILorg/mozilla/gecko/gfx/GeckoSurface;II)Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture$NativeGLBlitHelper;
.end method


# virtual methods
.method public native blit()V
.end method

.method public native disposeNative()V
.end method
