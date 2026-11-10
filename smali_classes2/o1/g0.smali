.class public final Lo1/g0;
.super Lo1/e0;
.source "SourceFile"


# instance fields
.field public A:Landroid/bluetooth/BluetoothServerSocket;

.field public B:Landroid/bluetooth/BluetoothSocket;

.field public C:Ljava/io/InputStream;

.field public D:Ljava/io/BufferedReader;

.field public E:Ljava/io/PrintWriter;

.field public F:Z

.field public final x:Landroid/app/Activity;

.field public final y:Landroid/bluetooth/BluetoothAdapter;

.field public final z:Lo1/f0;


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/LaunchActivity;Lq1/c;Ljava/lang/ThreadGroup;Lu1/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lo1/e0;-><init>(Lq1/c;Ljava/lang/ThreadGroup;Lu1/f;)V

    iput-object p1, p0, Lo1/g0;->x:Landroid/app/Activity;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lo1/g0;->y:Landroid/bluetooth/BluetoothAdapter;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lo1/f0;

    invoke-direct {p1, p0}, Lo1/f0;-><init>(Lo1/g0;)V

    iput-object p1, p0, Lo1/g0;->z:Lo1/f0;

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/g0;->B:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo1/g0;->F:Z

    return v0
.end method

.method public final e()I
    .locals 7

    .line 1
    const-string v0, "sdf"

    .line 2
    .line 3
    const-string v1, "Bluetooth socket\'s listen() failed: "

    .line 4
    .line 5
    iget-object v2, p0, Lo1/g0;->y:Landroid/bluetooth/BluetoothAdapter;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    move v5, v4

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v5, v3

    .line 14
    :goto_0
    if-nez v5, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x5

    .line 17
    return v0

    .line 18
    :cond_1
    if-eqz v2, :cond_2

    .line 19
    .line 20
    move v5, v4

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    move v5, v3

    .line 23
    :goto_1
    if-eqz v5, :cond_3

    .line 24
    .line 25
    :try_start_0
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-eqz v5, :cond_3

    .line 30
    .line 31
    move v5, v4

    .line 32
    goto :goto_2

    .line 33
    :catch_0
    :cond_3
    move v5, v3

    .line 34
    :goto_2
    if-nez v5, :cond_4

    .line 35
    .line 36
    const/4 v0, 0x6

    .line 37
    return v0

    .line 38
    :cond_4
    :try_start_1
    iput-boolean v4, p0, Lo1/g0;->F:Z

    .line 39
    .line 40
    const-string v5, "NOMone VR Browser/Desktop"

    .line 41
    .line 42
    const-string v6, "55976f30-08a3-11e9-b568-0800200c9a66"

    .line 43
    .line 44
    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v2, v5, v6}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    iput-object v5, p0, Lo1/g0;->A:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    iput-boolean v3, p0, Lo1/g0;->F:Z

    .line 55
    .line 56
    :try_start_2
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iput-object v1, p0, Lo1/g0;->B:Landroid/bluetooth/BluetoothSocket;

    .line 61
    .line 62
    iget-object v1, p0, Lo1/g0;->A:Landroid/bluetooth/BluetoothServerSocket;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lo1/g0;->B:Landroid/bluetooth/BluetoothSocket;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, p0, Lo1/g0;->C:Ljava/io/InputStream;

    .line 74
    .line 75
    new-instance v1, Ljava/io/BufferedReader;

    .line 76
    .line 77
    new-instance v5, Ljava/io/InputStreamReader;

    .line 78
    .line 79
    iget-object v6, p0, Lo1/g0;->C:Ljava/io/InputStream;

    .line 80
    .line 81
    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 85
    .line 86
    .line 87
    iput-object v1, p0, Lo1/g0;->D:Ljava/io/BufferedReader;

    .line 88
    .line 89
    new-instance v1, Ljava/io/PrintWriter;

    .line 90
    .line 91
    iget-object v5, p0, Lo1/g0;->B:Landroid/bluetooth/BluetoothSocket;

    .line 92
    .line 93
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-direct {v1, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 98
    .line 99
    .line 100
    iput-object v1, p0, Lo1/g0;->E:Ljava/io/PrintWriter;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 101
    .line 102
    return v4

    .line 103
    :catch_1
    const-string v1, "Bluetooth socket\'s accept() failed"

    .line 104
    .line 105
    invoke-static {v0, v1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lo1/g0;->j()V

    .line 109
    .line 110
    .line 111
    if-eqz v2, :cond_5

    .line 112
    .line 113
    move v0, v4

    .line 114
    goto :goto_3

    .line 115
    :cond_5
    move v0, v3

    .line 116
    :goto_3
    if-eqz v0, :cond_6

    .line 117
    .line 118
    :try_start_3
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 119
    .line 120
    .line 121
    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 122
    if-eqz v0, :cond_6

    .line 123
    .line 124
    move v3, v4

    .line 125
    :catch_2
    :cond_6
    if-nez v3, :cond_7

    .line 126
    .line 127
    const/4 v0, 0x7

    .line 128
    return v0

    .line 129
    :cond_7
    const/4 v0, 0x3

    .line 130
    return v0

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    goto :goto_4

    .line 133
    :catch_3
    move-exception v2

    .line 134
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v0, v1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 147
    .line 148
    .line 149
    iput-boolean v3, p0, Lo1/g0;->F:Z

    .line 150
    .line 151
    const/4 v0, 0x2

    .line 152
    return v0

    .line 153
    :goto_4
    iput-boolean v3, p0, Lo1/g0;->F:Z

    .line 154
    .line 155
    throw v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lo1/g0;->C:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lo1/g0;->D:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo1/g0;->y:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo1/g0;->y:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lo1/g0;->D:Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lo1/g0;->E:Ljava/io/PrintWriter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    :try_start_3
    iget-object v0, p0, Lo1/g0;->A:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    :try_start_4
    iget-object v0, p0, Lo1/g0;->B:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lo1/g0;->C:Ljava/io/InputStream;

    iput-object v0, p0, Lo1/g0;->D:Ljava/io/BufferedReader;

    iput-object v0, p0, Lo1/g0;->E:Ljava/io/PrintWriter;

    iput-object v0, p0, Lo1/g0;->A:Landroid/bluetooth/BluetoothServerSocket;

    iput-object v0, p0, Lo1/g0;->B:Landroid/bluetooth/BluetoothSocket;

    return-void

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lo1/g0;->E:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lo1/g0;->E:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lo1/e0;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lo1/e0;->i(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lo1/e0;->e:Z

    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Lo1/g0;->x:Landroid/app/Activity;

    .line 13
    .line 14
    iget-object v1, p0, Lo1/g0;->z:Lo1/f0;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lo1/e0;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lo1/e0;->h()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lo1/e0;->e:Z

    .line 10
    .line 11
    new-instance v0, Landroid/content/IntentFilter;

    .line 12
    .line 13
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lo1/g0;->z:Lo1/f0;

    .line 19
    .line 20
    iget-object v2, p0, Lo1/g0;->x:Landroid/app/Activity;

    .line 21
    .line 22
    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    return-void
.end method
