.class public abstract Lk2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/m;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I


# direct methods
.method public constructor <init>(IJJ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p4, p0, Lk2/e;->a:J

    iput p1, p0, Lk2/e;->c:I

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    iput-wide v0, p0, Lk2/e;->b:J

    goto :goto_0

    :cond_0
    sub-long v0, p2, p4

    iput-wide v0, p0, Lk2/e;->b:J

    invoke-static {p1, p2, p3, p4, p5}, Lk2/e;->d(IJJ)J

    :goto_0
    return-void
.end method

.method public static d(IJJ)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    sub-long/2addr p1, p3

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/16 p3, 0x8

    mul-long/2addr p1, p3

    const-wide/32 p3, 0xf4240

    mul-long/2addr p1, p3

    int-to-long p3, p0

    div-long/2addr p1, p3

    return-wide p1
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lk2/e;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
