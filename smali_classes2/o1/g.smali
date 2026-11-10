.class public final Lo1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final synthetic a:Lu1/d;

.field public final synthetic b:Lo1/l;


# direct methods
.method public constructor <init>(Lo1/l;Lu1/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo1/g;->b:Lo1/l;

    iput-object p2, p0, Lo1/g;->a:Lu1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInputDeviceAdded(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Device added: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "sdf"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/16 v0, 0x2002

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    :try_start_0
    iget-object v2, p0, Lo1/g;->b:Lo1/l;

    .line 24
    .line 25
    iget-object v2, v2, Lo1/l;->a:Landroid/hardware/input/InputManager;

    .line 26
    .line 27
    invoke-virtual {v2, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroid/view/InputDevice;->getSources()I

    .line 32
    .line 33
    .line 34
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    and-int/2addr v2, v0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move v2, v1

    .line 38
    :goto_0
    const/4 v3, 0x1

    .line 39
    if-ne v2, v0, :cond_0

    .line 40
    .line 41
    move v1, v3

    .line 42
    :cond_0
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-static {p1}, Lo1/l;->a(I)Lo1/k;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-boolean v3, p1, Lo1/k;->b:Z

    .line 49
    .line 50
    iget-object p1, p0, Lo1/g;->a:Lu1/d;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public final onInputDeviceChanged(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Device changed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sdf"

    invoke-static {v0, p1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onInputDeviceRemoved(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Device removed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdf"

    invoke-static {v1, v0}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lo1/l;->b(I)Lo1/k;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lo1/k;->b:Z

    iget-object p1, p0, Lo1/g;->a:Lu1/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method
