.class public final Lj0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj1/d;


# static fields
.field public static final a:Lj0/f;

.field public static final b:Lj1/c;

.field public static final c:Lj1/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lj0/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lj0/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lj0/f;->a:Lj0/f;

    .line 7
    .line 8
    const-string v0, "currentCacheSizeBytes"

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
    sput-object v0, Lj0/f;->b:Lj1/c;

    .line 30
    .line 31
    const-string v0, "maxCacheSizeBytes"

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
    sput-object v0, Lj0/f;->c:Lj1/c;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lm0/g;

    .line 2
    .line 3
    check-cast p2, Lj1/e;

    .line 4
    .line 5
    iget-wide v0, p1, Lm0/g;->a:J

    .line 6
    .line 7
    sget-object v2, Lj0/f;->b:Lj1/c;

    .line 8
    .line 9
    invoke-interface {p2, v2, v0, v1}, Lj1/e;->d(Lj1/c;J)Lj1/e;

    .line 10
    .line 11
    .line 12
    sget-object v0, Lj0/f;->c:Lj1/c;

    .line 13
    .line 14
    iget-wide v1, p1, Lm0/g;->b:J

    .line 15
    .line 16
    invoke-interface {p2, v0, v1, v2}, Lj1/e;->d(Lj1/c;J)Lj1/e;

    .line 17
    .line 18
    .line 19
    return-void
.end method
