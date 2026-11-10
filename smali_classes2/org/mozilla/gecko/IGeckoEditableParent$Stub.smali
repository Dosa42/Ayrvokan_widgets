.class public abstract Lorg/mozilla/gecko/IGeckoEditableParent$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/IGeckoEditableParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/IGeckoEditableParent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/IGeckoEditableParent$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.mozilla.gecko.IGeckoEditableParent"

.field static final TRANSACTION_notifyIME:I = 0x2

.field static final TRANSACTION_notifyIMEContext:I = 0x3

.field static final TRANSACTION_onDefaultKeyEvent:I = 0x6

.field static final TRANSACTION_onSelectionChange:I = 0x4

.field static final TRANSACTION_onTextChange:I = 0x5

.field static final TRANSACTION_setDefaultChild:I = 0x1

.field static final TRANSACTION_updateCompositionRects:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.mozilla.gecko.IGeckoEditableParent"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/mozilla/gecko/IGeckoEditableParent;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "org.mozilla.gecko.IGeckoEditableParent"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/mozilla/gecko/IGeckoEditableParent;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/mozilla/gecko/IGeckoEditableParent;

    return-object v0

    :cond_1
    new-instance v0, Lorg/mozilla/gecko/IGeckoEditableParent$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/mozilla/gecko/IGeckoEditableParent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lorg/mozilla/gecko/IGeckoEditableParent;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/IGeckoEditableParent$Stub$Proxy;->sDefaultImpl:Lorg/mozilla/gecko/IGeckoEditableParent;

    return-object v0
.end method

.method public static setDefaultImpl(Lorg/mozilla/gecko/IGeckoEditableParent;)Z
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/IGeckoEditableParent$Stub$Proxy;->sDefaultImpl:Lorg/mozilla/gecko/IGeckoEditableParent;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lorg/mozilla/gecko/IGeckoEditableParent$Stub$Proxy;->sDefaultImpl:Lorg/mozilla/gecko/IGeckoEditableParent;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "org.mozilla.gecko.IGeckoEditableParent"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    sget-object p4, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/graphics/RectF;

    invoke-interface {p0, p1, p2}, Lorg/mozilla/gecko/IGeckoEditableParent;->updateCompositionRects(Landroid/os/IBinder;[Landroid/graphics/RectF;)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/view/KeyEvent;

    :cond_0
    invoke-interface {p0, p1, v0}, Lorg/mozilla/gecko/IGeckoEditableParent;->onDefaultKeyEvent(Landroid/os/IBinder;Landroid/view/KeyEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    sget-object p4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Ljava/lang/CharSequence;

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, v0, p4, p2}, Lorg/mozilla/gecko/IGeckoEditableParent;->onTextChange(Landroid/os/IBinder;Ljava/lang/CharSequence;II)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Lorg/mozilla/gecko/IGeckoEditableParent;->onSelectionChange(Landroid/os/IBinder;II)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v2, p0

    invoke-interface/range {v2 .. v8}, Lorg/mozilla/gecko/IGeckoEditableParent;->notifyIMEContext(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/gecko/IGeckoEditableChild$Stub;->asInterface(Landroid/os/IBinder;)Lorg/mozilla/gecko/IGeckoEditableChild;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lorg/mozilla/gecko/IGeckoEditableParent;->notifyIME(Lorg/mozilla/gecko/IGeckoEditableChild;I)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/gecko/IGeckoEditableChild$Stub;->asInterface(Landroid/os/IBinder;)Lorg/mozilla/gecko/IGeckoEditableChild;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/mozilla/gecko/IGeckoEditableParent;->setDefaultChild(Lorg/mozilla/gecko/IGeckoEditableChild;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
