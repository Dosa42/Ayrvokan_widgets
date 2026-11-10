.class public Lorg/mozilla/gecko/IGeckoEditableChild$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/IGeckoEditableChild;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/IGeckoEditableChild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onImeAddCompositionRange(IIIIIZIII)V
    .locals 0

    return-void
.end method

.method public onImeReplaceText(IILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onImeRequestCommit()V
    .locals 0

    return-void
.end method

.method public onImeRequestCursorUpdates(I)V
    .locals 0

    return-void
.end method

.method public onImeSynchronize()V
    .locals 0

    return-void
.end method

.method public onImeUpdateComposition(III)V
    .locals 0

    return-void
.end method

.method public onKeyEvent(IIIIIJIIIZLandroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public transferParent(Lorg/mozilla/gecko/IGeckoEditableParent;)V
    .locals 0

    return-void
.end method
