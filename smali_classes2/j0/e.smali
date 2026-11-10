.class public final Lj0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj1/d;


# static fields
.field public static final a:Lj0/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj0/e;

    invoke-direct {v0}, Lj0/e;-><init>()V

    sput-object v0, Lj0/e;->a:Lj0/e;

    const-string v0, "clientMetrics"

    invoke-static {v0}, Lj1/c;->b(Ljava/lang/String;)Lj1/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    check-cast p2, Lj1/e;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    throw p1
.end method
