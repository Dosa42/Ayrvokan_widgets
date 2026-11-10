.class public Lorg/mozilla/geckoview/BasicSelectionActionDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/BasicSelectionActionDelegate$Callback2Wrapper;
    }
.end annotation


# static fields
.field protected static final ACTION_PROCESS_TEXT:Ljava/lang/String; = "android.intent.action.PROCESS_TEXT"

.field private static final FIXED_TOOLBAR_ACTIONS:[Ljava/lang/String;

.field private static final FLOATING_TOOLBAR_ACTIONS:[Ljava/lang/String;

.field private static final LOGTAG:Ljava/lang/String; = "BasicSelectionAction"


# instance fields
.field protected mActionMode:Landroid/view/ActionMode;

.field protected final mActivity:Landroid/app/Activity;

.field private mExternalActionsEnabled:Z

.field protected mRepopulatedMenu:Z

.field protected mSelection:Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;

.field protected mSession:Lorg/mozilla/geckoview/GeckoSession;

.field protected final mTempMatrix:Landroid/graphics/Matrix;

.field protected final mTempRect:Landroid/graphics/RectF;

.field protected final mUseFloatingToolbar:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "android.intent.action.PROCESS_TEXT"

    const-string v1, "org.mozilla.geckoview.CUT"

    const-string v2, "org.mozilla.geckoview.COPY"

    const-string v3, "org.mozilla.geckoview.PASTE"

    const-string v4, "org.mozilla.geckoview.SELECT_ALL"

    filled-new-array {v1, v2, v3, v4, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->FLOATING_TOOLBAR_ACTIONS:[Ljava/lang/String;

    filled-new-array {v4, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->FIXED_TOOLBAR_ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;-><init>(Landroid/app/Activity;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mTempMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mTempRect:Landroid/graphics/RectF;

    iput-object p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mActivity:Landroid/app/Activity;

    iput-boolean p2, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mUseFloatingToolbar:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mExternalActionsEnabled:Z

    return-void
.end method

.method private getProcessTextIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PROCESS_TEXT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mSelection:Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;

    iget-object v1, v1, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->text:Ljava/lang/String;

    const-string v2, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.PROCESS_TEXT_READONLY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public areExternalActionsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mExternalActionsEnabled:Z

    return v0
.end method

.method public clearSelection()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mSelection:Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "org.mozilla.geckoview.COLLAPSE_TO_END"

    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->isActionAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mSelection:Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->collapseToEnd()V

    goto :goto_0

    :cond_1
    const-string v0, "org.mozilla.geckoview.UNSELECT"

    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->isActionAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mSelection:Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->unselect()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mSelection:Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->hide()V

    :goto_0
    return-void
.end method

.method public enableExternalActions(Z)V
    .locals 0

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iput-boolean p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mExternalActionsEnabled:Z

    iget-object p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    return-void
.end method

.method public getAllActions()[Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mUseFloatingToolbar:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->FLOATING_TOOLBAR_ACTIONS:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->FIXED_TOOLBAR_ACTIONS:[Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getSelection()Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mSelection:Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;

    return-object v0
.end method

.method public isActionAvailable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mSelection:Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->isActionAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mSelection:Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->availableActions:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isActionAvailable(Ljava/lang/String;)Z
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mSelection:Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mExternalActionsEnabled:Z

    if-eqz v2, :cond_2

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-direct {p0}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->getProcessTextIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10000

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mSelection:Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->isActionAvailable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-boolean v0, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mRepopulatedMenu:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eq v3, p2, :cond_1

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move-object p2, v3

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    move-object p2, p1

    :cond_3
    :goto_2
    if-nez p2, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->getAllActions()[Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->performAction(Ljava/lang/String;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p0}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->getAllActions()[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->isActionAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-boolean p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mUseFloatingToolbar:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->clearSelection()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    iput-object p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mSelection:Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;

    iput-object p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mSelection:Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->clientRect:Landroid/graphics/RectF;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    iget-object p2, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Lorg/mozilla/geckoview/GeckoSession;->getClientToScreenMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mTempRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mSelection:Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->clientRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p3}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onHideAction(Lorg/mozilla/geckoview/GeckoSession;I)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mActionMode:Landroid/view/ActionMode;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mUseFloatingToolbar:Z

    if-eqz p2, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v10, p2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p0}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->getAllActions()[Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v1, :cond_0

    move v1, v12

    goto :goto_0

    :cond_0
    move v1, v13

    :goto_0
    iput-boolean v1, v0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mRepopulatedMenu:Z

    move v1, v13

    move v2, v1

    :goto_1
    array-length v3, v11

    if-ge v1, v3, :cond_5

    aget-object v3, v11, v1

    add-int/lit8 v14, v1, 0x1

    const-string v1, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mExternalActionsEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mSelection:Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;

    iget-object v1, v1, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->getProcessTextIntent()Landroid/content/Intent;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p2

    move v2, v14

    move v3, v14

    move v4, v14

    invoke-interface/range {v1 .. v9}, Landroid/view/Menu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    goto :goto_2

    :cond_1
    invoke-interface {v10, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v10, v14}, Landroid/view/Menu;->removeGroup(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->isActionAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, ""

    invoke-interface {v10, v13, v14, v14, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->prepareAction(Ljava/lang/String;Landroid/view/MenuItem;)V

    goto :goto_2

    :cond_3
    invoke-interface {v10, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v10, v14}, Landroid/view/Menu;->removeItem(I)V

    :goto_2
    move v2, v12

    :cond_4
    move v1, v14

    goto :goto_1

    :cond_5
    return v2
.end method

.method public onShowActionRequest(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iput-object p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    iput-object p2, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mSelection:Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;

    iget-object p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->isActionAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :goto_0
    return-void

    :cond_1
    iget-boolean p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mUseFloatingToolbar:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mActivity:Landroid/app/Activity;

    new-instance p2, Lorg/mozilla/geckoview/BasicSelectionActionDelegate$Callback2Wrapper;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate$Callback2Wrapper;-><init>(Lorg/mozilla/geckoview/BasicSelectionActionDelegate;Lorg/mozilla/geckoview/BasicSelectionActionDelegate$1;)V

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method public performAction(Ljava/lang/String;Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mActivity:Landroid/app/Activity;

    invoke-interface {p2}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    return v2

    :cond_0
    iget-object p2, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mSelection:Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;

    if-nez p2, :cond_1

    return v2

    :cond_1
    invoke-virtual {p2, p1}, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->execute(Ljava/lang/String;)V

    const-string p2, "org.mozilla.geckoview.COPY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mUseFloatingToolbar:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->clearSelection()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_3
    :goto_0
    return v1
.end method

.method public prepareAction(Ljava/lang/String;Landroid/view/MenuItem;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "org.mozilla.geckoview.SELECT_ALL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "org.mozilla.geckoview.PASTE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "org.mozilla.geckoview.COPY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "org.mozilla.geckoview.CUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const p1, 0x104000d

    goto :goto_1

    :pswitch_1
    const p1, 0x104000b

    goto :goto_1

    :pswitch_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected action"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    const p1, 0x1040001

    goto :goto_1

    :pswitch_4
    const p1, 0x1040003

    :goto_1
    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x11f779ba -> :sswitch_4
        0x2cf7a6dd -> :sswitch_3
        0x6590ee62 -> :sswitch_2
        0x72ae140b -> :sswitch_1
        0x7c6e4926 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
