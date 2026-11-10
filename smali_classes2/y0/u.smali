.class public final Ly0/u;
.super Ld1/d;
.source "SourceFile"


# static fields
.field public static final c:Ly0/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ly0/u;

    invoke-direct {v0}, Ly0/u;-><init>()V

    sput-object v0, Ly0/u;->c:Ly0/u;

    return-void
.end method

.method public static c(Landroid/content/Context;II)Landroid/view/View;
    .locals 4

    .line 1
    sget-object v0, Ly0/u;->c:Ly0/u;

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ly0/t;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v1, v2, p1, p2, v3}, Ly0/t;-><init>(III[Lcom/google/android/gms/common/api/Scope;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ld1/b;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Ld1/b;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ld1/d;->b(Landroid/content/Context;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ly0/q;

    .line 20
    .line 21
    invoke-virtual {p0, v2, v1}, Ly0/q;->a(Ld1/b;Ly0/t;)Ld1/a;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Ld1/b;->b(Ld1/a;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    return-object p0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    new-instance v0, Ld1/c;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v2, "Could not get button with size "

    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, " and color "

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {v0, p1, p0}, Ld1/c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 58
    .line 59
    .line 60
    throw v0
.end method


# virtual methods
.method public final synthetic a(Landroid/os/IBinder;)Ly0/q;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.ISignInButtonCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Ly0/q;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Ly0/q;

    goto :goto_0

    :cond_1
    new-instance v0, Ly0/q;

    invoke-direct {v0, p1}, Ly0/q;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
