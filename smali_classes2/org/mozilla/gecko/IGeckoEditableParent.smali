.class public interface abstract Lorg/mozilla/gecko/IGeckoEditableParent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/IGeckoEditableParent$Stub;,
        Lorg/mozilla/gecko/IGeckoEditableParent$Default;
    }
.end annotation


# virtual methods
.method public abstract notifyIME(Lorg/mozilla/gecko/IGeckoEditableChild;I)V
.end method

.method public abstract notifyIMEContext(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onDefaultKeyEvent(Landroid/os/IBinder;Landroid/view/KeyEvent;)V
.end method

.method public abstract onSelectionChange(Landroid/os/IBinder;II)V
.end method

.method public abstract onTextChange(Landroid/os/IBinder;Ljava/lang/CharSequence;II)V
.end method

.method public abstract setDefaultChild(Lorg/mozilla/gecko/IGeckoEditableChild;)V
.end method

.method public abstract updateCompositionRects(Landroid/os/IBinder;[Landroid/graphics/RectF;)V
.end method
