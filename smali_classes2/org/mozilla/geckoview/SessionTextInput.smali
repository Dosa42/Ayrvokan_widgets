.class public final Lorg/mozilla/geckoview/SessionTextInput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/SessionTextInput$DefaultDelegate;,
        Lorg/mozilla/geckoview/SessionTextInput$EditableListener;,
        Lorg/mozilla/geckoview/SessionTextInput$EditableClient;,
        Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final LOGTAG:Ljava/lang/String; = "GeckoSessionTextInput"


# instance fields
.field private mDelegate:Lorg/mozilla/geckoview/GeckoSession$TextInputDelegate;

.field private final mEditable:Lorg/mozilla/geckoview/GeckoEditable;

.field private mInputConnection:Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;

.field private final mQueue:Lorg/mozilla/gecko/NativeQueue;

.field private final mSession:Lorg/mozilla/geckoview/GeckoSession;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/gecko/NativeQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/SessionTextInput;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    iput-object p2, p0, Lorg/mozilla/geckoview/SessionTextInput;->mQueue:Lorg/mozilla/gecko/NativeQueue;

    new-instance p2, Lorg/mozilla/geckoview/GeckoEditable;

    invoke-direct {p2, p1}, Lorg/mozilla/geckoview/GeckoEditable;-><init>(Lorg/mozilla/geckoview/GeckoSession;)V

    iput-object p2, p0, Lorg/mozilla/geckoview/SessionTextInput;->mEditable:Lorg/mozilla/geckoview/GeckoEditable;

    return-void
.end method


# virtual methods
.method public getDelegate()Lorg/mozilla/geckoview/GeckoSession$TextInputDelegate;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionTextInput;->mDelegate:Lorg/mozilla/geckoview/GeckoSession$TextInputDelegate;

    if-nez v0, :cond_0

    sget-object v0, Lorg/mozilla/geckoview/SessionTextInput$DefaultDelegate;->INSTANCE:Lorg/mozilla/geckoview/SessionTextInput$DefaultDelegate;

    iput-object v0, p0, Lorg/mozilla/geckoview/SessionTextInput;->mDelegate:Lorg/mozilla/geckoview/GeckoSession$TextInputDelegate;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/SessionTextInput;->mDelegate:Lorg/mozilla/geckoview/GeckoSession$TextInputDelegate;

    return-object v0
.end method

.method public declared-synchronized getHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/geckoview/SessionTextInput;->mInputConnection:Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;->getHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionTextInput;->mInputConnection:Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public declared-synchronized onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/geckoview/SessionTextInput;->mEditable:Lorg/mozilla/geckoview/GeckoEditable;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoEditable;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionTextInput;->mQueue:Lorg/mozilla/gecko/NativeQueue;

    invoke-virtual {v0}, Lorg/mozilla/gecko/NativeQueue;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionTextInput;->mInputConnection:Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionTextInput;->mEditable:Lorg/mozilla/geckoview/GeckoEditable;

    invoke-virtual {p0}, Lorg/mozilla/geckoview/SessionTextInput;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/mozilla/geckoview/GeckoEditable;->onKeyDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionTextInput;->mEditable:Lorg/mozilla/geckoview/GeckoEditable;

    invoke-virtual {p0}, Lorg/mozilla/geckoview/SessionTextInput;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/mozilla/geckoview/GeckoEditable;->onKeyLongPress(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionTextInput;->mEditable:Lorg/mozilla/geckoview/GeckoEditable;

    invoke-virtual {p0}, Lorg/mozilla/geckoview/SessionTextInput;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/mozilla/geckoview/GeckoEditable;->onKeyMultiple(Landroid/view/View;IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionTextInput;->mEditable:Lorg/mozilla/geckoview/GeckoEditable;

    invoke-virtual {p0}, Lorg/mozilla/geckoview/SessionTextInput;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/mozilla/geckoview/GeckoEditable;->onKeyPreIme(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionTextInput;->mEditable:Lorg/mozilla/geckoview/GeckoEditable;

    invoke-virtual {p0}, Lorg/mozilla/geckoview/SessionTextInput;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/mozilla/geckoview/GeckoEditable;->onKeyUp(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowChanged(Lorg/mozilla/geckoview/GeckoSession$Window;)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionTextInput;->mQueue:Lorg/mozilla/gecko/NativeQueue;

    invoke-virtual {v0}, Lorg/mozilla/gecko/NativeQueue;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionTextInput;->mEditable:Lorg/mozilla/geckoview/GeckoEditable;

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoSession$Window;->attachEditable(Lorg/mozilla/gecko/IGeckoEditableParent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/SessionTextInput;->mQueue:Lorg/mozilla/gecko/NativeQueue;

    const-class v1, Lorg/mozilla/gecko/IGeckoEditableParent;

    iget-object v2, p0, Lorg/mozilla/geckoview/SessionTextInput;->mEditable:Lorg/mozilla/geckoview/GeckoEditable;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "attachEditable"

    invoke-virtual {v0, p1, v2, v1}, Lorg/mozilla/gecko/NativeQueue;->queueUntilReady(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setDelegate(Lorg/mozilla/geckoview/GeckoSession$TextInputDelegate;)V
    .locals 0

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iput-object p1, p0, Lorg/mozilla/geckoview/SessionTextInput;->mDelegate:Lorg/mozilla/geckoview/GeckoSession$TextInputDelegate;

    return-void
.end method

.method public declared-synchronized setView(Landroid/view/View;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/geckoview/SessionTextInput;->mInputConnection:Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/SessionTextInput;->mInputConnection:Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;->getView()Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/mozilla/geckoview/SessionTextInput;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    iget-object v1, p0, Lorg/mozilla/geckoview/SessionTextInput;->mEditable:Lorg/mozilla/geckoview/GeckoEditable;

    invoke-static {v0, p1, v1}, Lorg/mozilla/geckoview/GeckoInputConnection;->create(Lorg/mozilla/geckoview/GeckoSession;Landroid/view/View;Lorg/mozilla/geckoview/SessionTextInput$EditableClient;)Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/SessionTextInput;->mInputConnection:Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/mozilla/geckoview/SessionTextInput;->mEditable:Lorg/mozilla/geckoview/GeckoEditable;

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionTextInput;->mInputConnection:Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;

    check-cast v0, Lorg/mozilla/geckoview/SessionTextInput$EditableListener;

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoEditable;->setListener(Lorg/mozilla/geckoview/SessionTextInput$EditableListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
