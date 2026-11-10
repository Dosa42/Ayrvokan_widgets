.class Lorg/mozilla/gecko/GeckoAppShell$CameraCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/GeckoAppShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraCallback"
.end annotation


# instance fields
.field private final mCamera:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mozilla/gecko/GeckoAppShell$CameraCallback;->mCamera:I

    return-void
.end method

.method private static native onFrameData(I[B)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 0

    iget p2, p0, Lorg/mozilla/gecko/GeckoAppShell$CameraCallback;->mCamera:I

    invoke-static {p2, p1}, Lorg/mozilla/gecko/GeckoAppShell$CameraCallback;->onFrameData(I[B)V

    sget-object p1, Lorg/mozilla/gecko/GeckoAppShell;->sCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->access$200()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_0
    return-void
.end method
