.class public final Ll2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/d;


# instance fields
.field public final a:[J

.field public final b:[J

.field public final c:J


# direct methods
.method public constructor <init>([J[JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll2/e;->a:[J

    iput-object p2, p0, Ll2/e;->b:[J

    iput-wide p3, p0, Ll2/e;->c:J

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final b(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Ll2/e;->b:[J

    invoke-static {v0, p1, p2}, Lb3/n;->b([JJ)I

    move-result p1

    iget-object p2, p0, Ll2/e;->a:[J

    aget-wide p1, p2, p1

    return-wide p1
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ll2/e;->c:J

    return-wide v0
.end method
