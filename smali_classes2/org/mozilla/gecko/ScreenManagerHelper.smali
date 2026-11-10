.class Lorg/mozilla/gecko/ScreenManagerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DISPLAY_EXTERNAL:I = 0x1

.field static final DISPLAY_PRIMARY:I = 0x0

.field static final DISPLAY_VIRTUAL:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addDisplay(IIIF)I
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end method

.method private static native nativeRefreshScreenInfo()V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
        stubName = "RefreshScreenInfo"
    .end annotation
.end method

.method public static refreshScreenInfo()V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/ScreenManagerHelper;->nativeRefreshScreenInfo()V

    :cond_0
    return-void
.end method

.method public static native removeDisplay(I)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end method
