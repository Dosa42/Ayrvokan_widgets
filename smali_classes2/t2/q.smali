.class public final Lt2/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ld3/u0;IJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    rem-int/lit8 v0, p2, 0x5a

    if-nez v0, :cond_0

    iput-object p1, p0, Lt2/q;->c:Ljava/lang/Object;

    iput p2, p0, Lt2/q;->a:I

    iput-wide p3, p0, Lt2/q;->b:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rotation must be a multiple of 90"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
