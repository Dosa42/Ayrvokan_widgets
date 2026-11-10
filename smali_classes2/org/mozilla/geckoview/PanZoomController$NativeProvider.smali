.class final Lorg/mozilla/geckoview/PanZoomController$NativeProvider;
.super Lorg/mozilla/gecko/mozglue/JNIObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/PanZoomController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NativeProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/PanZoomController;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/PanZoomController;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/PanZoomController$NativeProvider;->this$0:Lorg/mozilla/geckoview/PanZoomController;

    invoke-direct {p0}, Lorg/mozilla/gecko/mozglue/JNIObject;-><init>()V

    return-void
.end method

.method public static synthetic access$400(Lorg/mozilla/geckoview/PanZoomController$NativeProvider;IIJIFF[I[F[F[F[F[F[F)I
    .locals 0

    invoke-direct/range {p0 .. p14}, Lorg/mozilla/geckoview/PanZoomController$NativeProvider;->handleMotionEvent(IIJIFF[I[F[F[F[F[F[F)I

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lorg/mozilla/geckoview/PanZoomController$NativeProvider;JIFFFF)I
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/mozilla/geckoview/PanZoomController$NativeProvider;->handleScrollEvent(JIFFFF)I

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lorg/mozilla/geckoview/PanZoomController$NativeProvider;IJIFFI)I
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/mozilla/geckoview/PanZoomController$NativeProvider;->handleMouseEvent(IJIFFI)I

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Lorg/mozilla/geckoview/PanZoomController$NativeProvider;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/PanZoomController$NativeProvider;->setAttached(Z)V

    return-void
.end method

.method public static synthetic access$900(Lorg/mozilla/geckoview/PanZoomController$NativeProvider;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/PanZoomController$NativeProvider;->nativeSetIsLongpressEnabled(Z)V

    return-void
.end method

.method private native handleMotionEvent(IIJIFF[I[F[F[F[F[F[F)I
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
    .end annotation
.end method

.method private native handleMouseEvent(IJIFFI)I
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
    .end annotation
.end method

.method private native handleScrollEvent(JIFFFF)I
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
    .end annotation
.end method

.method private native nativeSetIsLongpressEnabled(Z)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        stubName = "SetIsLongpressEnabled"
    .end annotation
.end method

.method private setAttached(Z)V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/mozilla/geckoview/PanZoomController$NativeProvider;->this$0:Lorg/mozilla/geckoview/PanZoomController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/mozilla/geckoview/PanZoomController;->access$102(Lorg/mozilla/geckoview/PanZoomController;Z)Z

    iget-object p1, p0, Lorg/mozilla/geckoview/PanZoomController$NativeProvider;->this$0:Lorg/mozilla/geckoview/PanZoomController;

    invoke-static {p1}, Lorg/mozilla/geckoview/PanZoomController;->access$200(Lorg/mozilla/geckoview/PanZoomController;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/mozilla/geckoview/PanZoomController$NativeProvider;->this$0:Lorg/mozilla/geckoview/PanZoomController;

    invoke-static {p1}, Lorg/mozilla/geckoview/PanZoomController;->access$100(Lorg/mozilla/geckoview/PanZoomController;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/mozilla/geckoview/PanZoomController$NativeProvider;->this$0:Lorg/mozilla/geckoview/PanZoomController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/mozilla/geckoview/PanZoomController;->access$102(Lorg/mozilla/geckoview/PanZoomController;Z)Z

    iget-object p1, p0, Lorg/mozilla/geckoview/PanZoomController$NativeProvider;->this$0:Lorg/mozilla/geckoview/PanZoomController;

    invoke-static {p1}, Lorg/mozilla/geckoview/PanZoomController;->access$300(Lorg/mozilla/geckoview/PanZoomController;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthesizeNativeMouseEvent(III)V
    .locals 9
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/PanZoomController$NativeProvider;->this$0:Lorg/mozilla/geckoview/PanZoomController;

    const/16 v1, 0x2002

    const v2, 0x186a0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v8}, Lorg/mozilla/geckoview/PanZoomController;->access$000(Lorg/mozilla/geckoview/PanZoomController;IIIIIDI)V

    return-void
.end method

.method private synthesizeNativeTouchPoint(IIIIDI)V
    .locals 10
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
    .end annotation

    const v0, 0x186a0

    move v3, p1

    if-eq v3, v0, :cond_0

    move-object v0, p0

    iget-object v1, v0, Lorg/mozilla/geckoview/PanZoomController$NativeProvider;->this$0:Lorg/mozilla/geckoview/PanZoomController;

    const/16 v2, 0x1002

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-wide v7, p5

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lorg/mozilla/geckoview/PanZoomController;->access$000(Lorg/mozilla/geckoview/PanZoomController;IIIIIDI)V

    return-void

    :cond_0
    move-object v0, p0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Pointer ID reserved for mouse"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public disposeNative()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
