.class public final Lv0/k;
.super Le1/d;
.source "SourceFile"


# instance fields
.field public final c:Landroid/content/Context;

.field public final synthetic d:Lv0/d;


# direct methods
.method public constructor <init>(Lv0/d;Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lv0/k;->d:Lv0/d;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le1/d;-><init>(Landroid/os/Looper;I)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lv0/k;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lv0/k;->d:Lv0/d;

    .line 8
    .line 9
    iget-object v1, p0, Lv0/k;->c:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lv0/d;->c(Landroid/content/Context;)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    sget-object v3, Lv0/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eq v2, v0, :cond_1

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    if-eq v2, v4, :cond_1

    .line 22
    .line 23
    const/4 v4, 0x3

    .line 24
    if-eq v2, v4, :cond_1

    .line 25
    .line 26
    const/16 v4, 0x9

    .line 27
    .line 28
    if-eq v2, v4, :cond_1

    .line 29
    .line 30
    move v0, v3

    .line 31
    :cond_1
    if-eqz v0, :cond_3

    .line 32
    .line 33
    const-string v0, "n"

    .line 34
    .line 35
    invoke-virtual {p1, v2, v1, v0}, Lv0/d;->a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/high16 v4, 0xc000000

    .line 44
    .line 45
    invoke-static {v1, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_0
    invoke-virtual {p1, v1, v2, v0}, Lv0/d;->g(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void
.end method
