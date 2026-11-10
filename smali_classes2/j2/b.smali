.class public final Lj2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lj2/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:[Lj2/a;

.field public b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lv0/l;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lv0/l;-><init>(I)V

    sput-object v0, Lj2/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj2/b;->c:Ljava/lang/String;

    sget-object v0, Lj2/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    sget v0, Lb3/n;->a:I

    check-cast p1, [Lj2/a;

    iput-object p1, p0, Lj2/b;->a:[Lj2/a;

    array-length p1, p1

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Z[Lj2/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2/b;->c:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p3}, [Lj2/a;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, [Lj2/a;

    :cond_0
    iput-object p3, p0, Lj2/b;->a:[Lj2/a;

    array-length p1, p3

    invoke-static {p3, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lj2/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lj2/b;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj2/b;

    const/4 v1, 0x0

    iget-object v2, p0, Lj2/b;->a:[Lj2/a;

    invoke-direct {v0, p1, v1, v2}, Lj2/b;-><init>(Ljava/lang/String;Z[Lj2/a;)V

    return-object v0
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lj2/a;

    .line 2
    .line 3
    check-cast p2, Lj2/a;

    .line 4
    .line 5
    sget-object v0, Lf2/d;->a:Ljava/util/UUID;

    .line 6
    .line 7
    iget-object v1, p1, Lj2/a;->b:Ljava/util/UUID;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object p1, p2, Lj2/a;->b:Ljava/util/UUID;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p2, p2, Lj2/a;->b:Ljava/util/UUID;

    .line 28
    .line 29
    iget-object p1, p1, Lj2/a;->b:Ljava/util/UUID;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    :goto_0
    return p1
.end method

.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lj2/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lj2/b;

    iget-object v2, p0, Lj2/b;->c:Ljava/lang/String;

    iget-object v3, p1, Lj2/b;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lj2/b;->a:[Lj2/a;

    iget-object p1, p1, Lj2/b;->a:[Lj2/a;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lj2/b;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lj2/b;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lj2/b;->a:[Lj2/a;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lj2/b;->b:I

    :cond_1
    iget v0, p0, Lj2/b;->b:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lj2/b;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lj2/b;->a:[Lj2/a;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
