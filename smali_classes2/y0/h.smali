.class public final Ly0/h;
.super Lz0/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ly0/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:J

.field public final e:J

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/media/a;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Landroid/support/v4/media/a;-><init>(I)V

    sput-object v0, Ly0/h;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz0/a;-><init>()V

    iput p1, p0, Ly0/h;->a:I

    iput p2, p0, Ly0/h;->b:I

    iput p3, p0, Ly0/h;->c:I

    iput-wide p4, p0, Ly0/h;->d:J

    iput-wide p6, p0, Ly0/h;->e:J

    iput-object p8, p0, Ly0/h;->f:Ljava/lang/String;

    iput-object p9, p0, Ly0/h;->g:Ljava/lang/String;

    iput p10, p0, Ly0/h;->h:I

    iput p11, p0, Ly0/h;->i:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    const/16 p2, 0x4f45

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/i0;->x0(Landroid/os/Parcel;I)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x1

    .line 8
    iget v1, p0, Ly0/h;->a:I

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/i0;->s0(Landroid/os/Parcel;II)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    iget v1, p0, Ly0/h;->b:I

    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/i0;->s0(Landroid/os/Parcel;II)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    iget v1, p0, Ly0/h;->c:I

    .line 21
    .line 22
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/i0;->s0(Landroid/os/Parcel;II)V

    .line 23
    .line 24
    .line 25
    const v0, 0x80004

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget-wide v0, p0, Ly0/h;->d:J

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    .line 35
    .line 36
    const v0, 0x80005

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    .line 41
    .line 42
    iget-wide v0, p0, Ly0/h;->e:J

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x6

    .line 48
    iget-object v1, p0, Ly0/h;->f:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/i0;->u0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x7

    .line 54
    iget-object v1, p0, Ly0/h;->g:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/i0;->u0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/16 v0, 0x8

    .line 60
    .line 61
    iget v1, p0, Ly0/h;->h:I

    .line 62
    .line 63
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/i0;->s0(Landroid/os/Parcel;II)V

    .line 64
    .line 65
    .line 66
    const/16 v0, 0x9

    .line 67
    .line 68
    iget v1, p0, Ly0/h;->i:I

    .line 69
    .line 70
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/i0;->s0(Landroid/os/Parcel;II)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/i0;->z0(Landroid/os/Parcel;I)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
