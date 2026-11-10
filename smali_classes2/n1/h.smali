.class public final Ln1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoSession$TextInputDelegate;


# instance fields
.field public a:Z

.field public final synthetic b:Lorg/mozilla/geckoview/SessionTextInput;

.field public final synthetic c:Lcom/nomone/GeckoView/MyGeckoView;

.field public final synthetic d:Lq1/f;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/SessionTextInput;Lcom/nomone/GeckoView/MyGeckoView;Lq1/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln1/h;->b:Lorg/mozilla/geckoview/SessionTextInput;

    iput-object p2, p0, Ln1/h;->c:Lcom/nomone/GeckoView/MyGeckoView;

    iput-object p3, p0, Ln1/h;->d:Lq1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ln1/h;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Ln1/h;->c:Lcom/nomone/GeckoView/MyGeckoView;

    .line 2
    .line 3
    iget-object v1, p0, Ln1/h;->b:Lorg/mozilla/geckoview/SessionTextInput;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    const-string v4, "mEditable"

    .line 11
    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/text/Editable;

    .line 24
    .line 25
    sput-object v1, Lcom/nomone/GeckoView/MyGeckoView;->q:Landroid/text/Editable;

    .line 26
    .line 27
    sput-object v0, Lcom/nomone/GeckoView/MyGeckoView;->p:Lcom/nomone/GeckoView/MyGeckoView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v1, p0, Ln1/h;->d:Lq1/f;

    .line 35
    .line 36
    iget-object v1, v1, Lq1/f;->G:Lu1/o;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/nomone/GeckoView/MyGeckoView;->l:Ljava/lang/String;

    .line 39
    .line 40
    iget-boolean v3, v1, Lu1/o;->h:Z

    .line 41
    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    goto/16 :goto_6

    .line 47
    .line 48
    :cond_0
    const/4 v3, 0x0

    .line 49
    iput-boolean v3, v1, Lu1/o;->h:Z

    .line 50
    .line 51
    iget-object v4, v1, Lu1/o;->e:Landroid/view/ViewGroup;

    .line 52
    .line 53
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    iget v4, v4, Landroid/content/res/Configuration;->keyboard:I

    .line 62
    .line 63
    const/4 v5, 0x2

    .line 64
    if-ne v4, v5, :cond_1

    .line 65
    .line 66
    goto/16 :goto_6

    .line 67
    .line 68
    :cond_1
    sget-object v4, Lq1/f;->L:Lo1/j0;

    .line 69
    .line 70
    iget-object v5, v1, Lu1/o;->k:Lo0/n;

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    iput-object v0, v1, Lu1/o;->g:Ljava/lang/String;

    .line 76
    .line 77
    iput-boolean v3, v1, Lu1/o;->i:Z

    .line 78
    .line 79
    iget-object v0, v1, Lu1/o;->b:Lcom/nomone/vr_desktop/Applications/KeyboardApplication;

    .line 80
    .line 81
    iget-object v4, v1, Lu1/o;->a:Lq1/f;

    .line 82
    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const-string v0, "sdf"

    .line 87
    .line 88
    const-string v5, "Creating keyboard app"

    .line 89
    .line 90
    invoke-static {v0, v5}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance v0, Lcom/nomone/vr_desktop/Applications/KeyboardApplication;

    .line 94
    .line 95
    invoke-direct {v0, v4}, Lcom/nomone/vr_desktop/Applications/KeyboardApplication;-><init>(Lq1/f;)V

    .line 96
    .line 97
    .line 98
    iput-object v0, v1, Lu1/o;->b:Lcom/nomone/vr_desktop/Applications/KeyboardApplication;

    .line 99
    .line 100
    iget-object v5, v4, Lq1/f;->g:La2/b0;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 103
    .line 104
    invoke-virtual {v5, v0, v2}, La2/e0;->A(La2/r;Z)V

    .line 105
    .line 106
    .line 107
    iget-object v0, v1, Lu1/o;->b:Lcom/nomone/vr_desktop/Applications/KeyboardApplication;

    .line 108
    .line 109
    new-instance v5, Lu1/m;

    .line 110
    .line 111
    invoke-direct {v5, v1}, Lu1/m;-><init>(Lu1/o;)V

    .line 112
    .line 113
    .line 114
    iput-object v5, v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->e:Lr1/p;

    .line 115
    .line 116
    :goto_1
    iget-boolean v0, v1, Lu1/o;->j:Z

    .line 117
    .line 118
    if-nez v0, :cond_3

    .line 119
    .line 120
    if-eqz p1, :cond_4

    .line 121
    .line 122
    :cond_3
    iget-object p1, v1, Lu1/o;->b:Lcom/nomone/vr_desktop/Applications/KeyboardApplication;

    .line 123
    .line 124
    iget-object p1, p1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->b:Lz1/f;

    .line 125
    .line 126
    iget-object v0, v1, Lu1/o;->d:Lu1/n;

    .line 127
    .line 128
    invoke-interface {v0}, Lu1/n;->a()Lz1/e;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    instance-of v5, v0, Lz1/e;

    .line 136
    .line 137
    if-eqz v5, :cond_a

    .line 138
    .line 139
    iget v5, v0, Lz1/e;->a:F

    .line 140
    .line 141
    iget v0, v0, Lz1/e;->b:F

    .line 142
    .line 143
    invoke-virtual {p1, v5, v0}, Lz1/f;->q(FF)V

    .line 144
    .line 145
    .line 146
    :cond_4
    iget-boolean p1, v1, Lu1/o;->j:Z

    .line 147
    .line 148
    if-eqz p1, :cond_7

    .line 149
    .line 150
    const-string p1, "Should show touch mode tutorial dialog"

    .line 151
    .line 152
    invoke-static {p1, v2}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_7

    .line 157
    .line 158
    iget-object p1, v4, Lq1/f;->F:Lu1/i;

    .line 159
    .line 160
    iget-boolean v0, p1, Lu1/i;->l:Z

    .line 161
    .line 162
    if-nez v0, :cond_5

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_5
    iget-object p1, p1, Lu1/i;->a:Lq1/f;

    .line 166
    .line 167
    iget-object p1, p1, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 168
    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    const-string v0, "android.hardware.touchscreen"

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_6

    .line 180
    .line 181
    move p1, v2

    .line 182
    goto :goto_3

    .line 183
    :cond_6
    :goto_2
    move p1, v3

    .line 184
    :goto_3
    if-eqz p1, :cond_7

    .line 185
    .line 186
    iget-boolean p1, v4, Lq1/f;->h:Z

    .line 187
    .line 188
    if-nez p1, :cond_7

    .line 189
    .line 190
    iget-object p1, v4, Lq1/f;->F:Lu1/i;

    .line 191
    .line 192
    iget-object p1, p1, Lu1/i;->m:Lo1/v0;

    .line 193
    .line 194
    iget-boolean p1, p1, Lo1/v0;->k:Z

    .line 195
    .line 196
    if-nez p1, :cond_7

    .line 197
    .line 198
    new-instance p1, Lr1/y;

    .line 199
    .line 200
    invoke-direct {p1, v4}, Lr1/y;-><init>(Lq1/f;)V

    .line 201
    .line 202
    .line 203
    const-string v0, "Touch Mode Tutorial"

    .line 204
    .line 205
    iput-object v0, p1, Lr1/y;->d:Ljava/lang/String;

    .line 206
    .line 207
    const-string v0, "<style>   img {       max-width: 215px;       width: auto;       height: auto;       margin-left: 15px;       vertical-align: middle;   }   .instructions {       display: inline-block;       width: 320px;       vertical-align: middle;   }</style><div class=\'instructions\'>   Using the onscreen keyboard in touch mode is easier.<br><br>   To switch modes, <strong>touch and hold</strong> the <strong>upper-left corner</strong> of the screen for <strong>1 second</strong>.<br></div><img src=\'../tutorials/images/touchMode.png\'/><br><br>Please enter touch mode to continue."

    .line 208
    .line 209
    iput-object v0, p1, Lr1/y;->e:Ljava/lang/String;

    .line 210
    .line 211
    iput-boolean v2, p1, Lr1/y;->c:Z

    .line 212
    .line 213
    const/16 v0, 0x26e

    .line 214
    .line 215
    const/16 v4, 0x122

    .line 216
    .line 217
    invoke-virtual {p1, v0, v4}, Lr1/y;->d(II)V

    .line 218
    .line 219
    .line 220
    iput-boolean v3, p1, Lr1/y;->m:Z

    .line 221
    .line 222
    iput-boolean v2, p1, Lr1/y;->l:Z

    .line 223
    .line 224
    iput-boolean v2, p1, Lr1/y;->n:Z

    .line 225
    .line 226
    const/4 v0, 0x0

    .line 227
    invoke-static {p1, v0}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    new-instance v0, Lf0/m;

    .line 232
    .line 233
    const/16 v2, 0x9

    .line 234
    .line 235
    invoke-direct {v0, v1, p1, v2}, Lf0/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 236
    .line 237
    .line 238
    sget-object p1, Lq1/f;->L:Lo1/j0;

    .line 239
    .line 240
    invoke-virtual {p1, v0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    .line 241
    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_7
    iget-object p1, v1, Lu1/o;->b:Lcom/nomone/vr_desktop/Applications/KeyboardApplication;

    .line 245
    .line 246
    if-nez p1, :cond_8

    .line 247
    .line 248
    move v0, v3

    .line 249
    goto :goto_4

    .line 250
    :cond_8
    iget-object v0, p1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 251
    .line 252
    iget-object v0, v0, La2/b;->f:Lq1/u;

    .line 253
    .line 254
    iget-boolean v0, v0, La2/e0;->k:Z

    .line 255
    .line 256
    :goto_4
    if-nez v0, :cond_9

    .line 257
    .line 258
    iget-object p1, p1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 259
    .line 260
    iget-object p1, p1, La2/b;->f:Lq1/u;

    .line 261
    .line 262
    invoke-virtual {p1, v2}, La2/e0;->B(Z)V

    .line 263
    .line 264
    .line 265
    iget-object p1, v1, Lu1/o;->b:Lcom/nomone/vr_desktop/Applications/KeyboardApplication;

    .line 266
    .line 267
    iget-object p1, p1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 268
    .line 269
    iget-object p1, p1, La2/b;->f:Lq1/u;

    .line 270
    .line 271
    iput-boolean v2, p1, La2/e0;->m:Z

    .line 272
    .line 273
    invoke-virtual {v4}, Lq1/f;->d()V

    .line 274
    .line 275
    .line 276
    :cond_9
    :goto_5
    iput-boolean v3, v1, Lu1/o;->j:Z

    .line 277
    .line 278
    :goto_6
    return-void

    .line 279
    :cond_a
    instance-of p1, v0, Lz1/a;

    .line 280
    .line 281
    if-eqz p1, :cond_b

    .line 282
    .line 283
    new-instance p1, Ljava/lang/RuntimeException;

    .line 284
    .line 285
    const-string v0, "Input coordinates type not implemented yet"

    .line 286
    .line 287
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    throw p1

    .line 291
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    .line 292
    .line 293
    const-string v0, "Input coordinates type not implemented"

    .line 294
    .line 295
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    throw p1
.end method

.method public final hideSoftInput(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Ln1/h;->a:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Ln1/h;->a:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget-object p1, Lcom/nomone/GeckoView/MyGeckoView;->p:Lcom/nomone/GeckoView/MyGeckoView;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/nomone/GeckoView/MyGeckoView;->getLastHoverEvent()Lu1/w;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lu1/w;->a()Landroid/view/MotionEvent;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    sget-object v0, Lcom/nomone/GeckoView/MyGeckoView;->p:Lcom/nomone/GeckoView/MyGeckoView;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object p1, p0, Ln1/h;->d:Lq1/f;

    .line 27
    .line 28
    iget-object p1, p1, Lq1/f;->G:Lu1/o;

    .line 29
    .line 30
    iget-object v0, p0, Ln1/h;->c:Lcom/nomone/GeckoView/MyGeckoView;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/nomone/GeckoView/MyGeckoView;->l:Ljava/lang/String;

    .line 33
    .line 34
    const/16 v1, 0x1f4

    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Lu1/o;->a(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final restartInput(Lorg/mozilla/geckoview/GeckoSession;I)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ln1/h;->a(Z)V

    return-void
.end method

.method public final showSoftInput(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ln1/h;->a(Z)V

    return-void
.end method

.method public final updateCursorAnchorInfo(Lorg/mozilla/geckoview/GeckoSession;Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateExtractedText(Lorg/mozilla/geckoview/GeckoSession;Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateSelection(Lorg/mozilla/geckoview/GeckoSession;IIII)V
    .locals 0

    .line 1
    sput p2, Lcom/nomone/GeckoView/MyGeckoView;->r:I

    sput p3, Lcom/nomone/GeckoView/MyGeckoView;->s:I

    return-void
.end method
