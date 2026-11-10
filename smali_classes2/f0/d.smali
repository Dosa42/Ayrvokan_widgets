.class public final Lf0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lf0/d;->a:Z

    return-void
.end method

.method public constructor <init>(Lf0/d;[Lv0/c;ZI)V
    .locals 0

    iput-object p1, p0, Lf0/d;->c:Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lf0/d;->b:Ljava/lang/Object;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lf0/d;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Ly0/f;Li1/b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf0/d;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf0/d;

    .line 4
    .line 5
    iget-object v0, v0, Lf0/d;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lh/a;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    check-cast p1, La1/e;

    .line 13
    .line 14
    invoke-virtual {p1}, Ly0/f;->l()Landroid/os/IInterface;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, La1/a;

    .line 19
    .line 20
    iget-object v0, v0, Lh/a;->g:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ly0/k;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p1, Le1/a;->b:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget v2, Le1/b;->a:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    const/4 v3, 0x0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1, v3}, Ly0/k;->writeToParcel(Landroid/os/Parcel;I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    :try_start_0
    iget-object p1, p1, Le1/a;->a:Landroid/os/IBinder;

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-interface {p1, v2, v1, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 56
    .line 57
    .line 58
    iget-object p1, p2, Li1/b;->a:Li1/f;

    .line 59
    .line 60
    iget-object p2, p1, Li1/f;->a:Ljava/lang/Object;

    .line 61
    .line 62
    monitor-enter p2

    .line 63
    :try_start_1
    invoke-virtual {p1}, Li1/f;->a()V

    .line 64
    .line 65
    .line 66
    iput-boolean v2, p1, Li1/f;->c:Z

    .line 67
    .line 68
    iput-object v0, p1, Li1/f;->d:Ljava/lang/Object;

    .line 69
    .line 70
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    iget-object p2, p1, Li1/f;->b:Ly0/j0;

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Ly0/j0;->f(Li1/f;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    throw p1

    .line 80
    :catchall_1
    move-exception p1

    .line 81
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 82
    .line 83
    .line 84
    throw p1
.end method
