.class public final Lg3/j;
.super Lg3/a;
.source "SourceFile"


# virtual methods
.method public final b(Lm3/d;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lg3/h;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "could not determine a constructor for the tag "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p1, Lm3/d;->a:Lm3/i;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    iget-object p1, p1, Lm3/d;->b:Lh3/a;

    .line 21
    .line 22
    invoke-direct {v0, v2, v2, v1, p1}, Lg3/h;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method
