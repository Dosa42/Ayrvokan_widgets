.class public final Lx2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lx2/f;

.field public final c:J

.field public final d:I

.field public final e:J

.field public final f:Lj2/b;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:J

.field public final j:J

.field public final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lx2/f;JIJLj2/b;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx2/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lx2/f;->b:Lx2/f;

    iput-wide p3, p0, Lx2/f;->c:J

    iput p5, p0, Lx2/f;->d:I

    iput-wide p6, p0, Lx2/f;->e:J

    iput-object p8, p0, Lx2/f;->f:Lj2/b;

    iput-object p9, p0, Lx2/f;->g:Ljava/lang/String;

    iput-object p10, p0, Lx2/f;->h:Ljava/lang/String;

    iput-wide p11, p0, Lx2/f;->i:J

    iput-wide p13, p0, Lx2/f;->j:J

    iput-boolean p15, p0, Lx2/f;->k:Z

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lx2/f;->e:J

    .line 8
    .line 9
    cmp-long v0, v2, v0

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    cmp-long p1, v2, v0

    .line 20
    .line 21
    if-gez p1, :cond_1

    .line 22
    .line 23
    const/4 p1, -0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    :goto_0
    return p1
.end method
