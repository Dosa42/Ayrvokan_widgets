.class public final Li0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj1/d;


# static fields
.field public static final a:Li0/g;

.field public static final b:Lj1/c;

.field public static final c:Lj1/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li0/g;

    invoke-direct {v0}, Li0/g;-><init>()V

    sput-object v0, Li0/g;->a:Li0/g;

    const-string v0, "networkType"

    invoke-static {v0}, Lj1/c;->b(Ljava/lang/String;)Lj1/c;

    move-result-object v0

    sput-object v0, Li0/g;->b:Lj1/c;

    const-string v0, "mobileSubtype"

    invoke-static {v0}, Lj1/c;->b(Ljava/lang/String;)Lj1/c;

    move-result-object v0

    sput-object v0, Li0/g;->c:Lj1/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Li0/w;

    .line 2
    .line 3
    check-cast p2, Lj1/e;

    .line 4
    .line 5
    check-cast p1, Li0/o;

    .line 6
    .line 7
    iget-object v0, p1, Li0/o;->a:Li0/v;

    .line 8
    .line 9
    sget-object v1, Li0/g;->b:Lj1/c;

    .line 10
    .line 11
    invoke-interface {p2, v1, v0}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 12
    .line 13
    .line 14
    sget-object v0, Li0/g;->c:Lj1/c;

    .line 15
    .line 16
    iget-object p1, p1, Li0/o;->b:Li0/u;

    .line 17
    .line 18
    invoke-interface {p2, v0, p1}, Lj1/e;->c(Lj1/c;Ljava/lang/Object;)Lj1/e;

    .line 19
    .line 20
    .line 21
    return-void
.end method
