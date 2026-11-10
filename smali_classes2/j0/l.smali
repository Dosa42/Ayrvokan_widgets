.class public final Lj0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public a:Ld2/a;

.field public b:Ll0/c;

.field public c:Ld2/a;

.field public d:Lk0/f;

.field public e:Ld2/a;

.field public f:Ld2/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lc1/b;->s:Lc/a;

    .line 9
    .line 10
    invoke-static {v2}, Ll0/a;->a(Ll0/b;)Ld2/a;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iput-object v2, v0, Lj0/l;->a:Ld2/a;

    .line 15
    .line 16
    new-instance v2, Ll0/c;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-direct {v2, v1}, Ll0/c;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object v2, v0, Lj0/l;->b:Ll0/c;

    .line 24
    .line 25
    sget-object v1, Lc1/b;->x:Lc/a;

    .line 26
    .line 27
    sget-object v10, Lcom/google/android/gms/internal/play_billing/i0;->o:Lc/a;

    .line 28
    .line 29
    new-instance v3, Lk0/f;

    .line 30
    .line 31
    const/4 v11, 0x0

    .line 32
    invoke-direct {v3, v2, v1, v10, v11}, Lk0/f;-><init>(Ld2/a;Lc/a;Lc/a;I)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Landroidx/fragment/app/h;

    .line 36
    .line 37
    const/16 v5, 0x9

    .line 38
    .line 39
    invoke-direct {v4, v2, v3, v5}, Landroidx/fragment/app/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    invoke-static {v4}, Ll0/a;->a(Ll0/b;)Ld2/a;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iput-object v2, v0, Lj0/l;->c:Ld2/a;

    .line 47
    .line 48
    iget-object v2, v0, Lj0/l;->b:Ll0/c;

    .line 49
    .line 50
    sget-object v3, Lcom/google/android/gms/internal/play_billing/i0;->k:Lc/a;

    .line 51
    .line 52
    sget-object v4, Lc1/b;->w:Lc/a;

    .line 53
    .line 54
    new-instance v5, Lk0/f;

    .line 55
    .line 56
    const/4 v6, 0x1

    .line 57
    invoke-direct {v5, v2, v3, v4, v6}, Lk0/f;-><init>(Ld2/a;Lc/a;Lc/a;I)V

    .line 58
    .line 59
    .line 60
    iput-object v5, v0, Lj0/l;->d:Lk0/f;

    .line 61
    .line 62
    new-instance v3, Ln0/e;

    .line 63
    .line 64
    invoke-direct {v3, v2, v6}, Ln0/e;-><init>(Ld2/a;I)V

    .line 65
    .line 66
    .line 67
    invoke-static {v3}, Ll0/a;->a(Ll0/b;)Ld2/a;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    sget-object v6, Lcom/google/android/gms/internal/play_billing/i0;->l:Lc/a;

    .line 72
    .line 73
    iget-object v7, v0, Lj0/l;->d:Lk0/f;

    .line 74
    .line 75
    new-instance v2, Lj0/s;

    .line 76
    .line 77
    const/4 v9, 0x2

    .line 78
    move-object v3, v2

    .line 79
    move-object v4, v1

    .line 80
    move-object v5, v10

    .line 81
    invoke-direct/range {v3 .. v9}, Lj0/s;-><init>(Ld2/a;Ld2/a;Ll0/b;Ld2/a;Ld2/a;I)V

    .line 82
    .line 83
    .line 84
    invoke-static {v2}, Ll0/a;->a(Ll0/b;)Ld2/a;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iput-object v2, v0, Lj0/l;->e:Ld2/a;

    .line 89
    .line 90
    new-instance v6, Ln0/e;

    .line 91
    .line 92
    invoke-direct {v6, v1, v11}, Ln0/e;-><init>(Ld2/a;I)V

    .line 93
    .line 94
    .line 95
    iget-object v9, v0, Lj0/l;->b:Ll0/c;

    .line 96
    .line 97
    new-instance v11, Ln0/f;

    .line 98
    .line 99
    const/4 v8, 0x0

    .line 100
    move-object v3, v11

    .line 101
    move-object v4, v9

    .line 102
    move-object v5, v2

    .line 103
    move-object v7, v10

    .line 104
    invoke-direct/range {v3 .. v8}, Ln0/f;-><init>(Ld2/a;Ld2/a;Ll0/b;Ld2/a;I)V

    .line 105
    .line 106
    .line 107
    iget-object v3, v0, Lj0/l;->a:Ld2/a;

    .line 108
    .line 109
    iget-object v4, v0, Lj0/l;->c:Ld2/a;

    .line 110
    .line 111
    new-instance v6, Lj0/s;

    .line 112
    .line 113
    const/16 v18, 0x1

    .line 114
    .line 115
    move-object v12, v6

    .line 116
    move-object v13, v3

    .line 117
    move-object v14, v4

    .line 118
    move-object v15, v11

    .line 119
    move-object/from16 v16, v2

    .line 120
    .line 121
    move-object/from16 v17, v2

    .line 122
    .line 123
    invoke-direct/range {v12 .. v18}, Lj0/s;-><init>(Ld2/a;Ld2/a;Ll0/b;Ld2/a;Ld2/a;I)V

    .line 124
    .line 125
    .line 126
    new-instance v7, Lo0/m;

    .line 127
    .line 128
    move-object v12, v7

    .line 129
    move-object v13, v9

    .line 130
    move-object v15, v2

    .line 131
    move-object/from16 v16, v11

    .line 132
    .line 133
    move-object/from16 v17, v3

    .line 134
    .line 135
    move-object/from16 v18, v2

    .line 136
    .line 137
    move-object/from16 v19, v2

    .line 138
    .line 139
    invoke-direct/range {v12 .. v19}, Lo0/m;-><init>(Ld2/a;Ld2/a;Ld2/a;Ln0/f;Ld2/a;Ld2/a;Ld2/a;)V

    .line 140
    .line 141
    .line 142
    new-instance v8, Ln0/f;

    .line 143
    .line 144
    const/16 v17, 0x1

    .line 145
    .line 146
    move-object v12, v8

    .line 147
    move-object v13, v3

    .line 148
    move-object v14, v2

    .line 149
    move-object v15, v11

    .line 150
    move-object/from16 v16, v2

    .line 151
    .line 152
    invoke-direct/range {v12 .. v17}, Ln0/f;-><init>(Ld2/a;Ld2/a;Ll0/b;Ld2/a;I)V

    .line 153
    .line 154
    .line 155
    new-instance v2, Lj0/s;

    .line 156
    .line 157
    const/4 v9, 0x0

    .line 158
    move-object v3, v2

    .line 159
    move-object v4, v1

    .line 160
    move-object v5, v10

    .line 161
    invoke-direct/range {v3 .. v9}, Lj0/s;-><init>(Ld2/a;Ld2/a;Ll0/b;Ld2/a;Ld2/a;I)V

    .line 162
    .line 163
    .line 164
    invoke-static {v2}, Ll0/a;->a(Ll0/b;)Ld2/a;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iput-object v1, v0, Lj0/l;->f:Ld2/a;

    .line 169
    .line 170
    return-void

    .line 171
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    .line 172
    .line 173
    const-string v2, "instance cannot be null"

    .line 174
    .line 175
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/l;->e:Ld2/a;

    .line 2
    .line 3
    invoke-interface {v0}, Ld2/a;->m()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lp0/d;

    .line 8
    .line 9
    check-cast v0, Lp0/k;

    .line 10
    .line 11
    invoke-virtual {v0}, Lp0/k;->close()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final bridge synthetic close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lj0/l;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
