.class public final Lp3/a;
.super Ljava/util/IdentityHashMap;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x4d627f4e9b8f4d0eL


# virtual methods
.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Lm3/d;

    .line 2
    .line 3
    new-instance v0, Lm3/a;

    .line 4
    .line 5
    invoke-direct {v0, p2}, Lm3/a;-><init>(Lm3/d;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lm3/d;

    .line 13
    .line 14
    return-object p1
.end method
