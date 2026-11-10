.class public final Lq1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/x;


# instance fields
.field public final synthetic f:Lq1/x;


# direct methods
.method public synthetic constructor <init>(Lq1/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq1/r;->f:Lq1/x;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static a(La2/r;Landroidx/fragment/app/h;)V
    .locals 5

    .line 1
    instance-of v0, p0, La2/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move-object v0, p0

    .line 7
    check-cast v0, La2/i;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, La2/d;

    .line 13
    .line 14
    const/16 v2, 0x9

    .line 15
    .line 16
    invoke-direct {v1, v0, v2}, La2/d;-><init>(La2/i;I)V

    .line 17
    .line 18
    .line 19
    iget-object v2, v0, La2/i;->o:Landroid/graphics/SurfaceTexture;

    .line 20
    .line 21
    new-instance v3, La2/f;

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    invoke-direct {v3, v0, v1, v4}, La2/f;-><init>(La2/i;Ljava/lang/Runnable;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, La2/i;->D()V

    .line 31
    .line 32
    .line 33
    :goto_0
    instance-of v0, p0, La2/c0;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    check-cast p0, La2/c0;

    .line 38
    .line 39
    invoke-interface {p0}, La2/c0;->n()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, La2/r;

    .line 58
    .line 59
    invoke-static {v0, p1}, Lq1/r;->a(La2/r;Landroidx/fragment/app/h;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    return-void
.end method


# virtual methods
.method public final k(Lcom/nomone/vr_desktop/Applications/PromptApplication;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lq1/r;->f:Lq1/x;

    .line 2
    .line 3
    iget-object p1, p1, Lq1/x;->h:La2/b0;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p1, La2/e0;->m:Z

    .line 7
    .line 8
    invoke-virtual {p1, v0}, La2/e0;->B(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final q(Lcom/nomone/vr_desktop/Applications/PromptApplication;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 2
    .line 3
    iget-object v0, p0, Lq1/r;->f:Lq1/x;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lq1/x;->a(Lq1/x;La2/b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
