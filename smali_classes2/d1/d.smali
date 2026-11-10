.class public abstract Ld1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ly0/q;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.google.android.gms.common.ui.SignInButtonCreatorImpl"

    iput-object v0, p0, Ld1/d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/os/IBinder;)Ly0/q;
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ld1/d;->b:Ly0/q;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/i0;->l(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lv0/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    :try_start_0
    const-string v0, "com.google.android.gms"

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :try_start_1
    iget-object v0, p0, Ld1/d;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/os/IBinder;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ld1/d;->a(Landroid/os/IBinder;)Ly0/q;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Ld1/d;->b:Ly0/q;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_1
    move-exception p1

    .line 45
    new-instance v0, Ld1/c;

    .line 46
    .line 47
    const-string v1, "Could not access creator."

    .line 48
    .line 49
    invoke-direct {v0, v1, p1}, Ld1/c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :catch_2
    move-exception p1

    .line 54
    new-instance v0, Ld1/c;

    .line 55
    .line 56
    const-string v1, "Could not instantiate creator."

    .line 57
    .line 58
    invoke-direct {v0, v1, p1}, Ld1/c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :catch_3
    move-exception p1

    .line 63
    new-instance v0, Ld1/c;

    .line 64
    .line 65
    const-string v1, "Could not load creator class."

    .line 66
    .line 67
    invoke-direct {v0, v1, p1}, Ld1/c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :cond_0
    new-instance p1, Ld1/c;

    .line 72
    .line 73
    invoke-direct {p1}, Ld1/c;-><init>()V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_1
    :goto_1
    iget-object p1, p0, Ld1/d;->b:Ly0/q;

    .line 78
    .line 79
    return-object p1
.end method
