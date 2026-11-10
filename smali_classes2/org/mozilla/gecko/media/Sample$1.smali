.class final Lorg/mozilla/gecko/media/Sample$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/Sample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/mozilla/gecko/media/Sample;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized obtainSample(Landroid/os/Parcel;)Lorg/mozilla/gecko/media/Sample;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/mozilla/gecko/media/Sample;->access$000()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/media/Sample;->access$100()Lorg/mozilla/gecko/media/Sample;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/gecko/media/Sample;->access$200(Lorg/mozilla/gecko/media/Sample;)Lorg/mozilla/gecko/media/Sample;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/gecko/media/Sample;->access$102(Lorg/mozilla/gecko/media/Sample;)Lorg/mozilla/gecko/media/Sample;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/mozilla/gecko/media/Sample;->access$202(Lorg/mozilla/gecko/media/Sample;Lorg/mozilla/gecko/media/Sample;)Lorg/mozilla/gecko/media/Sample;

    invoke-static {}, Lorg/mozilla/gecko/media/Sample;->access$010()I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mozilla/gecko/media/Sample;

    invoke-direct {v0}, Lorg/mozilla/gecko/media/Sample;-><init>()V

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/mozilla/gecko/media/Sample;->session:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lorg/mozilla/gecko/media/Sample;->bufferId:I

    invoke-static {v0, p1}, Lorg/mozilla/gecko/media/Sample;->access$300(Lorg/mozilla/gecko/media/Sample;Landroid/os/Parcel;)V

    invoke-static {v0, p1}, Lorg/mozilla/gecko/media/Sample;->access$400(Lorg/mozilla/gecko/media/Sample;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mozilla/gecko/media/Sample$1;->createFromParcel(Landroid/os/Parcel;)Lorg/mozilla/gecko/media/Sample;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/mozilla/gecko/media/Sample;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/Sample$1;->obtainSample(Landroid/os/Parcel;)Lorg/mozilla/gecko/media/Sample;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mozilla/gecko/media/Sample$1;->newArray(I)[Lorg/mozilla/gecko/media/Sample;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/mozilla/gecko/media/Sample;
    .locals 0

    .line 2
    new-array p1, p1, [Lorg/mozilla/gecko/media/Sample;

    return-object p1
.end method
