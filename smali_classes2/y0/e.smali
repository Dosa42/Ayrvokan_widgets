.class public final Ly0/e;
.super Lz0/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ly0/e;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:[Lcom/google/android/gms/common/api/Scope;

.field public static final p:[Lv0/c;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public d:Ljava/lang/String;

.field public e:Landroid/os/IBinder;

.field public f:[Lcom/google/android/gms/common/api/Scope;

.field public g:Landroid/os/Bundle;

.field public h:Landroid/accounts/Account;

.field public i:[Lv0/c;

.field public j:[Lv0/c;

.field public final k:Z

.field public final l:I

.field public m:Z

.field public final n:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/media/a;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Landroid/support/v4/media/a;-><init>(I)V

    sput-object v0, Ly0/e;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/gms/common/api/Scope;

    sput-object v1, Ly0/e;->o:[Lcom/google/android/gms/common/api/Scope;

    new-array v0, v0, [Lv0/c;

    sput-object v0, Ly0/e;->p:[Lv0/c;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lv0/c;[Lv0/c;ZIZLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lz0/a;-><init>()V

    if-nez p6, :cond_0

    sget-object p6, Ly0/e;->o:[Lcom/google/android/gms/common/api/Scope;

    :cond_0
    if-nez p7, :cond_1

    new-instance p7, Landroid/os/Bundle;

    invoke-direct {p7}, Landroid/os/Bundle;-><init>()V

    :cond_1
    sget-object v0, Ly0/e;->p:[Lv0/c;

    if-nez p9, :cond_2

    move-object p9, v0

    :cond_2
    if-nez p10, :cond_3

    move-object p10, v0

    :cond_3
    iput p1, p0, Ly0/e;->a:I

    iput p2, p0, Ly0/e;->b:I

    iput p3, p0, Ly0/e;->c:I

    const-string p2, "com.google.android.gms"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    iput-object p2, p0, Ly0/e;->d:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iput-object p4, p0, Ly0/e;->d:Ljava/lang/String;

    :goto_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_7

    const/4 p1, 0x0

    if-eqz p5, :cond_6

    sget p2, Ly0/a;->a:I

    const-string p2, "com.google.android.gms.common.internal.IAccountAccessor"

    .line 1
    invoke-interface {p5, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p3, p2, Ly0/g;

    if-eqz p3, :cond_5

    check-cast p2, Ly0/g;

    goto :goto_1

    :cond_5
    new-instance p2, Ly0/k0;

    invoke-direct {p2, p5}, Ly0/k0;-><init>(Landroid/os/IBinder;)V

    :goto_1
    if-eqz p2, :cond_6

    .line 2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    :try_start_0
    check-cast p2, Ly0/k0;

    invoke-virtual {p2}, Ly0/k0;->a()Landroid/accounts/Account;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :catch_0
    :goto_2
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3
    :cond_6
    iput-object p1, p0, Ly0/e;->h:Landroid/accounts/Account;

    goto :goto_3

    :cond_7
    iput-object p5, p0, Ly0/e;->e:Landroid/os/IBinder;

    iput-object p8, p0, Ly0/e;->h:Landroid/accounts/Account;

    :goto_3
    iput-object p6, p0, Ly0/e;->f:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Ly0/e;->g:Landroid/os/Bundle;

    iput-object p9, p0, Ly0/e;->i:[Lv0/c;

    iput-object p10, p0, Ly0/e;->j:[Lv0/c;

    iput-boolean p11, p0, Ly0/e;->k:Z

    iput p12, p0, Ly0/e;->l:I

    iput-boolean p13, p0, Ly0/e;->m:Z

    iput-object p14, p0, Ly0/e;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/support/v4/media/a;->a(Ly0/e;Landroid/os/Parcel;I)V

    return-void
.end method
