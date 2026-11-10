.class public final Lu/a;
.super Lp/b;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final e:Landroid/graphics/Rect;

.field public final synthetic f:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lu/a;->d:I

    .line 1
    iput-object p1, p0, Lu/a;->f:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lp/b;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lu/a;->e:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lu/a;->d:I

    .line 2
    iput-object p1, p0, Lu/a;->f:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lp/b;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lu/a;->e:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 1
    iget v0, p0, Lu/a;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lp/b;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x20

    .line 16
    .line 17
    if-ne v0, v1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p2, p0, Lu/a;->f:Landroid/view/ViewGroup;

    .line 24
    .line 25
    check-cast p2, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 26
    .line 27
    invoke-virtual {p2}, Landroidx/drawerlayout/widget/DrawerLayout;->f()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->h(Landroid/view/View;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    sget-object v1, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v1, 0x3

    .line 48
    if-ne v0, v1, :cond_0

    .line 49
    .line 50
    iget-object p2, p2, Landroidx/drawerlayout/widget/DrawerLayout;->v:Ljava/lang/CharSequence;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v1, 0x5

    .line 54
    if-ne v0, v1, :cond_1

    .line 55
    .line 56
    iget-object p2, p2, Landroidx/drawerlayout/widget/DrawerLayout;->w:Ljava/lang/CharSequence;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 p2, 0x0

    .line 60
    :goto_0
    if-eqz p2, :cond_2

    .line 61
    .line 62
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :cond_2
    const/4 p1, 0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    invoke-super {p0, p1, p2}, Lp/b;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    :goto_1
    return p1

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget v0, p0, Lu/a;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    invoke-super {p0, p1, p2}, Lp/b;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 8
    .line 9
    .line 10
    const-class p1, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :goto_0
    invoke-super {p0, p1, p2}, Lp/b;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 21
    .line 22
    .line 23
    const-class p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/view/View;Lq/c;)V
    .locals 5

    .line 1
    iget-object v0, p2, Lq/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2
    .line 3
    iget v1, p0, Lu/a;->d:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lp/b;->a:Landroid/view/View$AccessibilityDelegate;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_0
    sget-object v1, Landroidx/drawerlayout/widget/DrawerLayout;->C:[I

    .line 13
    .line 14
    invoke-virtual {v3, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 15
    .line 16
    .line 17
    const-class p1, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p2, p1}, Lq/c;->b(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lq/b;->b:Lq/b;

    .line 33
    .line 34
    iget-object p1, p1, Lq/b;->a:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 39
    .line 40
    .line 41
    sget-object p1, Lq/b;->c:Lq/b;

    .line 42
    .line 43
    iget-object p1, p1, Lq/b;->a:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :goto_0
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v3, p1, v4}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 56
    .line 57
    .line 58
    iget-object v3, p0, Lu/a;->e:Landroid/graphics/Rect;

    .line 59
    .line 60
    packed-switch v1, :pswitch_data_1

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :pswitch_1
    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p2, v1}, Lq/c;->b(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {p2, v1}, Lq/c;->b(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularities()I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 262
    .line 263
    .line 264
    :goto_2
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 265
    .line 266
    .line 267
    const-class v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {p2, v1}, Lq/c;->b(Ljava/lang/CharSequence;)V

    .line 274
    .line 275
    .line 276
    const/4 v1, -0x1

    .line 277
    iput v1, p2, Lq/c;->c:I

    .line 278
    .line 279
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 280
    .line 281
    .line 282
    sget-object v3, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 283
    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    instance-of v3, p1, Landroid/view/View;

    .line 289
    .line 290
    if-eqz v3, :cond_0

    .line 291
    .line 292
    check-cast p1, Landroid/view/View;

    .line 293
    .line 294
    iput v1, p2, Lq/c;->b:I

    .line 295
    .line 296
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 297
    .line 298
    .line 299
    :cond_0
    iget-object p1, p0, Lu/a;->f:Landroid/view/ViewGroup;

    .line 300
    .line 301
    move-object p2, p1

    .line 302
    check-cast p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 303
    .line 304
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    :goto_3
    if-ge v2, v1, :cond_2

    .line 309
    .line 310
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    move-object v4, p1

    .line 315
    check-cast v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 316
    .line 317
    invoke-virtual {v4, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b(Landroid/view/View;)Z

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    if-nez v4, :cond_1

    .line 322
    .line 323
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    if-nez v4, :cond_1

    .line 328
    .line 329
    const/4 v4, 0x1

    .line 330
    invoke-virtual {v3, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    .line 334
    .line 335
    .line 336
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 337
    .line 338
    goto :goto_3

    .line 339
    :cond_2
    return-void

    .line 340
    nop

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final d(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget v0, p0, Lu/a;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    sget-object v0, Landroidx/drawerlayout/widget/DrawerLayout;->C:[I

    .line 8
    .line 9
    invoke-super {p0, p1, p2, p3}, Lp/b;->d(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :goto_0
    iget-object v0, p0, Lu/a;->f:Landroid/view/ViewGroup;

    .line 15
    .line 16
    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b(Landroid/view/View;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-super {p0, p1, p2, p3}, Lp/b;->d(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_1
    return p1

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
