.class public Lorg/mozilla/geckoview/GeckoSession$SessionState;
.super Ljava/util/AbstractSequentialList;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryList;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;,
        Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSequentialList<",
        "Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryItem;",
        ">;",
        "Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryList;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mozilla/geckoview/GeckoSession$SessionState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mState:Lorg/mozilla/gecko/util/GeckoBundle;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/geckoview/GeckoSession$SessionState$1;

    invoke-direct {v0}, Lorg/mozilla/geckoview/GeckoSession$SessionState$1;-><init>()V

    sput-object v0, Lorg/mozilla/geckoview/GeckoSession$SessionState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState;->mState:Lorg/mozilla/gecko/util/GeckoBundle;

    return-void
.end method

.method private constructor <init>(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-direct {v0, p1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState;->mState:Lorg/mozilla/gecko/util/GeckoBundle;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/geckoview/GeckoSession$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoSession$SessionState;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/geckoview/GeckoSession$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoSession$SessionState;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession$SessionState;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoSession$SessionState;->mState:Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-direct {v0, p1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState;->mState:Lorg/mozilla/gecko/util/GeckoBundle;

    return-void
.end method

.method public static synthetic access$1100(Lorg/mozilla/geckoview/GeckoSession$SessionState;)Lorg/mozilla/gecko/util/GeckoBundle;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState;->mState:Lorg/mozilla/gecko/util/GeckoBundle;

    return-object p0
.end method

.method public static synthetic access$600(Lorg/mozilla/geckoview/GeckoSession$SessionState;)[Lorg/mozilla/gecko/util/GeckoBundle;
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoSession$SessionState;->getHistoryEntries()[Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p0

    return-object p0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoSession$SessionState;
    .locals 2

    new-instance v0, Lorg/mozilla/geckoview/GeckoSession$SessionState;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/mozilla/gecko/util/GeckoBundle;->fromJSONObject(Lorg/json/JSONObject;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/GeckoSession$SessionState;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-object v0
.end method

.method private getHistory()Lorg/mozilla/gecko/util/GeckoBundle;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState;->mState:Lorg/mozilla/gecko/util/GeckoBundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "history"

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    return-object v0
.end method

.method private getHistoryEntries()[Lorg/mozilla/gecko/util/GeckoBundle;
    .locals 2

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoSession$SessionState;->getHistory()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "entries"

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundleArray(Ljava/lang/String;)[Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/mozilla/geckoview/GeckoSession$SessionState;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/mozilla/geckoview/GeckoSession$SessionState;

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState;->mState:Lorg/mozilla/gecko/util/GeckoBundle;

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoSession$SessionState;->mState:Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoSession$SessionState;->get(I)Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryItem;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryItem;
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoSession$SessionState;->getHistoryEntries()[Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    new-instance v1, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateItem;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    invoke-direct {v1, p0, p1, v0}, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateItem;-><init>(Lorg/mozilla/geckoview/GeckoSession$SessionState;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/geckoview/GeckoSession$1;)V

    return-object v1

    :cond_0
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method public getCurrentIndex()I
    .locals 3

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoSession$SessionState;->getHistory()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "index"

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "fromIdx"

    invoke-virtual {v0, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No history state exists."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState;->mState:Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-virtual {v0}, Lorg/mozilla/gecko/util/GeckoBundle;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/GeckoSession$SessionState;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, p1, v1}, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateIterator;-><init>(Lorg/mozilla/geckoview/GeckoSession$SessionState;Lorg/mozilla/geckoview/GeckoSession$SessionState;ILorg/mozilla/geckoview/GeckoSession$1;)V

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mozilla/gecko/util/GeckoBundle;->fromJSONObject(Lorg/json/JSONObject;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState;->mState:Lorg/mozilla/gecko/util/GeckoBundle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState;->mState:Lorg/mozilla/gecko/util/GeckoBundle;

    :goto_0
    return-void
.end method

.method public size()I
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoSession$SessionState;->getHistoryEntries()[Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState;->mState:Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lorg/mozilla/gecko/util/GeckoBundle;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method public updateSessionState(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "historychange"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    const-string v1, "scroll"

    invoke-virtual {p1, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v1

    const-string v2, "formdata"

    invoke-virtual {p1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState;->mState:Lorg/mozilla/gecko/util/GeckoBundle;

    const-string v4, "history"

    invoke-virtual {v3, v4, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->putBundle(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState;->mState:Lorg/mozilla/gecko/util/GeckoBundle;

    const-string v3, "scrolldata"

    invoke-virtual {v0, v3, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->putBundle(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState;->mState:Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-virtual {v0, v2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putBundle(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    :cond_3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession$SessionState;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
