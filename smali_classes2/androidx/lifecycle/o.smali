.class public final Landroidx/lifecycle/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/lifecycle/i;

.field public final b:Landroidx/lifecycle/l;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/m;Landroidx/lifecycle/i;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/lifecycle/q;->a:Ljava/util/HashMap;

    .line 5
    .line 6
    instance-of v0, p1, Landroidx/lifecycle/l;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Landroidx/lifecycle/l;

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroidx/lifecycle/q;->c(Ljava/lang/Class;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x2

    .line 22
    if-ne v1, v2, :cond_3

    .line 23
    .line 24
    sget-object v1, Landroidx/lifecycle/q;->b:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x1

    .line 37
    const/4 v3, 0x0

    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 45
    .line 46
    invoke-static {v0, p1}, Landroidx/lifecycle/q;->a(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Landroidx/lifecycle/SingleGeneratedAdapterObserver;

    .line 50
    .line 51
    invoke-direct {p1}, Landroidx/lifecycle/SingleGeneratedAdapterObserver;-><init>()V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    new-array v1, v1, [Landroidx/lifecycle/f;

    .line 60
    .line 61
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-ge v3, v2, :cond_2

    .line 66
    .line 67
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 72
    .line 73
    invoke-static {v2, p1}, Landroidx/lifecycle/q;->a(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    aput-object v2, v1, v3

    .line 78
    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    new-instance p1, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;

    .line 83
    .line 84
    invoke-direct {p1, v1}, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;-><init>([Landroidx/lifecycle/f;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    new-instance v0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;

    .line 89
    .line 90
    invoke-direct {v0, p1}, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;-><init>(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    move-object p1, v0

    .line 94
    :goto_1
    iput-object p1, p0, Landroidx/lifecycle/o;->b:Landroidx/lifecycle/l;

    .line 95
    .line 96
    iput-object p2, p0, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/i;

    .line 97
    .line 98
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/n;Landroidx/lifecycle/h;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroidx/lifecycle/h;->a()Landroidx/lifecycle/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/i;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-gez v2, :cond_0

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    :cond_0
    iput-object v1, p0, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/i;

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/lifecycle/o;->b:Landroidx/lifecycle/l;

    .line 17
    .line 18
    invoke-interface {v1, p1, p2}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/h;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/i;

    .line 22
    .line 23
    return-void
.end method
