.class public final Lcom/nomone/vr_desktop/runtime/PtyNative;
.super Ljava/lang/Object;
.source "PtyNative.java"

.method static constructor <clinit>()V
  .registers 1
  .line 7
    const-string v0, "nomone_pty"
    invoke-static { v0 }, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
  .line 8
    return-void
.end method

.method private constructor <init>()V
  .registers 1
  .line 10
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static native close(I)V
.end method

.method public static native kill(I)V
.end method

.method public static native read(I)[B
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
.end method

.method public static native resize(III)V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
.end method

.method public static native spawn([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)[I
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
.end method

.method public static native terminate(I)V
.end method

.method public static native waitFor(I)I
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
.end method

.method public static native write(I[B)V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
.end method
