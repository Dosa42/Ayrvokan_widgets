.class public Lorg/mozilla/gecko/IGeckoEditableParent$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/IGeckoEditableParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/IGeckoEditableParent;
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

.method public notifyIME(Lorg/mozilla/gecko/IGeckoEditableChild;I)V
    .locals 0

    return-void
.end method

.method public notifyIMEContext(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onDefaultKeyEvent(Landroid/os/IBinder;Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public onSelectionChange(Landroid/os/IBinder;II)V
    .locals 0

    return-void
.end method

.method public onTextChange(Landroid/os/IBinder;Ljava/lang/CharSequence;II)V
    .locals 0

    return-void
.end method

.method public setDefaultChild(Lorg/mozilla/gecko/IGeckoEditableChild;)V
    .locals 0

    return-void
.end method

.method public updateCompositionRects(Landroid/os/IBinder;[Landroid/graphics/RectF;)V
    .locals 0

    return-void
.end method
