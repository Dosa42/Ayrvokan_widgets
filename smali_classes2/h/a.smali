.class public final Lh/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp/f;
.implements Lo1/c;
.implements Lo1/c1;
.implements La2/q;
.implements Lt1/c;
.implements Lq1/h;
.implements Lj2/c;
.implements Lt2/u;


# instance fields
.field public final synthetic f:I

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lh/a;->f:I

    const/16 v0, 0xc

    if-eq p1, v0, :cond_3

    const/16 v0, 0xe

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lh/a;->g:Ljava/lang/Object;

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lh/a;->g:Ljava/lang/Object;

    return-void

    .line 4
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lu1/x;

    invoke-direct {p1}, Lu1/x;-><init>()V

    iput-object p1, p0, Lh/a;->g:Ljava/lang/Object;

    return-void

    .line 5
    :cond_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lh/a;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    iput p2, p0, Lh/a;->f:I

    const/16 v0, 0x18

    if-eq p2, v0, :cond_0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lw2/c;

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p2, v0, p1}, Lw2/c;-><init>(II)V

    iput-object p2, p0, Lh/a;->g:Ljava/lang/Object;

    return-void

    .line 7
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lh/a;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 8
    iput p1, p0, Lh/a;->f:I

    const/4 p1, 0x0

    iput-object p1, p0, Lh/a;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(La3/j;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Lh/a;->f:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/a;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/nomone/vr_desktop/LaunchActivity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lh/a;->f:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lh/a;->g:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lh/a;->z(Lcom/nomone/vr_desktop/LaunchActivity;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 11
    iput p2, p0, Lh/a;->f:I

    iput-object p1, p0, Lh/a;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ly0/j0;)V
    .locals 1

    .line 12
    const/16 v0, 0xd

    iput v0, p0, Lh/a;->f:I

    invoke-direct {p0, p1, v0}, Lh/a;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 6

    .line 1
    iget-object v0, p0, Lh/a;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/fragment/app/h;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lo1/e;

    .line 8
    .line 9
    iget v1, v1, Lo1/e;->a:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_0

    .line 13
    .line 14
    iget-object v3, v0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v3, Lo1/e;

    .line 17
    .line 18
    invoke-virtual {v3}, Lo1/e;->c()Lo1/d;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x1

    .line 23
    iput-boolean v4, v3, Lo1/d;->b:Z

    .line 24
    .line 25
    iget-object v3, v3, Lo1/d;->c:Lo1/e;

    .line 26
    .line 27
    iget v5, v3, Lo1/e;->a:I

    .line 28
    .line 29
    sub-int/2addr v5, v4

    .line 30
    iput v5, v3, Lo1/e;->a:I

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method public final B(Li0/p;Ljava/io/BufferedWriter;)V
    .locals 7

    .line 1
    new-instance v6, Ll1/e;

    .line 2
    .line 3
    iget-object v0, p0, Lh/a;->g:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ll1/d;

    .line 6
    .line 7
    iget-object v2, v0, Ll1/d;->a:Ljava/util/HashMap;

    .line 8
    .line 9
    iget-object v3, v0, Ll1/d;->b:Ljava/util/HashMap;

    .line 10
    .line 11
    iget-object v4, v0, Ll1/d;->c:Ll1/a;

    .line 12
    .line 13
    iget-boolean v5, v0, Ll1/d;->d:Z

    .line 14
    .line 15
    move-object v0, v6

    .line 16
    move-object v1, p2

    .line 17
    invoke-direct/range {v0 .. v5}, Ll1/e;-><init>(Ljava/io/BufferedWriter;Ljava/util/HashMap;Ljava/util/HashMap;Ll1/a;Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v6, p1}, Ll1/e;->e(Ljava/lang/Object;)Ll1/e;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v6}, Ll1/e;->g()V

    .line 24
    .line 25
    .line 26
    iget-object p1, v6, Ll1/e;->b:Landroid/util/JsonWriter;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/util/JsonWriter;->flush()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final C(Lf0/g;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lf0/g;->c:Ljava/lang/String;

    .line 2
    .line 3
    iget p1, p1, Lf0/g;->b:I

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "onBillingSetupFinished: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, " "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "IAP"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lo1/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    const/4 v1, 0x3

    .line 36
    if-eq p1, v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, Lh/a;->F()V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget-object p1, p0, Lh/a;->g:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Lcom/nomone/giap/GIAP;

    .line 45
    .line 46
    iput-boolean v0, p1, Lcom/nomone/giap/GIAP;->d:Z

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object p1, p0, Lh/a;->g:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p1, Lcom/nomone/giap/GIAP;

    .line 52
    .line 53
    const-wide/16 v1, 0x3e8

    .line 54
    .line 55
    iput-wide v1, p1, Lcom/nomone/giap/GIAP;->g:J

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    iput-boolean v1, p1, Lcom/nomone/giap/GIAP;->e:Z

    .line 59
    .line 60
    iget-object v1, p1, Lcom/nomone/giap/GIAP;->b:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_4

    .line 67
    .line 68
    new-instance v2, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p1, Lcom/nomone/giap/GIAP;->c:Lf0/b;

    .line 74
    .line 75
    invoke-virtual {v1}, Lf0/b;->a()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez v3, :cond_2

    .line 80
    .line 81
    sget-object v0, Lf0/t;->k:Lf0/g;

    .line 82
    .line 83
    const/4 v2, 0x2

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    const-string v3, "inapp"

    .line 86
    .line 87
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_3

    .line 92
    .line 93
    sget v0, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 94
    .line 95
    sget-object v0, Lf0/t;->e:Lf0/g;

    .line 96
    .line 97
    const/16 v2, 0x31

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    new-instance v4, Lf0/l;

    .line 101
    .line 102
    invoke-direct {v4, v1, v3, v2, p1}, Lf0/l;-><init>(Lf0/b;Ljava/lang/String;Ljava/util/List;Lcom/nomone/giap/GIAP;)V

    .line 103
    .line 104
    .line 105
    const-wide/16 v5, 0x7530

    .line 106
    .line 107
    new-instance v7, Lf0/m;

    .line 108
    .line 109
    invoke-direct {v7, v0, v1, p1}, Lf0/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Lf0/b;->c()Landroid/os/Handler;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    move-object v3, v1

    .line 117
    invoke-virtual/range {v3 .. v8}, Lf0/b;->g(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-nez v0, :cond_4

    .line 122
    .line 123
    invoke-virtual {v1}, Lf0/b;->e()Lf0/g;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const/16 v2, 0x19

    .line 128
    .line 129
    :goto_0
    const/16 v3, 0x8

    .line 130
    .line 131
    invoke-static {v2, v3, v0}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v1, v2}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 136
    .line 137
    .line 138
    const/4 v1, 0x0

    .line 139
    invoke-virtual {p1, v0, v1}, Lcom/nomone/giap/GIAP;->d(Lf0/g;Ljava/util/ArrayList;)V

    .line 140
    .line 141
    .line 142
    :cond_4
    iget-object p1, p0, Lh/a;->g:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p1, Lcom/nomone/giap/GIAP;

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/nomone/giap/GIAP;->f()V

    .line 147
    .line 148
    .line 149
    :goto_1
    return-void
.end method

.method public final D()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lh/a;->g:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final E(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh/a;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final F()V
    .locals 6

    .line 1
    sget-object v0, Lcom/nomone/giap/GIAP;->h:Landroid/os/Handler;

    new-instance v1, Lo0/n;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lo0/n;-><init>(Ljava/lang/Object;I)V

    iget-object v2, p0, Lh/a;->g:Ljava/lang/Object;

    check-cast v2, Lcom/nomone/giap/GIAP;

    iget-wide v2, v2, Lcom/nomone/giap/GIAP;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lh/a;->g:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/nomone/giap/GIAP;

    check-cast v0, Lcom/nomone/giap/GIAP;

    iget-wide v2, v0, Lcom/nomone/giap/GIAP;->g:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    const-wide/32 v4, 0xdbba0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/nomone/giap/GIAP;->g:J

    return-void
.end method

.method public final G(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh/a;->g:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "pactl unixsocket module number: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sdf"

    invoke-static {v0, p1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lu1/x;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lh/a;->g:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;

    iget-object v1, v1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->e:Lr1/p;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;

    iget-object v0, v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->e:Lr1/p;

    invoke-interface {v0, p1}, Lr1/p;->b(Lu1/x;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget v0, p0, Lh/a;->f:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lh/a;->g:Ljava/lang/Object;

    check-cast v0, [Lt2/u;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-interface {v4}, Lt2/u;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final h()Landroid/graphics/Rect;
    .locals 4

    .line 1
    iget v0, p0, Lh/a;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lh/a;->g:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, La2/b;

    .line 10
    .line 11
    iget-object v0, v0, La2/b;->m:Landroid/graphics/Rect;

    .line 12
    .line 13
    return-object v0

    .line 14
    :goto_0
    iget-object v0, p0, Lh/a;->g:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, La2/v;

    .line 17
    .line 18
    iget-boolean v1, v0, La2/v;->o:Z

    .line 19
    .line 20
    iget-object v2, v0, La2/v;->p:Landroid/graphics/Rect;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v0, v0, La2/v;->k:Lz1/g;

    .line 25
    .line 26
    invoke-interface {v0}, Lz1/g;->h()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-interface {v0}, Lz1/g;->i()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lh/a;->g:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, La2/v;

    .line 41
    .line 42
    iput-boolean v3, v0, La2/v;->o:Z

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 46
    .line 47
    .line 48
    :goto_1
    iget-object v0, p0, Lh/a;->g:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, La2/v;

    .line 51
    .line 52
    iget-object v0, v0, La2/v;->p:Landroid/graphics/Rect;

    .line 53
    .line 54
    return-object v0

    .line 55
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public final i()Z
    .locals 2

    .line 1
    iget v0, p0, Lh/a;->f:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    return v1

    .line 8
    :pswitch_0
    iget-object v0, p0, Lh/a;->g:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, La2/b;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public final l()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lo1/d0;

    .line 2
    .line 3
    invoke-direct {v0}, Lo1/d0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final m()J
    .locals 11

    .line 1
    iget-object v0, p0, Lh/a;->g:Ljava/lang/Object;

    check-cast v0, [Lt2/u;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_0
    const-wide/high16 v7, -0x8000000000000000L

    if-ge v4, v1, :cond_1

    aget-object v9, v0, v4

    invoke-interface {v9}, Lt2/u;->m()J

    move-result-wide v9

    cmp-long v7, v9, v7

    if-eqz v7, :cond_0

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    cmp-long v0, v5, v2

    if-nez v0, :cond_2

    move-wide v5, v7

    :cond_2
    return-wide v5
.end method

.method public final p(Ljava/lang/String;)Landroidx/fragment/app/h;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lh/a;->g:Ljava/lang/Object;

    check-cast v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;

    iget-object v0, v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->e:Lr1/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr1/p;->d()V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lh/a;->g:Ljava/lang/Object;

    check-cast v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;

    iget-object v0, v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->e:Lr1/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr1/p;->a()V

    :cond_0
    return-void
.end method

.method public final t()J
    .locals 11

    .line 1
    iget-object v0, p0, Lh/a;->g:Ljava/lang/Object;

    check-cast v0, [Lt2/u;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_0
    const-wide/high16 v7, -0x8000000000000000L

    if-ge v4, v1, :cond_1

    aget-object v9, v0, v4

    invoke-interface {v9}, Lt2/u;->t()J

    move-result-wide v9

    cmp-long v7, v9, v7

    if-eqz v7, :cond_0

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    cmp-long v0, v5, v2

    if-nez v0, :cond_2

    move-wide v5, v7

    :cond_2
    return-wide v5
.end method

.method public final v(J)Z
    .locals 17

    .line 1
    move-wide/from16 v0, p1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lh/a;->t()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    move-object/from16 v8, p0

    goto :goto_2

    :cond_1
    move-object/from16 v8, p0

    iget-object v9, v8, Lh/a;->g:Ljava/lang/Object;

    check-cast v9, [Lt2/u;

    array-length v10, v9

    move v11, v2

    move v12, v11

    :goto_0
    if-ge v11, v10, :cond_5

    aget-object v13, v9, v11

    invoke-interface {v13}, Lt2/u;->t()J

    move-result-wide v14

    cmp-long v16, v14, v6

    if-eqz v16, :cond_2

    cmp-long v16, v14, v0

    if-gtz v16, :cond_2

    const/16 v16, 0x1

    goto :goto_1

    :cond_2
    move/from16 v16, v2

    :goto_1
    cmp-long v14, v14, v4

    if-eqz v14, :cond_3

    if-eqz v16, :cond_4

    :cond_3
    invoke-interface {v13, v0, v1}, Lt2/u;->v(J)Z

    move-result v13

    or-int/2addr v12, v13

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    or-int/2addr v3, v12

    if-nez v12, :cond_0

    :goto_2
    return v3
.end method

.method public final w(Landroid/view/View;Lp/l;)Lp/l;
    .locals 5

    .line 1
    iget-object p1, p0, Lh/a;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 4
    .line 5
    iget-object v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lp/l;

    .line 6
    .line 7
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_5

    .line 12
    .line 13
    iput-object p2, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lp/l;

    .line 14
    .line 15
    invoke-virtual {p2}, Lp/l;->a()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    move v0, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v2

    .line 26
    :goto_0
    iput-boolean v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:Z

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v1, v2

    .line 38
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p2, Lp/l;->a:Ljava/lang/Object;

    .line 42
    .line 43
    move-object v1, v0

    .line 44
    check-cast v1, Landroid/view/WindowInsets;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/WindowInsets;->isConsumed()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    :goto_2
    if-ge v2, v1, :cond_4

    .line 58
    .line 59
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    sget-object v4, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Landroidx/coordinatorlayout/widget/b;

    .line 76
    .line 77
    iget-object v3, v3, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 78
    .line 79
    if-eqz v3, :cond_3

    .line 80
    .line 81
    move-object v3, v0

    .line 82
    check-cast v3, Landroid/view/WindowInsets;

    .line 83
    .line 84
    invoke-virtual {v3}, Landroid/view/WindowInsets;->isConsumed()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_3

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 95
    .line 96
    .line 97
    :cond_5
    return-object p2
.end method

.method public final y(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lh/a;->g:Ljava/lang/Object;

    check-cast v0, [Lt2/u;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, Lt2/u;->y(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final z(Lcom/nomone/vr_desktop/LaunchActivity;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    new-instance p2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lh/a;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
