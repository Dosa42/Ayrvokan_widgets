.class public final Li0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj1/d;


# static fields
.field public static final a:Li0/b;

.field public static final b:Lj1/c;

.field public static final c:Lj1/c;

.field public static final d:Lj1/c;

.field public static final e:Lj1/c;

.field public static final f:Lj1/c;

.field public static final g:Lj1/c;

.field public static final h:Lj1/c;

.field public static final i:Lj1/c;

.field public static final j:Lj1/c;

.field public static final k:Lj1/c;

.field public static final l:Lj1/c;

.field public static final m:Lj1/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li0/b;

    invoke-direct {v0}, Li0/b;-><init>()V

    sput-object v0, Li0/b;->a:Li0/b;

    const-string v0, "sdkVersion"

    invoke-static {v0}, Lj1/c;->b(Ljava/lang/String;)Lj1/c;

    move-result-object v0

    sput-object v0, Li0/b;->b:Lj1/c;

    const-string v0, "model"

    invoke-static {v0}, Lj1/c;->b(Ljava/lang/String;)Lj1/c;

    move-result-object v0

    sput-object v0, Li0/b;->c:Lj1/c;

    const-string v0, "hardware"

    invoke-static {v0}, Lj1/c;->b(Ljava/lang/String;)Lj1/c;

    move-result-object v0

    sput-object v0, Li0/b;->d:Lj1/c;

    const-string v0, "device"

    invoke-static {v0}, Lj1/c;->b(Ljava/lang/String;)Lj1/c;

    move-result-object v0

    sput-object v0, Li0/b;->e:Lj1/c;

    const-string v0, "product"

    invoke-static {v0}, Lj1/c;->b(Ljava/lang/String;)Lj1/c;

    move-result-object v0

    sput-object v0, Li0/b;->f:Lj1/c;

    const-string v0, "osBuild"

    invoke-static {v0}, Lj1/c;->b(Ljava/lang/String;)Lj1/c;

    move-result-object v0

    sput-object v0, Li0/b;->g:Lj1/c;

    const-string v0, "manufacturer"

    invoke-static {v0}, Lj1/c;->b(Ljava/lang/String;)Lj1/c;

    move-result-object v0

    sput-object v0, Li0/b;->h:Lj1/c;

    const-string v0, "fingerprint"

    invoke-static {v0}, Lj1/c;->b(Ljava/lang/String;)Lj1/c;

    move-result-object v0

    sput-object v0, Li0/b;->i:Lj1/c;

    const-string v0, "locale"

    invoke-static {v0}, Lj1/c;->b(Ljava/lang/String;)Lj1/c;

    move-result-object v0

    sput-object v0, Li0/b;->j:Lj1/c;

    const-string v0, "country"

    invoke-static {v0}, Lj1/c;->b(Ljava/lang/String;)Lj1/c;

    move-result-object v0

    sput-object v0, Li0/b;->k:Lj1/c;

    const-string v0, "mccMnc"

    invoke-static {v0}, Lj1/c;->b(Ljava/lang/String;)Lj1/c;

    move-result-object v0

    sput-object v0, Li0/b;->l:Lj1/c;

    const-string v0, "applicationBuild"

    invoke-static {v0}, Lj1/c;->b(Ljava/lang/String;)Lj1/c;

    move-result-object v0

    sput-object v0, Li0/b;->m:Lj1/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Li0/a;

    .line 2
    .line 3
    check-cast p2, Lj1/e;

    .line 4
    .line 5
    check-cast p1, Li0/h;

    .line 6
    .line 7
    iget-object v0, p1, Li0/h;->a:Ljava/lang/Integer;

    .line 8
    .line 9
    sget-object v1, Li0/b;->b:Lj1/c;

    .line 10
    .line 11
    invoke-interface {p2, v1, v0}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Li0/h;->b:Ljava/lang/String;

    .line 15
    .line 16
    sget-object v1, Li0/b;->c:Lj1/c;

    .line 17
    .line 18
    invoke-interface {p2, v1, v0}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 19
    .line 20
    .line 21
    sget-object v0, Li0/b;->d:Lj1/c;

    .line 22
    .line 23
    iget-object v1, p1, Li0/h;->c:Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {p2, v0, v1}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 26
    .line 27
    .line 28
    sget-object v0, Li0/b;->e:Lj1/c;

    .line 29
    .line 30
    iget-object v1, p1, Li0/h;->d:Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {p2, v0, v1}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 33
    .line 34
    .line 35
    sget-object v0, Li0/b;->f:Lj1/c;

    .line 36
    .line 37
    iget-object v1, p1, Li0/h;->e:Ljava/lang/String;

    .line 38
    .line 39
    invoke-interface {p2, v0, v1}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 40
    .line 41
    .line 42
    sget-object v0, Li0/b;->g:Lj1/c;

    .line 43
    .line 44
    iget-object v1, p1, Li0/h;->f:Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {p2, v0, v1}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 47
    .line 48
    .line 49
    sget-object v0, Li0/b;->h:Lj1/c;

    .line 50
    .line 51
    iget-object v1, p1, Li0/h;->g:Ljava/lang/String;

    .line 52
    .line 53
    invoke-interface {p2, v0, v1}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 54
    .line 55
    .line 56
    sget-object v0, Li0/b;->i:Lj1/c;

    .line 57
    .line 58
    iget-object v1, p1, Li0/h;->h:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {p2, v0, v1}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 61
    .line 62
    .line 63
    sget-object v0, Li0/b;->j:Lj1/c;

    .line 64
    .line 65
    iget-object v1, p1, Li0/h;->i:Ljava/lang/String;

    .line 66
    .line 67
    invoke-interface {p2, v0, v1}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 68
    .line 69
    .line 70
    sget-object v0, Li0/b;->k:Lj1/c;

    .line 71
    .line 72
    iget-object v1, p1, Li0/h;->j:Ljava/lang/String;

    .line 73
    .line 74
    invoke-interface {p2, v0, v1}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 75
    .line 76
    .line 77
    sget-object v0, Li0/b;->l:Lj1/c;

    .line 78
    .line 79
    iget-object v1, p1, Li0/h;->k:Ljava/lang/String;

    .line 80
    .line 81
    invoke-interface {p2, v0, v1}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 82
    .line 83
    .line 84
    sget-object v0, Li0/b;->m:Lj1/c;

    .line 85
    .line 86
    iget-object p1, p1, Li0/h;->l:Ljava/lang/String;

    .line 87
    .line 88
    invoke-interface {p2, v0, p1}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 89
    .line 90
    .line 91
    return-void
.end method
