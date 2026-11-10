.class public final synthetic Lf0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/billingclient/api/ProxyBillingActivityV2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/ProxyBillingActivityV2;I)V
    .locals 0

    .line 1
    iput p2, p0, Lf0/u;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lf0/u;->b:Lcom/android/billingclient/api/ProxyBillingActivityV2;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lf0/u;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "ProxyBillingActivityV2"

    .line 5
    .line 6
    iget-object v3, p0, Lf0/u;->b:Lcom/android/billingclient/api/ProxyBillingActivityV2;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_1

    .line 12
    :pswitch_0
    check-cast p1, Landroidx/activity/result/a;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object p1, p1, Landroidx/activity/result/a;->b:Landroid/content/Intent;

    .line 18
    .line 19
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/s;->b(Landroid/content/Intent;Ljava/lang/String;)Lf0/g;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v0, v0, Lf0/g;->b:I

    .line 24
    .line 25
    iget-object v2, v3, Lcom/android/billingclient/api/ProxyBillingActivityV2;->k:Landroid/os/ResultReceiver;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :goto_1
    check-cast p1, Landroidx/activity/result/a;

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-object v0, p1, Landroidx/activity/result/a;->b:Landroid/content/Intent;

    .line 49
    .line 50
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/s;->b(Landroid/content/Intent;Ljava/lang/String;)Lf0/g;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget v2, v2, Lf0/g;->b:I

    .line 55
    .line 56
    iget-object v4, v3, Lcom/android/billingclient/api/ProxyBillingActivityV2;->l:Landroid/os/ResultReceiver;

    .line 57
    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :goto_2
    invoke-virtual {v4, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    const/4 v0, -0x1

    .line 71
    iget p1, p1, Landroidx/activity/result/a;->a:I

    .line 72
    .line 73
    if-ne p1, v0, :cond_4

    .line 74
    .line 75
    if-eqz v2, :cond_5

    .line 76
    .line 77
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string v0, "External offer dialog finished with resultCode: %s and billing\'s responseCode: %s"

    .line 90
    .line 91
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    :cond_5
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
