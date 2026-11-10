.class Lorg/mozilla/geckoview/ParcelableUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readBoolean(Landroid/os/Parcel;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static writeBoolean(Landroid/os/Parcel;Z)V
    .locals 0

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
