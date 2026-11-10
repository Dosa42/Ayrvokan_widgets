.class public final synthetic Lt2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/google/android/gms/internal/play_billing/v;

.field public final synthetic h:Lt2/n;

.field public final synthetic i:Lt2/f;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/v;Lt2/n;Lt2/f;I)V
    .locals 0

    .line 1
    iput p4, p0, Lt2/h;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lt2/h;->g:Lcom/google/android/gms/internal/play_billing/v;

    .line 4
    .line 5
    iput-object p2, p0, Lt2/h;->h:Lt2/n;

    .line 6
    .line 7
    iput-object p3, p0, Lt2/h;->i:Lt2/f;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lt2/h;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Lt2/h;->i:Lt2/f;

    .line 4
    .line 5
    iget-object v2, p0, Lt2/h;->h:Lt2/n;

    .line 6
    .line 7
    iget-object v3, p0, Lt2/h;->g:Lcom/google/android/gms/internal/play_billing/v;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    iget v0, v3, Lcom/google/android/gms/internal/play_billing/v;->a:I

    .line 14
    .line 15
    invoke-interface {v2, v0, v1}, Lt2/n;->onReadingStarted(ILt2/f;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_1
    iget v0, v3, Lcom/google/android/gms/internal/play_billing/v;->a:I

    .line 20
    .line 21
    invoke-interface {v2, v0, v1}, Lt2/n;->onMediaPeriodReleased(ILt2/f;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :goto_0
    iget v0, v3, Lcom/google/android/gms/internal/play_billing/v;->a:I

    .line 26
    .line 27
    invoke-interface {v2, v0, v1}, Lt2/n;->onMediaPeriodCreated(ILt2/f;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
