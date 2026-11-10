.class public final synthetic Lq1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/w;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lq1/x;


# direct methods
.method public synthetic constructor <init>(Lq1/x;I)V
    .locals 0

    .line 1
    iput p2, p0, Lq1/n;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lq1/n;->g:Lq1/x;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lq1/n;->f:I

    .line 3
    .line 4
    const-string v2, "Contact developers"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const-string v4, "market://details?id=nom.vrd"

    .line 8
    .line 9
    const-string v5, "android.intent.action.VIEW"

    .line 10
    .line 11
    iget-object v6, p0, Lq1/n;->g:Lq1/x;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :pswitch_0
    iput-object v3, v6, Lq1/x;->y:Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 19
    .line 20
    const-string v0, "Buy full version"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v6}, Lq1/x;->h()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    new-instance p1, Lq1/j;

    .line 35
    .line 36
    const/4 v0, 0x5

    .line 37
    invoke-direct {p1, v6, v0}, Lq1/j;-><init>(Lq1/x;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, p1}, Lq1/x;->m(Lq1/j;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    invoke-virtual {v6}, Lq1/x;->d()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6}, Lq1/x;->i()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v6}, Lq1/x;->c()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6}, Lq1/x;->g()V

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_0
    return-void

    .line 64
    :pswitch_1
    iput-object v3, v6, Lq1/x;->w:Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 65
    .line 66
    const-string v1, "Pay to unlock"

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    invoke-virtual {v6}, Lq1/x;->h()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_5

    .line 79
    .line 80
    new-instance p1, Lq1/j;

    .line 81
    .line 82
    const/4 v0, 0x6

    .line 83
    invoke-direct {p1, v6, v0}, Lq1/j;-><init>(Lq1/x;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, p1}, Lq1/x;->m(Lq1/j;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    invoke-virtual {v6}, Lq1/x;->d()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Lq1/x;->n()V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    const-string v1, "Skip"

    .line 104
    .line 105
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_5

    .line 110
    .line 111
    iget-object p1, v6, Lq1/x;->h:La2/b0;

    .line 112
    .line 113
    iput-boolean v0, p1, La2/e0;->m:Z

    .line 114
    .line 115
    invoke-virtual {p1, v0}, La2/e0;->B(Z)V

    .line 116
    .line 117
    .line 118
    :cond_5
    :goto_1
    return-void

    .line 119
    :pswitch_2
    invoke-virtual {v6}, Lq1/x;->o()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_6

    .line 124
    .line 125
    iget-object p1, v6, Lq1/x;->h:La2/b0;

    .line 126
    .line 127
    iput-boolean v0, p1, La2/e0;->m:Z

    .line 128
    .line 129
    invoke-virtual {p1, v0}, La2/e0;->B(Z)V

    .line 130
    .line 131
    .line 132
    :cond_6
    invoke-virtual {v6}, Lq1/x;->i()V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :pswitch_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    const-string v0, "Google Play"

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    iget-object v1, v6, Lq1/x;->a:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 146
    .line 147
    if-eqz v0, :cond_7

    .line 148
    .line 149
    new-instance p1, Landroid/content/Intent;

    .line 150
    .line 151
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-direct {p1, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_7
    const-string v0, "NOMone.com"

    .line 160
    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_8

    .line 166
    .line 167
    new-instance p1, Landroid/content/Intent;

    .line 168
    .line 169
    const-string v0, "https://desktop.nomone.com/Download"

    .line 170
    .line 171
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-direct {p1, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 176
    .line 177
    .line 178
    :goto_2
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 179
    .line 180
    .line 181
    :cond_8
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :goto_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    const-string v1, "Write review"

    .line 189
    .line 190
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-eqz p1, :cond_9

    .line 195
    .line 196
    new-instance p1, Landroid/content/Intent;

    .line 197
    .line 198
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-direct {p1, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 203
    .line 204
    .line 205
    iget-object v1, v6, Lq1/x;->a:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 206
    .line 207
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 208
    .line 209
    .line 210
    const-string p1, "Should ask for rating"

    .line 211
    .line 212
    const/4 v1, 0x0

    .line 213
    invoke-static {p1, v1}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 214
    .line 215
    .line 216
    :cond_9
    iget-object p1, v6, Lq1/x;->i:La2/b0;

    .line 217
    .line 218
    iget-object v1, v6, Lq1/x;->n:Lcom/nomone/vr_desktop/Applications/LauncherApplication;

    .line 219
    .line 220
    iget-object v1, v1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 221
    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    new-instance v2, La2/d0;

    .line 226
    .line 227
    invoke-direct {v2, p1, v1, v0}, La2/d0;-><init>(La2/e0;La2/r;I)V

    .line 228
    .line 229
    .line 230
    iget-object p1, p1, La2/e0;->f:Lq1/f;

    .line 231
    .line 232
    invoke-virtual {p1, v2}, Lq1/f;->c(Ljava/lang/Runnable;)V

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    nop

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
