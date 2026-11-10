.class public interface abstract Lorg/mozilla/gecko/IGeckoEditableChild;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/IGeckoEditableChild$Stub;,
        Lorg/mozilla/gecko/IGeckoEditableChild$Default;
    }
.end annotation


# virtual methods
.method public abstract onImeAddCompositionRange(IIIIIZIII)V
.end method

.method public abstract onImeReplaceText(IILjava/lang/String;)V
.end method

.method public abstract onImeRequestCommit()V
.end method

.method public abstract onImeRequestCursorUpdates(I)V
.end method

.method public abstract onImeSynchronize()V
.end method

.method public abstract onImeUpdateComposition(III)V
.end method

.method public abstract onKeyEvent(IIIIIJIIIZLandroid/view/KeyEvent;)V
.end method

.method public abstract transferParent(Lorg/mozilla/gecko/IGeckoEditableParent;)V
.end method
