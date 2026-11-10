.class final Lorg/mozilla/geckoview/GeckoSession$SessionState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession$SessionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/mozilla/geckoview/GeckoSession$SessionState;",
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
    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoSession$SessionState$1;->createFromParcel(Landroid/os/Parcel;)Lorg/mozilla/geckoview/GeckoSession$SessionState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/mozilla/geckoview/GeckoSession$SessionState;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/mozilla/gecko/util/GeckoBundle;->fromJSONObject(Lorg/json/JSONObject;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    :goto_0
    new-instance v1, Lorg/mozilla/geckoview/GeckoSession$SessionState;

    invoke-direct {v1, p1, v0}, Lorg/mozilla/geckoview/GeckoSession$SessionState;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/geckoview/GeckoSession$1;)V

    return-object v1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoSession$SessionState$1;->newArray(I)[Lorg/mozilla/geckoview/GeckoSession$SessionState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/mozilla/geckoview/GeckoSession$SessionState;
    .locals 0

    .line 2
    new-array p1, p1, [Lorg/mozilla/geckoview/GeckoSession$SessionState;

    return-object p1
.end method
