.class public final synthetic Lf2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/b;


# instance fields
.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:I

.field public final synthetic i:Z

.field public final synthetic j:I

.field public final synthetic k:Z

.field public final synthetic l:Z


# direct methods
.method public synthetic constructor <init>(ZZIZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lf2/k;->f:Z

    iput-boolean p2, p0, Lf2/k;->g:Z

    iput p3, p0, Lf2/k;->h:I

    iput-boolean p4, p0, Lf2/k;->i:Z

    const/4 p1, 0x0

    iput p1, p0, Lf2/k;->j:I

    iput-boolean p5, p0, Lf2/k;->k:Z

    iput-boolean p6, p0, Lf2/k;->l:Z

    return-void
.end method


# virtual methods
.method public final b(Lf2/c0;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf2/k;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lf2/k;->g:Z

    .line 6
    .line 7
    iget v1, p0, Lf2/k;->h:I

    .line 8
    .line 9
    invoke-interface {p1, v0, v1}, Lf2/c0;->onPlayerStateChanged(ZI)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lf2/k;->i:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lf2/k;->j:I

    .line 17
    .line 18
    invoke-interface {p1, v0}, Lf2/c0;->onPlaybackSuppressionReasonChanged(I)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-boolean v0, p0, Lf2/k;->k:Z

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-boolean v0, p0, Lf2/k;->l:Z

    .line 26
    .line 27
    invoke-interface {p1, v0}, Lf2/c0;->onIsPlayingChanged(Z)V

    .line 28
    .line 29
    .line 30
    :cond_2
    return-void
.end method
