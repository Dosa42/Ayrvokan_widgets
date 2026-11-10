.class public final Ln1/n;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ln1/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lorg/mozilla/geckoview/GeckoSession;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lv0/l;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lv0/l;-><init>(I)V

    sput-object v0, Ln1/n;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const-class v0, Ln1/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/mozilla/geckoview/GeckoSession;

    iput-object p1, p0, Ln1/n;->a:Lorg/mozilla/geckoview/GeckoSession;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iput-object p2, p0, Ln1/n;->a:Lorg/mozilla/geckoview/GeckoSession;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
