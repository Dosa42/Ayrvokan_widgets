.class public final Landroidx/savedstate/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Landroidx/savedstate/d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/savedstate/b;->a:Ljava/util/HashSet;

    .line 10
    .line 11
    iget-object p1, p1, Landroidx/savedstate/d;->a:Le/g;

    .line 12
    .line 13
    const-string v0, "androidx.savedstate.Restarter"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Le/g;->e(Ljava/lang/Object;)Le/c;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object p1, v1, Le/c;->b:Ljava/lang/Object;

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    new-instance v1, Le/c;

    .line 25
    .line 26
    invoke-direct {v1, v0, p0}, Le/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget v0, p1, Le/g;->d:I

    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    iput v0, p1, Le/g;->d:I

    .line 34
    .line 35
    iget-object v0, p1, Le/g;->b:Le/c;

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iput-object v1, p1, Le/g;->a:Le/c;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iput-object v1, v0, Le/c;->c:Le/c;

    .line 43
    .line 44
    iput-object v0, v1, Le/c;->d:Le/c;

    .line 45
    .line 46
    :goto_0
    iput-object v1, p1, Le/g;->b:Le/c;

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    :goto_1
    check-cast p1, Landroidx/savedstate/b;

    .line 50
    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    const-string v0, "SavedStateProvider with the given key is already registered"

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method
