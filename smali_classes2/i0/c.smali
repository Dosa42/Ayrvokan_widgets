.class public final Li0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj1/d;


# static fields
.field public static final a:Li0/c;

.field public static final b:Lj1/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li0/c;

    invoke-direct {v0}, Li0/c;-><init>()V

    sput-object v0, Li0/c;->a:Li0/c;

    const-string v0, "logRequest"

    invoke-static {v0}, Lj1/c;->b(Ljava/lang/String;)Lj1/c;

    move-result-object v0

    sput-object v0, Li0/c;->b:Lj1/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Li0/p;

    .line 2
    .line 3
    check-cast p2, Lj1/e;

    .line 4
    .line 5
    check-cast p1, Li0/i;

    .line 6
    .line 7
    iget-object p1, p1, Li0/i;->a:Ljava/util/List;

    .line 8
    .line 9
    sget-object v0, Li0/c;->b:Lj1/c;

    .line 10
    .line 11
    invoke-interface {p2, v0, p1}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 12
    .line 13
    .line 14
    return-void
.end method
