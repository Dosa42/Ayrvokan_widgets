.class public final Ln2/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/ArrayList;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ln2/y;->a:I

    iput-object p2, p0, Ln2/y;->b:Ljava/lang/Object;

    if-nez p3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ln2/y;->c:Ljava/lang/Object;

    iput-object p4, p0, Ln2/y;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lb3/l;JJI)V
    .locals 6

    new-instance v1, Ly0/i;

    invoke-direct {v1}, Ly0/i;-><init>()V

    new-instance v0, Ln2/x;

    invoke-direct {v0, p6, p1}, Ln2/x;-><init>(ILb3/l;)V

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ln2/y;->c:Ljava/lang/Object;

    const/16 p1, 0x3ac

    iput p1, p0, Ln2/y;->a:I

    new-instance p1, Lk2/a;

    move-object v0, p1

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lk2/a;-><init>(Ly0/i;JJ)V

    iput-object p1, p0, Ln2/y;->b:Ljava/lang/Object;

    return-void
.end method

.method public static b(Lk2/f;J)I
    .locals 2

    .line 1
    sget-object v0, Lw2/h;->H:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    iget-wide v0, p0, Lk2/f;->d:J

    .line 4
    .line 5
    cmp-long p0, p1, v0

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x1

    .line 12
    :goto_0
    return p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ln2/y;->d:Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v0, p0, Ln2/y;->c:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Ln2/x;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lb3/n;->e:[B

    .line 12
    .line 13
    iget-object v0, v0, Ln2/x;->b:Lb3/h;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    array-length v2, v1

    .line 19
    invoke-virtual {v0, v1, v2}, Lb3/h;->o([BI)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
