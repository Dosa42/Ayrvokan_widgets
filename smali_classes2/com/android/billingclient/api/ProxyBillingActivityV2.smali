.class public Lcom/android/billingclient/api/ProxyBillingActivityV2;
.super Landroidx/activity/d;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
    value = "PlatformActivityProxy"
.end annotation


# instance fields
.field public i:Landroidx/activity/result/c;

.field public j:Landroidx/activity/result/c;

.field public k:Landroid/os/ResultReceiver;

.field public l:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/d;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lc/a;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lc/a;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lf0/u;

    .line 11
    .line 12
    invoke-direct {v2, p0, v1}, Lf0/u;-><init>(Lcom/android/billingclient/api/ProxyBillingActivityV2;I)V

    .line 13
    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v4, "activity_rq#"

    .line 18
    .line 19
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v5, p0, Landroidx/activity/d;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget-object v6, p0, Landroidx/activity/d;->h:Landroidx/activity/b;

    .line 36
    .line 37
    invoke-virtual {v6, v3, p0, v0, v2}, Landroidx/activity/result/f;->b(Ljava/lang/String;Landroidx/lifecycle/n;Lc/a;Lf0/u;)Landroidx/activity/result/c;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->i:Landroidx/activity/result/c;

    .line 42
    .line 43
    new-instance v0, Lc/a;

    .line 44
    .line 45
    invoke-direct {v0, v1}, Lc/a;-><init>(I)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Lf0/u;

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-direct {v2, p0, v3}, Lf0/u;-><init>(Lcom/android/billingclient/api/ProxyBillingActivityV2;I)V

    .line 52
    .line 53
    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v6, v3, p0, v0, v2}, Landroidx/activity/result/f;->b(Ljava/lang/String;Landroidx/lifecycle/n;Lc/a;Lf0/u;)Landroidx/activity/result/c;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->j:Landroidx/activity/result/c;

    .line 75
    .line 76
    const-string v0, "external_payment_dialog_result_receiver"

    .line 77
    .line 78
    const-string v2, "alternative_billing_only_dialog_result_receiver"

    .line 79
    .line 80
    if-nez p1, :cond_1

    .line 81
    .line 82
    const-string p1, "ProxyBillingActivityV2"

    .line 83
    .line 84
    const-string v3, "Launching Play Store billing dialog"

    .line 85
    .line 86
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/play_billing/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string v3, "ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT"

    .line 94
    .line 95
    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    const/4 v4, 0x0

    .line 100
    if-eqz p1, :cond_0

    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Landroid/app/PendingIntent;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Landroid/os/ResultReceiver;

    .line 121
    .line 122
    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->k:Landroid/os/ResultReceiver;

    .line 123
    .line 124
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->i:Landroidx/activity/result/c;

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    new-instance v2, Landroidx/activity/result/g;

    .line 131
    .line 132
    invoke-direct {v2, p1, v4, v1, v1}, Landroidx/activity/result/g;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v2}, Landroidx/activity/result/c;->c(Landroidx/activity/result/g;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const-string v2, "external_payment_dialog_pending_intent"

    .line 144
    .line 145
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_3

    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Landroid/app/PendingIntent;

    .line 160
    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Landroid/os/ResultReceiver;

    .line 170
    .line 171
    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->l:Landroid/os/ResultReceiver;

    .line 172
    .line 173
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->j:Landroidx/activity/result/c;

    .line 174
    .line 175
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    new-instance v2, Landroidx/activity/result/g;

    .line 180
    .line 181
    invoke-direct {v2, p1, v4, v1, v1}, Landroidx/activity/result/g;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v2}, Landroidx/activity/result/c;->c(Landroidx/activity/result/g;)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_2

    .line 193
    .line 194
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    check-cast p1, Landroid/os/ResultReceiver;

    .line 199
    .line 200
    iput-object p1, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->k:Landroid/os/ResultReceiver;

    .line 201
    .line 202
    return-void

    .line 203
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_3

    .line 208
    .line 209
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    check-cast p1, Landroid/os/ResultReceiver;

    .line 214
    .line 215
    iput-object p1, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->l:Landroid/os/ResultReceiver;

    .line 216
    .line 217
    :cond_3
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/activity/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->k:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_0

    const-string v1, "alternative_billing_only_dialog_result_receiver"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->l:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_1

    const-string v1, "external_payment_dialog_result_receiver"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method
