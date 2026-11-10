.class public final synthetic Lt2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/google/android/gms/internal/play_billing/v;

.field public final synthetic h:Lt2/n;

.field public final synthetic i:Lt2/l;

.field public final synthetic j:Lt2/m;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/v;Lt2/n;Lt2/l;Lt2/m;I)V
    .locals 0

    .line 1
    iput p5, p0, Lt2/i;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lt2/i;->g:Lcom/google/android/gms/internal/play_billing/v;

    .line 4
    .line 5
    iput-object p2, p0, Lt2/i;->h:Lt2/n;

    .line 6
    .line 7
    iput-object p3, p0, Lt2/i;->i:Lt2/l;

    .line 8
    .line 9
    iput-object p4, p0, Lt2/i;->j:Lt2/m;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lt2/i;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Lt2/i;->j:Lt2/m;

    .line 4
    .line 5
    iget-object v2, p0, Lt2/i;->i:Lt2/l;

    .line 6
    .line 7
    iget-object v3, p0, Lt2/i;->h:Lt2/n;

    .line 8
    .line 9
    iget-object v4, p0, Lt2/i;->g:Lcom/google/android/gms/internal/play_billing/v;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_0
    iget v0, v4, Lcom/google/android/gms/internal/play_billing/v;->a:I

    .line 16
    .line 17
    iget-object v4, v4, Lcom/google/android/gms/internal/play_billing/v;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v4, Lt2/f;

    .line 20
    .line 21
    invoke-interface {v3, v0, v4, v2, v1}, Lt2/n;->onLoadCanceled(ILt2/f;Lt2/l;Lt2/m;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_1
    iget v0, v4, Lcom/google/android/gms/internal/play_billing/v;->a:I

    .line 26
    .line 27
    iget-object v4, v4, Lcom/google/android/gms/internal/play_billing/v;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v4, Lt2/f;

    .line 30
    .line 31
    invoke-interface {v3, v0, v4, v2, v1}, Lt2/n;->onLoadStarted(ILt2/f;Lt2/l;Lt2/m;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :goto_0
    iget v0, v4, Lcom/google/android/gms/internal/play_billing/v;->a:I

    .line 36
    .line 37
    iget-object v4, v4, Lcom/google/android/gms/internal/play_billing/v;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v4, Lt2/f;

    .line 40
    .line 41
    invoke-interface {v3, v0, v4, v2, v1}, Lt2/n;->onLoadCompleted(ILt2/f;Lt2/l;Lt2/m;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
