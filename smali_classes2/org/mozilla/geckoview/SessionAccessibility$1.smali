.class Lorg/mozilla/geckoview/SessionAccessibility$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/SessionAccessibility;->setView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mProvider:Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;

.field final synthetic this$0:Lorg/mozilla/geckoview/SessionAccessibility;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/SessionAccessibility;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/SessionAccessibility$1;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$1;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-static {v0}, Lorg/mozilla/geckoview/SessionAccessibility;->access$100(Lorg/mozilla/geckoview/SessionAccessibility;)Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/mozilla/geckoview/SessionAccessibility$1;->mProvider:Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;

    if-nez p1, :cond_1

    new-instance p1, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$1;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-direct {p1, v0}, Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;-><init>(Lorg/mozilla/geckoview/SessionAccessibility;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/SessionAccessibility$1;->mProvider:Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;

    :cond_1
    iget-object p1, p0, Lorg/mozilla/geckoview/SessionAccessibility$1;->mProvider:Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;

    return-object p1
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method
