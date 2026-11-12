.class public final Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;
.super Landroid/app/Service;
.source "UbuntuRuntimeService.java"

.field private final static CHANNEL:Ljava/lang/String; = "ubuntu-runtime"

.field private final static NOTIFICATION:I = 2204

.field public final static READ:I = 4

.field public final static RESIZE:I = 3

.field public final static START:I = 1

.field public final static STATE:I = 5

.field public final static STOP:I = 6

.field public final static WRITE:I = 2

.field private browsers:Lcom/nomone/vr_desktop/runtime/TerminalSessions;

.field private commands:Landroid/os/Handler;

.field private error:Ljava/lang/String;

.field private filesWorkspace:Lcom/nomone/vr_desktop/runtime/FileWorkspace;

.field private messenger:Landroid/os/Messenger;

.field private sshError:Ljava/lang/String;

.field private sshSession:Lcom/nomone/vr_desktop/runtime/PtySession;

.field private sshSessionId:Ljava/lang/String;

.field private stopping:Z

.field private wake:Landroid/os/PowerManager$WakeLock;

.field private web:Lcom/nomone/vr_desktop/runtime/TerminalServer;

.field private worker:Landroid/os/HandlerThread;

.method public static synthetic $r8$lambda$Tb5bTHL-f_KC1sRed_ferzMMb0g(Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;)V
  .registers 1
    invoke-direct { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->shutdown()V
    return-void
.end method

.method public static synthetic $r8$lambda$Y71EEhwxVMpfZFUw05zFsT4xEeA(Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;Ljava/lang/String;)[B
  .registers 2
    invoke-direct { p0, p1 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->readAsset(Ljava/lang/String;)[B
    move-result-object p0
    return-object p0
.end method

.method public static synthetic $r8$lambda$gGZa-gsS8zFRDNRKqHG5UVXHWz0(Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;Landroid/os/Message;)Z
  .registers 2
    invoke-direct { p0, p1 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->handle(Landroid/os/Message;)Z
    move-result p0
    return p0
.end method

.method public static synthetic $r8$lambda$zvV42Iow4-QPQmlJXNt9QvGwVOM(Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;)V
  .registers 1
    invoke-direct { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->startSession()V
    return-void
.end method

.method public constructor <init>()V
  .registers 2
  .line 26
    invoke-direct { p0 }, Landroid/app/Service;-><init>()V
  .line 41
    const-string v0, ""
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->sshError:Ljava/lang/String;
  .line 42
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->sshSessionId:Ljava/lang/String;
  .line 43
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->error:Ljava/lang/String;
    return-void
.end method

.method private handle(Landroid/os/Message;)Z
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L12
  .catch Ljava/lang/Exception; { :L2 .. :L12 } :L12
  .catch Landroid/os/RemoteException; { :L20 .. :L21 } :L22
  .registers 12
  .line 176
    const-string v0, "cursor"
    const-string v1, "ok"
    new-instance v2, Landroid/os/Bundle;
    invoke-direct { v2 }, Landroid/os/Bundle;-><init>()V
  .line 178
    const/4 v3, 0
    const/4 v4, 1
  :L0
    invoke-virtual { p1 }, Landroid/os/Message;->getData()Landroid/os/Bundle;
    move-result-object v5
  .line 179
    iget v6, p1, Landroid/os/Message;->what:I
  :L1
    const-string v7, "bytes"
    packed-switch v6, :L24
  :L2
  .line 198
    new-instance v0, Ljava/io/IOException;
    goto :L11
  :L3
  .line 197
    invoke-direct { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->shutdown()V
    goto :L10
  :L4
  .line 196
    goto :L10
  :L5
  .line 191
    invoke-direct { p0, v5 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->requireSession(Landroid/os/Bundle;)Lcom/nomone/vr_desktop/runtime/PtySession;
    move-result-object v6
    const-wide/16 v8, 0
    invoke-virtual { v5, v0, v8, v9 }, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
    move-result-wide v8
    invoke-virtual { v6, v8, v9 }, Lcom/nomone/vr_desktop/runtime/PtySession;->output(J)Lcom/nomone/vr_desktop/runtime/PtySession$Output;
    move-result-object v5
  .line 192
    iget-object v6, v5, Lcom/nomone/vr_desktop/runtime/PtySession$Output;->bytes:[B
    invoke-virtual { v2, v7, v6 }, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
  .line 193
    iget-wide v6, v5, Lcom/nomone/vr_desktop/runtime/PtySession$Output;->cursor:J
    invoke-virtual { v2, v0, v6, v7 }, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
  .line 194
    const-string v0, "truncated"
    iget-boolean v5, v5, Lcom/nomone/vr_desktop/runtime/PtySession$Output;->truncated:Z
    invoke-virtual { v2, v0, v5 }, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
  .line 195
    goto :L10
  :L6
  .line 188
    invoke-direct { p0, v5 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->requireSession(Landroid/os/Bundle;)Lcom/nomone/vr_desktop/runtime/PtySession;
    move-result-object v0
    const-string v6, "rows"
    invoke-virtual { v5, v6 }, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    move-result v6
    const-string v7, "columns"
    invoke-virtual { v5, v7 }, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    move-result v5
    invoke-virtual { v0, v6, v5 }, Lcom/nomone/vr_desktop/runtime/PtySession;->resize(II)V
  .line 189
    goto :L10
  :L7
  .line 182
    invoke-direct { p0, v5 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->requireSession(Landroid/os/Bundle;)Lcom/nomone/vr_desktop/runtime/PtySession;
    move-result-object v0
  .line 183
    invoke-virtual { v5, v7 }, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B
    move-result-object v5
  .line 184
    if-eqz v5, :L8
  .line 185
    invoke-virtual { v0, v5 }, Lcom/nomone/vr_desktop/runtime/PtySession;->write([B)V
  .line 186
    goto :L10
  :L8
  .line 184
    new-instance v0, Ljava/io/IOException;
    const-string v5, "bytes ontbreekt"
    invoke-direct { v0, v5 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L9
  .line 180
    invoke-direct { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->startSession()V
  :L10
  .line 200
    invoke-virtual { v2, v1, v4 }, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
  .line 204
    goto :L13
  :L11
  .line 198
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "Onbekende runtime-opdracht: "
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    iget v6, p1, Landroid/os/Message;->what:I
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-direct { v0, v5 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L12
  .line 201
    move-exception v0
  .line 202
    invoke-virtual { v2, v1, v3 }, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
  .line 203
    const-string v1, "error"
    invoke-virtual { v0 }, Ljava/lang/Exception;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v1, v0 }, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
  :L13
  .line 205
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->browsers:Lcom/nomone/vr_desktop/runtime/TerminalSessions;
    invoke-virtual { p1 }, Landroid/os/Message;->getData()Landroid/os/Bundle;
    move-result-object v1
    const-string v5, ""
    const-string v6, "session"
    invoke-virtual { v1, v6, v5 }, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcom/nomone/vr_desktop/runtime/TerminalSessions;->find(Ljava/lang/String;)Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
    move-result-object v0
  .line 206
    if-nez v0, :L14
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->browsers:Lcom/nomone/vr_desktop/runtime/TerminalSessions;
    invoke-virtual { v0 }, Lcom/nomone/vr_desktop/runtime/TerminalSessions;->current()Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
    move-result-object v0
  :L14
  .line 207
    iget-object v1, v0, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->session:Lcom/nomone/vr_desktop/runtime/PtySession;
  .line 208
    iget-object v0, v0, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->id:Ljava/lang/String;
    invoke-virtual { v2, v6, v0 }, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
  .line 209
    if-eqz v1, :L15
    invoke-virtual { v1 }, Lcom/nomone/vr_desktop/runtime/PtySession;->running()Z
    move-result v0
    if-eqz v0, :L15
    move v3, v4
  :L15
    const-string v0, "running"
    invoke-virtual { v2, v0, v3 }, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
  .line 210
    const/4 v0, -1
    if-nez v1, :L16
    move v3, v0
    goto :L17
  :L16
    invoke-virtual { v1 }, Lcom/nomone/vr_desktop/runtime/PtySession;->pid()I
    move-result v3
  :L17
    const-string v5, "pid"
    invoke-virtual { v2, v5, v3 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
  .line 211
    if-nez v1, :L18
    goto :L19
  :L18
    invoke-virtual { v1 }, Lcom/nomone/vr_desktop/runtime/PtySession;->exitStatus()I
    move-result v0
  :L19
    const-string v1, "exit"
    invoke-virtual { v2, v1, v0 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
  .line 212
    const-string v0, "runtimeError"
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->error:Ljava/lang/String;
    invoke-virtual { v2, v0, v1 }, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
  .line 213
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
    if-eqz v0, :L23
  .line 214
    const/4 v0, 0
    iget v1, p1, Landroid/os/Message;->what:I
    invoke-static { v0, v1 }, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
    move-result-object v0
  .line 215
    iget v1, p1, Landroid/os/Message;->arg1:I
    iput v1, v0, Landroid/os/Message;->arg1:I
  .line 216
    invoke-virtual { v0, v2 }, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
  :L20
  .line 217
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
    invoke-virtual { p1, v0 }, Landroid/os/Messenger;->send(Landroid/os/Message;)V
  :L21
  .line 218
    goto :L23
  :L22
    move-exception p1
    const-string p1, "UbuntuRuntime"
    const-string v0, "Terminalclient losgekoppeld"
    invoke-static { p1, v0 }, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
  :L23
  .line 220
    return v4
  :L24
  .packed-switch 1
    :L9
    :L7
    :L6
    :L5
    :L4
    :L3
  .end packed-switch
.end method

.method private notification(Ljava/lang/String;)Landroid/app/Notification;
  .registers 7
  .line 85
    new-instance v0, Landroid/content/Intent;
    const-class v1, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;
    invoke-direct { v0, p0, v1 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    const-string v1, "stop"
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    move-result-object v0
  .line 86
    const/4 v1, 0
    const/high16 v2, 201326592
    invoke-static { p0, v1, v0, v2 }, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    move-result-object v0
  .line 87
    new-instance v1, Landroid/content/Intent;
    const-string v3, "http://127.0.0.1:8766/terminal"
    invoke-static { v3 }, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v3
    const-string v4, "android.intent.action.VIEW"
    invoke-direct { v1, v4, v3 }, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
  .line 88
    const/4 v3, 1
    invoke-static { p0, v3, v1, v2 }, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    move-result-object v1
  .line 89
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v4, 26
    if-lt v2, v4, :L0
    new-instance v2, Landroid/app/Notification$Builder;
    const-string v4, "ubuntu-runtime"
    invoke-direct { v2, p0, v4 }, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    goto :L1
  :L0
    new-instance v2, Landroid/app/Notification$Builder;
    invoke-direct { v2, p0 }, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V
  :L1
  .line 90
    const v4, 17301628
    invoke-virtual { v2, v4 }, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;
    move-result-object v2
    const-string v4, "Ubuntu22.04Bare"
    invoke-virtual { v2, v4 }, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    move-result-object v2
  .line 91
    invoke-virtual { v2, p1 }, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    move-result-object p1
    invoke-virtual { p1, v1 }, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    move-result-object p1
    invoke-virtual { p1, v3 }, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;
    move-result-object p1
    new-instance v1, Landroid/app/Notification$Action$Builder;
    const v2, 17301560
    const-string v3, "Stop"
    invoke-direct { v1, v2, v3, v0 }, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
  .line 92
    invoke-virtual { v1 }, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
    move-result-object p1
  .line 90
    return-object p1
.end method

.method private notifyRuntime()V
  .registers 3
  .line 160
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->sshSession:Lcom/nomone/vr_desktop/runtime/PtySession;
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->sshSession:Lcom/nomone/vr_desktop/runtime/PtySession;
    invoke-virtual { v0 }, Lcom/nomone/vr_desktop/runtime/PtySession;->running()Z
    move-result v0
    if-eqz v0, :L0
    const-string v0, "Browser :8766 \u00b7 SSH :8022"
    invoke-direct { p0, v0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->notifyState(Ljava/lang/String;)V
    goto :L3
  :L0
  .line 161
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->sshError:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->isEmpty()Z
    move-result v0
    if-nez v0, :L1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "SSH: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->sshError:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p0, v0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->notifyState(Ljava/lang/String;)V
    goto :L3
  :L1
  .line 162
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->browsers:Lcom/nomone/vr_desktop/runtime/TerminalSessions;
    invoke-virtual { v0 }, Lcom/nomone/vr_desktop/runtime/TerminalSessions;->running()Z
    move-result v0
    if-eqz v0, :L2
    const-string v0, "Ubuntu-terminal actief"
    invoke-direct { p0, v0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->notifyState(Ljava/lang/String;)V
    goto :L3
  :L2
  .line 163
    const-string v0, "Ubuntu-terminal afgesloten"
    invoke-direct { p0, v0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->notifyState(Ljava/lang/String;)V
  :L3
  .line 164
    return-void
.end method

.method private notifyState(Ljava/lang/String;)V
  .registers 4
  .line 96
    const-class v0, Landroid/app/NotificationManager;
    invoke-virtual { p0, v0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/app/NotificationManager;
    const/16 v1, 2204
    invoke-direct { p0, p1 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->notification(Ljava/lang/String;)Landroid/app/Notification;
    move-result-object p1
    invoke-virtual { v0, v1, p1 }, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
  .line 97
    return-void
.end method

.method private publishState()V
  .registers 4
  .line 149
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->browsers:Lcom/nomone/vr_desktop/runtime/TerminalSessions;
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->error:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Lcom/nomone/vr_desktop/runtime/TerminalSessions;->error(Ljava/lang/String;)V
  .line 150
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->browsers:Lcom/nomone/vr_desktop/runtime/TerminalSessions;
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->sshSession:Lcom/nomone/vr_desktop/runtime/PtySession;
    iget-object v2, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->sshError:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/nomone/vr_desktop/runtime/TerminalSessions;->ssh(Lcom/nomone/vr_desktop/runtime/PtySession;Ljava/lang/String;)V
  .line 151
    return-void
.end method

.method private readAsset(Ljava/lang/String;)[B
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .catchall { :L0 .. :L1 } :L14
  .catchall { :L2 .. :L5 } :L8
  .catchall { :L5 .. :L6 } :L14
  .catchall { :L9 .. :L10 } :L11
  .catchall { :L12 .. :L14 } :L14
  .catchall { :L15 .. :L16 } :L17
  .registers 6
  .line 167
    invoke-virtual { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->getAssets()Landroid/content/res/AssetManager;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    move-result-object p1
  :L0
    new-instance v0, Ljava/io/ByteArrayOutputStream;
    invoke-direct { v0 }, Ljava/io/ByteArrayOutputStream;-><init>()V
  :L1
  .line 168
    const/16 v1, 16384
  :L2
    new-array v1, v1, [B
  :L3
  .line 170
    invoke-virtual { p1, v1 }, Ljava/io/InputStream;->read([B)I
    move-result v2
    const/4 v3, -1
    if-eq v2, v3, :L4
    const/4 v3, 0
    invoke-virtual { v0, v1, v3, v2 }, Ljava/io/ByteArrayOutputStream;->write([BII)V
    goto :L3
  :L4
  .line 171
    invoke-virtual { v0 }, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object v1
  :L5
  .line 172
    invoke-virtual { v0 }, Ljava/io/ByteArrayOutputStream;->close()V
  :L6
    if-eqz p1, :L7
    invoke-virtual { p1 }, Ljava/io/InputStream;->close()V
  :L7
  .line 171
    return-object v1
  :L8
  .line 167
    move-exception v1
  :L9
    invoke-virtual { v0 }, Ljava/io/ByteArrayOutputStream;->close()V
  :L10
    goto :L13
  :L11
    move-exception v0
  :L12
    invoke-virtual { v1, v0 }, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
  :L13
    throw v1
  :L14
    move-exception v0
    if-eqz p1, :L18
  :L15
    invoke-virtual { p1 }, Ljava/io/InputStream;->close()V
  :L16
    goto :L18
  :L17
    move-exception p1
    invoke-virtual { v0, p1 }, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
  :L18
    throw v0
.end method

.method private requireSession(Landroid/os/Bundle;)Lcom/nomone/vr_desktop/runtime/PtySession;
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 5
  .line 224
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->browsers:Lcom/nomone/vr_desktop/runtime/TerminalSessions;
    const-string v1, "session"
    const-string v2, ""
    invoke-virtual { p1, v1, v2 }, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Lcom/nomone/vr_desktop/runtime/TerminalSessions;->find(Ljava/lang/String;)Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
    move-result-object p1
  .line 225
    if-eqz p1, :L0
    iget-object v0, p1, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->session:Lcom/nomone/vr_desktop/runtime/PtySession;
    if-eqz v0, :L0
  .line 226
    iget-object p1, p1, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->session:Lcom/nomone/vr_desktop/runtime/PtySession;
    return-object p1
  :L0
  .line 225
    new-instance p1, Ljava/io/IOException;
    const-string v0, "Onbekende terminalsessie"
    invoke-direct { p1, v0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method private shutdown()V
  .registers 2
  .line 230
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->stopping:Z
  .line 231
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->web:Lcom/nomone/vr_desktop/runtime/TerminalServer;
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->web:Lcom/nomone/vr_desktop/runtime/TerminalServer;
    invoke-virtual { v0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->close()V
  :L0
  .line 232
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->filesWorkspace:Lcom/nomone/vr_desktop/runtime/FileWorkspace;
    if-eqz v0, :L1
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->filesWorkspace:Lcom/nomone/vr_desktop/runtime/FileWorkspace;
    invoke-virtual { v0 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->close()V
  :L1
  .line 233
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->browsers:Lcom/nomone/vr_desktop/runtime/TerminalSessions;
    invoke-virtual { v0 }, Lcom/nomone/vr_desktop/runtime/TerminalSessions;->close()V
  .line 234
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->sshSession:Lcom/nomone/vr_desktop/runtime/PtySession;
    if-eqz v0, :L2
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->sshSession:Lcom/nomone/vr_desktop/runtime/PtySession;
    invoke-virtual { v0 }, Lcom/nomone/vr_desktop/runtime/PtySession;->stop()V
  :L2
  .line 235
    invoke-virtual { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->stopSelf()V
  .line 236
    return-void
.end method

.method private startSession()V
  .catch Ljava/lang/Exception; { :L0 .. :L3 } :L11
  .catch Ljava/lang/LinkageError; { :L0 .. :L3 } :L10
  .catch Ljava/lang/Exception; { :L3 .. :L4 } :L6
  .catch Ljava/lang/LinkageError; { :L3 .. :L4 } :L5
  .catch Ljava/lang/Exception; { :L7 .. :L10 } :L11
  .catch Ljava/lang/LinkageError; { :L7 .. :L10 } :L10
  .registers 7
  .line 100
    const-string v0, "UbuntuRuntime"
    iget-boolean v1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->stopping:Z
    if-eqz v1, :L0
    return-void
  :L0
  .line 102
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->filesWorkspace:Lcom/nomone/vr_desktop/runtime/FileWorkspace;
    if-nez v1, :L1
  .line 103
    new-instance v1, Lcom/nomone/vr_desktop/runtime/ProotCommand;
    invoke-virtual { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->getFilesDir()Ljava/io/File;
    move-result-object v2
    new-instance v3, Ljava/io/File;
    invoke-virtual { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    move-result-object v4
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;
    invoke-direct { v3, v4 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-direct { v1, v2, v3 }, Lcom/nomone/vr_desktop/runtime/ProotCommand;-><init>(Ljava/io/File;Ljava/io/File;)V
  .line 104
    new-instance v2, Lcom/nomone/vr_desktop/runtime/FileWorkspace;
    invoke-static { v1 }, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    new-instance v3, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$9;
    invoke-direct { v3, v1 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$9;-><init>(Lcom/nomone/vr_desktop/runtime/ProotCommand;)V
    const-string v1, "/host-rootfs"
    invoke-direct { v2, v3, v1 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;-><init>(Lcom/nomone/vr_desktop/runtime/FileWorkspace$Runner;Ljava/lang/String;)V
    iput-object v2, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->filesWorkspace:Lcom/nomone/vr_desktop/runtime/FileWorkspace;
  :L1
  .line 106
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->web:Lcom/nomone/vr_desktop/runtime/TerminalServer;
    if-nez v1, :L2
    new-instance v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;
    new-instance v2, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$10;
    invoke-direct { v2, p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$10;-><init>(Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;)V
    iget-object v3, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->browsers:Lcom/nomone/vr_desktop/runtime/TerminalSessions;
    iget-object v4, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->filesWorkspace:Lcom/nomone/vr_desktop/runtime/FileWorkspace;
    const/16 v5, 8766
    invoke-direct { v1, v5, v2, v3, v4 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;-><init>(ILcom/nomone/vr_desktop/runtime/TerminalServer$Assets;Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;Lcom/nomone/vr_desktop/runtime/FileWorkspace;)V
    iput-object v1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->web:Lcom/nomone/vr_desktop/runtime/TerminalServer;
  :L2
  .line 107
    invoke-virtual { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->getFilesDir()Ljava/io/File;
    move-result-object v1
  .line 108
    invoke-static { v1 }, Lcom/nomone/vr_desktop/runtime/UbuntuImage;->ready(Ljava/io/File;)Z
    move-result v2
    if-eqz v2, :L9
  .line 109
    new-instance v2, Lcom/nomone/vr_desktop/runtime/ProotCommand;
    new-instance v3, Ljava/io/File;
    invoke-virtual { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    move-result-object v4
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;
    invoke-direct { v3, v4 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-direct { v2, v1, v3 }, Lcom/nomone/vr_desktop/runtime/ProotCommand;-><init>(Ljava/io/File;Ljava/io/File;)V
  .line 110
    iget-object v3, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->browsers:Lcom/nomone/vr_desktop/runtime/TerminalSessions;
    invoke-virtual { v3 }, Lcom/nomone/vr_desktop/runtime/TerminalSessions;->running()Z
    move-result v3
    if-nez v3, :L3
    iget-object v3, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->browsers:Lcom/nomone/vr_desktop/runtime/TerminalSessions;
    invoke-virtual { v3 }, Lcom/nomone/vr_desktop/runtime/TerminalSessions;->create()Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
  :L3
  .line 111
    invoke-direct { p0, v2, v1 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->startSsh(Lcom/nomone/vr_desktop/runtime/ProotCommand;Ljava/io/File;)V
  :L4
  .line 115
    goto :L8
  :L5
  .line 112
    move-exception v1
    goto :L7
  :L6
    move-exception v1
  :L7
  .line 113
    invoke-virtual { v1 }, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    move-result-object v2
    iput-object v2, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->sshError:Ljava/lang/String;
  .line 114
    const-string v2, "SSH-start mislukt"
    invoke-static { v0, v2, v1 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
  :L8
  .line 116
    invoke-direct { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->publishState()V
  .line 117
    invoke-direct { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->updateWake()V
  .line 118
    invoke-direct { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->notifyRuntime()V
  .line 125
    goto :L13
  :L9
  .line 108
    new-instance v1, Ljava/io/IOException;
    const-string v2, "Ubuntu Bare is nog niet ge\u00efnstalleerd"
    invoke-direct { v1, v2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v1
  :L10
  .line 119
    move-exception v1
    goto :L12
  :L11
    move-exception v1
  :L12
  .line 120
    invoke-virtual { v1 }, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    move-result-object v2
    iput-object v2, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->error:Ljava/lang/String;
  .line 121
    invoke-direct { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->publishState()V
  .line 122
    invoke-direct { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->updateWake()V
  .line 123
    const-string v2, "Terminalstart mislukt"
    invoke-static { v0, v2, v1 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
  .line 124
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Terminalstart mislukt: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->error:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p0, v0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->notifyState(Ljava/lang/String;)V
  :L13
  .line 126
    return-void
.end method

.method private startSsh(Lcom/nomone/vr_desktop/runtime/ProotCommand;Ljava/io/File;)V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/lang/Exception;
    }
  .end annotation
  .catchall { :L1 .. :L2 } :L13
  .catchall { :L2 .. :L3 } :L7
  .catchall { :L4 .. :L5 } :L13
  .catchall { :L8 .. :L9 } :L10
  .catchall { :L11 .. :L13 } :L13
  .catchall { :L14 .. :L15 } :L16
  .registers 15
  .line 129
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->sshSession:Lcom/nomone/vr_desktop/runtime/PtySession;
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->sshSession:Lcom/nomone/vr_desktop/runtime/PtySession;
    invoke-virtual { v0 }, Lcom/nomone/vr_desktop/runtime/PtySession;->running()Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 130
    invoke-virtual { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->getAssets()Landroid/content/res/AssetManager;
    move-result-object v0
    const-string v1, "linux/ssh-runtime-arm64.tar.gz"
    invoke-virtual { v0, v1 }, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    move-result-object v1
  :L1
    invoke-virtual { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->getAssets()Landroid/content/res/AssetManager;
    move-result-object v0
    const-string v2, "linux/ssh-authorized-key.pub"
    invoke-virtual { v0, v2 }, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    move-result-object v2
  :L2
  .line 131
    invoke-static { v1, v2, p2 }, Lcom/nomone/vr_desktop/runtime/UbuntuSsh;->install(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/File;)V
  :L3
  .line 132
    if-eqz v2, :L5
  :L4
    invoke-virtual { v2 }, Ljava/io/InputStream;->close()V
  :L5
    if-eqz v1, :L6
    invoke-virtual { v1 }, Ljava/io/InputStream;->close()V
  :L6
  .line 133
    invoke-static { p1, p2 }, Lcom/nomone/vr_desktop/runtime/UbuntuSsh;->ensureHostKey(Lcom/nomone/vr_desktop/runtime/ProotCommand;Ljava/io/File;)V
  .line 134
    const-string v0, ""
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->sshError:Ljava/lang/String;
  .line 135
    invoke-static { }, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/util/UUID;->toString()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->sshSessionId:Ljava/lang/String;
  .line 136
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->sshSessionId:Ljava/lang/String;
  .line 137
    new-instance v1, Lcom/nomone/vr_desktop/runtime/PtySession;
    const-string v10, "-P"
    const-string v11, "/run/dropbear.pid"
    const-string v2, "/usr/sbin/dropbear"
    const-string v3, "-F"
    const-string v4, "-E"
    const-string v5, "-s"
    const-string v6, "-p"
    const-string v7, "0.0.0.0:8022"
    const-string v8, "-r"
    const-string v9, "/etc/dropbear/dropbear_ecdsa_host_key"
    filled-new-array/range { v2 .. v11 }, [Ljava/lang/String;
    move-result-object v2
    invoke-virtual { p1, v2 }, Lcom/nomone/vr_desktop/runtime/ProotCommand;->command([Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v2
  .line 138
    invoke-virtual { p1 }, Lcom/nomone/vr_desktop/runtime/ProotCommand;->environment()[Ljava/lang/String;
    move-result-object v3
    invoke-virtual { p2 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v4
    new-instance v7, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$4;
    invoke-direct { v7, p0, v0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$4;-><init>(Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;Ljava/lang/String;)V
    const/16 v5, 24
    const/16 v6, 80
    invoke-direct/range { v1 .. v7 }, Lcom/nomone/vr_desktop/runtime/PtySession;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;IILcom/nomone/vr_desktop/runtime/PtySession$Listener;)V
    iput-object v1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->sshSession:Lcom/nomone/vr_desktop/runtime/PtySession;
  .line 146
    return-void
  :L7
  .line 130
    move-exception v0
    move-object p1, v0
    if-eqz v2, :L12
  :L8
    invoke-virtual { v2 }, Ljava/io/InputStream;->close()V
  :L9
    goto :L12
  :L10
    move-exception v0
    move-object p2, v0
  :L11
    invoke-virtual { p1, p2 }, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
  :L12
    throw p1
  :L13
    move-exception v0
    move-object p1, v0
    if-eqz v1, :L17
  :L14
    invoke-virtual { v1 }, Ljava/io/InputStream;->close()V
  :L15
    goto :L17
  :L16
    move-exception v0
    move-object p2, v0
    invoke-virtual { p1, p2 }, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
  :L17
    throw p1
.end method

.method private updateWake()V
  .registers 3
  .line 154
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->browsers:Lcom/nomone/vr_desktop/runtime/TerminalSessions;
    invoke-virtual { v0 }, Lcom/nomone/vr_desktop/runtime/TerminalSessions;->running()Z
    move-result v0
    if-nez v0, :L1
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->sshSession:Lcom/nomone/vr_desktop/runtime/PtySession;
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->sshSession:Lcom/nomone/vr_desktop/runtime/PtySession;
    invoke-virtual { v0 }, Lcom/nomone/vr_desktop/runtime/PtySession;->running()Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
  .line 155
    if-eqz v0, :L3
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->wake:Landroid/os/PowerManager$WakeLock;
    invoke-virtual { v1 }, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    move-result v1
    if-nez v1, :L3
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->wake:Landroid/os/PowerManager$WakeLock;
    invoke-virtual { v1 }, Landroid/os/PowerManager$WakeLock;->acquire()V
  :L3
  .line 156
    if-nez v0, :L4
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->wake:Landroid/os/PowerManager$WakeLock;
    invoke-virtual { v0 }, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    move-result v0
    if-eqz v0, :L4
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->wake:Landroid/os/PowerManager$WakeLock;
    invoke-virtual { v0 }, Landroid/os/PowerManager$WakeLock;->release()V
  :L4
  .line 157
    return-void
.end method

.method synthetic lambda$onCreate$0$com-nomone-vr_desktop-runtime-UbuntuRuntimeService(Ljava/lang/String;Lcom/nomone/vr_desktop/runtime/PtySession$Listener;)Lcom/nomone/vr_desktop/runtime/PtySession;
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 13
  .line 65
    invoke-virtual { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->getFilesDir()Ljava/io/File;
    move-result-object p1
  .line 66
    invoke-static { p1 }, Lcom/nomone/vr_desktop/runtime/UbuntuImage;->ready(Ljava/io/File;)Z
    move-result v0
    if-eqz v0, :L0
  .line 67
    new-instance v0, Lcom/nomone/vr_desktop/runtime/ProotCommand;
    new-instance v1, Ljava/io/File;
    invoke-virtual { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    move-result-object v2
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;
    invoke-direct { v1, v2 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-direct { v0, p1, v1 }, Lcom/nomone/vr_desktop/runtime/ProotCommand;-><init>(Ljava/io/File;Ljava/io/File;)V
  .line 68
    new-instance v3, Lcom/nomone/vr_desktop/runtime/PtySession;
    const-string v1, "--norc"
    const-string v2, "-i"
    const-string v4, "/bin/bash"
    const-string v5, "--noprofile"
    filled-new-array { v4, v5, v1, v2 }, [Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcom/nomone/vr_desktop/runtime/ProotCommand;->command([Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v0 }, Lcom/nomone/vr_desktop/runtime/ProotCommand;->environment()[Ljava/lang/String;
    move-result-object v5
    invoke-virtual { p1 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v6
    const/16 v7, 24
    const/16 v8, 80
    move-object v9, p2
    invoke-direct/range { v3 .. v9 }, Lcom/nomone/vr_desktop/runtime/PtySession;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;IILcom/nomone/vr_desktop/runtime/PtySession$Listener;)V
    return-object v3
  :L0
  .line 66
    new-instance p1, Ljava/io/IOException;
    const-string p2, "Ubuntu Bare is nog niet ge\u00efnstalleerd"
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method synthetic lambda$onCreate$1$com-nomone-vr_desktop-runtime-UbuntuRuntimeService()V
  .registers 2
  .line 69
    iget-boolean v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->stopping:Z
    if-nez v0, :L0
    invoke-direct { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->updateWake()V
    invoke-direct { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->notifyRuntime()V
  :L0
    return-void
.end method

.method synthetic lambda$onCreate$2$com-nomone-vr_desktop-runtime-UbuntuRuntimeService()V
  .registers 3
  .line 69
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->commands:Landroid/os/Handler;
    new-instance v1, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$6;
    invoke-direct { v1, p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$6;-><init>(Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;)V
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    return-void
.end method

.method synthetic lambda$onDestroy$5$com-nomone-vr_desktop-runtime-UbuntuRuntimeService()V
  .catch Ljava/lang/InterruptedException; { :L2 .. :L3 } :L4
  .registers 4
  .line 241
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->stopping:Z
  .line 242
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->web:Lcom/nomone/vr_desktop/runtime/TerminalServer;
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->web:Lcom/nomone/vr_desktop/runtime/TerminalServer;
    invoke-virtual { v0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->close()V
  :L0
  .line 243
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->filesWorkspace:Lcom/nomone/vr_desktop/runtime/FileWorkspace;
    if-eqz v0, :L1
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->filesWorkspace:Lcom/nomone/vr_desktop/runtime/FileWorkspace;
    invoke-virtual { v0 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->close()V
  :L1
  .line 244
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->browsers:Lcom/nomone/vr_desktop/runtime/TerminalSessions;
    invoke-virtual { v0 }, Lcom/nomone/vr_desktop/runtime/TerminalSessions;->close()V
  .line 245
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->sshSession:Lcom/nomone/vr_desktop/runtime/PtySession;
    if-eqz v0, :L5
  .line 246
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->sshSession:Lcom/nomone/vr_desktop/runtime/PtySession;
    invoke-virtual { v0 }, Lcom/nomone/vr_desktop/runtime/PtySession;->stop()V
  :L2
  .line 247
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->sshSession:Lcom/nomone/vr_desktop/runtime/PtySession;
    const-wide/16 v1, 3000
    invoke-virtual { v0, v1, v2 }, Lcom/nomone/vr_desktop/runtime/PtySession;->join(J)V
  :L3
  .line 248
    goto :L5
  :L4
    move-exception v0
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Thread;->interrupt()V
  :L5
  .line 250
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->wake:Landroid/os/PowerManager$WakeLock;
    invoke-virtual { v0 }, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    move-result v0
    if-eqz v0, :L6
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->wake:Landroid/os/PowerManager$WakeLock;
    invoke-virtual { v0 }, Landroid/os/PowerManager$WakeLock;->release()V
  :L6
  .line 251
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->worker:Landroid/os/HandlerThread;
    invoke-virtual { v0 }, Landroid/os/HandlerThread;->quitSafely()Z
  .line 252
    return-void
.end method

.method synthetic lambda$startSsh$3$com-nomone-vr_desktop-runtime-UbuntuRuntimeService(Ljava/lang/String;Ljava/lang/String;I)V
  .registers 5
  .line 140
    iget-boolean v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->stopping:Z
    if-nez v0, :L2
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->sshSessionId:Ljava/lang/String;
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-nez p1, :L0
    goto :L2
  :L0
  .line 141
    invoke-virtual { p2 }, Ljava/lang/String;->isEmpty()Z
    move-result p1
    if-eqz p1, :L1
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "SSH afgesloten \u00b7 exit "
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    invoke-virtual { p1, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
  :L1
    iput-object p2, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->sshError:Ljava/lang/String;
  .line 142
    invoke-direct { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->publishState()V
  .line 143
    invoke-direct { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->updateWake()V
  .line 144
    invoke-direct { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->notifyRuntime()V
  .line 145
    return-void
  :L2
  .line 140
    return-void
.end method

.method synthetic lambda$startSsh$4$com-nomone-vr_desktop-runtime-UbuntuRuntimeService(Ljava/lang/String;ILjava/lang/String;)V
  .registers 6
  .line 139
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->commands:Landroid/os/Handler;
    new-instance v1, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$3;
    invoke-direct { v1, p0, p1, p3, p2 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$3;-><init>(Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
  .registers 2
  .line 81
    iget-object p1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->messenger:Landroid/os/Messenger;
    invoke-virtual { p1 }, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;
    move-result-object p1
    return-object p1
.end method

.method public onCreate()V
  .registers 6
  .line 50
    invoke-super { p0 }, Landroid/app/Service;->onCreate()V
  .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-lt v0, v1, :L0
  .line 52
    const-class v0, Landroid/app/NotificationManager;
    invoke-virtual { p0, v0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/NotificationChannel;
    const-string v2, "Ubuntu-terminal"
    const/4 v3, 2
    const-string v4, "ubuntu-runtime"
    invoke-direct { v1, v4, v2, v3 }, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    invoke-virtual { v0, v1 }, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
  :L0
  .line 55
    const-string v0, "Ubuntu-terminal starten"
    invoke-direct { p0, v0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->notification(Ljava/lang/String;)Landroid/app/Notification;
    move-result-object v0
  .line 56
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 34
    const/16 v3, 2204
    if-lt v1, v2, :L1
    const/high16 v1, 1073741824
    invoke-virtual { p0, v3, v0, v1 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->startForeground(ILandroid/app/Notification;I)V
    goto :L2
  :L1
  .line 57
    invoke-virtual { p0, v3, v0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->startForeground(ILandroid/app/Notification;)V
  :L2
  .line 58
    const-string v0, "power"
    invoke-virtual { p0, v0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/os/PowerManager;
    const/4 v1, 1
    const-string v2, "nom.vrd:UbuntuRuntime"
    invoke-virtual { v0, v1, v2 }, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    move-result-object v0
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->wake:Landroid/os/PowerManager$WakeLock;
  .line 59
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->wake:Landroid/os/PowerManager$WakeLock;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
  .line 60
    new-instance v0, Landroid/os/HandlerThread;
    const-string v1, "Ubuntu-runtime-commands"
    invoke-direct { v0, v1 }, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->worker:Landroid/os/HandlerThread;
  .line 61
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->worker:Landroid/os/HandlerThread;
    invoke-virtual { v0 }, Landroid/os/HandlerThread;->start()V
  .line 62
    new-instance v0, Landroid/os/Handler;
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->worker:Landroid/os/HandlerThread;
    invoke-virtual { v1 }, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
    move-result-object v1
    new-instance v2, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$0;
    invoke-direct { v2, p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$0;-><init>(Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;)V
    invoke-direct { v0, v1, v2 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->commands:Landroid/os/Handler;
  .line 63
    new-instance v0, Landroid/os/Messenger;
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->commands:Landroid/os/Handler;
    invoke-direct { v0, v1 }, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->messenger:Landroid/os/Messenger;
  .line 64
    new-instance v0, Lcom/nomone/vr_desktop/runtime/TerminalSessions;
    new-instance v1, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$1;
    invoke-direct { v1, p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$1;-><init>(Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;)V
    new-instance v2, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$2;
    invoke-direct { v2, p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$2;-><init>(Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;)V
    invoke-direct { v0, v1, v2 }, Lcom/nomone/vr_desktop/runtime/TerminalSessions;-><init>(Lcom/nomone/vr_desktop/runtime/TerminalSessions$Factory;Ljava/lang/Runnable;)V
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->browsers:Lcom/nomone/vr_desktop/runtime/TerminalSessions;
  .line 70
    return-void
.end method

.method public onDestroy()V
  .registers 3
  .line 240
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->commands:Landroid/os/Handler;
    new-instance v1, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$5;
    invoke-direct { v1, p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$5;-><init>(Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;)V
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  .line 253
    invoke-super { p0 }, Landroid/app/Service;->onDestroy()V
  .line 254
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
  .registers 4
  .line 74
    if-eqz p1, :L0
    const-string p2, "stop"
    invoke-virtual { p1 }, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L0
    iget-object p1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->commands:Landroid/os/Handler;
    new-instance p2, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$7;
    invoke-direct { p2, p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$7;-><init>(Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;)V
    invoke-virtual { p1, p2 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    goto :L1
  :L0
  .line 75
    iget-object p1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->commands:Landroid/os/Handler;
    new-instance p2, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$8;
    invoke-direct { p2, p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$8;-><init>(Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;)V
    invoke-virtual { p1, p2 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  :L1
  .line 76
    const/4 p1, 2
    return p1
.end method
