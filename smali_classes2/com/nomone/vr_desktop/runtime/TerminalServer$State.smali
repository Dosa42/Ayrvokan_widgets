.class public final Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
.super Ljava/lang/Object;
.source "TerminalServer.java"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/nomone/vr_desktop/runtime/TerminalServer;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 25
  name = "State"
.end annotation

.field public final error:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final session:Lcom/nomone/vr_desktop/runtime/PtySession;

.field public final ssh:Lcom/nomone/vr_desktop/runtime/PtySession;

.field public final sshError:Ljava/lang/String;

.method public constructor <init>(Ljava/lang/String;Lcom/nomone/vr_desktop/runtime/PtySession;Ljava/lang/String;)V
  .registers 10
  .line 52
    const/4 v4, 0
    const-string v5, ""
    move-object v0, p0
    move-object v1, p1
    move-object v2, p2
    move-object v3, p3
    invoke-direct/range { v0 .. v5 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;-><init>(Ljava/lang/String;Lcom/nomone/vr_desktop/runtime/PtySession;Ljava/lang/String;Lcom/nomone/vr_desktop/runtime/PtySession;Ljava/lang/String;)V
  .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nomone/vr_desktop/runtime/PtySession;Ljava/lang/String;Lcom/nomone/vr_desktop/runtime/PtySession;Ljava/lang/String;)V
  .registers 6
  .line 55
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 56
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->id:Ljava/lang/String;
  .line 57
    iput-object p2, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->session:Lcom/nomone/vr_desktop/runtime/PtySession;
  .line 58
    iput-object p3, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->error:Ljava/lang/String;
  .line 59
    iput-object p4, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->ssh:Lcom/nomone/vr_desktop/runtime/PtySession;
  .line 60
    iput-object p5, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->sshError:Ljava/lang/String;
  .line 61
    return-void
.end method
