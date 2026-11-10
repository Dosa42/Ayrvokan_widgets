.class Lorg/mozilla/geckoview/GeckoView$AndroidAutofillDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/Autofill$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AndroidAutofillDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoView;


# direct methods
.method private constructor <init>(Lorg/mozilla/geckoview/GeckoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoView$AndroidAutofillDelegate;->this$0:Lorg/mozilla/geckoview/GeckoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/geckoview/GeckoView;Lorg/mozilla/geckoview/GeckoView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoView$AndroidAutofillDelegate;-><init>(Lorg/mozilla/geckoview/GeckoView;)V

    return-void
.end method

.method private displayRectForId(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/Autofill$Node;)Landroid/graphics/Rect;
    .locals 2

    if-nez p2, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p2}, Lorg/mozilla/geckoview/Autofill$Node;->getDimensions()Landroid/graphics/Rect;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoSession;->getPageToScreenMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    return-object p1
.end method


# virtual methods
.method public onAutofill(Lorg/mozilla/geckoview/GeckoSession;ILorg/mozilla/geckoview/Autofill$Node;)V
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$AndroidAutofillDelegate;->this$0:Lorg/mozilla/geckoview/GeckoView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lc1/a;->k()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc1/a;->i(Ljava/lang/Object;)Landroid/view/autofill/AutofillManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_6

    const/4 v1, 0x1

    if-eq p2, v1, :cond_5

    const/4 v1, 0x2

    if-eq p2, v1, :cond_6

    const/4 v1, 0x5

    if-eq p2, v1, :cond_4

    const/4 v1, 0x6

    if-eq p2, v1, :cond_3

    const/4 p1, 0x7

    if-eq p2, p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoView$AndroidAutofillDelegate;->this$0:Lorg/mozilla/geckoview/GeckoView;

    invoke-virtual {p3}, Lorg/mozilla/geckoview/Autofill$Node;->getId()I

    move-result p2

    invoke-static {v0, p1, p2}, Lorg/mozilla/geckoview/b;->l(Landroid/view/autofill/AutofillManager;Lorg/mozilla/geckoview/GeckoView;I)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoView$AndroidAutofillDelegate;->this$0:Lorg/mozilla/geckoview/GeckoView;

    invoke-virtual {p3}, Lorg/mozilla/geckoview/Autofill$Node;->getId()I

    move-result v1

    invoke-direct {p0, p1, p3}, Lorg/mozilla/geckoview/GeckoView$AndroidAutofillDelegate;->displayRectForId(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/Autofill$Node;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {v0, p2, v1, p1}, Lorg/mozilla/geckoview/b;->m(Landroid/view/autofill/AutofillManager;Lorg/mozilla/geckoview/GeckoView;ILandroid/graphics/Rect;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoView$AndroidAutofillDelegate;->this$0:Lorg/mozilla/geckoview/GeckoView;

    invoke-virtual {p3}, Lorg/mozilla/geckoview/Autofill$Node;->getId()I

    move-result p2

    invoke-virtual {p3}, Lorg/mozilla/geckoview/Autofill$Node;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lc1/a;->j(Ljava/lang/String;)Landroid/view/autofill/AutofillValue;

    move-result-object p3

    invoke-static {v0, p1, p2, p3}, Lorg/mozilla/geckoview/b;->n(Landroid/view/autofill/AutofillManager;Lorg/mozilla/geckoview/GeckoView;ILandroid/view/autofill/AutofillValue;)V

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lc1/a;->C(Landroid/view/autofill/AutofillManager;)V

    goto :goto_0

    :cond_6
    invoke-static {v0}, Lc1/a;->t(Landroid/view/autofill/AutofillManager;)V

    :goto_0
    return-void
.end method
