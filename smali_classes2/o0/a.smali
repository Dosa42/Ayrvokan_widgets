.class public final synthetic Lo0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lo0/a;->f:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lo0/a;->f:I

    .line 2
    .line 3
    const/16 v1, -0x13

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    return-void

    .line 10
    :pswitch_1
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_2
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_3
    sget v0, Lcom/nomone/vr_desktop/LaunchActivity;->b:I

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_4
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_5
    sget v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver;->a:I

    .line 30
    .line 31
    return-void

    .line 32
    :goto_0
    invoke-static {}, Lcom/nomone/vr_desktop/X11/NomX;->a()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
