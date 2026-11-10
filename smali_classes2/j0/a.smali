.class public final Lj0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj1/d;


# static fields
.field public static final a:Lj0/a;

.field public static final b:Lj1/c;

.field public static final c:Lj1/c;

.field public static final d:Lj1/c;

.field public static final e:Lj1/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lj0/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lj0/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lj0/a;->a:Lj0/a;

    .line 7
    .line 8
    const-string v0, "window"

    .line 9
    .line 10
    invoke-static {v0}, Lj1/c;->a(Ljava/lang/String;)Landroidx/fragment/app/h;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lm1/d;->a:Lm1/d;

    .line 15
    .line 16
    new-instance v2, Lm1/a;

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-direct {v2, v3, v1}, Lm1/a;-><init>(ILm1/d;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroidx/fragment/app/h;->s(Lm1/a;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/h;->k()Lj1/c;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lj0/a;->b:Lj1/c;

    .line 30
    .line 31
    const-string v0, "logSourceMetrics"

    .line 32
    .line 33
    invoke-static {v0}, Lj1/c;->a(Ljava/lang/String;)Landroidx/fragment/app/h;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v2, Lm1/a;

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    invoke-direct {v2, v3, v1}, Lm1/a;-><init>(ILm1/d;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroidx/fragment/app/h;->s(Lm1/a;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/fragment/app/h;->k()Lj1/c;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lj0/a;->c:Lj1/c;

    .line 51
    .line 52
    const-string v0, "globalMetrics"

    .line 53
    .line 54
    invoke-static {v0}, Lj1/c;->a(Ljava/lang/String;)Landroidx/fragment/app/h;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v2, Lm1/a;

    .line 59
    .line 60
    const/4 v3, 0x3

    .line 61
    invoke-direct {v2, v3, v1}, Lm1/a;-><init>(ILm1/d;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroidx/fragment/app/h;->s(Lm1/a;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/fragment/app/h;->k()Lj1/c;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lj0/a;->d:Lj1/c;

    .line 72
    .line 73
    const-string v0, "appNamespace"

    .line 74
    .line 75
    invoke-static {v0}, Lj1/c;->a(Ljava/lang/String;)Landroidx/fragment/app/h;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v2, Lm1/a;

    .line 80
    .line 81
    const/4 v3, 0x4

    .line 82
    invoke-direct {v2, v3, v1}, Lm1/a;-><init>(ILm1/d;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2}, Landroidx/fragment/app/h;->s(Lm1/a;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Landroidx/fragment/app/h;->k()Lj1/c;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    sput-object v0, Lj0/a;->e:Lj1/c;

    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lm0/a;

    .line 2
    .line 3
    check-cast p2, Lj1/e;

    .line 4
    .line 5
    iget-object v0, p1, Lm0/a;->a:Lm0/h;

    .line 6
    .line 7
    sget-object v1, Lj0/a;->b:Lj1/c;

    .line 8
    .line 9
    invoke-interface {p2, v1, v0}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 10
    .line 11
    .line 12
    sget-object v0, Lj0/a;->c:Lj1/c;

    .line 13
    .line 14
    iget-object v1, p1, Lm0/a;->b:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p2, v0, v1}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 17
    .line 18
    .line 19
    sget-object v0, Lj0/a;->d:Lj1/c;

    .line 20
    .line 21
    iget-object v1, p1, Lm0/a;->c:Lm0/b;

    .line 22
    .line 23
    invoke-interface {p2, v0, v1}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 24
    .line 25
    .line 26
    sget-object v0, Lj0/a;->e:Lj1/c;

    .line 27
    .line 28
    iget-object p1, p1, Lm0/a;->d:Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {p2, v0, p1}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 31
    .line 32
    .line 33
    return-void
.end method
