.class public final Lu1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lu1/i;


# direct methods
.method public synthetic constructor <init>(Lu1/i;I)V
    .locals 0

    .line 1
    iput p2, p0, Lu1/e;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lu1/e;->b:Lu1/i;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lu1/e;->b:Lu1/i;

    .line 2
    .line 3
    iget-object v1, v0, Lu1/i;->a:Lq1/f;

    .line 4
    .line 5
    iget-object v1, v1, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 6
    .line 7
    const-string v2, "audio"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/media/AudioManager;

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    add-int/2addr v3, p1

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Lu1/i;->a:Lq1/f;

    .line 26
    .line 27
    const/16 v1, 0x64

    .line 28
    .line 29
    if-lez p1, :cond_0

    .line 30
    .line 31
    iget-object v2, v0, Lq1/f;->H:Lo1/n0;

    .line 32
    .line 33
    const-string v3, "Volume up"

    .line 34
    .line 35
    invoke-virtual {v2, v1, v3}, Lo1/n0;->c(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    if-gez p1, :cond_1

    .line 39
    .line 40
    iget-object p1, v0, Lq1/f;->H:Lo1/n0;

    .line 41
    .line 42
    const-string v0, "Volume down"

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Lo1/n0;->c(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public final b(FF)V
    .locals 9

    .line 1
    iget-object v0, p0, Lu1/e;->b:Lu1/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lu1/i;->i()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-static {v0, v1}, Lu1/i;->d(Lu1/i;I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lu1/i;->r:Lu1/v;

    .line 11
    .line 12
    iget-object v1, v1, Lu1/v;->b:Lo/a;

    .line 13
    .line 14
    iget-object v1, v1, Lo/a;->g:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lu1/i;

    .line 17
    .line 18
    iget-object v1, v1, Lu1/i;->a:Lq1/f;

    iget v2, v1, Lq1/f;->y:I

    int-to-float v2, v2

    iget-object v3, v1, Lq1/f;->c:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float p1, p1, v2

    div-float p1, p1, v3

    iget v2, v1, Lq1/f;->z:I

    int-to-float v2, v2

    iget-object v1, v1, Lq1/f;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float p2, p2, v2

    div-float p2, p2, v1

    sub-float v4, v2, p2

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    invoke-virtual {v0}, Lu1/i;->m()V

    .line 27
    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-virtual {v0, p2}, Lu1/i;->k(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v2, v0, Lu1/i;->r:Lu1/v;

    .line 34
    .line 35
    const/4 v8, 0x1

    .line 36
    const/4 v5, 0x1

    .line 37
    const/4 v6, 0x1

    .line 38
    move v3, p1

    .line 39
    invoke-virtual/range {v2 .. v8}, Lu1/v;->d(FFZZZZ)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final c(FF)V
    .locals 7

    .line 1
    const/4 v5, 0x0

    .line 2
    iget-object v0, p0, Lu1/e;->b:Lu1/i;

    .line 3
    .line 4
    invoke-virtual {v0}, Lu1/i;->i()V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v0, v1}, Lu1/i;->d(Lu1/i;I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lu1/i;->r:Lu1/v;

    .line 12
    .line 13
    iget-object v1, v1, Lu1/v;->b:Lo/a;

    .line 14
    .line 15
    iget-object v1, v1, Lo/a;->g:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lu1/i;

    .line 18
    .line 19
    iget-object v1, v1, Lu1/i;->a:Lq1/f;

    iget v2, v1, Lq1/f;->y:I

    int-to-float v2, v2

    iget-object v3, v1, Lq1/f;->c:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float p1, p1, v2

    div-float p1, p1, v3

    iget v2, v1, Lq1/f;->z:I

    int-to-float v2, v2

    iget-object v1, v1, Lq1/f;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float p2, p2, v2

    div-float p2, p2, v1

    sub-float v2, v2, p2

    .line 25
    .line 26
    invoke-virtual {v0}, Lu1/i;->m()V

    .line 27
    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-virtual {v0, p2}, Lu1/i;->k(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Lu1/i;->r:Lu1/v;

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    const/4 v3, 0x1

    .line 37
    const/4 v4, 0x1

    .line 38
    move v1, p1

    .line 39
    invoke-virtual/range {v0 .. v6}, Lu1/v;->d(FFZZZZ)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final d(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lu1/e;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lu1/e;->b:Lu1/i;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-virtual {v1}, Lu1/i;->i()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    invoke-static {v1, v0}, Lu1/i;->d(Lu1/i;I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1, p1}, Lu1/i;->a(Lu1/i;Z)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :goto_0
    invoke-virtual {v1}, Lu1/i;->i()V

    .line 21
    .line 22
    .line 23
    invoke-static {v1, p1}, Lu1/i;->a(Lu1/i;Z)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    invoke-static {v1, p1}, Lu1/i;->d(Lu1/i;I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lu1/e;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lu1/e;->b:Lu1/i;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-virtual {v1}, Lu1/i;->i()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    invoke-static {v1, v0}, Lu1/i;->d(Lu1/i;I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1, p1}, Lu1/i;->b(Lu1/i;Z)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :goto_0
    invoke-virtual {v1}, Lu1/i;->i()V

    .line 21
    .line 22
    .line 23
    invoke-static {v1, p1}, Lu1/i;->b(Lu1/i;Z)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Z)V
    .locals 6

    .line 1
    const-wide/32 v0, 0xf4240

    .line 2
    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Lu1/e;->b:Lu1/i;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, v3, Lu1/i;->t:Lu1/w;

    .line 10
    .line 11
    const/16 v4, 0x9

    .line 12
    .line 13
    iput v4, p1, Lu1/w;->a:I

    .line 14
    .line 15
    iput v2, p1, Lu1/w;->f:I

    .line 16
    .line 17
    sget-wide v4, Lu1/w;->j:J

    .line 18
    .line 19
    iput-wide v4, p1, Lu1/w;->g:J

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    div-long/2addr v4, v0

    .line 26
    iput-wide v4, p1, Lu1/w;->h:J

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, v3, Lu1/i;->t:Lu1/w;

    .line 30
    .line 31
    const/16 v4, 0xa

    .line 32
    .line 33
    iput v4, p1, Lu1/w;->a:I

    .line 34
    .line 35
    iput v2, p1, Lu1/w;->f:I

    .line 36
    .line 37
    sget-wide v4, Lu1/w;->j:J

    .line 38
    .line 39
    iput-wide v4, p1, Lu1/w;->g:J

    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    div-long/2addr v4, v0

    .line 46
    iput-wide v4, p1, Lu1/w;->h:J

    .line 47
    .line 48
    :goto_0
    iget-object p1, v3, Lu1/i;->a:Lq1/f;

    .line 49
    .line 50
    iget-object p1, p1, Lq1/f;->e:La2/c0;

    .line 51
    .line 52
    iget-object v0, v3, Lu1/i;->t:Lu1/w;

    .line 53
    .line 54
    invoke-interface {p1, v0}, La2/r;->u(Lu1/w;)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method
