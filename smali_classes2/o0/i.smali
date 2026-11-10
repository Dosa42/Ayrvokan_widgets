.class public final synthetic Lo0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/b;


# instance fields
.field public final synthetic f:Lo0/l;

.field public final synthetic g:Ljava/lang/Iterable;

.field public final synthetic h:Lj0/k;

.field public final synthetic i:J


# direct methods
.method public synthetic constructor <init>(Lo0/l;Ljava/lang/Iterable;Lj0/k;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/i;->f:Lo0/l;

    iput-object p2, p0, Lo0/i;->g:Ljava/lang/Iterable;

    iput-object p3, p0, Lo0/i;->h:Lj0/k;

    iput-wide p4, p0, Lo0/i;->i:J

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lo0/i;->f:Lo0/l;

    .line 2
    .line 3
    iget-object v1, v0, Lo0/l;->c:Lp0/d;

    .line 4
    .line 5
    check-cast v1, Lp0/k;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lo0/i;->g:Ljava/lang/Iterable;

    .line 11
    .line 12
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v4, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in "

    .line 26
    .line 27
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Lp0/k;->f(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v3, Ln0/b;

    .line 42
    .line 43
    const/4 v4, 0x2

    .line 44
    const-string v5, "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name"

    .line 45
    .line 46
    invoke-direct {v3, v1, v2, v5, v4}, Ln0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v3}, Lp0/k;->c(Lp0/i;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :goto_0
    iget-object v0, v0, Lo0/l;->g:Lr0/a;

    .line 53
    .line 54
    check-cast v0, Lr0/b;

    .line 55
    .line 56
    invoke-virtual {v0}, Lr0/b;->a()J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    iget-wide v4, p0, Lo0/i;->i:J

    .line 61
    .line 62
    add-long/2addr v2, v4

    .line 63
    new-instance v0, Lp0/e;

    .line 64
    .line 65
    iget-object v4, p0, Lo0/i;->h:Lj0/k;

    .line 66
    .line 67
    invoke-direct {v0, v2, v3, v4}, Lp0/e;-><init>(JLj0/k;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0}, Lp0/k;->c(Lp0/i;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    return-object v0
.end method
