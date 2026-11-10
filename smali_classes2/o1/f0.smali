.class public final Lo1/f0;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lo1/g0;


# direct methods
.method public constructor <init>(Lo1/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo1/f0;->a:Lo1/g0;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 14
    .line 15
    const/high16 v0, -0x80000000

    .line 16
    .line 17
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/16 p2, 0xc

    .line 22
    .line 23
    if-eq p1, p2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lo1/f0;->a:Lo1/g0;

    .line 27
    .line 28
    iget-boolean p2, p1, Lo1/e0;->c:Z

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lo1/e0;->h()V

    .line 33
    .line 34
    .line 35
    :cond_1
    const-string p1, "sdf"

    .line 36
    .line 37
    const-string p2, "Starting bluetooth server"

    .line 38
    .line 39
    invoke-static {p1, p2}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_0
    return-void
.end method
