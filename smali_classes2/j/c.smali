.class public final Lj/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Bundle;

.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public final c:Z

.field public final d:Z

.field public final e:I

.field public final f:Ljava/lang/CharSequence;

.field public final g:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->a(I)Landroidx/core/graphics/drawable/IconCompat;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lj/c;->d:Z

    .line 19
    .line 20
    iput-object p1, p0, Lj/c;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 21
    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    iget v2, p1, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 25
    .line 26
    const/4 v3, -0x1

    .line 27
    if-ne v2, v3, :cond_2

    .line 28
    .line 29
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    iget-object v4, p1, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v4, Landroid/graphics/drawable/Icon;

    .line 34
    .line 35
    const/16 v5, 0x1c

    .line 36
    .line 37
    if-lt v2, v5, :cond_1

    .line 38
    .line 39
    invoke-static {v4}, Lj/f;->o(Landroid/graphics/drawable/Icon;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v5, "getType"

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    new-array v7, v6, [Ljava/lang/Class;

    .line 52
    .line 53
    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    new-array v5, v6, [Ljava/lang/Object;

    .line 58
    .line 59
    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_1

    .line 70
    :catch_0
    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move v2, v3

    .line 74
    :cond_2
    :goto_1
    const/4 v3, 0x2

    .line 75
    if-ne v2, v3, :cond_3

    .line 76
    .line 77
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->b()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    iput p1, p0, Lj/c;->e:I

    .line 82
    .line 83
    :cond_3
    invoke-static {p2}, Lj/e;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p0, Lj/c;->f:Ljava/lang/CharSequence;

    .line 88
    .line 89
    iput-object p3, p0, Lj/c;->g:Landroid/app/PendingIntent;

    .line 90
    .line 91
    iput-object v0, p0, Lj/c;->a:Landroid/os/Bundle;

    .line 92
    .line 93
    iput-boolean v1, p0, Lj/c;->c:Z

    .line 94
    .line 95
    iput-boolean v1, p0, Lj/c;->d:Z

    .line 96
    .line 97
    return-void
.end method
