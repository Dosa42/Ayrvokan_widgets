.class public Lcom/nomone/vr_desktop/Input/RootLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public a:Lu1/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nomone/vr_desktop/Input/RootLayout;->a:Lu1/i;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lu1/i;->g(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setInputManager(Lu1/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nomone/vr_desktop/Input/RootLayout;->a:Lu1/i;

    return-void
.end method
