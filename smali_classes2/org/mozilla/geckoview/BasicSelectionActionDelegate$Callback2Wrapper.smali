.class Lorg/mozilla/geckoview/BasicSelectionActionDelegate$Callback2Wrapper;
.super Landroid/view/ActionMode$Callback2;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/BasicSelectionActionDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Callback2Wrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/BasicSelectionActionDelegate;


# direct methods
.method private constructor <init>(Lorg/mozilla/geckoview/BasicSelectionActionDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate$Callback2Wrapper;->this$0:Lorg/mozilla/geckoview/BasicSelectionActionDelegate;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/geckoview/BasicSelectionActionDelegate;Lorg/mozilla/geckoview/BasicSelectionActionDelegate$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate$Callback2Wrapper;-><init>(Lorg/mozilla/geckoview/BasicSelectionActionDelegate;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate$Callback2Wrapper;->this$0:Lorg/mozilla/geckoview/BasicSelectionActionDelegate;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate$Callback2Wrapper;->this$0:Lorg/mozilla/geckoview/BasicSelectionActionDelegate;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate$Callback2Wrapper;->this$0:Lorg/mozilla/geckoview/BasicSelectionActionDelegate;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate$Callback2Wrapper;->this$0:Lorg/mozilla/geckoview/BasicSelectionActionDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/BasicSelectionActionDelegate$Callback2Wrapper;->this$0:Lorg/mozilla/geckoview/BasicSelectionActionDelegate;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
