.class public Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/c;


# instance fields
.field public a:Lq1/f;

.field public b:Lz1/f;

.field public c:La2/b;

.field public d:La2/p;

.field public e:Lr1/p;


# direct methods
.method public constructor <init>(Lr1/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c(Lr1/e0;)V

    return-void
.end method


# virtual methods
.method public final a()La2/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    return-object v0
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, v0, La2/b;->d:La2/c0;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-interface {v1, v0}, La2/c0;->x(La2/r;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 14
    .line 15
    invoke-virtual {v0}, La2/b;->y()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->a:Lq1/f;

    .line 22
    .line 23
    new-instance v1, Lo0/n;

    .line 24
    .line 25
    const/16 v2, 0xa

    .line 26
    .line 27
    invoke-direct {v1, p0, v2}, Lo0/n;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lq1/f;->c(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final c(Lr1/e0;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lr1/q;->k:Lq1/f;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->a:Lq1/f;

    .line 4
    .line 5
    new-instance v0, Lz1/f;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->a:Lq1/f;

    .line 8
    .line 9
    iget v3, p1, Lr1/q;->c:F

    .line 10
    .line 11
    iget v4, p1, Lr1/q;->d:F

    .line 12
    .line 13
    iget v5, p1, Lr1/q;->e:I

    .line 14
    .line 15
    iget v6, p1, Lr1/q;->f:I

    .line 16
    .line 17
    move-object v1, v0

    .line 18
    invoke-direct/range {v1 .. v6}, Lz1/f;-><init>(Lq1/f;FFII)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->b:Lz1/f;

    .line 22
    .line 23
    new-instance v1, La2/b;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->a:Lq1/f;

    .line 26
    .line 27
    iget-object v3, v2, Lq1/f;->q:Lo1/q;

    .line 28
    .line 29
    invoke-direct {v1, v2, v0, v3}, La2/b;-><init>(Lq1/f;Lz1/f;Lo1/q;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, v1, La2/b;->i:Z

    .line 36
    .line 37
    iget-object v4, p1, Lr1/q;->l:Lc/a;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->a:Lq1/f;

    .line 40
    .line 41
    iget-object v0, v0, Lq1/f;->E:Lh/a;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v2, p1, Lr1/e0;->t:Ljava/lang/String;

    .line 49
    .line 50
    const-string v3, ".html"

    .line 51
    .line 52
    invoke-static {v1, v2, v3}, La1/b;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->a:Lq1/f;

    .line 57
    .line 58
    iget-object v2, v2, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-object v0, v0, Lh/a;->g:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Ljava/util/HashMap;

    .line 66
    .line 67
    const-string v2, "<include>/assets/themes/darkWindowTheme/content.html</include>"

    .line 68
    .line 69
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    iget-object v5, p1, Lr1/u;->o:Ljava/lang/String;

    .line 73
    .line 74
    iget v6, p1, Lr1/q;->i:F

    .line 75
    .line 76
    iget-boolean v7, p1, Lr1/e0;->r:Z

    .line 77
    .line 78
    new-instance v0, Lr1/a0;

    .line 79
    .line 80
    move-object v2, v0

    .line 81
    move-object v3, p0

    .line 82
    invoke-direct/range {v2 .. v7}, Lr1/a0;-><init>(Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;Lc/a;Ljava/lang/String;FZ)V

    .line 83
    .line 84
    .line 85
    iget-boolean v1, p1, Lr1/e0;->s:Z

    .line 86
    .line 87
    new-instance v2, La2/p;

    .line 88
    .line 89
    iget-object v3, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->a:Lq1/f;

    .line 90
    .line 91
    new-instance v4, Lz1/c;

    .line 92
    .line 93
    iget v5, p1, Lr1/q;->e:I

    .line 94
    .line 95
    iget v6, p1, Lr1/q;->f:I

    .line 96
    .line 97
    invoke-direct {v4, v5, v6}, Lz1/c;-><init>(II)V

    .line 98
    .line 99
    .line 100
    new-instance v5, Lr1/b0;

    .line 101
    .line 102
    invoke-direct {v5, p0, v1}, Lr1/b0;-><init>(Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;Z)V

    .line 103
    .line 104
    .line 105
    invoke-direct {v2, v3, v4, v0, v5}, La2/p;-><init>(Lq1/f;Lz1/c;Ly1/a;Lc1/b;)V

    .line 106
    .line 107
    .line 108
    iput-object v2, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 109
    .line 110
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->b:Lz1/f;

    .line 111
    .line 112
    iput-object v0, v2, La2/p;->P:Lz1/g;

    .line 113
    .line 114
    iget-boolean v0, p1, Lr1/q;->j:Z

    .line 115
    .line 116
    iput-boolean v0, v2, La2/p;->T:Z

    .line 117
    .line 118
    iget v0, p1, Lr1/u;->p:I

    .line 119
    .line 120
    iput v0, v2, La2/i;->J:I

    .line 121
    .line 122
    iget-boolean v0, p1, Lr1/u;->q:Z

    .line 123
    .line 124
    iput-boolean v0, v2, La2/i;->y:Z

    .line 125
    .line 126
    iget-boolean p1, p1, Lr1/q;->m:Z

    .line 127
    .line 128
    new-instance v0, Lr1/z;

    .line 129
    .line 130
    invoke-direct {v0, p0, p1}, Lr1/z;-><init>(Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;Z)V

    .line 131
    .line 132
    .line 133
    iget-object p1, v2, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Lcom/nomone/GeckoView/MyGeckoView;->a(Ln1/m;)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 139
    .line 140
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 141
    .line 142
    invoke-virtual {p1, v0}, La2/b;->z(La2/r;)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 146
    .line 147
    iget-object p1, p1, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/nomone/GeckoView/MyGeckoView;->getSession()Lorg/mozilla/geckoview/GeckoSession;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    new-instance v0, Lr1/c0;

    .line 154
    .line 155
    invoke-direct {v0, p0}, Lr1/c0;-><init>(Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoSession;->setNavigationDelegate(Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;)V

    .line 159
    .line 160
    .line 161
    new-instance v0, Lr1/d0;

    .line 162
    .line 163
    invoke-direct {v0, p0}, Lr1/d0;-><init>(Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoSession;->setContentDelegate(Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 170
    .line 171
    new-instance v0, Lh/a;

    .line 172
    .line 173
    const/16 v1, 0xa

    .line 174
    .line 175
    invoke-direct {v0, p0, v1}, Lh/a;-><init>(Ljava/lang/Object;I)V

    .line 176
    .line 177
    .line 178
    iput-object v0, p1, La2/i;->e:La2/q;

    .line 179
    .line 180
    return-void
.end method

.method public final d()Lz1/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->b:Lz1/f;

    return-object v0
.end method
