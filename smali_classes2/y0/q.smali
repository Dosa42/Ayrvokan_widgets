.class public final Ly0/q;
.super Le1/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    const-string v0, "com.google.android.gms.common.internal.ISignInButtonCreator"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Le1/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Ld1/b;Ly0/t;)Ld1/a;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Le1/a;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget v1, Le1/b;->a:I

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p2, v0, p1}, Ly0/t;->writeToParcel(Landroid/os/Parcel;I)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    :try_start_0
    iget-object v1, p0, Le1/a;->a:Landroid/os/IBinder;

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-interface {v1, v2, v0, p2, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    sget v0, Ld1/b;->b:I

    .line 44
    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    .line 50
    .line 51
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    instance-of v1, v0, Ld1/a;

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    move-object p1, v0

    .line 60
    check-cast p1, Ld1/a;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    new-instance v0, Ld1/e;

    .line 64
    .line 65
    invoke-direct {v0, p1}, Ld1/e;-><init>(Landroid/os/IBinder;)V

    .line 66
    .line 67
    .line 68
    move-object p1, v0

    .line 69
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 70
    .line 71
    .line 72
    return-object p1

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto :goto_1

    .line 75
    :catch_0
    move-exception p1

    .line 76
    :try_start_1
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 77
    .line 78
    .line 79
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 81
    .line 82
    .line 83
    throw p1
.end method
