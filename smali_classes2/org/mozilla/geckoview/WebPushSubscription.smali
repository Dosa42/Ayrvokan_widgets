.class public Lorg/mozilla/geckoview/WebPushSubscription;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mozilla/geckoview/WebPushSubscription;",
            ">;"
        }
    .end annotation
.end field

.field private static final P256_PUBLIC_KEY_LENGTH:I = 0x41


# instance fields
.field public final appServerKey:[B

.field public final authSecret:[B

.field public final browserPublicKey:[B

.field public final endpoint:Ljava/lang/String;

.field public final scope:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/geckoview/WebPushSubscription$1;

    invoke-direct {v0}, Lorg/mozilla/geckoview/WebPushSubscription$1;-><init>()V

    sput-object v0, Lorg/mozilla/geckoview/WebPushSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/WebPushSubscription;->scope:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/WebPushSubscription;->endpoint:Ljava/lang/String;

    invoke-static {p1}, Lorg/mozilla/geckoview/ParcelableUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    const/16 v1, 0x41

    if-eqz v0, :cond_0

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/mozilla/geckoview/WebPushSubscription;->appServerKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/geckoview/WebPushSubscription;->appServerKey:[B

    :goto_0
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/mozilla/geckoview/WebPushSubscription;->browserPublicKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/mozilla/geckoview/WebPushSubscription;->authSecret:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lorg/mozilla/geckoview/WebPushSubscription$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/WebPushSubscription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B[B[B)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/WebPushSubscription;->scope:Ljava/lang/String;

    iput-object p2, p0, Lorg/mozilla/geckoview/WebPushSubscription;->endpoint:Ljava/lang/String;

    iput-object p3, p0, Lorg/mozilla/geckoview/WebPushSubscription;->appServerKey:[B

    iput-object p4, p0, Lorg/mozilla/geckoview/WebPushSubscription;->browserPublicKey:[B

    iput-object p5, p0, Lorg/mozilla/geckoview/WebPushSubscription;->authSecret:[B

    const/16 p1, 0x41

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p3, :cond_2

    array-length v0, p3

    if-ne v0, p1, :cond_1

    invoke-static {p3, p4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "appServerKey and browserPublicKey must differ"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "appServerKey should be %d bytes"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    array-length p3, p4

    if-ne p3, p1, :cond_4

    array-length p1, p5

    const/16 p2, 0x10

    if-ne p1, p2, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "authSecret must be 128 bits"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "browserPublicKey should be %d bytes"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toBundle()Lorg/mozilla/gecko/util/GeckoBundle;
    .locals 3

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v1, "scope"

    iget-object v2, p0, Lorg/mozilla/geckoview/WebPushSubscription;->scope:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "endpoint"

    iget-object v2, p0, Lorg/mozilla/geckoview/WebPushSubscription;->endpoint:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/geckoview/WebPushSubscription;->appServerKey:[B

    if-eqz v1, :cond_0

    const-string v2, "appServerKey"

    invoke-static {v1}, Lorg/mozilla/geckoview/Base64Utils;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/mozilla/geckoview/WebPushSubscription;->browserPublicKey:[B

    invoke-static {v1}, Lorg/mozilla/geckoview/Base64Utils;->encode([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "browserPublicKey"

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/geckoview/WebPushSubscription;->authSecret:[B

    invoke-static {v1}, Lorg/mozilla/geckoview/Base64Utils;->encode([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "authSecret"

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lorg/mozilla/geckoview/WebPushSubscription;->scope:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/mozilla/geckoview/WebPushSubscription;->endpoint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/mozilla/geckoview/WebPushSubscription;->appServerKey:[B

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lorg/mozilla/geckoview/ParcelableUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    iget-object p2, p0, Lorg/mozilla/geckoview/WebPushSubscription;->appServerKey:[B

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_1
    iget-object p2, p0, Lorg/mozilla/geckoview/WebPushSubscription;->browserPublicKey:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object p2, p0, Lorg/mozilla/geckoview/WebPushSubscription;->authSecret:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
