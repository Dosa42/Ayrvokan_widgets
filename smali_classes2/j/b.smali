.class public abstract Lj/b;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/n;


# instance fields
.field public final a:Landroidx/lifecycle/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0, p0}, Landroidx/lifecycle/p;-><init>(Landroidx/lifecycle/n;)V

    iput-object v0, p0, Lj/b;->a:Landroidx/lifecycle/p;

    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v0, p1}, Lc1/b;->f(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v2, 0x1c

    .line 22
    .line 23
    if-lt v0, v2, :cond_1

    .line 24
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    goto/16 :goto_7

    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/16 v3, 0x8

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Landroid/view/Window;->hasFeature(I)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const/4 v4, 0x0

    .line 45
    if-eqz v3, :cond_4

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    const/16 v6, 0x52

    .line 56
    .line 57
    if-ne v5, v6, :cond_4

    .line 58
    .line 59
    if-eqz v3, :cond_4

    .line 60
    .line 61
    sget-boolean v5, Lc1/b;->u:Z

    .line 62
    .line 63
    if-nez v5, :cond_2

    .line 64
    .line 65
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    const-string v6, "onMenuKeyEvent"

    .line 70
    .line 71
    new-array v7, v1, [Ljava/lang/Class;

    .line 72
    .line 73
    const-class v8, Landroid/view/KeyEvent;

    .line 74
    .line 75
    aput-object v8, v7, v4

    .line 76
    .line 77
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    sput-object v5, Lc1/b;->v:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    :catch_0
    sput-boolean v1, Lc1/b;->u:Z

    .line 84
    .line 85
    :cond_2
    sget-object v5, Lc1/b;->v:Ljava/lang/reflect/Method;

    .line 86
    .line 87
    if-eqz v5, :cond_3

    .line 88
    .line 89
    :try_start_1
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Ljava/lang/Boolean;

    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 100
    .line 101
    .line 102
    move-result v3
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    goto :goto_0

    .line 104
    :catch_1
    :cond_3
    move v3, v4

    .line 105
    :goto_0
    if-eqz v3, :cond_4

    .line 106
    .line 107
    goto/16 :goto_6

    .line 108
    .line 109
    :cond_4
    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_5

    .line 114
    .line 115
    goto/16 :goto_6

    .line 116
    .line 117
    :cond_5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    sget-object v3, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 122
    .line 123
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 124
    .line 125
    if-lt v3, v2, :cond_6

    .line 126
    .line 127
    goto/16 :goto_4

    .line 128
    .line 129
    :cond_6
    sget-object v2, Lp/j;->d:Ljava/util/ArrayList;

    .line 130
    .line 131
    sget v2, Li/a;->tag_unhandled_key_event_manager:I

    .line 132
    .line 133
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    check-cast v3, Lp/j;

    .line 138
    .line 139
    if-nez v3, :cond_7

    .line 140
    .line 141
    new-instance v3, Lp/j;

    .line 142
    .line 143
    invoke-direct {v3}, Lp/j;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-nez v2, :cond_e

    .line 154
    .line 155
    iget-object v2, v3, Lp/j;->a:Ljava/util/WeakHashMap;

    .line 156
    .line 157
    if-eqz v2, :cond_8

    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/util/WeakHashMap;->clear()V

    .line 160
    .line 161
    .line 162
    :cond_8
    sget-object v2, Lp/j;->d:Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-eqz v5, :cond_9

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_9
    monitor-enter v2

    .line 172
    :try_start_2
    iget-object v5, v3, Lp/j;->a:Ljava/util/WeakHashMap;

    .line 173
    .line 174
    if-nez v5, :cond_a

    .line 175
    .line 176
    new-instance v5, Ljava/util/WeakHashMap;

    .line 177
    .line 178
    invoke-direct {v5}, Ljava/util/WeakHashMap;-><init>()V

    .line 179
    .line 180
    .line 181
    iput-object v5, v3, Lp/j;->a:Ljava/util/WeakHashMap;

    .line 182
    .line 183
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    :cond_b
    :goto_1
    add-int/lit8 v5, v5, -0x1

    .line 188
    .line 189
    if-ltz v5, :cond_d

    .line 190
    .line 191
    sget-object v6, Lp/j;->d:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 198
    .line 199
    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    check-cast v7, Landroid/view/View;

    .line 204
    .line 205
    if-nez v7, :cond_c

    .line 206
    .line 207
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_c
    iget-object v6, v3, Lp/j;->a:Ljava/util/WeakHashMap;

    .line 212
    .line 213
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 214
    .line 215
    invoke-virtual {v6, v7, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    :goto_2
    instance-of v7, v6, Landroid/view/View;

    .line 223
    .line 224
    if-eqz v7, :cond_b

    .line 225
    .line 226
    iget-object v7, v3, Lp/j;->a:Ljava/util/WeakHashMap;

    .line 227
    .line 228
    move-object v8, v6

    .line 229
    check-cast v8, Landroid/view/View;

    .line 230
    .line 231
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 232
    .line 233
    invoke-virtual {v7, v8, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    goto :goto_2

    .line 241
    :cond_d
    monitor-exit v2

    .line 242
    goto :goto_3

    .line 243
    :catchall_0
    move-exception p1

    .line 244
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    throw p1

    .line 246
    :cond_e
    :goto_3
    invoke-virtual {v3, v0}, Lp/j;->a(Landroid/view/View;)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    if-nez v5, :cond_10

    .line 255
    .line 256
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    if-eqz v2, :cond_10

    .line 261
    .line 262
    invoke-static {v5}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    .line 263
    .line 264
    .line 265
    move-result v6

    .line 266
    if-nez v6, :cond_10

    .line 267
    .line 268
    iget-object v6, v3, Lp/j;->b:Landroid/util/SparseArray;

    .line 269
    .line 270
    if-nez v6, :cond_f

    .line 271
    .line 272
    new-instance v6, Landroid/util/SparseArray;

    .line 273
    .line 274
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 275
    .line 276
    .line 277
    iput-object v6, v3, Lp/j;->b:Landroid/util/SparseArray;

    .line 278
    .line 279
    :cond_f
    iget-object v3, v3, Lp/j;->b:Landroid/util/SparseArray;

    .line 280
    .line 281
    new-instance v6, Ljava/lang/ref/WeakReference;

    .line 282
    .line 283
    invoke-direct {v6, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    :cond_10
    if-eqz v2, :cond_11

    .line 290
    .line 291
    move v4, v1

    .line 292
    :cond_11
    :goto_4
    if-eqz v4, :cond_12

    .line 293
    .line 294
    goto :goto_6

    .line 295
    :cond_12
    if-eqz v0, :cond_13

    .line 296
    .line 297
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    goto :goto_5

    .line 302
    :cond_13
    const/4 v0, 0x0

    .line 303
    :goto_5
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    :goto_6
    move p1, v1

    .line 308
    :goto_7
    return p1
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lc1/b;->f(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/lifecycle/x;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lj/b;->a:Landroidx/lifecycle/p;

    .line 2
    .line 3
    const-string v1, "markState"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->D0(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/i;

    .line 9
    .line 10
    const-string v2, "setCurrentState"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroidx/lifecycle/p;->D0(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->F0(Landroidx/lifecycle/i;)V

    .line 16
    .line 17
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
