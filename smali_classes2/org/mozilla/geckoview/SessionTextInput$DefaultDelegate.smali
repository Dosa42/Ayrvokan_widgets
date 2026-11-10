.class final Lorg/mozilla/geckoview/SessionTextInput$DefaultDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoSession$TextInputDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/SessionTextInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultDelegate"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/mozilla/geckoview/SessionTextInput$DefaultDelegate;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/geckoview/SessionTextInput$DefaultDelegate;

    invoke-direct {v0}, Lorg/mozilla/geckoview/SessionTextInput$DefaultDelegate;-><init>()V

    sput-object v0, Lorg/mozilla/geckoview/SessionTextInput$DefaultDelegate;->INSTANCE:Lorg/mozilla/geckoview/SessionTextInput$DefaultDelegate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getInputMethodManager(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method


# virtual methods
.method public hideSoftInput(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/geckoview/SessionTextInput;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/SessionTextInput$DefaultDelegate;->getInputMethodManager(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public restartInput(Lorg/mozilla/geckoview/GeckoSession;I)V
    .locals 6

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/geckoview/SessionTextInput;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/SessionTextInput$DefaultDelegate;->getInputMethodManager(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/gecko/InputMethods;->getCurrentInputMethod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/gecko/InputMethods;->needsSoftResetWorkaround(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    :cond_1
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public showSoftInput(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/geckoview/SessionTextInput;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/SessionTextInput$DefaultDelegate;->getInputMethodManager(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method

.method public updateCursorAnchorInfo(Lorg/mozilla/geckoview/GeckoSession;Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/geckoview/SessionTextInput;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/SessionTextInput$DefaultDelegate;->getInputMethodManager(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    :cond_0
    return-void
.end method

.method public updateExtractedText(Lorg/mozilla/geckoview/GeckoSession;Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/geckoview/SessionTextInput;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/SessionTextInput$DefaultDelegate;->getInputMethodManager(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p2, p2, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    :cond_0
    return-void
.end method

.method public updateSelection(Lorg/mozilla/geckoview/GeckoSession;IIII)V
    .locals 6

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/geckoview/SessionTextInput;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mozilla/geckoview/SessionTextInput$DefaultDelegate;->getInputMethodManager(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method
