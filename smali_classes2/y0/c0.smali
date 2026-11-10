.class public final Ly0/c0;
.super Ly0/v;
.source "SourceFile"


# instance fields
.field public final g:Landroid/os/IBinder;

.field public final synthetic h:Ly0/f;


# direct methods
.method public constructor <init>(Ly0/f;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly0/c0;->h:Ly0/f;

    invoke-direct {p0, p1, p2, p4}, Ly0/v;-><init>(Ly0/f;ILandroid/os/Bundle;)V

    iput-object p3, p0, Ly0/c0;->g:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final a(Lv0/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly0/c0;->h:Ly0/f;

    .line 2
    .line 3
    iget-object v0, v0, Ly0/f;->o:Ll0/c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Ll0/c;->f:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lx0/h;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lx0/h;->a(Lv0/a;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final b()Z
    .locals 5

    .line 1
    iget-object v0, p0, Ly0/c0;->g:Landroid/os/IBinder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->l(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    iget-object v3, p0, Ly0/c0;->h:Ly0/f;

    .line 12
    .line 13
    invoke-virtual {v3}, Ly0/f;->m()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3}, Ly0/f;->m()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    return v1

    .line 27
    :cond_0
    invoke-virtual {v3, v0}, Ly0/f;->i(Landroid/os/IBinder;)Landroid/os/IInterface;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    const/4 v4, 0x4

    .line 35
    invoke-static {v3, v2, v4, v0}, Ly0/f;->r(Ly0/f;IILandroid/os/IInterface;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    const/4 v2, 0x3

    .line 42
    invoke-static {v3, v2, v4, v0}, Ly0/f;->r(Ly0/f;IILandroid/os/IInterface;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    :cond_1
    const/4 v0, 0x0

    .line 49
    iput-object v0, v3, Ly0/f;->s:Lv0/a;

    .line 50
    .line 51
    iget-object v0, v3, Ly0/f;->n:Ll0/c;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, v0, Ll0/c;->f:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Lx0/c;

    .line 58
    .line 59
    invoke-interface {v0}, Lx0/c;->c()V

    .line 60
    .line 61
    .line 62
    :cond_2
    const/4 v0, 0x1

    .line 63
    return v0

    .line 64
    :catch_0
    :cond_3
    return v1
.end method
