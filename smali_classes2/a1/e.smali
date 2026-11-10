.class public final La1/e;
.super Ly0/f;
.source "SourceFile"


# instance fields
.field public final z:Ly0/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ly0/c;Ly0/l;Lx0/c;Lx0/h;)V
    .locals 7

    .line 1
    const/16 v3, 0x10e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Ly0/f;-><init>(Landroid/content/Context;Landroid/os/Looper;ILy0/c;Lx0/c;Lx0/h;)V

    iput-object p4, p0, La1/e;->z:Ly0/l;

    return-void
.end method


# virtual methods
.method public final h()I
    .locals 1

    .line 1
    const v0, 0xc1fa340

    return v0
.end method

.method public final synthetic i(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, La1/a;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, La1/a;

    goto :goto_0

    :cond_1
    new-instance v0, La1/a;

    invoke-direct {v0, p1}, La1/a;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final j()[Lv0/c;
    .locals 1

    .line 1
    sget-object v0, Lc1/b;->i:[Lv0/c;

    return-object v0
.end method

.method public final k()Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, La1/e;->z:Ly0/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Ly0/l;->a:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v2, "api"

    .line 16
    .line 17
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-object v1
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.common.telemetry.service.START"

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
