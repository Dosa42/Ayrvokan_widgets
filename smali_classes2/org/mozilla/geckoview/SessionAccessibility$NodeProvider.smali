.class final Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/SessionAccessibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NodeProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/SessionAccessibility;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/SessionAccessibility;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method

.method private getNodeFromCache(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v1, v1, Lorg/mozilla/geckoview/SessionAccessibility;->mCaches:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/gecko/util/GeckoBundle;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v2}, Lorg/mozilla/geckoview/SessionAccessibility;->access$100(Lorg/mozilla/geckoview/SessionAccessibility;)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    :cond_1
    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->populateNodeFromBundle(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/mozilla/gecko/util/GeckoBundle;Z)V

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getNodeFromGecko(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v0}, Lorg/mozilla/geckoview/SessionAccessibility;->access$100(Lorg/mozilla/geckoview/SessionAccessibility;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v1, v1, Lorg/mozilla/geckoview/SessionAccessibility;->nativeProvider:Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

    invoke-virtual {v1, p1}, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->getNodeInfo(I)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->populateNodeFromBundle(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/mozilla/gecko/util/GeckoBundle;Z)V

    return-object v0
.end method

.method private populateNodeFromBundle(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/mozilla/gecko/util/GeckoBundle;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v3}, Lorg/mozilla/geckoview/SessionAccessibility;->access$100(Lorg/mozilla/geckoview/SessionAccessibility;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_24

    if-nez v2, :cond_0

    goto/16 :goto_13

    :cond_0
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-ne v3, v5, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    const-string v8, "parentId"

    if-eqz v7, :cond_3

    iget-object v5, v0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v5}, Lorg/mozilla/geckoview/SessionAccessibility;->access$100(Lorg/mozilla/geckoview/SessionAccessibility;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v5}, Lorg/mozilla/geckoview/SessionAccessibility;->access$100(Lorg/mozilla/geckoview/SessionAccessibility;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_2
    const/16 v5, 0x2000

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1

    :cond_3
    iget-object v9, v0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v9}, Lorg/mozilla/geckoview/SessionAccessibility;->access$100(Lorg/mozilla/geckoview/SessionAccessibility;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v2, v8, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v9, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    :goto_1
    const-string v5, "flags"

    invoke-virtual {v2, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    const-string v9, "className"

    invoke-virtual {v2, v9}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lorg/mozilla/geckoview/SessionAccessibility;->access$1200(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const-string v9, "text"

    invoke-virtual {v2, v9}, Lorg/mozilla/gecko/util/GeckoBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v2, v9}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    const-string v9, "description"

    invoke-virtual {v2, v9}, Lorg/mozilla/gecko/util/GeckoBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v2, v9}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    const/16 v9, 0x400

    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v9, 0x800

    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v9, 0x200

    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v9, 0x100

    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v9, 0xf

    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    and-int/lit8 v9, v5, 0x8

    if-eqz v9, :cond_6

    const/16 v10, 0x10

    invoke-virtual {v1, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_6
    and-int/lit8 v10, v5, 0x2

    if-eqz v10, :cond_7

    move v10, v4

    goto :goto_2

    :cond_7
    move v10, v6

    :goto_2
    invoke-virtual {v1, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    and-int/lit8 v10, v5, 0x4

    if-eqz v10, :cond_8

    move v10, v4

    goto :goto_3

    :cond_8
    move v10, v6

    :goto_3
    invoke-virtual {v1, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    if-eqz v9, :cond_9

    move v9, v4

    goto :goto_4

    :cond_9
    move v9, v6

    :goto_4
    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    and-int/lit16 v9, v5, 0x80

    if-eqz v9, :cond_a

    move v9, v4

    goto :goto_5

    :cond_a
    move v9, v6

    :goto_5
    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    and-int/lit16 v9, v5, 0x100

    if-eqz v9, :cond_b

    move v9, v4

    goto :goto_6

    :cond_b
    move v9, v6

    :goto_6
    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    and-int/lit16 v9, v5, 0x400

    if-eqz v9, :cond_c

    move v9, v4

    goto :goto_7

    :cond_c
    move v9, v6

    :goto_7
    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    and-int/lit16 v9, v5, 0x1000

    if-eqz v9, :cond_d

    move v9, v4

    goto :goto_8

    :cond_d
    move v9, v6

    :goto_8
    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    and-int/lit16 v9, v5, 0x2000

    if-eqz v9, :cond_e

    move v9, v4

    goto :goto_9

    :cond_e
    move v9, v6

    :goto_9
    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    and-int/lit16 v9, v5, 0x4000

    if-eqz v9, :cond_f

    move v9, v4

    goto :goto_a

    :cond_f
    move v9, v6

    :goto_a
    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    const v9, 0x8000

    and-int v10, v5, v9

    if-eqz v10, :cond_10

    move v10, v4

    goto :goto_b

    :cond_10
    move v10, v6

    :goto_b
    invoke-virtual {v1, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    iget-object v10, v0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v10}, Lorg/mozilla/geckoview/SessionAccessibility;->access$1000(Lorg/mozilla/geckoview/SessionAccessibility;)I

    move-result v10

    if-ne v10, v3, :cond_11

    const/16 v10, 0x80

    invoke-virtual {v1, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    goto :goto_c

    :cond_11
    const/16 v10, 0x40

    invoke-virtual {v1, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_c
    iget-object v10, v0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v10}, Lorg/mozilla/geckoview/SessionAccessibility;->access$1100(Lorg/mozilla/geckoview/SessionAccessibility;)I

    move-result v10

    if-ne v10, v3, :cond_12

    move v10, v4

    goto :goto_d

    :cond_12
    move v10, v6

    :goto_d
    invoke-virtual {v1, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    const-string v10, "bounds"

    invoke-virtual {v2, v10}, Lorg/mozilla/gecko/util/GeckoBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v10

    if-eqz v10, :cond_13

    new-instance v11, Landroid/graphics/Rect;

    aget v12, v10, v6

    aget v13, v10, v4

    const/4 v14, 0x2

    aget v15, v10, v14

    const/16 v16, 0x3

    aget v9, v10, v16

    invoke-direct {v11, v12, v13, v15, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iget-object v11, v0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v11, v11, Lorg/mozilla/geckoview/SessionAccessibility;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v11, v9}, Lorg/mozilla/geckoview/GeckoSession;->getClientToScreenMatrix(Landroid/graphics/Matrix;)V

    new-array v11, v14, [F

    invoke-virtual {v9, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance v9, Landroid/graphics/Rect;

    aget v12, v10, v6

    aget v13, v11, v6

    float-to-int v13, v13

    sub-int/2addr v12, v13

    aget v13, v10, v4

    aget v11, v11, v4

    float-to-int v11, v11

    sub-int/2addr v13, v11

    aget v11, v10, v14

    aget v10, v10, v16

    invoke-direct {v9, v12, v13, v11, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    :cond_13
    const-string v9, "children"

    invoke-virtual {v2, v9}, Lorg/mozilla/gecko/util/GeckoBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v10

    if-nez v10, :cond_16

    if-eqz v9, :cond_16

    array-length v10, v9

    move v11, v6

    :goto_e
    if-ge v11, v10, :cond_16

    aget v12, v9, v11

    iget-object v13, v0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v13, v12}, Lorg/mozilla/geckoview/SessionAccessibility;->access$200(Lorg/mozilla/geckoview/SessionAccessibility;I)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v13

    if-eqz p3, :cond_14

    if-eqz v13, :cond_15

    invoke-virtual {v13, v8}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v13

    if-ne v13, v3, :cond_15

    :cond_14
    iget-object v13, v0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v13}, Lorg/mozilla/geckoview/SessionAccessibility;->access$100(Lorg/mozilla/geckoview/SessionAccessibility;)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v1, v13, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_15
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_16
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v8, "viewIdResourceName"

    invoke-virtual {v2, v8}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    and-int/lit8 v8, v5, 0x40

    const/high16 v9, 0x20000

    if-eqz v8, :cond_17

    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/high16 v8, 0x10000

    invoke-virtual {v1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v8, 0x4000

    invoke-virtual {v1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const v8, 0x8000

    invoke-virtual {v1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    :cond_17
    and-int/lit16 v8, v5, 0x800

    if-eqz v8, :cond_18

    move v8, v4

    goto :goto_f

    :cond_18
    move v8, v6

    :goto_f
    invoke-virtual {v1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    and-int/lit8 v8, v5, 0x10

    if-eqz v8, :cond_19

    move v8, v4

    goto :goto_10

    :cond_19
    move v8, v6

    :goto_10
    invoke-virtual {v1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v10, "hint"

    invoke-virtual {v2, v10}, Lorg/mozilla/gecko/util/GeckoBundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-virtual {v2, v10}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "AccessibilityNodeInfo.hint"

    invoke-virtual {v8, v11, v10}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v11, 0x1a

    if-lt v3, v11, :cond_1a

    invoke-static {v1, v10}, Lorg/mozilla/geckoview/b;->k(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V

    :cond_1a
    const-string v3, "geckoRole"

    invoke-virtual {v2, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    const-string v10, "AccessibilityNodeInfo.geckoRole"

    invoke-virtual {v2, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v10, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1b
    const-string v3, "roleDescription"

    invoke-virtual {v2, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    const-string v10, "AccessibilityNodeInfo.roleDescription"

    invoke-virtual {v2, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v10, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1c
    if-eqz v7, :cond_1d

    const-string v3, ","

    invoke-static {}, Lorg/mozilla/geckoview/SessionAccessibility;->access$1300()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "ACTION_ARGUMENT_HTML_ELEMENT_STRING_VALUES"

    invoke-virtual {v8, v7, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1d
    const-string v3, "rangeInfo"

    invoke-virtual {v2, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v3

    if-eqz v3, :cond_1e

    const-string v7, "type"

    invoke-virtual {v3, v7}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "min"

    const-wide/high16 v10, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual {v3, v8, v10, v11}, Lorg/mozilla/gecko/util/GeckoBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v10

    double-to-float v8, v10

    const-string v10, "max"

    const-wide/high16 v11, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual {v3, v10, v11, v12}, Lorg/mozilla/gecko/util/GeckoBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v10

    double-to-float v10, v10

    const-string v11, "current"

    const-wide/16 v12, 0x0

    invoke-virtual {v3, v11, v12, v13}, Lorg/mozilla/gecko/util/GeckoBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v11

    double-to-float v3, v11

    invoke-static {v7, v8, v10, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    :cond_1e
    const-string v3, "collectionItemInfo"

    invoke-virtual {v2, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v3

    if-eqz v3, :cond_1f

    const-string v7, "rowIndex"

    invoke-virtual {v3, v7}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "rowSpan"

    invoke-virtual {v3, v8}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v10, "columnIndex"

    invoke-virtual {v3, v10}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "columnSpan"

    invoke-virtual {v3, v11}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v7, v8, v10, v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    :cond_1f
    const-string v3, "collectionInfo"

    invoke-virtual {v2, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v3

    if-eqz v3, :cond_20

    const-string v7, "rowCount"

    invoke-virtual {v3, v7}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "columnCount"

    invoke-virtual {v3, v8}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v10, "isHierarchical"

    invoke-virtual {v3, v10, v6}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v11, "selectionMode"

    invoke-virtual {v3, v11, v6}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v7, v8, v10, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    :cond_20
    const-string v3, "inputType"

    invoke-virtual {v2, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    and-int v2, v5, v9

    if-eqz v2, :cond_22

    const/high16 v2, 0x40000

    and-int/2addr v2, v5

    if-eqz v2, :cond_21

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_COLLAPSE:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_11

    :cond_21
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_COLLAPSE:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    :goto_11
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_22
    and-int/lit8 v2, v5, 0x20

    if-eqz v2, :cond_23

    goto :goto_12

    :cond_23
    move v4, v6

    :goto_12
    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContextClickable(Z)V

    :cond_24
    :goto_13
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v0}, Lorg/mozilla/geckoview/SessionAccessibility;->access$000(Lorg/mozilla/geckoview/SessionAccessibility;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v0, v0, Lorg/mozilla/geckoview/SessionAccessibility;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getSettings()Lorg/mozilla/geckoview/GeckoSessionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSessionSettings;->getFullAccessibilityTree()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->getNodeFromGecko(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->getNodeFromCache(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {p1}, Lorg/mozilla/geckoview/SessionAccessibility;->access$000(Lorg/mozilla/geckoview/SessionAccessibility;)Z

    iget-object p1, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {p1}, Lorg/mozilla/geckoview/SessionAccessibility;->access$100(Lorg/mozilla/geckoview/SessionAccessibility;)Landroid/view/View;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v0}, Lorg/mozilla/geckoview/SessionAccessibility;->access$100(Lorg/mozilla/geckoview/SessionAccessibility;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v0}, Lorg/mozilla/geckoview/SessionAccessibility;->access$100(Lorg/mozilla/geckoview/SessionAccessibility;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_2
    const-string v0, "android.webkit.WebView"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_3
    return-object p1
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v0}, Lorg/mozilla/geckoview/SessionAccessibility;->access$1000(Lorg/mozilla/geckoview/SessionAccessibility;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {p1}, Lorg/mozilla/geckoview/SessionAccessibility;->access$1000(Lorg/mozilla/geckoview/SessionAccessibility;)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v0}, Lorg/mozilla/geckoview/SessionAccessibility;->access$1100(Lorg/mozilla/geckoview/SessionAccessibility;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {p1}, Lorg/mozilla/geckoview/SessionAccessibility;->access$1100(Lorg/mozilla/geckoview/SessionAccessibility;)I

    move-result p1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 9

    const-string v3, "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch p2, :sswitch_data_0

    iget-object v1, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v1}, Lorg/mozilla/geckoview/SessionAccessibility;->access$100(Lorg/mozilla/geckoview/SessionAccessibility;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    :sswitch_0
    const-string v0, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v2}, Lorg/mozilla/geckoview/SessionAccessibility;->access$000(Lorg/mozilla/geckoview/SessionAccessibility;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v2, v2, Lorg/mozilla/geckoview/SessionAccessibility;->nativeProvider:Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

    invoke-virtual {v2, p1, v0}, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->setText(ILjava/lang/String;)V

    :cond_0
    return v8

    :sswitch_1
    if-nez p3, :cond_1

    return v7

    :cond_1
    const-string v0, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v3, v3, Lorg/mozilla/geckoview/SessionAccessibility;->nativeProvider:Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

    invoke-virtual {v3, p1, v0, v2}, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->setSelection(III)V

    return v8

    :sswitch_2
    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v0, v0, Lorg/mozilla/geckoview/SessionAccessibility;->nativeProvider:Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->cut(I)V

    return v8

    :sswitch_3
    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v0, v0, Lorg/mozilla/geckoview/SessionAccessibility;->nativeProvider:Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->paste(I)V

    return v8

    :sswitch_4
    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v0, v0, Lorg/mozilla/geckoview/SessionAccessibility;->nativeProvider:Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->copy(I)V

    return v8

    :sswitch_5
    if-ne p1, v6, :cond_2

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v0, v0, Lorg/mozilla/geckoview/SessionAccessibility;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getPanZoomController()Lorg/mozilla/geckoview/PanZoomController;

    move-result-object v0

    invoke-static {}, Lorg/mozilla/geckoview/ScreenLength;->zero()Lorg/mozilla/geckoview/ScreenLength;

    move-result-object v1

    const-wide v2, -0x4016666666666666L    # -0.8

    invoke-static {v2, v3}, Lorg/mozilla/geckoview/ScreenLength;->fromVisualViewportHeight(D)Lorg/mozilla/geckoview/ScreenLength;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v8}, Lorg/mozilla/geckoview/PanZoomController;->scrollBy(Lorg/mozilla/geckoview/ScreenLength;Lorg/mozilla/geckoview/ScreenLength;I)V

    :cond_2
    return v8

    :sswitch_6
    if-ne p1, v6, :cond_3

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v0, v0, Lorg/mozilla/geckoview/SessionAccessibility;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getPanZoomController()Lorg/mozilla/geckoview/PanZoomController;

    move-result-object v0

    invoke-static {}, Lorg/mozilla/geckoview/ScreenLength;->zero()Lorg/mozilla/geckoview/ScreenLength;

    move-result-object v1

    const-wide v2, 0x3fe999999999999aL    # 0.8

    invoke-static {v2, v3}, Lorg/mozilla/geckoview/ScreenLength;->fromVisualViewportHeight(D)Lorg/mozilla/geckoview/ScreenLength;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v8}, Lorg/mozilla/geckoview/PanZoomController;->scrollBy(Lorg/mozilla/geckoview/ScreenLength;Lorg/mozilla/geckoview/ScreenLength;I)V

    :cond_3
    return v8

    :sswitch_7
    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v0}, Lorg/mozilla/geckoview/SessionAccessibility;->access$300(Lorg/mozilla/geckoview/SessionAccessibility;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    if-eqz p3, :cond_4

    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-static {v0, p1, v4, v7, v7}, Lorg/mozilla/geckoview/SessionAccessibility;->access$400(Lorg/mozilla/geckoview/SessionAccessibility;ILjava/lang/String;ZZ)Z

    move-result v0

    return v0

    :sswitch_8
    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v0}, Lorg/mozilla/geckoview/SessionAccessibility;->access$300(Lorg/mozilla/geckoview/SessionAccessibility;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    if-eqz p3, :cond_5

    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_5
    invoke-static {v0, p1, v4, v8, v7}, Lorg/mozilla/geckoview/SessionAccessibility;->access$400(Lorg/mozilla/geckoview/SessionAccessibility;ILjava/lang/String;ZZ)Z

    move-result v0

    return v0

    :sswitch_9
    const-string v3, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const v4, -0x10642ac0

    if-gt v3, v4, :cond_6

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v0, v0, Lorg/mozilla/geckoview/SessionAccessibility;->nativeProvider:Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->click(I)V

    goto :goto_1

    :cond_6
    if-lez v3, :cond_b

    const-string v4, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p3, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const/16 v2, 0x100

    if-ne p2, v2, :cond_7

    move v5, v8

    goto :goto_0

    :cond_7
    move v5, v7

    :goto_0
    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    if-eqz v5, :cond_9

    invoke-static {v0}, Lorg/mozilla/geckoview/SessionAccessibility;->access$500(Lorg/mozilla/geckoview/SessionAccessibility;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v7

    :cond_8
    const/4 v0, 0x2

    if-ne v3, v0, :cond_a

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v0}, Lorg/mozilla/geckoview/SessionAccessibility;->access$600(Lorg/mozilla/geckoview/SessionAccessibility;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v7

    :cond_9
    invoke-static {v0}, Lorg/mozilla/geckoview/SessionAccessibility;->access$700(Lorg/mozilla/geckoview/SessionAccessibility;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v7

    :cond_a
    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v2, v0, Lorg/mozilla/geckoview/SessionAccessibility;->nativeProvider:Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

    invoke-static {v0}, Lorg/mozilla/geckoview/SessionAccessibility;->access$800(Lorg/mozilla/geckoview/SessionAccessibility;)I

    move-result v4

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v0}, Lorg/mozilla/geckoview/SessionAccessibility;->access$900(Lorg/mozilla/geckoview/SessionAccessibility;)I

    move-result v7

    move-object v0, v2

    move v1, p1

    move v2, v3

    move v3, v4

    move v4, v7

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->navigateText(IIIIZZ)V

    :cond_b
    :goto_1
    return v8

    :sswitch_a
    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v2, p1, v6, v5}, Lorg/mozilla/geckoview/SessionAccessibility;->sendEvent(IIILorg/mozilla/gecko/util/GeckoBundle;)V

    return v8

    :sswitch_b
    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    if-ne p1, v6, :cond_c

    const/16 v6, 0xf

    :cond_c
    const v2, 0x8000

    invoke-virtual {v0, v2, p1, v6, v5}, Lorg/mozilla/geckoview/SessionAccessibility;->sendEvent(IIILorg/mozilla/gecko/util/GeckoBundle;)V

    :sswitch_c
    return v8

    :sswitch_d
    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v0, v0, Lorg/mozilla/geckoview/SessionAccessibility;->nativeProvider:Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->click(I)V

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v0, p1}, Lorg/mozilla/geckoview/SessionAccessibility;->access$200(Lorg/mozilla/geckoview/SessionAccessibility;I)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v2, "flags"

    invoke-virtual {v0, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const v3, 0x30002

    and-int/2addr v2, v3

    if-nez v2, :cond_d

    iget-object v2, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    const-string v3, "className"

    invoke-virtual {v0, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v8, p1, v0, v5}, Lorg/mozilla/geckoview/SessionAccessibility;->sendEvent(IIILorg/mozilla/gecko/util/GeckoBundle;)V

    :cond_d
    return v8

    :sswitch_e
    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v0, v0, Lorg/mozilla/geckoview/SessionAccessibility;->nativeProvider:Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->click(I)V

    return v8

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_e
        0x10 -> :sswitch_d
        0x20 -> :sswitch_c
        0x40 -> :sswitch_b
        0x80 -> :sswitch_a
        0x100 -> :sswitch_9
        0x200 -> :sswitch_9
        0x400 -> :sswitch_8
        0x800 -> :sswitch_7
        0x1000 -> :sswitch_6
        0x2000 -> :sswitch_5
        0x4000 -> :sswitch_4
        0x8000 -> :sswitch_3
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_d
        0x80000 -> :sswitch_d
        0x200000 -> :sswitch_0
    .end sparse-switch
.end method
