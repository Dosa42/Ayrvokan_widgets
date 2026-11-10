.class public final Lj0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll0/b;


# instance fields
.field public final synthetic f:I

.field public final g:Ld2/a;

.field public final h:Ld2/a;

.field public final i:Ld2/a;

.field public final j:Ld2/a;

.field public final k:Ld2/a;


# direct methods
.method public synthetic constructor <init>(Ld2/a;Ld2/a;Ll0/b;Ld2/a;Ld2/a;I)V
    .locals 0

    .line 1
    iput p6, p0, Lj0/s;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lj0/s;->g:Ld2/a;

    .line 4
    .line 5
    iput-object p2, p0, Lj0/s;->h:Ld2/a;

    .line 6
    .line 7
    iput-object p3, p0, Lj0/s;->i:Ld2/a;

    .line 8
    .line 9
    iput-object p4, p0, Lj0/s;->j:Ld2/a;

    .line 10
    .line 11
    iput-object p5, p0, Lj0/s;->k:Ld2/a;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final m()Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lj0/s;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Lj0/s;->k:Ld2/a;

    .line 4
    .line 5
    iget-object v2, p0, Lj0/s;->j:Ld2/a;

    .line 6
    .line 7
    iget-object v3, p0, Lj0/s;->i:Ld2/a;

    .line 8
    .line 9
    iget-object v4, p0, Lj0/s;->h:Ld2/a;

    .line 10
    .line 11
    iget-object v5, p0, Lj0/s;->g:Ld2/a;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_0
    invoke-interface {v5}, Ld2/a;->m()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    move-object v6, v0

    .line 22
    check-cast v6, Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    invoke-interface {v4}, Ld2/a;->m()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    move-object v7, v0

    .line 29
    check-cast v7, Lk0/g;

    .line 30
    .line 31
    invoke-interface {v3}, Ld2/a;->m()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    move-object v8, v0

    .line 36
    check-cast v8, Lo0/p;

    .line 37
    .line 38
    invoke-interface {v2}, Ld2/a;->m()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    move-object v9, v0

    .line 43
    check-cast v9, Lp0/d;

    .line 44
    .line 45
    invoke-interface {v1}, Ld2/a;->m()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    move-object v10, v0

    .line 50
    check-cast v10, Lq0/c;

    .line 51
    .line 52
    new-instance v0, Ln0/c;

    .line 53
    .line 54
    move-object v5, v0

    .line 55
    invoke-direct/range {v5 .. v10}, Ln0/c;-><init>(Ljava/util/concurrent/Executor;Lk0/g;Lo0/p;Lp0/d;Lq0/c;)V

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :pswitch_1
    invoke-interface {v5}, Ld2/a;->m()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    move-object v6, v0

    .line 64
    check-cast v6, Lr0/a;

    .line 65
    .line 66
    invoke-interface {v4}, Ld2/a;->m()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    move-object v7, v0

    .line 71
    check-cast v7, Lr0/a;

    .line 72
    .line 73
    invoke-interface {v3}, Ld2/a;->m()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    move-object v8, v0

    .line 78
    check-cast v8, Ln0/d;

    .line 79
    .line 80
    invoke-interface {v2}, Ld2/a;->m()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    move-object v9, v0

    .line 85
    check-cast v9, Lo0/l;

    .line 86
    .line 87
    invoke-interface {v1}, Ld2/a;->m()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    move-object v10, v0

    .line 92
    check-cast v10, Lo0/o;

    .line 93
    .line 94
    new-instance v0, Lj0/r;

    .line 95
    .line 96
    move-object v5, v0

    .line 97
    invoke-direct/range {v5 .. v10}, Lj0/r;-><init>(Lr0/a;Lr0/a;Ln0/d;Lo0/l;Lo0/o;)V

    .line 98
    .line 99
    .line 100
    return-object v0

    .line 101
    :goto_0
    invoke-interface {v5}, Ld2/a;->m()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    move-object v6, v0

    .line 106
    check-cast v6, Lr0/a;

    .line 107
    .line 108
    invoke-interface {v4}, Ld2/a;->m()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    move-object v7, v0

    .line 113
    check-cast v7, Lr0/a;

    .line 114
    .line 115
    invoke-interface {v3}, Ld2/a;->m()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-interface {v2}, Ld2/a;->m()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget-object v10, p0, Lj0/s;->k:Ld2/a;

    .line 124
    .line 125
    new-instance v2, Lp0/k;

    .line 126
    .line 127
    move-object v8, v0

    .line 128
    check-cast v8, Lp0/a;

    .line 129
    .line 130
    move-object v9, v1

    .line 131
    check-cast v9, Lp0/n;

    .line 132
    .line 133
    move-object v5, v2

    .line 134
    invoke-direct/range {v5 .. v10}, Lp0/k;-><init>(Lr0/a;Lr0/a;Lp0/a;Lp0/n;Ld2/a;)V

    .line 135
    .line 136
    .line 137
    return-object v2

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
