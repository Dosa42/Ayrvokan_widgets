.class public final Lj0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj1/d;


# static fields
.field public static final a:Lj0/b;

.field public static final b:Lj1/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lj0/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lj0/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lj0/b;->a:Lj0/b;

    .line 7
    .line 8
    const-string v0, "storageMetrics"

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
    sput-object v0, Lj0/b;->b:Lj1/c;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lm0/b;

    .line 2
    .line 3
    check-cast p2, Lj1/e;

    .line 4
    .line 5
    iget-object p1, p1, Lm0/b;->a:Lm0/g;

    .line 6
    .line 7
    sget-object v0, Lj0/b;->b:Lj1/c;

    .line 8
    .line 9
    invoke-interface {p2, v0, p1}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 10
    .line 11
    .line 12
    return-void
.end method
