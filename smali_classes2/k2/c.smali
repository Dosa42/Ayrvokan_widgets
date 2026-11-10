.class public final Lk2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lk2/c;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Lk2/c;

    const/4 v1, -0x3

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lk2/c;-><init>(IJJ)V

    sput-object v6, Lk2/c;->d:Lk2/c;

    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lk2/c;->a:I

    iput-wide p2, p0, Lk2/c;->b:J

    iput-wide p4, p0, Lk2/c;->c:J

    return-void
.end method
