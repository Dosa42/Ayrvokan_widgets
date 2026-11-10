.class public final Li0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj1/d;


# static fields
.field public static final a:Li0/f;

.field public static final b:Lj1/c;

.field public static final c:Lj1/c;

.field public static final d:Lj1/c;

.field public static final e:Lj1/c;

.field public static final f:Lj1/c;

.field public static final g:Lj1/c;

.field public static final h:Lj1/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li0/f;

    invoke-direct {v0}, Li0/f;-><init>()V

    sput-object v0, Li0/f;->a:Li0/f;

    const-string v0, "requestTimeMs"

    invoke-static {v0}, Lj1/c;->b(Ljava/lang/String;)Lj1/c;

    move-result-object v0

    sput-object v0, Li0/f;->b:Lj1/c;

    const-string v0, "requestUptimeMs"

    invoke-static {v0}, Lj1/c;->b(Ljava/lang/String;)Lj1/c;

    move-result-object v0

    sput-object v0, Li0/f;->c:Lj1/c;

    const-string v0, "clientInfo"

    invoke-static {v0}, Lj1/c;->b(Ljava/lang/String;)Lj1/c;

    move-result-object v0

    sput-object v0, Li0/f;->d:Lj1/c;

    const-string v0, "logSource"

    invoke-static {v0}, Lj1/c;->b(Ljava/lang/String;)Lj1/c;

    move-result-object v0

    sput-object v0, Li0/f;->e:Lj1/c;

    const-string v0, "logSourceName"

    invoke-static {v0}, Lj1/c;->b(Ljava/lang/String;)Lj1/c;

    move-result-object v0

    sput-object v0, Li0/f;->f:Lj1/c;

    const-string v0, "logEvent"

    invoke-static {v0}, Lj1/c;->b(Ljava/lang/String;)Lj1/c;

    move-result-object v0

    sput-object v0, Li0/f;->g:Lj1/c;

    const-string v0, "qosTier"

    invoke-static {v0}, Lj1/c;->b(Ljava/lang/String;)Lj1/c;

    move-result-object v0

    sput-object v0, Li0/f;->h:Lj1/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Li0/t;

    .line 2
    .line 3
    check-cast p2, Lj1/e;

    .line 4
    .line 5
    check-cast p1, Li0/m;

    .line 6
    .line 7
    iget-wide v0, p1, Li0/m;->a:J

    .line 8
    .line 9
    sget-object v2, Li0/f;->b:Lj1/c;

    .line 10
    .line 11
    invoke-interface {p2, v2, v0, v1}, Lj1/e;->d(Lj1/c;J)Lj1/e;

    .line 12
    .line 13
    .line 14
    iget-wide v0, p1, Li0/m;->b:J

    .line 15
    .line 16
    sget-object v2, Li0/f;->c:Lj1/c;

    .line 17
    .line 18
    invoke-interface {p2, v2, v0, v1}, Lj1/e;->d(Lj1/c;J)Lj1/e;

    .line 19
    .line 20
    .line 21
    sget-object v0, Li0/f;->d:Lj1/c;

    .line 22
    .line 23
    iget-object v1, p1, Li0/m;->c:Li0/r;

    .line 24
    .line 25
    invoke-interface {p2, v0, v1}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 26
    .line 27
    .line 28
    sget-object v0, Li0/f;->e:Lj1/c;

    .line 29
    .line 30
    iget-object v1, p1, Li0/m;->d:Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-interface {p2, v0, v1}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 33
    .line 34
    .line 35
    sget-object v0, Li0/f;->f:Lj1/c;

    .line 36
    .line 37
    iget-object v1, p1, Li0/m;->e:Ljava/lang/String;

    .line 38
    .line 39
    invoke-interface {p2, v0, v1}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 40
    .line 41
    .line 42
    sget-object v0, Li0/f;->g:Lj1/c;

    .line 43
    .line 44
    iget-object v1, p1, Li0/m;->f:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {p2, v0, v1}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 47
    .line 48
    .line 49
    sget-object v0, Li0/f;->h:Lj1/c;

    .line 50
    .line 51
    iget-object p1, p1, Li0/m;->g:Li0/x;

    .line 52
    .line 53
    invoke-interface {p2, v0, p1}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 54
    .line 55
    .line 56
    return-void
.end method
