.class public final Ll2/a;
.super Lk2/e;
.source "SourceFile"

# interfaces
.implements Ll2/d;


# direct methods
.method public constructor <init>(JJLk2/l;)V
    .locals 6

    .line 1
    iget v1, p5, Lk2/l;->f:I

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lk2/e;-><init>(IJJ)V

    return-void
.end method


# virtual methods
.method public final b(J)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lk2/e;->a:J

    .line 2
    .line 3
    iget v2, p0, Lk2/e;->c:I

    .line 4
    .line 5
    invoke-static {v2, p1, p2, v0, v1}, Lk2/e;->d(IJJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    return-wide p1
.end method

.method public final c()J
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    return-wide v0
.end method
