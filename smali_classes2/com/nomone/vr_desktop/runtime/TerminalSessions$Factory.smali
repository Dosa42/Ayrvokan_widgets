.class public interface abstract Lcom/nomone/vr_desktop/runtime/TerminalSessions$Factory;
.super Ljava/lang/Object;
.source "TerminalSessions.java"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/nomone/vr_desktop/runtime/TerminalSessions;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1545
  name = "Factory"
.end annotation

.method public abstract open(Ljava/lang/String;Lcom/nomone/vr_desktop/runtime/PtySession$Listener;)Lcom/nomone/vr_desktop/runtime/PtySession;
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
.end method
