.class public final synthetic Lf2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/b;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lf2/m;


# direct methods
.method public synthetic constructor <init>(Lf2/m;I)V
    .locals 0

    .line 1
    iput p2, p0, Lf2/l;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lf2/l;->g:Lf2/m;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Lf2/c0;)V
    .locals 2

    .line 1
    iget v0, p0, Lf2/l;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Lf2/l;->g:Lf2/m;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object v0, v1, Lf2/m;->f:Lf2/a0;

    .line 10
    .line 11
    iget v0, v0, Lf2/a0;->e:I

    .line 12
    .line 13
    iget-boolean v1, v1, Lf2/m;->r:Z

    .line 14
    .line 15
    invoke-interface {p1, v1, v0}, Lf2/c0;->onPlayerStateChanged(ZI)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_1
    iget-object v0, v1, Lf2/m;->f:Lf2/a0;

    .line 20
    .line 21
    iget-boolean v0, v0, Lf2/a0;->g:Z

    .line 22
    .line 23
    invoke-interface {p1, v0}, Lf2/c0;->onLoadingChanged(Z)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_2
    iget-object v0, v1, Lf2/m;->f:Lf2/a0;

    .line 28
    .line 29
    iget-object v1, v0, Lf2/a0;->h:Lt2/x;

    .line 30
    .line 31
    iget-object v0, v0, Lf2/a0;->i:Landroidx/activity/result/c;

    .line 32
    .line 33
    iget-object v0, v0, Landroidx/activity/result/c;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lz2/q;

    .line 36
    .line 37
    invoke-interface {p1, v1, v0}, Lf2/c0;->onTracksChanged(Lt2/x;Lz2/q;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_3
    iget-object v0, v1, Lf2/m;->f:Lf2/a0;

    .line 42
    .line 43
    iget-object v0, v0, Lf2/a0;->f:Lf2/h;

    .line 44
    .line 45
    invoke-interface {p1, v0}, Lf2/c0;->onPlayerError(Lf2/h;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_4
    iget v0, v1, Lf2/m;->j:I

    .line 50
    .line 51
    invoke-interface {p1, v0}, Lf2/c0;->onPositionDiscontinuity(I)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_5
    iget-object v0, v1, Lf2/m;->f:Lf2/a0;

    .line 56
    .line 57
    iget-object v0, v0, Lf2/a0;->a:Lf2/l0;

    .line 58
    .line 59
    iget v1, v1, Lf2/m;->k:I

    .line 60
    .line 61
    invoke-interface {p1, v0, v1}, Lf2/c0;->onTimelineChanged(Lf2/l0;I)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :goto_0
    iget-object v0, v1, Lf2/m;->f:Lf2/a0;

    .line 66
    .line 67
    iget v0, v0, Lf2/a0;->e:I

    .line 68
    .line 69
    const/4 v1, 0x3

    .line 70
    if-ne v0, v1, :cond_0

    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_1
    invoke-interface {p1, v0}, Lf2/c0;->onIsPlayingChanged(Z)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
