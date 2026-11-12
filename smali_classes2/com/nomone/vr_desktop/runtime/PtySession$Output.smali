.class public final Lcom/nomone/vr_desktop/runtime/PtySession$Output;
.super Ljava/lang/Object;
.source "PtySession.java"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/nomone/vr_desktop/runtime/PtySession;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 25
  name = "Output"
.end annotation

.field public final bytes:[B

.field public final cursor:J

.field public final truncated:Z

.method constructor <init>([BJZ)V
  .registers 5
  .line 15
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 16
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/PtySession$Output;->bytes:[B
  .line 17
    iput-wide p2, p0, Lcom/nomone/vr_desktop/runtime/PtySession$Output;->cursor:J
  .line 18
    iput-boolean p4, p0, Lcom/nomone/vr_desktop/runtime/PtySession$Output;->truncated:Z
  .line 19
    return-void
.end method
