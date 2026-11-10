.class public final Lp/a;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# instance fields
.field public final a:Lp/b;


# direct methods
.method public constructor <init>(Lp/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iput-object p1, p0, Lp/a;->a:Lp/b;

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lp/a;->a:Lp/b;

    invoke-virtual {v0, p1, p2}, Lp/b;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 3

    .line 1
    iget-object v0, p0, Lp/a;->a:Lp/b;

    .line 2
    .line 3
    iget-object v0, v0, Lp/b;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lh/a;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v1, p1, v2}, Lh/a;-><init>(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v1, v0

    .line 20
    :goto_0
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object p1, v1, Lh/a;->g:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v0, p1

    .line 25
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 26
    .line 27
    :cond_1
    return-object v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp/a;->a:Lp/b;

    invoke-virtual {v0, p1, p2}, Lp/b;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Lq/c;

    .line 6
    .line 7
    invoke-direct {v2, v1}, Lq/c;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 8
    .line 9
    .line 10
    sget-object v3, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 11
    .line 12
    new-instance v3, Lp/h;

    .line 13
    .line 14
    sget v4, Li/a;->tag_screen_reader_focusable:I

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-direct {v3, v4, v5}, Lp/h;-><init>(II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v0}, Lp/i;->a(Landroid/view/View;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Ljava/lang/Boolean;

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    move v3, v5

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    const-string v6, "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY"

    .line 37
    .line 38
    const/16 v7, 0x1c

    .line 39
    .line 40
    if-lt v4, v7, :cond_1

    .line 41
    .line 42
    invoke-static {v1, v3}, Lj/f;->k(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    if-eqz v8, :cond_2

    .line 51
    .line 52
    invoke-virtual {v8, v6, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    and-int/lit8 v9, v9, -0x2

    .line 57
    .line 58
    or-int/2addr v3, v9

    .line 59
    invoke-virtual {v8, v6, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_1
    new-instance v3, Lp/h;

    .line 63
    .line 64
    sget v8, Li/a;->tag_accessibility_heading:I

    .line 65
    .line 66
    const/4 v9, 0x2

    .line 67
    invoke-direct {v3, v8, v9}, Lp/h;-><init>(II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v0}, Lp/i;->a(Landroid/view/View;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Ljava/lang/Boolean;

    .line 75
    .line 76
    if-nez v3, :cond_3

    .line 77
    .line 78
    move v3, v5

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    :goto_2
    if-lt v4, v7, :cond_4

    .line 85
    .line 86
    invoke-static {v1, v3}, Lj/f;->r(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 87
    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    if-eqz v8, :cond_6

    .line 95
    .line 96
    invoke-virtual {v8, v6, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    and-int/lit8 v10, v10, -0x3

    .line 101
    .line 102
    if-eqz v3, :cond_5

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_5
    move v9, v5

    .line 106
    :goto_3
    or-int v3, v9, v10

    .line 107
    .line 108
    invoke-virtual {v8, v6, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    :cond_6
    :goto_4
    new-instance v3, Lp/h;

    .line 112
    .line 113
    sget v6, Li/a;->tag_accessibility_pane_title:I

    .line 114
    .line 115
    invoke-direct {v3, v6}, Lp/h;-><init>(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v0}, Lp/i;->a(Landroid/view/View;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    check-cast v3, Ljava/lang/CharSequence;

    .line 123
    .line 124
    if-lt v4, v7, :cond_7

    .line 125
    .line 126
    invoke-static {v1, v3}, Lj/f;->j(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    const-string v7, "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY"

    .line 135
    .line 136
    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    :goto_5
    move-object/from16 v3, p0

    .line 140
    .line 141
    iget-object v6, v3, Lp/a;->a:Lp/b;

    .line 142
    .line 143
    invoke-virtual {v6, v0, v2}, Lp/b;->c(Landroid/view/View;Lq/c;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    const/16 v7, 0x1a

    .line 151
    .line 152
    iget-object v8, v2, Lq/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 153
    .line 154
    if-ge v4, v7, :cond_f

    .line 155
    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    const-string v7, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    .line 161
    .line 162
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    const-string v9, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"

    .line 170
    .line 171
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    const-string v10, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"

    .line 179
    .line 180
    invoke-virtual {v4, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    const-string v4, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"

    .line 188
    .line 189
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    sget v1, Li/a;->tag_accessibility_clickable_spans:I

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    check-cast v1, Landroid/util/SparseArray;

    .line 199
    .line 200
    if-eqz v1, :cond_a

    .line 201
    .line 202
    new-instance v11, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .line 206
    .line 207
    move v12, v5

    .line 208
    :goto_6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 209
    .line 210
    .line 211
    move-result v13

    .line 212
    if-ge v12, v13, :cond_9

    .line 213
    .line 214
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v13

    .line 218
    check-cast v13, Ljava/lang/ref/WeakReference;

    .line 219
    .line 220
    invoke-virtual {v13}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v13

    .line 224
    if-nez v13, :cond_8

    .line 225
    .line 226
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v13

    .line 230
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    :cond_8
    add-int/lit8 v12, v12, 0x1

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_9
    move v12, v5

    .line 237
    :goto_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 238
    .line 239
    .line 240
    move-result v13

    .line 241
    if-ge v12, v13, :cond_a

    .line 242
    .line 243
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v13

    .line 247
    check-cast v13, Ljava/lang/Integer;

    .line 248
    .line 249
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 250
    .line 251
    .line 252
    move-result v13

    .line 253
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->remove(I)V

    .line 254
    .line 255
    .line 256
    add-int/lit8 v12, v12, 0x1

    .line 257
    .line 258
    goto :goto_7

    .line 259
    :cond_a
    instance-of v1, v6, Landroid/text/Spanned;

    .line 260
    .line 261
    if-eqz v1, :cond_b

    .line 262
    .line 263
    move-object v1, v6

    .line 264
    check-cast v1, Landroid/text/Spanned;

    .line 265
    .line 266
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 267
    .line 268
    .line 269
    move-result v11

    .line 270
    const-class v12, Landroid/text/style/ClickableSpan;

    .line 271
    .line 272
    invoke-interface {v1, v5, v11, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    check-cast v1, [Landroid/text/style/ClickableSpan;

    .line 277
    .line 278
    goto :goto_8

    .line 279
    :cond_b
    const/4 v1, 0x0

    .line 280
    :goto_8
    if-eqz v1, :cond_f

    .line 281
    .line 282
    array-length v11, v1

    .line 283
    if-lez v11, :cond_f

    .line 284
    .line 285
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    const-string v12, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY"

    .line 290
    .line 291
    sget v13, Li/a;->accessibility_action_clickable_span:I

    .line 292
    .line 293
    invoke-virtual {v11, v12, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 294
    .line 295
    .line 296
    sget v11, Li/a;->tag_accessibility_clickable_spans:I

    .line 297
    .line 298
    invoke-virtual {v0, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v12

    .line 302
    check-cast v12, Landroid/util/SparseArray;

    .line 303
    .line 304
    if-nez v12, :cond_c

    .line 305
    .line 306
    new-instance v12, Landroid/util/SparseArray;

    .line 307
    .line 308
    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v11, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    :cond_c
    move v11, v5

    .line 315
    :goto_9
    array-length v13, v1

    .line 316
    if-ge v11, v13, :cond_f

    .line 317
    .line 318
    aget-object v13, v1, v11

    .line 319
    .line 320
    move v14, v5

    .line 321
    :goto_a
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    .line 322
    .line 323
    .line 324
    move-result v15

    .line 325
    if-ge v14, v15, :cond_e

    .line 326
    .line 327
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v15

    .line 331
    check-cast v15, Ljava/lang/ref/WeakReference;

    .line 332
    .line 333
    invoke-virtual {v15}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v15

    .line 337
    check-cast v15, Landroid/text/style/ClickableSpan;

    .line 338
    .line 339
    invoke-virtual {v13, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v15

    .line 343
    if-eqz v15, :cond_d

    .line 344
    .line 345
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->keyAt(I)I

    .line 346
    .line 347
    .line 348
    move-result v13

    .line 349
    goto :goto_b

    .line 350
    :cond_d
    add-int/lit8 v14, v14, 0x1

    .line 351
    .line 352
    goto :goto_a

    .line 353
    :cond_e
    sget v13, Lq/c;->d:I

    .line 354
    .line 355
    add-int/lit8 v14, v13, 0x1

    .line 356
    .line 357
    sput v14, Lq/c;->d:I

    .line 358
    .line 359
    :goto_b
    new-instance v14, Ljava/lang/ref/WeakReference;

    .line 360
    .line 361
    aget-object v15, v1, v11

    .line 362
    .line 363
    invoke-direct {v14, v15}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v12, v13, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    aget-object v14, v1, v11

    .line 370
    .line 371
    move-object v15, v6

    .line 372
    check-cast v15, Landroid/text/Spanned;

    .line 373
    .line 374
    invoke-virtual {v2, v7}, Lq/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    invoke-interface {v15, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 379
    .line 380
    .line 381
    move-result v16

    .line 382
    move-object/from16 p2, v1

    .line 383
    .line 384
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    invoke-virtual {v2, v9}, Lq/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-interface {v15, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 396
    .line 397
    .line 398
    move-result v5

    .line 399
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    invoke-virtual {v2, v10}, Lq/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    invoke-interface {v15, v14}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 411
    .line 412
    .line 413
    move-result v5

    .line 414
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 415
    .line 416
    .line 417
    move-result-object v5

    .line 418
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    invoke-virtual {v2, v4}, Lq/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 426
    .line 427
    .line 428
    move-result-object v5

    .line 429
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    add-int/lit8 v11, v11, 0x1

    .line 433
    .line 434
    move-object/from16 v1, p2

    .line 435
    .line 436
    const/4 v5, 0x0

    .line 437
    goto :goto_9

    .line 438
    :cond_f
    sget v1, Li/a;->tag_accessibility_actions:I

    .line 439
    .line 440
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    check-cast v0, Ljava/util/List;

    .line 445
    .line 446
    if-nez v0, :cond_10

    .line 447
    .line 448
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    :cond_10
    const/4 v5, 0x0

    .line 453
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    if-ge v5, v1, :cond_11

    .line 458
    .line 459
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    check-cast v1, Lq/b;

    .line 464
    .line 465
    iget-object v1, v1, Lq/b;->a:Ljava/lang/Object;

    .line 466
    .line 467
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 468
    .line 469
    invoke-virtual {v8, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 470
    .line 471
    .line 472
    add-int/lit8 v5, v5, 0x1

    .line 473
    .line 474
    goto :goto_c

    .line 475
    :cond_11
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp/a;->a:Lp/b;

    .line 2
    .line 3
    iget-object v0, v0, Lp/b;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lp/a;->a:Lp/b;

    invoke-virtual {v0, p1, p2, p3}, Lp/b;->d(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lp/a;->a:Lp/b;

    invoke-virtual {v0, p1, p2, p3}, Lp/b;->e(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp/a;->a:Lp/b;

    .line 2
    .line 3
    iget-object v0, v0, Lp/b;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp/a;->a:Lp/b;

    .line 2
    .line 3
    iget-object v0, v0, Lp/b;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
