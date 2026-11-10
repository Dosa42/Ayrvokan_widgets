.class public final synthetic Lt2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:Lcom/google/android/gms/internal/play_billing/v;

.field public final synthetic g:Lt2/n;

.field public final synthetic h:Lt2/l;

.field public final synthetic i:Lt2/m;

.field public final synthetic j:Ljava/io/IOException;

.field public final synthetic k:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/v;Lt2/n;Lt2/l;Lt2/m;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt2/j;->f:Lcom/google/android/gms/internal/play_billing/v;

    iput-object p2, p0, Lt2/j;->g:Lt2/n;

    iput-object p3, p0, Lt2/j;->h:Lt2/l;

    iput-object p4, p0, Lt2/j;->i:Lt2/m;

    iput-object p5, p0, Lt2/j;->j:Ljava/io/IOException;

    iput-boolean p6, p0, Lt2/j;->k:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lt2/j;->g:Lt2/n;

    .line 2
    .line 3
    iget-object v3, p0, Lt2/j;->h:Lt2/l;

    .line 4
    .line 5
    iget-object v4, p0, Lt2/j;->i:Lt2/m;

    .line 6
    .line 7
    iget-object v5, p0, Lt2/j;->j:Ljava/io/IOException;

    .line 8
    .line 9
    iget-boolean v6, p0, Lt2/j;->k:Z

    .line 10
    .line 11
    iget-object v1, p0, Lt2/j;->f:Lcom/google/android/gms/internal/play_billing/v;

    .line 12
    .line 13
    iget v2, v1, Lcom/google/android/gms/internal/play_billing/v;->a:I

    .line 14
    .line 15
    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/v;->c:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v7, v1

    .line 18
    check-cast v7, Lt2/f;

    .line 19
    .line 20
    move v1, v2

    .line 21
    move-object v2, v7

    .line 22
    invoke-interface/range {v0 .. v6}, Lt2/n;->onLoadError(ILt2/f;Lt2/l;Lt2/m;Ljava/io/IOException;Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
