.class public final Lq/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:I


# instance fields
.field public final a:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lq/c;->b:I

    iput v0, p0, Lq/c;->c:I

    iput-object p1, p0, Lq/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    iget-object v0, p0, Lq/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-object v1
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lq/c;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lq/c;

    iget-object v2, p1, Lq/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v3, p0, Lq/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v3, :cond_3

    if-eqz v2, :cond_4

    return v1

    :cond_3
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget v2, p0, Lq/c;->c:I

    iget v3, p1, Lq/c;->c:I

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget v2, p0, Lq/c;->b:I

    iget p1, p1, Lq/c;->b:I

    if-eq v2, p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lq/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lq/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v4, "; boundsInParent: "

    .line 26
    .line 27
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v4, "; boundsInScreen: "

    .line 46
    .line 47
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, "; packageName: "

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, "; className: "

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, "; text: "

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    .line 90
    .line 91
    invoke-virtual {p0, v1}, Lq/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    const/4 v4, 0x1

    .line 100
    xor-int/2addr v3, v4

    .line 101
    const/4 v5, 0x0

    .line 102
    if-eqz v3, :cond_0

    .line 103
    .line 104
    invoke-virtual {p0, v1}, Lq/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const-string v3, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"

    .line 109
    .line 110
    invoke-virtual {p0, v3}, Lq/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    const-string v6, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"

    .line 115
    .line 116
    invoke-virtual {p0, v6}, Lq/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    const-string v7, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"

    .line 121
    .line 122
    invoke-virtual {p0, v7}, Lq/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    new-instance v8, Landroid/text/SpannableString;

    .line 127
    .line 128
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 137
    .line 138
    .line 139
    move-result v10

    .line 140
    invoke-static {v9, v5, v10}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-direct {v8, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    move v9, v5

    .line 148
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    if-ge v9, v10, :cond_1

    .line 153
    .line 154
    new-instance v10, Lq/a;

    .line 155
    .line 156
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v11

    .line 160
    check-cast v11, Ljava/lang/Integer;

    .line 161
    .line 162
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 163
    .line 164
    .line 165
    move-result v11

    .line 166
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    const-string v13, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY"

    .line 171
    .line 172
    invoke-virtual {v12, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v12

    .line 176
    invoke-direct {v10, v11, p0, v12}, Lq/a;-><init>(ILq/c;I)V

    .line 177
    .line 178
    .line 179
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v11

    .line 183
    check-cast v11, Ljava/lang/Integer;

    .line 184
    .line 185
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 186
    .line 187
    .line 188
    move-result v11

    .line 189
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v12

    .line 193
    check-cast v12, Ljava/lang/Integer;

    .line 194
    .line 195
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 196
    .line 197
    .line 198
    move-result v12

    .line 199
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v13

    .line 203
    check-cast v13, Ljava/lang/Integer;

    .line 204
    .line 205
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 206
    .line 207
    .line 208
    move-result v13

    .line 209
    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 210
    .line 211
    .line 212
    add-int/lit8 v9, v9, 0x1

    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    :cond_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v1, "; contentDescription: "

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v1, "; viewId: "

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v1, "; checkable: "

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v1, "; checked: "

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v1, "; focusable: "

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v1, "; focused: "

    .line 283
    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v1, "; selected: "

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v1, "; clickable: "

    .line 307
    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v1, "; longClickable: "

    .line 319
    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    const-string v1, "; enabled: "

    .line 331
    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const-string v1, "; password: "

    .line 343
    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    const-string v3, "; scrollable: "

    .line 357
    .line 358
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    const-string v1, "; ["

    .line 376
    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    if-eqz v1, :cond_2

    .line 385
    .line 386
    new-instance v2, Ljava/util/ArrayList;

    .line 387
    .line 388
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .line 390
    .line 391
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    move v6, v5

    .line 396
    :goto_1
    if-ge v6, v3, :cond_3

    .line 397
    .line 398
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v7

    .line 402
    new-instance v8, Lq/b;

    .line 403
    .line 404
    const/4 v9, 0x0

    .line 405
    invoke-direct {v8, v7, v5, v9}, Lq/b;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    add-int/lit8 v6, v6, 0x1

    .line 412
    .line 413
    goto :goto_1

    .line 414
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 419
    .line 420
    .line 421
    move-result v1

    .line 422
    if-ge v5, v1, :cond_8

    .line 423
    .line 424
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    check-cast v1, Lq/b;

    .line 429
    .line 430
    iget-object v3, v1, Lq/b;->a:Ljava/lang/Object;

    .line 431
    .line 432
    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 433
    .line 434
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    const-string v6, "ACTION_UNKNOWN"

    .line 439
    .line 440
    if-eq v3, v4, :cond_5

    .line 441
    .line 442
    const/4 v7, 0x2

    .line 443
    if-eq v3, v7, :cond_4

    .line 444
    .line 445
    sparse-switch v3, :sswitch_data_0

    .line 446
    .line 447
    .line 448
    packed-switch v3, :pswitch_data_0

    .line 449
    .line 450
    .line 451
    packed-switch v3, :pswitch_data_1

    .line 452
    .line 453
    .line 454
    move-object v3, v6

    .line 455
    goto/16 :goto_3

    .line 456
    .line 457
    :sswitch_0
    const-string v3, "ACTION_MOVE_WINDOW"

    .line 458
    .line 459
    goto/16 :goto_3

    .line 460
    .line 461
    :sswitch_1
    const-string v3, "ACTION_SET_TEXT"

    .line 462
    .line 463
    goto/16 :goto_3

    .line 464
    .line 465
    :sswitch_2
    const-string v3, "ACTION_COLLAPSE"

    .line 466
    .line 467
    goto/16 :goto_3

    .line 468
    .line 469
    :sswitch_3
    const-string v3, "ACTION_EXPAND"

    .line 470
    .line 471
    goto/16 :goto_3

    .line 472
    .line 473
    :sswitch_4
    const-string v3, "ACTION_SET_SELECTION"

    .line 474
    .line 475
    goto/16 :goto_3

    .line 476
    .line 477
    :sswitch_5
    const-string v3, "ACTION_CUT"

    .line 478
    .line 479
    goto/16 :goto_3

    .line 480
    .line 481
    :sswitch_6
    const-string v3, "ACTION_PASTE"

    .line 482
    .line 483
    goto/16 :goto_3

    .line 484
    .line 485
    :sswitch_7
    const-string v3, "ACTION_COPY"

    .line 486
    .line 487
    goto/16 :goto_3

    .line 488
    .line 489
    :sswitch_8
    const-string v3, "ACTION_SCROLL_BACKWARD"

    .line 490
    .line 491
    goto/16 :goto_3

    .line 492
    .line 493
    :sswitch_9
    const-string v3, "ACTION_SCROLL_FORWARD"

    .line 494
    .line 495
    goto/16 :goto_3

    .line 496
    .line 497
    :sswitch_a
    const-string v3, "ACTION_PREVIOUS_HTML_ELEMENT"

    .line 498
    .line 499
    goto :goto_3

    .line 500
    :sswitch_b
    const-string v3, "ACTION_NEXT_HTML_ELEMENT"

    .line 501
    .line 502
    goto :goto_3

    .line 503
    :sswitch_c
    const-string v3, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    .line 504
    .line 505
    goto :goto_3

    .line 506
    :sswitch_d
    const-string v3, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    .line 507
    .line 508
    goto :goto_3

    .line 509
    :sswitch_e
    const-string v3, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    .line 510
    .line 511
    goto :goto_3

    .line 512
    :sswitch_f
    const-string v3, "ACTION_ACCESSIBILITY_FOCUS"

    .line 513
    .line 514
    goto :goto_3

    .line 515
    :sswitch_10
    const-string v3, "ACTION_LONG_CLICK"

    .line 516
    .line 517
    goto :goto_3

    .line 518
    :sswitch_11
    const-string v3, "ACTION_CLICK"

    .line 519
    .line 520
    goto :goto_3

    .line 521
    :sswitch_12
    const-string v3, "ACTION_CLEAR_SELECTION"

    .line 522
    .line 523
    goto :goto_3

    .line 524
    :sswitch_13
    const-string v3, "ACTION_SELECT"

    .line 525
    .line 526
    goto :goto_3

    .line 527
    :pswitch_0
    const-string v3, "ACTION_SET_PROGRESS"

    .line 528
    .line 529
    goto :goto_3

    .line 530
    :pswitch_1
    const-string v3, "ACTION_CONTEXT_CLICK"

    .line 531
    .line 532
    goto :goto_3

    .line 533
    :pswitch_2
    const-string v3, "ACTION_SCROLL_RIGHT"

    .line 534
    .line 535
    goto :goto_3

    .line 536
    :pswitch_3
    const-string v3, "ACTION_SCROLL_DOWN"

    .line 537
    .line 538
    goto :goto_3

    .line 539
    :pswitch_4
    const-string v3, "ACTION_SCROLL_LEFT"

    .line 540
    .line 541
    goto :goto_3

    .line 542
    :pswitch_5
    const-string v3, "ACTION_SCROLL_UP"

    .line 543
    .line 544
    goto :goto_3

    .line 545
    :pswitch_6
    const-string v3, "ACTION_SCROLL_TO_POSITION"

    .line 546
    .line 547
    goto :goto_3

    .line 548
    :pswitch_7
    const-string v3, "ACTION_SHOW_ON_SCREEN"

    .line 549
    .line 550
    goto :goto_3

    .line 551
    :pswitch_8
    const-string v3, "ACTION_PAGE_RIGHT"

    .line 552
    .line 553
    goto :goto_3

    .line 554
    :pswitch_9
    const-string v3, "ACTION_PAGE_LEFT"

    .line 555
    .line 556
    goto :goto_3

    .line 557
    :pswitch_a
    const-string v3, "ACTION_PAGE_DOWN"

    .line 558
    .line 559
    goto :goto_3

    .line 560
    :pswitch_b
    const-string v3, "ACTION_PAGE_UP"

    .line 561
    .line 562
    goto :goto_3

    .line 563
    :pswitch_c
    const-string v3, "ACTION_HIDE_TOOLTIP"

    .line 564
    .line 565
    goto :goto_3

    .line 566
    :pswitch_d
    const-string v3, "ACTION_SHOW_TOOLTIP"

    .line 567
    .line 568
    goto :goto_3

    .line 569
    :cond_4
    const-string v3, "ACTION_CLEAR_FOCUS"

    .line 570
    .line 571
    goto :goto_3

    .line 572
    :cond_5
    const-string v3, "ACTION_FOCUS"

    .line 573
    .line 574
    :goto_3
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result v6

    .line 578
    if-eqz v6, :cond_6

    .line 579
    .line 580
    iget-object v1, v1, Lq/b;->a:Ljava/lang/Object;

    .line 581
    .line 582
    move-object v6, v1

    .line 583
    check-cast v6, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 584
    .line 585
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    .line 586
    .line 587
    .line 588
    move-result-object v6

    .line 589
    if-eqz v6, :cond_6

    .line 590
    .line 591
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 592
    .line 593
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v3

    .line 601
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 605
    .line 606
    .line 607
    move-result v1

    .line 608
    add-int/lit8 v1, v1, -0x1

    .line 609
    .line 610
    if-eq v5, v1, :cond_7

    .line 611
    .line 612
    const-string v1, ", "

    .line 613
    .line 614
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 618
    .line 619
    goto/16 :goto_2

    .line 620
    .line 621
    :cond_8
    const-string v1, "]"

    .line 622
    .line 623
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    return-object v0

    .line 631
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_13
        0x8 -> :sswitch_12
        0x10 -> :sswitch_11
        0x20 -> :sswitch_10
        0x40 -> :sswitch_f
        0x80 -> :sswitch_e
        0x100 -> :sswitch_d
        0x200 -> :sswitch_c
        0x400 -> :sswitch_b
        0x800 -> :sswitch_a
        0x1000 -> :sswitch_9
        0x2000 -> :sswitch_8
        0x4000 -> :sswitch_7
        0x8000 -> :sswitch_6
        0x10000 -> :sswitch_5
        0x20000 -> :sswitch_4
        0x40000 -> :sswitch_3
        0x80000 -> :sswitch_2
        0x200000 -> :sswitch_1
        0x1020042 -> :sswitch_0
    .end sparse-switch

    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    :pswitch_data_0
    .packed-switch 0x1020036
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    :pswitch_data_1
    .packed-switch 0x1020044
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
