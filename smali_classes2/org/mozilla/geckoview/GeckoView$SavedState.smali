.class Lorg/mozilla/geckoview/GeckoView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mozilla/geckoview/GeckoView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final session:Lorg/mozilla/geckoview/GeckoSession;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/geckoview/GeckoView$SavedState$1;

    invoke-direct {v0}, Lorg/mozilla/geckoview/GeckoView$SavedState$1;-><init>()V

    sput-object v0, Lorg/mozilla/geckoview/GeckoView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/mozilla/geckoview/GeckoSession;

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoView$SavedState;->session:Lorg/mozilla/geckoview/GeckoSession;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoView$SavedState;->session:Lorg/mozilla/geckoview/GeckoSession;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$SavedState;->session:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
