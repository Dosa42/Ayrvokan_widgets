.class final Lorg/mozilla/geckoview/GeckoInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;
.implements Lorg/mozilla/geckoview/SessionTextInput$EditableListener;


# static fields
.field private static final CUSTOM_HANDLER_TEST_CLASS:Ljava/lang/String; = "org.mozilla.gecko.tests.components.GeckoViewComponent$TextInput"

.field private static final CUSTOM_HANDLER_TEST_METHOD:Ljava/lang/String; = "testInputConnection"

.field private static final DEBUG:Z = false

.field private static final INLINE_IME_MIN_DISPLAY_SIZE:I = 0x1e0

.field protected static final LOGTAG:Ljava/lang/String; = "GeckoInputConnection"

.field private static sBackgroundHandler:Landroid/os/Handler;


# instance fields
.field protected mBatchEditCount:I

.field private mCurrentInputMethod:Ljava/lang/String;

.field private mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field private final mEditableClient:Lorg/mozilla/geckoview/SessionTextInput$EditableClient;

.field private mIMEActionHint:Ljava/lang/String;

.field private mIMEState:I

.field private final mKeyInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mLastSelectionEnd:I

.field private mLastSelectionStart:I

.field private final mSession:Lorg/mozilla/geckoview/GeckoSession;

