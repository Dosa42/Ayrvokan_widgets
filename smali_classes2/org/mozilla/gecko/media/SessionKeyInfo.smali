.class public final Lorg/mozilla/gecko/media/SessionKeyInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mozilla/gecko/media/SessionKeyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public keyId:[B
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public status:I
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/gecko/media/SessionKeyInfo$1;

    invoke-direct {v0}, Lorg/mozilla/gecko/media/SessionKeyInfo$1;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/media/SessionKeyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/gecko/media/SessionKeyInfo;->keyId:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/mozilla/gecko/media/SessionKeyInfo;->status:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lorg/mozilla/gecko/media/SessionKeyInfo$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/SessionKeyInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/media/SessionKeyInfo;->keyId:[B

    iput p2, p0, Lorg/mozilla/gecko/media/SessionKeyInfo;->status:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lorg/mozilla/gecko/media/SessionKeyInfo;->keyId:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget p2, p0, Lorg/mozilla/gecko/media/SessionKeyInfo;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
