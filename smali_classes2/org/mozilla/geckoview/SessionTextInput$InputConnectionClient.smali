.class interface abstract Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/SessionTextInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InputConnectionClient"
.end annotation


# virtual methods
.method public abstract getHandler(Landroid/os/Handler;)Landroid/os/Handler;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end method
