.class public final synthetic Lf0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lf0/b;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lf0/b;ILjava/lang/String;Ljava/lang/String;Lf0/f;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/n;->a:Lf0/b;

    iput p2, p0, Lf0/n;->b:I

    iput-object p3, p0, Lf0/n;->c:Ljava/lang/String;

    iput-object p4, p0, Lf0/n;->d:Ljava/lang/String;

    iput-object p6, p0, Lf0/n;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lf0/n;->a:Lf0/b;

    .line 2
    .line 3
    iget v1, p0, Lf0/n;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lf0/n;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lf0/n;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lf0/n;->e:Landroid/os/Bundle;

    .line 10
    .line 11
    iget-object v5, v0, Lf0/b;->g:Lcom/google/android/gms/internal/play_billing/k3;

    .line 12
    .line 13
    iget-object v0, v0, Lf0/b;->e:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v5, Lcom/google/android/gms/internal/play_billing/i3;

    .line 20
    .line 21
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/i3;->b()Landroid/os/Parcel;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget v0, Lcom/google/android/gms/internal/play_billing/l3;->a:I

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 49
    .line 50
    .line 51
    const/16 v0, 0x8

    .line 52
    .line 53
    invoke-virtual {v5, v6, v0}, Lcom/google/android/gms/internal/play_billing/i3;->c(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 58
    .line 59
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/l3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroid/os/Bundle;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 66
    .line 67
    .line 68
    return-object v1
.end method
