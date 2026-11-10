.class public final Landroidx/savedstate/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/g;

.field public b:Landroid/os/Bundle;

.field public c:Z

.field public d:Landroidx/savedstate/b;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le/g;

    invoke-direct {v0}, Le/g;-><init>()V

    iput-object v0, p0, Landroidx/savedstate/d;->a:Le/g;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/savedstate/d;->e:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    const-class v0, Landroidx/lifecycle/y;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/savedstate/d;->e:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/savedstate/d;->d:Landroidx/savedstate/b;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Landroidx/savedstate/b;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Landroidx/savedstate/b;-><init>(Landroidx/savedstate/d;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Landroidx/savedstate/d;->d:Landroidx/savedstate/b;

    .line 17
    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Landroidx/savedstate/d;->d:Landroidx/savedstate/b;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, v1, Landroidx/savedstate/b;->a:Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    move-exception v1

    .line 37
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v4, "Class"

    .line 42
    .line 43
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, " must have default constructor in order to be automatically recreated"

    .line 54
    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw v2

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v1, "Can not perform this action after onSaveInstanceState"

    .line 69
    .line 70
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0
.end method
