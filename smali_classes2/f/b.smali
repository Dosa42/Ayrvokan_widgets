.class public final Lf/b;
.super Lf/i;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field public h:Lf/a;


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 3

    .line 1
    iget-object v0, p0, Lf/b;->h:Lf/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lf/a;

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lf/a;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lf/b;->h:Lf/a;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lf/b;->h:Lf/a;

    .line 14
    .line 15
    iget-object v2, v0, Lf/h;->a:Lf/e;

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    new-instance v2, Lf/e;

    .line 20
    .line 21
    invoke-direct {v2, v0, v1}, Lf/e;-><init>(Lf/h;I)V

    .line 22
    .line 23
    .line 24
    iput-object v2, v0, Lf/h;->a:Lf/e;

    .line 25
    .line 26
    :cond_1
    iget-object v0, v0, Lf/h;->a:Lf/e;

    .line 27
    .line 28
    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 3

    .line 1
    iget-object v0, p0, Lf/b;->h:Lf/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lf/a;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lf/a;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lf/b;->h:Lf/a;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lf/b;->h:Lf/a;

    .line 14
    .line 15
    iget-object v1, v0, Lf/h;->b:Lf/e;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Lf/e;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-direct {v1, v0, v2}, Lf/e;-><init>(Lf/h;I)V

    .line 23
    .line 24
    .line 25
    iput-object v1, v0, Lf/h;->b:Lf/e;

    .line 26
    .line 27
    :cond_1
    iget-object v0, v0, Lf/h;->b:Lf/e;

    .line 28
    .line 29
    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2

    .line 1
    iget v0, p0, Lf/i;->c:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lf/i;->b(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final values()Ljava/util/Collection;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/b;->h:Lf/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lf/a;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lf/a;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lf/b;->h:Lf/a;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lf/b;->h:Lf/a;

    .line 14
    .line 15
    iget-object v1, v0, Lf/h;->c:Lf/g;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Lf/g;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Lf/g;-><init>(Lf/h;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Lf/h;->c:Lf/g;

    .line 25
    .line 26
    :cond_1
    iget-object v0, v0, Lf/h;->c:Lf/g;

    .line 27
    .line 28
    return-object v0
.end method
