.class public final Lr1/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly1/a;


# instance fields
.field public final synthetic f:Ly1/a;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:F

.field public final synthetic i:Z

.field public final synthetic j:Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;Lc/a;Ljava/lang/String;FZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr1/a0;->j:Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;

    iput-object p2, p0, Lr1/a0;->f:Ly1/a;

    iput-object p3, p0, Lr1/a0;->g:Ljava/lang/String;

    iput p4, p0, Lr1/a0;->h:F

    iput-boolean p5, p0, Lr1/a0;->i:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final C()I
    .locals 1

    .line 1
    iget-object v0, p0, Lr1/a0;->f:Ly1/a;

    invoke-interface {v0}, Ly1/a;->C()I

    move-result v0

    return v0
.end method

.method public final D()I
    .locals 1

    .line 1
    iget-object v0, p0, Lr1/a0;->f:Ly1/a;

    invoke-interface {v0}, Ly1/a;->D()I

    move-result v0

    return v0
.end method

.method public final E()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lr1/a0;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lr1/a0;->j:Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->b:Lz1/f;

    .line 8
    .line 9
    iget v1, v1, Lz1/f;->k:I

    .line 10
    .line 11
    int-to-float v1, v1

    .line 12
    iget-object v0, v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget v0, p0, Lr1/a0;->h:F

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, La2/p;->J()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    :goto_0
    div-float/2addr v1, v0

    .line 24
    float-to-int v0, v1

    .line 25
    iget-object v1, p0, Lr1/a0;->f:Ly1/a;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-interface {v1, v2}, Ly1/a;->f(F)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    sub-int/2addr v0, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_1
    return v0
.end method

.method public final G()V
    .locals 0

    .line 1
    return-void
.end method

.method public final H()I
    .locals 1

    .line 1
    iget-object v0, p0, Lr1/a0;->f:Ly1/a;

    invoke-interface {v0}, Ly1/a;->H()I

    move-result v0

    return v0
.end method

.method public final I()I
    .locals 2

    .line 1
    iget-object v0, p0, Lr1/a0;->j:Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->b:Lz1/f;

    .line 4
    .line 5
    iget v1, v1, Lz1/f;->j:I

    .line 6
    .line 7
    int-to-float v1, v1

    .line 8
    iget-object v0, v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget v0, p0, Lr1/a0;->h:F

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, La2/p;->I()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :goto_0
    div-float/2addr v1, v0

    .line 20
    float-to-int v0, v1

    .line 21
    return v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lr1/a0;->f:Ly1/a;

    invoke-interface {v0}, Ly1/a;->d()I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final f(F)I
    .locals 1

    .line 1
    iget-boolean p1, p0, Lr1/a0;->i:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lr1/a0;->f:Ly1/a;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {p1, v0}, Ly1/a;->f(F)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object p1, p0, Lr1/a0;->j:Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;

    .line 14
    .line 15
    iget-object v0, p1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->b:Lz1/f;

    .line 16
    .line 17
    iget v0, v0, Lz1/f;->k:I

    .line 18
    .line 19
    int-to-float v0, v0

    .line 20
    iget-object p1, p1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget p1, p0, Lr1/a0;->h:F

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p1}, La2/p;->J()F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    :goto_0
    div-float/2addr v0, p1

    .line 32
    float-to-int p1, v0

    .line 33
    :goto_1
    return p1
.end method

.method public final i(Lcom/nomone/vr_desktop/LaunchActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lr1/a0;->g:Ljava/lang/String;

    return-object p1
.end method

.method public final j()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final n()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final r()I
    .locals 1

    .line 1
    iget-object v0, p0, Lr1/a0;->f:Ly1/a;

    invoke-interface {v0}, Ly1/a;->r()I

    move-result v0

    return v0
.end method

.method public final s()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lr1/a0;->f:Ly1/a;

    invoke-interface {v0}, Ly1/a;->z()Z

    move-result v0

    return v0
.end method
