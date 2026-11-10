.class public abstract Ld3/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public abstract a(Ljava/lang/Object;)I
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld3/u;->a(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p2}, Ld3/u;->a(Ljava/lang/Object;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
