.class interface abstract Lorg/mozilla/geckoview/SessionTextInput$EditableClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/SessionTextInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EditableClient"
.end annotation


# static fields
.field public static final END_MONITOR:I = 0x3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public static final ONE_SHOT:I = 0x1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public static final START_MONITOR:I = 0x2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field


# virtual methods
.method public abstract getEditable()Landroid/text/Editable;
.end method

.method public abstract postToInputConnection(Ljava/lang/Runnable;)V
.end method

.method public abstract requestCursorUpdates(I)V
.end method

.method public abstract sendKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)V
.end method

.method public abstract setBatchMode(Z)V
.end method

.method public abstract setInputConnectionHandler(Landroid/os/Handler;)Landroid/os/Handler;
.end method
