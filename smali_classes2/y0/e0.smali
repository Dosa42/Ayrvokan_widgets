.class public final Ly0/e0;
.super Lz0/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ly0/e0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/os/Bundle;

.field public final b:[Lv0/c;

.field public final c:I

.field public final d:Ly0/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/media/a;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Landroid/support/v4/media/a;-><init>(I)V

    sput-object v0, Ly0/e0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;[Lv0/c;ILy0/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz0/a;-><init>()V

    iput-object p1, p0, Ly0/e0;->a:Landroid/os/Bundle;

    iput-object p2, p0, Ly0/e0;->b:[Lv0/c;

    iput p3, p0, Ly0/e0;->c:I

    iput-object p4, p0, Ly0/e0;->d:Ly0/d;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    const/16 v0, 0x4f45

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/i0;->x0(Landroid/os/Parcel;I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Ly0/e0;->a:Landroid/os/Bundle;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x1

    .line 13
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/i0;->x0(Landroid/os/Parcel;I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/i0;->z0(Landroid/os/Parcel;I)V

    .line 21
    .line 22
    .line 23
    :goto_0
    const/4 v1, 0x2

    .line 24
    iget-object v2, p0, Ly0/e0;->b:[Lv0/c;

    .line 25
    .line 26
    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/play_billing/i0;->v0(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    iget v2, p0, Ly0/e0;->c:I

    .line 31
    .line 32
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/play_billing/i0;->s0(Landroid/os/Parcel;II)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    iget-object v2, p0, Ly0/e0;->d:Ly0/d;

    .line 37
    .line 38
    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/play_billing/i0;->t0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/i0;->z0(Landroid/os/Parcel;I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
