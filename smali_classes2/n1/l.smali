.class public final Ln1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;


# instance fields
.field public final a:[I

.field public b:Lorg/mozilla/geckoview/GeckoDisplay;

.field public c:Z

.field public d:I

.field public e:I

.field public final synthetic f:Lcom/nomone/GeckoView/MyGeckoView;


# direct methods
.method public constructor <init>(Lcom/nomone/GeckoView/MyGeckoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln1/l;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    new-array p1, p1, [I

    .line 8
    .line 9
    iput-object p1, p0, Ln1/l;->a:[I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lorg/mozilla/geckoview/GeckoDisplay;)V
    .locals 4

    .line 1
    iput-object p1, p0, Ln1/l;->b:Lorg/mozilla/geckoview/GeckoDisplay;

    .line 2
    .line 3
    iget-boolean v0, p0, Ln1/l;->c:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Ln1/l;->d:I

    .line 9
    .line 10
    iput v0, p0, Ln1/l;->d:I

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoDisplay;->setVerticalClipping(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0}, Ln1/l;->b()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Ln1/l;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 21
    .line 22
    iget-object v0, p1, Lcom/nomone/GeckoView/MyGeckoView;->c:Ln1/o;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Ln1/l;->b:Lorg/mozilla/geckoview/GeckoDisplay;

    .line 27
    .line 28
    iget-object v2, v0, Ln1/o;->b:Landroid/view/Surface;

    .line 29
    .line 30
    iget v3, v0, Ln1/o;->c:I

    .line 31
    .line 32
    iget v0, v0, Ln1/o;->d:I

    .line 33
    .line 34
    invoke-virtual {v1, v2, v3, v0}, Lorg/mozilla/geckoview/GeckoDisplay;->surfaceChanged(Landroid/view/Surface;II)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Ln1/l;->b:Lorg/mozilla/geckoview/GeckoDisplay;

    .line 38
    .line 39
    iget v1, p0, Ln1/l;->e:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoDisplay;->setDynamicToolbarMaxHeight(I)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-virtual {p1, v0}, Lcom/nomone/GeckoView/MyGeckoView;->setActive(Z)V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln1/l;->b:Lorg/mozilla/geckoview/GeckoDisplay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Ln1/l;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/nomone/GeckoView/MyGeckoView;->c:Ln1/o;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, v0, Ln1/o;->a:Landroid/view/TextureView;

    .line 13
    .line 14
    iget-object v1, p0, Ln1/l;->a:[I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Ln1/l;->b:Lorg/mozilla/geckoview/GeckoDisplay;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    aget v2, v1, v2

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    aget v1, v1, v3

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lorg/mozilla/geckoview/GeckoDisplay;->screenOriginChanged(II)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final onSurfaceChanged(Landroid/view/Surface;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln1/l;->b:Lorg/mozilla/geckoview/GeckoDisplay;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/geckoview/GeckoDisplay;->surfaceChanged(Landroid/view/Surface;II)V

    iget-object p1, p0, Ln1/l;->b:Lorg/mozilla/geckoview/GeckoDisplay;

    iget p2, p0, Ln1/l;->e:I

    invoke-virtual {p1, p2}, Lorg/mozilla/geckoview/GeckoDisplay;->setDynamicToolbarMaxHeight(I)V

    iget-boolean p1, p0, Ln1/l;->c:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Ln1/l;->f:Lcom/nomone/GeckoView/MyGeckoView;

    invoke-virtual {p1, v1}, Lcom/nomone/GeckoView/MyGeckoView;->setActive(Z)V

    :cond_0
    iput-boolean v1, p0, Ln1/l;->c:Z

    return-void
.end method

.method public final onSurfaceDestroyed()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln1/l;->b:Lorg/mozilla/geckoview/GeckoDisplay;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoDisplay;->surfaceDestroyed()V

    iget-object v0, p0, Ln1/l;->f:Lcom/nomone/GeckoView/MyGeckoView;

    invoke-virtual {v0, v1}, Lcom/nomone/GeckoView/MyGeckoView;->setActive(Z)V

    :cond_0
    iput-boolean v1, p0, Ln1/l;->c:Z

    return-void
.end method
