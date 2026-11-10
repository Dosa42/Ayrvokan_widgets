.class public final Lf2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final f:Lf2/a0;

.field public final g:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final h:Lz2/n;

.field public final i:Z

.field public final j:I

.field public final k:I

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public final s:Z


# direct methods
.method public constructor <init>(Lf2/a0;Lf2/a0;Ljava/util/concurrent/CopyOnWriteArrayList;Lz2/n;ZIIZZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/m;->f:Lf2/a0;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lf2/m;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p4, p0, Lf2/m;->h:Lz2/n;

    iput-boolean p5, p0, Lf2/m;->i:Z

    iput p6, p0, Lf2/m;->j:I

    iput p7, p0, Lf2/m;->k:I

    iput-boolean p8, p0, Lf2/m;->l:Z

    iput-boolean p9, p0, Lf2/m;->r:Z

    iput-boolean p10, p0, Lf2/m;->s:Z

    iget p3, p2, Lf2/a0;->e:I

    iget p4, p1, Lf2/a0;->e:I

    const/4 p5, 0x1

    const/4 p6, 0x0

    if-eq p3, p4, :cond_0

    move p3, p5

    goto :goto_0

    :cond_0
    move p3, p6

    :goto_0
    iput-boolean p3, p0, Lf2/m;->m:Z

    iget-object p3, p2, Lf2/a0;->f:Lf2/h;

    iget-object p4, p1, Lf2/a0;->f:Lf2/h;

    if-eq p3, p4, :cond_1

    if-eqz p4, :cond_1

    move p3, p5

    goto :goto_1

    :cond_1
    move p3, p6

    :goto_1
    iput-boolean p3, p0, Lf2/m;->n:Z

    iget-object p3, p2, Lf2/a0;->a:Lf2/l0;

    iget-object p4, p1, Lf2/a0;->a:Lf2/l0;

    if-eq p3, p4, :cond_2

    move p3, p5

    goto :goto_2

    :cond_2
    move p3, p6

    :goto_2
    iput-boolean p3, p0, Lf2/m;->o:Z

    iget-boolean p3, p2, Lf2/a0;->g:Z

    iget-boolean p4, p1, Lf2/a0;->g:Z

    if-eq p3, p4, :cond_3

    move p3, p5

    goto :goto_3

    :cond_3
    move p3, p6

    :goto_3
    iput-boolean p3, p0, Lf2/m;->p:Z

    iget-object p2, p2, Lf2/a0;->i:Landroidx/activity/result/c;

    iget-object p1, p1, Lf2/a0;->i:Landroidx/activity/result/c;

    if-eq p2, p1, :cond_4

    goto :goto_4

    :cond_4
    move p5, p6

    :goto_4
    iput-boolean p5, p0, Lf2/m;->q:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf2/m;->o:Z

    .line 2
    .line 3
    iget-object v1, p0, Lf2/m;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lf2/m;->k:I

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lf2/l;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v0, p0, v2}, Lf2/l;-><init>(Lf2/m;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0}, Lf2/n;->e(Ljava/util/concurrent/CopyOnWriteArrayList;Lf2/b;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-boolean v0, p0, Lf2/m;->i:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    new-instance v0, Lf2/l;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-direct {v0, p0, v2}, Lf2/l;-><init>(Lf2/m;I)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0}, Lf2/n;->e(Ljava/util/concurrent/CopyOnWriteArrayList;Lf2/b;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-boolean v0, p0, Lf2/m;->n:Z

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    new-instance v0, Lf2/l;

    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    invoke-direct {v0, p0, v2}, Lf2/l;-><init>(Lf2/m;I)V

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v0}, Lf2/n;->e(Ljava/util/concurrent/CopyOnWriteArrayList;Lf2/b;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    iget-boolean v0, p0, Lf2/m;->q:Z

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    iget-object v0, p0, Lf2/m;->f:Lf2/a0;

    .line 51
    .line 52
    iget-object v0, v0, Lf2/a0;->i:Landroidx/activity/result/c;

    .line 53
    .line 54
    iget-object v0, v0, Landroidx/activity/result/c;->d:Ljava/lang/Object;

    .line 55
    .line 56
    iget-object v2, p0, Lf2/m;->h:Lz2/n;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    check-cast v0, Lz2/m;

    .line 62
    .line 63
    new-instance v0, Lf2/l;

    .line 64
    .line 65
    const/4 v2, 0x3

    .line 66
    invoke-direct {v0, p0, v2}, Lf2/l;-><init>(Lf2/m;I)V

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v0}, Lf2/n;->e(Ljava/util/concurrent/CopyOnWriteArrayList;Lf2/b;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    iget-boolean v0, p0, Lf2/m;->p:Z

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    new-instance v0, Lf2/l;

    .line 77
    .line 78
    const/4 v2, 0x4

    .line 79
    invoke-direct {v0, p0, v2}, Lf2/l;-><init>(Lf2/m;I)V

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v0}, Lf2/n;->e(Ljava/util/concurrent/CopyOnWriteArrayList;Lf2/b;)V

    .line 83
    .line 84
    .line 85
    :cond_5
    iget-boolean v0, p0, Lf2/m;->m:Z

    .line 86
    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    new-instance v0, Lf2/l;

    .line 90
    .line 91
    const/4 v2, 0x5

    .line 92
    invoke-direct {v0, p0, v2}, Lf2/l;-><init>(Lf2/m;I)V

    .line 93
    .line 94
    .line 95
    invoke-static {v1, v0}, Lf2/n;->e(Ljava/util/concurrent/CopyOnWriteArrayList;Lf2/b;)V

    .line 96
    .line 97
    .line 98
    :cond_6
    iget-boolean v0, p0, Lf2/m;->s:Z

    .line 99
    .line 100
    if-eqz v0, :cond_7

    .line 101
    .line 102
    new-instance v0, Lf2/l;

    .line 103
    .line 104
    const/4 v2, 0x6

    .line 105
    invoke-direct {v0, p0, v2}, Lf2/l;-><init>(Lf2/m;I)V

    .line 106
    .line 107
    .line 108
    invoke-static {v1, v0}, Lf2/n;->e(Ljava/util/concurrent/CopyOnWriteArrayList;Lf2/b;)V

    .line 109
    .line 110
    .line 111
    :cond_7
    iget-boolean v0, p0, Lf2/m;->l:Z

    .line 112
    .line 113
    if-eqz v0, :cond_9

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    :cond_8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_9

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Lf2/a;

    .line 130
    .line 131
    iget-boolean v2, v1, Lf2/a;->b:Z

    .line 132
    .line 133
    if-nez v2, :cond_8

    .line 134
    .line 135
    iget-object v1, v1, Lf2/a;->a:Lf2/c0;

    .line 136
    .line 137
    invoke-interface {v1}, Lf2/c0;->onSeekProcessed()V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_9
    return-void
.end method
