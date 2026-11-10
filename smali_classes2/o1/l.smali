.class public final Lo1/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ljava/util/ArrayList;


# instance fields
.field public final a:Landroid/hardware/input/InputManager;

.field public final b:Lo1/j0;

.field public final c:Lu1/d;

.field public d:Z

.field public e:F

.field public final f:Ljava/util/LinkedList;

.field public final g:Lo0/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lo1/l;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/nomone/vr_desktop/LaunchActivity;Lq1/c;Lu1/d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput v0, p0, Lo1/l;->e:F

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lo1/l;->f:Ljava/util/LinkedList;

    .line 14
    .line 15
    new-instance v0, Lo0/n;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-direct {v0, p0, v1}, Lo0/n;-><init>(Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lo1/l;->g:Lo0/n;

    .line 22
    .line 23
    iput-object p3, p0, Lo1/l;->c:Lu1/d;

    .line 24
    .line 25
    iput-object p2, p0, Lo1/l;->b:Lo1/j0;

    .line 26
    .line 27
    const-string v0, "input"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/hardware/input/InputManager;

    .line 34
    .line 35
    iput-object p1, p0, Lo1/l;->a:Landroid/hardware/input/InputManager;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 39
    .line 40
    .line 41
    new-instance v0, Lo1/g;

    .line 42
    .line 43
    invoke-direct {v0, p0, p3}, Lo1/g;-><init>(Lo1/l;Lu1/d;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p2, Lo1/j0;->b:Landroid/os/Handler;

    .line 47
    .line 48
    invoke-virtual {p1, v0, p2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static a(I)Lo1/k;
    .locals 4

    .line 1
    sget-object v0, Lo1/l;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo1/k;

    iget v3, v2, Lo1/k;->a:I

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_1
    new-instance v1, Lo1/k;

    invoke-direct {v1, p0}, Lo1/k;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static b(I)Lo1/k;
    .locals 3

    .line 1
    sget-object v0, Lo1/l;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo1/k;

    iget v2, v1, Lo1/k;->a:I

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x2002

    .line 6
    .line 7
    and-int/2addr v0, v1

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    move v0, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v2

    .line 15
    :goto_0
    if-nez v0, :cond_3

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const v1, 0x20004

    .line 22
    .line 23
    .line 24
    and-int/2addr v0, v1

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    move v0, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v0, v2

    .line 30
    :goto_1
    if-eqz v0, :cond_2

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move v0, v2

    .line 34
    goto :goto_3

    .line 35
    :cond_3
    :goto_2
    move v0, v3

    .line 36
    :goto_3
    if-nez v0, :cond_6

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x7

    .line 43
    if-ne v0, v1, :cond_5

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/16 v1, 0x4002

    .line 50
    .line 51
    and-int/2addr v0, v1

    .line 52
    if-ne v0, v1, :cond_4

    .line 53
    .line 54
    move v0, v3

    .line 55
    goto :goto_4

    .line 56
    :cond_4
    move v0, v2

    .line 57
    :goto_4
    if-nez v0, :cond_5

    .line 58
    .line 59
    goto :goto_5

    .line 60
    :cond_5
    move v0, v2

    .line 61
    goto :goto_6

    .line 62
    :cond_6
    :goto_5
    move v0, v3

    .line 63
    :goto_6
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz v0, :cond_7

    .line 68
    .line 69
    invoke-static {p0}, Lo1/l;->a(I)Lo1/k;

    .line 70
    .line 71
    .line 72
    return v3

    .line 73
    :cond_7
    invoke-static {p0}, Lo1/l;->b(I)Lo1/k;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    if-eqz p0, :cond_8

    .line 78
    .line 79
    move v2, v3

    .line 80
    :cond_8
    return v2
.end method


# virtual methods
.method public final d(Lo1/i;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo1/l;->f:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo1/l;->f:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lo1/l;->f:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lo1/l;->b:Lo1/j0;

    iget-object v1, p0, Lo1/l;->g:Lo0/n;

    const-string v2, "dispatch mouse queued event"

    invoke-virtual {p1, v2, v1}, Lo1/j0;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e(ZZZ)Z
    .locals 2

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    return p1

    .line 4
    :cond_0
    iget-object p1, p0, Lo1/l;->f:Ljava/util/LinkedList;

    .line 5
    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    iget-object v0, p0, Lo1/l;->f:Ljava/util/LinkedList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 10
    .line 11
    .line 12
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object p1, p0, Lo1/l;->c:Lu1/d;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    const/4 v1, 0x2

    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v1

    .line 23
    :goto_0
    invoke-virtual {p1, v0}, Lu1/d;->a(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    if-eqz p3, :cond_3

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_3
    move v0, v1

    .line 31
    :goto_1
    invoke-virtual {p1, v0}, Lu1/d;->b(I)V

    .line 32
    .line 33
    .line 34
    :goto_2
    return p2

    .line 35
    :catchall_0
    move-exception p2

    .line 36
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p2
.end method