.field private mUpdateRequest:Landroid/view/inputmethod/ExtractedTextRequest;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession;Landroid/view/View;Lorg/mozilla/geckoview/SessionTextInput$EditableClient;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    const-string v0, ""

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mIMEActionHint:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mCurrentInputMethod:Ljava/lang/String;

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mView:Landroid/view/View;

    iput-object p3, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mEditableClient:Lorg/mozilla/geckoview/SessionTextInput$EditableClient;

    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mIMEState:I

    new-instance p3, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {p3, p2, p1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object p3, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mKeyInputConnection:Landroid/view/inputmethod/InputConnection;

    return-void
.end method

.method public static synthetic access$000(Lorg/mozilla/geckoview/GeckoInputConnection;)Lorg/mozilla/geckoview/GeckoSession;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    return-object p0
.end method

.method public static synthetic access$102(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    sput-object p0, Lorg/mozilla/geckoview/GeckoInputConnection;->sBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private declared-synchronized canReturnCustomHandler()Z
    .locals 7

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mIMEState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    const-string v5, "startInputInner"

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "android.view.inputmethod.InputMethodManager"

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    const-string v5, "testInputConnection"

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "org.mozilla.gecko.tests.components.GeckoViewComponent$TextInput"

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_2

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static create(Lorg/mozilla/geckoview/GeckoSession;Landroid/view/View;Lorg/mozilla/geckoview/SessionTextInput$EditableClient;)Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;
    .locals 1

    new-instance v0, Lorg/mozilla/geckoview/GeckoInputConnection;

    invoke-direct {v0, p0, p1, p2}, Lorg/mozilla/geckoview/GeckoInputConnection;-><init>(Lorg/mozilla/geckoview/GeckoSession;Landroid/view/View;Lorg/mozilla/geckoview/SessionTextInput$EditableClient;)V

    return-object v0
.end method

.method private static declared-synchronized getBackgroundHandler()Landroid/os/Handler;
    .locals 4

    const-class v0, Lorg/mozilla/geckoview/GeckoInputConnection;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/geckoview/GeckoInputConnection;->sBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/mozilla/geckoview/GeckoInputConnection$9;

    invoke-direct {v2}, Lorg/mozilla/geckoview/GeckoInputConnection$9;-><init>()V

    const-string v3, "GeckoInputConnection"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :catch_0
    :goto_0
    sget-object v1, Lorg/mozilla/geckoview/GeckoInputConnection;->sBackgroundHandler:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    :try_start_2
    const-class v1, Lorg/mozilla/geckoview/GeckoInputConnection;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isPhysicalKeyboardPresent()Z
    .locals 3

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoInputConnection;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private notifySelectionChange(II)V
    .locals 8

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v5

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v6

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoInputConnection;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v7, Lorg/mozilla/geckoview/GeckoInputConnection$4;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/geckoview/GeckoInputConnection$4;-><init>(Lorg/mozilla/geckoview/GeckoInputConnection;IIII)V

    invoke-virtual {v0, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private replaceComposingSpanWithSelection()Z
    .locals 4

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    if-eq v2, v3, :cond_1

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private translateKey(ILandroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 8

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mIMEActionHint:Ljava/lang/String;

    const-string v0, "maybenext"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/16 v6, 0x3d

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method private static wrapForDebug(Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;)Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;
    .locals 4

    new-instance v0, Lorg/mozilla/geckoview/GeckoInputConnection$1;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/GeckoInputConnection$1;-><init>(Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;)V

    const-class p0, Lorg/mozilla/geckoview/GeckoInputConnection;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/view/inputmethod/InputConnection;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lorg/mozilla/geckoview/SessionTextInput$EditableListener;

    aput-object v3, v1, v2

    invoke-static {p0, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized beginBatchEdit()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mBatchEditCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mBatchEditCount:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mEditableClient:Lorg/mozilla/geckoview/SessionTextInput$EditableClient;

    invoke-interface {v0, v1}, Lorg/mozilla/geckoview/SessionTextInput$EditableClient;->setBatchMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public closeConnection()V
    .locals 0

    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->closeConnection()V

    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mCurrentInputMethod:Ljava/lang/String;

    invoke-static {v0}, Lorg/mozilla/gecko/InputMethods;->shouldCommitCharAsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-lez p2, :cond_1

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoInputConnection;->replaceComposingSpanWithSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mKeyInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized endBatchEdit()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mBatchEditCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    sub-int/2addr v0, v1

    :try_start_1
    iput v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mBatchEditCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mEditableClient:Lorg/mozilla/geckoview/SessionTextInput$EditableClient;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/mozilla/geckoview/SessionTextInput$EditableClient;->setBatchMode(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mEditableClient:Lorg/mozilla/geckoview/SessionTextInput$EditableClient;

    invoke-interface {v0}, Lorg/mozilla/geckoview/SessionTextInput$EditableClient;->getEditable()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mUpdateRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object p2

    if-nez p2, :cond_2

    return-object v0

    :cond_2
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    new-instance v2, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    const/4 v4, -0x1

    iput v4, v2, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    iput v4, v2, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v0, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iput v1, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iput v3, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget p1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    return-object v2
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoInputConnection;->isPhysicalKeyboardPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mozilla/geckoview/GeckoInputConnection;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mEditableClient:Lorg/mozilla/geckoview/SessionTextInput$EditableClient;

    invoke-interface {v1, v0}, Lorg/mozilla/geckoview/SessionTextInput$EditableClient;->setInputConnectionHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoInputConnection;->canReturnCustomHandler()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoInputConnection;->getHandler()Landroid/os/Handler;

    move-result-object p1

    return-object p1
.end method

.method public getInputDelegate()Lorg/mozilla/geckoview/GeckoSession$TextInputDelegate;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/SessionTextInput;->getDelegate()Lorg/mozilla/geckoview/GeckoSession$TextInputDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mView:Landroid/view/View;

    return-object v0
.end method

.method public notifyIME(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mBatchEditCount:I

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mBatchEditCount:I

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized notifyIMEContext(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mIMEState:I

    if-nez p4, :cond_0

    const-string p4, ""

    :cond_0
    iput-object p4, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mIMEActionHint:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mUpdateRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    const-string p1, ""

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mCurrentInputMethod:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mIMEState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoInputConnection;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x1e0

    if-le v1, v2, :cond_1

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x12000000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_1
    invoke-static {v0}, Lorg/mozilla/gecko/InputMethods;->getCurrentInputMethod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mCurrentInputMethod:Ljava/lang/String;

    iget v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mLastSelectionStart:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mLastSelectionEnd:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onDefaultKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    new-instance v0, Lorg/mozilla/geckoview/GeckoInputConnection$8;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/geckoview/GeckoInputConnection$8;-><init>(Lorg/mozilla/geckoview/GeckoInputConnection;Landroid/view/KeyEvent;)V

    invoke-static {v0}, Lorg/mozilla/gecko/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDiscardComposition()V
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoInputConnection;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/gecko/InputMethods;->getCurrentInputMethod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/gecko/InputMethods;->needsRestartInput(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lorg/mozilla/geckoview/GeckoInputConnection$5;

    invoke-direct {v1, p0}, Lorg/mozilla/geckoview/GeckoInputConnection$5;-><init>(Lorg/mozilla/geckoview/GeckoInputConnection;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSelectionChange()V
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mLastSelectionStart:I

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mLastSelectionEnd:I

    iget v1, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mLastSelectionStart:I

    invoke-direct {p0, v1, v0}, Lorg/mozilla/geckoview/GeckoInputConnection;->notifySelectionChange(II)V

    :cond_0
    return-void
.end method

.method public onTextChange()V
    .locals 5

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mUpdateRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    const/4 v4, -0x1

    iput v4, v2, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    iput v4, v2, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    iput v4, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    iput v4, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iput v3, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v3, v1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v3, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoInputConnection;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v3, Lorg/mozilla/geckoview/GeckoInputConnection$3;

    invoke-direct {v3, p0, v1, v2}, Lorg/mozilla/geckoview/GeckoInputConnection$3;-><init>(Lorg/mozilla/geckoview/GeckoInputConnection;Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public performContextMenuAction(I)Z
    .locals 6

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoInputConnection;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/gecko/Clipboard;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1, v5}, Lorg/mozilla/geckoview/GeckoInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_1

    :pswitch_1
    if-ne v3, v4, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/mozilla/gecko/Clipboard;->setText(Landroid/content/Context;Ljava/lang/CharSequence;)Z

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-ne v3, v4, :cond_2

    invoke-static {p1, v1}, Lorg/mozilla/gecko/Clipboard;->setText(Landroid/content/Context;Ljava/lang/CharSequence;)Z

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    goto :goto_1

    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/mozilla/gecko/Clipboard;->setText(Landroid/content/Context;Ljava/lang/CharSequence;)Z

    invoke-interface {v1, v3, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    :pswitch_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lorg/mozilla/geckoview/GeckoInputConnection;->setSelection(II)Z

    :cond_3
    :goto_1
    return v5

    :cond_4
    :goto_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performDefaultKeyAction(Landroid/view/KeyEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_0

    const/16 v1, 0xde

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoInputConnection;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public performEditorAction(I)Z
    .locals 2

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mIMEActionHint:Ljava/lang/String;

    const-string v1, "previous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoInputConnection;->getView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lorg/mozilla/geckoview/GeckoInputConnection$2;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/GeckoInputConnection$2;-><init>(Lorg/mozilla/geckoview/GeckoInputConnection;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->performEditorAction(I)Z

    move-result p1

    return p1
.end method

.method public requestCursorUpdates(I)Z
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mEditableClient:Lorg/mozilla/geckoview/SessionTextInput$EditableClient;

    invoke-interface {v0, v1}, Lorg/mozilla/geckoview/SessionTextInput$EditableClient;->requestCursorUpdates(I)V

    :cond_0
    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mEditableClient:Lorg/mozilla/geckoview/SessionTextInput$EditableClient;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mEditableClient:Lorg/mozilla/geckoview/SessionTextInput$EditableClient;

    const/4 v0, 0x3

    :goto_0
    invoke-interface {p1, v0}, Lorg/mozilla/geckoview/SessionTextInput$EditableClient;->requestCursorUpdates(I)V

    return v1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/mozilla/geckoview/GeckoInputConnection;->translateKey(ILandroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mEditableClient:Lorg/mozilla/geckoview/SessionTextInput$EditableClient;

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoInputConnection;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    invoke-interface {v1, v2, p1, v0}, Lorg/mozilla/geckoview/SessionTextInput$EditableClient;->sendKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setSelection(II)Z
    .locals 0

    if-ltz p1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public updateCompositionRects([Landroid/graphics/RectF;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoInputConnection;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {v1}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    invoke-static {v1}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    if-ltz v2, :cond_3

    if-gez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lorg/mozilla/geckoview/GeckoInputConnection$6;

    invoke-direct {v2, p0, v0, p1, v1}, Lorg/mozilla/geckoview/GeckoInputConnection$6;-><init>(Lorg/mozilla/geckoview/GeckoInputConnection;Landroid/view/View;[Landroid/graphics/RectF;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public updateCompositionRectsOnUi(Landroid/view/View;[Landroid/graphics/RectF;Ljava/lang/CharSequence;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    :cond_0
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoSession;->getClientToScreenMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    const/4 p1, 0x0

    move v7, p1

    :goto_0
    array-length v0, p2

    if-ge v7, v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    aget-object v1, p2, v7

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x1

    move v1, v7

    invoke-virtual/range {v0 .. v6}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {p2, p1, p3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoInputConnection;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object p1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoInputConnection;->getView()Landroid/view/View;

    move-result-object p2

    new-instance p3, Lorg/mozilla/geckoview/GeckoInputConnection$7;

    invoke-direct {p3, p0, p1}, Lorg/mozilla/geckoview/GeckoInputConnection$7;-><init>(Lorg/mozilla/geckoview/GeckoInputConnection;Landroid/view/inputmethod/CursorAnchorInfo;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
