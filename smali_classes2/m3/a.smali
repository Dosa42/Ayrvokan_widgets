.class public final Lm3/a;
.super Lm3/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lm3/d;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lm3/d;->a:Lm3/i;

    .line 2
    .line 3
    iget-object v1, p1, Lm3/d;->b:Lh3/a;

    .line 4
    .line 5
    iget-object p1, p1, Lm3/d;->c:Lh3/a;

    .line 6
    .line 7
    invoke-direct {p0, v0, v1, p1}, Lm3/d;-><init>(Lm3/i;Lh3/a;Lh3/a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Lm3/e;
    .locals 1

    .line 1
    sget-object v0, Lm3/e;->d:Lm3/e;

    return-object v0
.end method
