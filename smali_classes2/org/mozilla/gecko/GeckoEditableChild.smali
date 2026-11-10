.class public final Lorg/mozilla/gecko/GeckoEditableChild;
.super Lorg/mozilla/gecko/mozglue/JNIObject;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/IGeckoEditableChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/GeckoEditableChild$RemoteChild;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FLAG_KEEP_CURRENT_COMPOSITION:I = 0x1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field private static final LOGTAG:Ljava/lang/String; = "GeckoEditableChild"

.field private static final NOTIFY_IME_TO_CANCEL_COMPOSITION:I = 0x9


# instance fields
.field private mCurrentTextLength:I

.field private final mEditableChild:Lorg/mozilla/gecko/IGeckoEditableChild;

.field private mEditableParent:Lorg/mozilla/gecko/IGeckoEditableParent;

.field private final mIsDefault:Z


# direct methods
.method private constructor <init>(Lorg/mozilla/gecko/IGeckoEditableParent;Z)V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-direct {p0}, Lorg/mozilla/gecko/mozglue/JNIObject;-><init>()V

    iput-boolean p2, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mIsDefault:Z

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const-class v0, Lorg/mozilla/gecko/IGeckoEditableParent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    if-eqz p2, :cond_0

    iput-object p0, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mEditableChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/mozilla/gecko/GeckoEditableChild$RemoteChild;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lorg/mozilla/gecko/GeckoEditableChild$RemoteChild;-><init>(Lorg/mozilla/gecko/GeckoEditableChild;Lorg/mozilla/gecko/GeckoEditableChild$1;)V

    iput-object p2, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mEditableChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/GeckoEditableChild;->setParent(Lorg/mozilla/gecko/IGeckoEditableParent;)V

    :cond_1
    return-void
.end method

.method private hasEditableParent()Z
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mEditableParent:Lorg/mozilla/gecko/IGeckoEditableParent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private notifyIME(I)V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-direct {p0}, Lorg/mozilla/gecko/GeckoEditableChild;->hasEditableParent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mEditableParent:Lorg/mozilla/gecko/IGeckoEditableParent;

    iget-object v1, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mEditableChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    invoke-interface {v0, v1, p1}, Lorg/mozilla/gecko/IGeckoEditableParent;->notifyIME(Lorg/mozilla/gecko/IGeckoEditableChild;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private notifyIMEContext(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-direct {p0}, Lorg/mozilla/gecko/GeckoEditableChild;->hasEditableParent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mEditableParent:Lorg/mozilla/gecko/IGeckoEditableParent;

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mEditableChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lorg/mozilla/gecko/IGeckoEditableParent;->notifyIMEContext(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private onDefaultKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-direct {p0}, Lorg/mozilla/gecko/GeckoEditableChild;->hasEditableParent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mEditableParent:Lorg/mozilla/gecko/IGeckoEditableParent;

    iget-object v1, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mEditableChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/mozilla/gecko/IGeckoEditableParent;->onDefaultKeyEvent(Landroid/os/IBinder;Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private onSelectionChange(II)V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
        exceptionMode = "ignore"
    .end annotation

    invoke-direct {p0}, Lorg/mozilla/gecko/GeckoEditableChild;->hasEditableParent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mCurrentTextLength:I

    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mEditableParent:Lorg/mozilla/gecko/IGeckoEditableParent;

    iget-object v1, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mEditableChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lorg/mozilla/gecko/IGeckoEditableParent;->onSelectionChange(Landroid/os/IBinder;II)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid selection notification range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onTextChange(Ljava/lang/CharSequence;III)V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
        exceptionMode = "ignore"
    .end annotation

    invoke-direct {p0}, Lorg/mozilla/gecko/GeckoEditableChild;->hasEditableParent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_4

    if-gt p2, p3, :cond_4

    iget v0, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mCurrentTextLength:I

    if-le p3, v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, p3

    :goto_0
    if-gt p3, v0, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr v0, p2

    if-ne p4, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "newEnd does not match text"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget p4, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mCurrentTextLength:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr v0, p2

    sub-int/2addr v0, v1

    add-int/2addr v0, p4

    iput v0, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mCurrentTextLength:I

    iget-object p4, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mEditableParent:Lorg/mozilla/gecko/IGeckoEditableParent;

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mEditableChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p4, v0, p1, p2, p3}, Lorg/mozilla/gecko/IGeckoEditableParent;->onTextChange(Landroid/os/IBinder;Ljava/lang/CharSequence;II)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid text notification range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setParent(Lorg/mozilla/gecko/IGeckoEditableParent;)V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    iput-object p1, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mEditableParent:Lorg/mozilla/gecko/IGeckoEditableParent;

    iget-boolean v0, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mIsDefault:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mEditableChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    invoke-interface {p1, v0}, Lorg/mozilla/gecko/IGeckoEditableParent;->setDefaultChild(Lorg/mozilla/gecko/IGeckoEditableChild;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private updateCompositionRects([Landroid/graphics/RectF;)V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-direct {p0}, Lorg/mozilla/gecko/GeckoEditableChild;->hasEditableParent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mEditableParent:Lorg/mozilla/gecko/IGeckoEditableParent;

    iget-object v1, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mEditableChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/mozilla/gecko/IGeckoEditableParent;->updateCompositionRects(Landroid/os/IBinder;[Landroid/graphics/RectF;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mEditableChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    if-eq v0, p0, :cond_0

    :goto_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/gecko/GeckoEditableChild;->hasEditableParent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoEditableChild;->mEditableParent:Lorg/mozilla/gecko/IGeckoEditableParent;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public disposeNative()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public native onImeAddCompositionRange(IIIIIZIII)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "proxy"
    .end annotation
.end method

.method public native onImeReplaceText(IILjava/lang/String;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "proxy"
    .end annotation
.end method

.method public native onImeRequestCommit()V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "proxy"
    .end annotation
.end method

.method public native onImeRequestCursorUpdates(I)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "proxy"
    .end annotation
.end method

.method public native onImeSynchronize()V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "proxy"
    .end annotation
.end method

.method public native onImeUpdateComposition(III)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "proxy"
    .end annotation
.end method

.method public native onKeyEvent(IIIIIJIIIZLandroid/view/KeyEvent;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "proxy"
    .end annotation
.end method

.method public native transferParent(Lorg/mozilla/gecko/IGeckoEditableParent;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "proxy"
    .end annotation
.end method
