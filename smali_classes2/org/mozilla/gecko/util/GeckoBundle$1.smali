.class final Lorg/mozilla/gecko/util/GeckoBundle$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/util/GeckoBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/mozilla/gecko/util/GeckoBundle;",
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
    invoke-virtual {p0, p1}, Lorg/mozilla/gecko/util/GeckoBundle$1;->createFromParcel(Landroid/os/Parcel;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/mozilla/gecko/util/GeckoBundle;
    .locals 2

    .line 2
    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mozilla/gecko/util/GeckoBundle$1;->newArray(I)[Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/mozilla/gecko/util/GeckoBundle;
    .locals 0

    .line 2
    new-array p1, p1, [Lorg/mozilla/gecko/util/GeckoBundle;

    return-object p1
.end method
