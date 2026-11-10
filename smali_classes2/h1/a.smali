.class public final Lh1/a;
.super Ly0/f;
.source "SourceFile"

# interfaces
.implements Lg1/c;


# instance fields
.field public final A:Ly0/c;

.field public final B:Landroid/os/Bundle;

.field public final C:Ljava/lang/Integer;

.field public final z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ly0/c;Landroid/os/Bundle;Lw0/e;Lw0/f;)V
    .locals 7

    .line 1
    const/16 v3, 0x2c

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    invoke-direct/range {v0 .. v6}, Ly0/f;-><init>(Landroid/content/Context;Landroid/os/Looper;ILy0/c;Lx0/c;Lx0/h;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lh1/a;->z:Z

    .line 14
    .line 15
    iput-object p3, p0, Lh1/a;->A:Ly0/c;

    .line 16
    .line 17
    iput-object p4, p0, Lh1/a;->B:Landroid/os/Bundle;

    .line 18
    .line 19
    iget-object p1, p3, Ly0/c;->g:Ljava/lang/Integer;

    .line 20
    .line 21
    iput-object p1, p0, Lh1/a;->C:Ljava/lang/Integer;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final c(Lh1/e;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iget-object v2, p0, Lh1/a;->A:Ly0/c;

    .line 6
    .line 7
    iget-object v2, v2, Ly0/c;->a:Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    const-string v3, "<<default account>>"

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :try_start_1
    new-instance v2, Landroid/accounts/Account;

    .line 15
    .line 16
    const-string v4, "com.google"

    .line 17
    .line 18
    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object v4, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    iget-object v3, p0, Ly0/f;->c:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {v3}, Lt0/a;->a(Landroid/content/Context;)Lt0/a;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v4, "defaultGoogleSignInAccount"

    .line 36
    .line 37
    iget-object v5, v3, Lt0/a;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    .line 41
    .line 42
    :try_start_2
    iget-object v6, v3, Lt0/a;->b:Landroid/content/SharedPreferences;

    .line 43
    .line 44
    invoke-interface {v6, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    :try_start_3
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 49
    .line 50
    .line 51
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v6, "googleSignInAccount:"

    .line 61
    .line 62
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    iget-object v5, v3, Lt0/a;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 75
    .line 76
    .line 77
    :try_start_4
    iget-object v3, v3, Lt0/a;->b:Landroid/content/SharedPreferences;

    .line 78
    .line 79
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 83
    :try_start_5
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 84
    .line 85
    .line 86
    if-eqz v3, :cond_2

    .line 87
    .line 88
    :try_start_6
    invoke-static {v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 89
    .line 90
    .line 91
    move-result-object v3
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 92
    goto :goto_2

    .line 93
    :catch_0
    move-exception v2

    .line 94
    goto :goto_3

    .line 95
    :catchall_0
    move-exception v2

    .line 96
    :try_start_7
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 97
    .line 98
    .line 99
    throw v2

    .line 100
    :catchall_1
    move-exception v2

    .line 101
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 102
    .line 103
    .line 104
    throw v2

    .line 105
    :catch_1
    :cond_2
    :goto_1
    move-object v3, v0

    .line 106
    :goto_2
    new-instance v4, Ly0/r;

    .line 107
    .line 108
    iget-object v5, p0, Lh1/a;->C:Ljava/lang/Integer;

    .line 109
    .line 110
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/i0;->l(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    const/4 v6, 0x2

    .line 118
    invoke-direct {v4, v6, v2, v5, v3}, Ly0/r;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Ly0/f;->l()Landroid/os/IInterface;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Lh1/f;

    .line 126
    .line 127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    iget-object v5, v2, Le1/a;->b:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    sget v5, Le1/b;->a:I

    .line 137
    .line 138
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    .line 140
    .line 141
    const/16 v5, 0x4f45

    .line 142
    .line 143
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/play_billing/i0;->x0(Landroid/os/Parcel;I)I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    invoke-static {v3, v1, v1}, Lcom/google/android/gms/internal/play_billing/i0;->s0(Landroid/os/Parcel;II)V

    .line 148
    .line 149
    .line 150
    const/4 v7, 0x0

    .line 151
    invoke-static {v3, v6, v4, v7}, Lcom/google/android/gms/internal/play_billing/i0;->t0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 152
    .line 153
    .line 154
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/play_billing/i0;->z0(Landroid/os/Parcel;I)V

    .line 155
    .line 156
    .line 157
    move-object v4, p1

    .line 158
    check-cast v4, Lh1/d;

    .line 159
    .line 160
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 161
    .line 162
    .line 163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 164
    .line 165
    .line 166
    move-result-object v4
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 167
    :try_start_8
    iget-object v2, v2, Le1/a;->a:Landroid/os/IBinder;

    .line 168
    .line 169
    const/16 v5, 0xc

    .line 170
    .line 171
    invoke-interface {v2, v5, v3, v4, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 175
    .line 176
    .line 177
    :try_start_9
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :catchall_2
    move-exception v2

    .line 185
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 189
    .line 190
    .line 191
    throw v2
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    .line 192
    :goto_3
    :try_start_a
    new-instance v3, Lh1/i;

    .line 193
    .line 194
    new-instance v4, Lv0/a;

    .line 195
    .line 196
    const/16 v5, 0x8

    .line 197
    .line 198
    invoke-direct {v4, v5, v0}, Lv0/a;-><init>(ILandroid/app/PendingIntent;)V

    .line 199
    .line 200
    .line 201
    invoke-direct {v3, v1, v4, v0}, Lh1/i;-><init>(ILv0/a;Ly0/s;)V

    .line 202
    .line 203
    .line 204
    check-cast p1, Lx0/w;

    .line 205
    .line 206
    new-instance v0, Lf0/m;

    .line 207
    .line 208
    const/4 v1, 0x6

    .line 209
    invoke-direct {v0, p1, v3, v1}, Lf0/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 210
    .line 211
    .line 212
    iget-object p1, p1, Lx0/w;->b:Landroid/os/Handler;

    .line 213
    .line 214
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :catch_2
    const-string p1, "SignInClientImpl"

    .line 219
    .line 220
    const-string v0, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    .line 221
    .line 222
    invoke-static {p1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 227
    .line 228
    const-string v0, "Expecting a valid ISignInCallbacks"

    .line 229
    .line 230
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw p1
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lh1/a;->z:Z

    return v0
.end method

.method public final g()V
    .locals 2

    .line 1
    new-instance v0, Ll0/c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ll0/c;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Ly0/f;->i:Ly0/b;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Ly0/f;->s(ILandroid/os/IInterface;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final h()I
    .locals 1

    .line 1
    const v0, 0xbdfcb8

    return v0
.end method

.method public final synthetic i(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lh1/f;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lh1/f;

    goto :goto_0

    :cond_1
    new-instance v0, Lh1/f;

    invoke-direct {v0, p1}, Lh1/f;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final k()Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lh1/a;->A:Ly0/c;

    .line 2
    .line 3
    iget-object v1, v0, Ly0/c;->d:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Ly0/f;->c:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lh1/a;->B:Landroid/os/Bundle;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v0, v0, Ly0/c;->d:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "com.google.android.gms.signin.internal.realClientPackageName"

    .line 22
    .line 23
    invoke-virtual {v2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-object v2
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method
