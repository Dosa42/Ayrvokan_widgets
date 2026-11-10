.class public abstract Lorg/mozilla/gecko/IGeckoEditableChild$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/IGeckoEditableChild;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/IGeckoEditableChild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/IGeckoEditableChild$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.mozilla.gecko.IGeckoEditableChild"

.field static final TRANSACTION_onImeAddCompositionRange:I = 0x5

.field static final TRANSACTION_onImeReplaceText:I = 0x4

.field static final TRANSACTION_onImeRequestCommit:I = 0x8

.field static final TRANSACTION_onImeRequestCursorUpdates:I = 0x7

.field static final TRANSACTION_onImeSynchronize:I = 0x3

.field static final TRANSACTION_onImeUpdateComposition:I = 0x6

.field static final TRANSACTION_onKeyEvent:I = 0x2

.field static final TRANSACTION_transferParent:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.mozilla.gecko.IGeckoEditableChild"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/mozilla/gecko/IGeckoEditableChild;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "org.mozilla.gecko.IGeckoEditableChild"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/mozilla/gecko/IGeckoEditableChild;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/mozilla/gecko/IGeckoEditableChild;

    return-object v0

    :cond_1
    new-instance v0, Lorg/mozilla/gecko/IGeckoEditableChild$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/mozilla/gecko/IGeckoEditableChild$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lorg/mozilla/gecko/IGeckoEditableChild;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/IGeckoEditableChild$Stub$Proxy;->sDefaultImpl:Lorg/mozilla/gecko/IGeckoEditableChild;

    return-object v0
.end method

.method public static setDefaultImpl(Lorg/mozilla/gecko/IGeckoEditableChild;)Z
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/IGeckoEditableChild$Stub$Proxy;->sDefaultImpl:Lorg/mozilla/gecko/IGeckoEditableChild;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lorg/mozilla/gecko/IGeckoEditableChild$Stub$Proxy;->sDefaultImpl:Lorg/mozilla/gecko/IGeckoEditableChild;

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
    .locals 17

    move-object/from16 v13, p0

    move/from16 v0, p1

    move-object/from16 v1, p2

    const v2, 0x5f4e5446

    const/4 v14, 0x1

    const-string v3, "org.mozilla.gecko.IGeckoEditableChild"

    if-eq v0, v2, :cond_3

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Lorg/mozilla/gecko/IGeckoEditableChild;->onImeRequestCommit()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-interface {v13, v0}, Lorg/mozilla/gecko/IGeckoEditableChild;->onImeRequestCursorUpdates(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-interface {v13, v0, v2, v1}, Lorg/mozilla/gecko/IGeckoEditableChild;->onImeUpdateComposition(III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v8, v14

    goto :goto_0

    :cond_0
    move v8, v2

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    invoke-interface/range {v0 .. v9}, Lorg/mozilla/gecko/IGeckoEditableChild;->onImeAddCompositionRange(IIIIIZIII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v0, v2, v1}, Lorg/mozilla/gecko/IGeckoEditableChild;->onImeReplaceText(IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Lorg/mozilla/gecko/IGeckoEditableChild;->onImeSynchronize()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v15, v14

    goto :goto_1

    :cond_1
    move v15, v2

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move-wide v6, v8

    move v8, v10

    move v9, v11

    move v10, v12

    move v11, v15

    move-object/from16 v12, v16

    invoke-interface/range {v0 .. v12}, Lorg/mozilla/gecko/IGeckoEditableChild;->onKeyEvent(IIIIIJIIIZLandroid/view/KeyEvent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/gecko/IGeckoEditableParent$Stub;->asInterface(Landroid/os/IBinder;)Lorg/mozilla/gecko/IGeckoEditableParent;

    move-result-object v0

    invoke-interface {v13, v0}, Lorg/mozilla/gecko/IGeckoEditableChild;->transferParent(Lorg/mozilla/gecko/IGeckoEditableParent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :cond_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
