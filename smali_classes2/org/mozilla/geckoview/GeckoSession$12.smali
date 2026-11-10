.class final Lorg/mozilla/geckoview/GeckoSession$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/mozilla/geckoview/GeckoSession;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoSession$12;->createFromParcel(Landroid/os/Parcel;)Lorg/mozilla/geckoview/GeckoSession;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/mozilla/geckoview/GeckoSession;
    .locals 1

    .line 2
    new-instance v0, Lorg/mozilla/geckoview/GeckoSession;

    invoke-direct {v0}, Lorg/mozilla/geckoview/GeckoSession;-><init>()V

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoSession;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoSession$12;->newArray(I)[Lorg/mozilla/geckoview/GeckoSession;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/mozilla/geckoview/GeckoSession;
    .locals 0

    .line 2
    new-array p1, p1, [Lorg/mozilla/geckoview/GeckoSession;

    return-object p1
.end method
