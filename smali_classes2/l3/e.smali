.class public final Ll3/e;
.super Ll3/d;
.source "SourceFile"


# static fields
.field public static final k:Ljava/util/logging/Logger;


# instance fields
.field public c:Ljava/lang/Class;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public transient f:Ljava/lang/reflect/Method;

.field public g:Ljava/lang/reflect/Field;

.field public h:[Ljava/lang/Class;

.field public i:Ll3/d;

.field public j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ll3/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ll3/e;->k:Ljava/util/logging/Logger;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Ll3/d;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iput-object v0, p0, Ll3/e;->d:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Ll3/e;->e:Ljava/lang/String;

    .line 8
    .line 9
    array-length p1, p2

    .line 10
    if-lez p1, :cond_0

    .line 11
    .line 12
    iput-object p2, p0, Ll3/e;->h:[Ljava/lang/Class;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput-object v0, p0, Ll3/e;->h:[Ljava/lang/Class;

    .line 16
    .line 17
    :goto_0
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Ll3/e;->j:Z

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()[Ljava/lang/Class;
    .locals 2

    .line 1
    iget-object v0, p0, Ll3/e;->h:[Ljava/lang/Class;

    if-nez v0, :cond_0

    iget-object v1, p0, Ll3/e;->i:Ll3/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ll3/d;->a()[Ljava/lang/Class;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ll3/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Ll3/e;->i:Ll3/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ll3/d;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final c()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Ll3/d;->b:Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Ll3/e;->i:Ll3/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ll3/d;->c()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll3/e;->f:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    iget-object v0, p0, Ll3/e;->g:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    iget-object v0, p0, Ll3/e;->i:Ll3/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ll3/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ll3/e;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Ll3/e;->j:Z

    if-nez v1, :cond_0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_6

    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ll3/e;->f:Ljava/lang/reflect/Method;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Ll3/e;->f:Ljava/lang/reflect/Method;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    iget-object v2, p0, Ll3/e;->f:Ljava/lang/reflect/Method;

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Ll3/e;->g:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Ll3/e;->i:Ll3/d;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1, p2}, Ll3/d;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "No setter/delegate for \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ll3/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' on object "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ll3/e;->k:Ljava/util/logging/Logger;

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final varargs f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 11

    .line 1
    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    array-length v7, p3

    if-eq v6, v7, :cond_0

    goto :goto_3

    :cond_0
    const/4 v6, 0x1

    move v7, v2

    move v8, v6

    :goto_2
    array-length v9, v5

    if-ge v7, v9, :cond_2

    aget-object v9, v5, v7

    aget-object v10, p3, v7

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_1

    move v8, v2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v4, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-object v4

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_5
    sget-object p1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    sget-object v0, Ll3/e;->k:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_6

    array-length p1, p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p3, p0, Ll3/e;->c:Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Ll3/e;->b()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p2, p1, p3, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Failed to find [%s(%d args)] for %s.%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method
