.class public final Ln2/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb3/l;

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lb3/l;

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lb3/l;-><init>(J)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ln2/z;->a:Lb3/l;

    .line 12
    .line 13
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide v0, p0, Ln2/z;->b:J

    .line 19
    .line 20
    sget v0, Lb3/n;->a:I

    .line 21
    .line 22
    return-void
.end method
