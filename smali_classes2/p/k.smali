.class public abstract Lp/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/reflect/Field;

.field public static b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    sput-boolean v0, Lp/k;->b:Z

    .line 9
    .line 10
    new-instance v0, Ljava/util/WeakHashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static a(Landroid/view/View;Lp/b;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 3
    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v2, 0x1d

    .line 7
    .line 8
    if-lt v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    sget-boolean v1, Lp/k;->b:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    sget-object v1, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    :try_start_0
    const-class v1, Landroid/view/View;

    .line 26
    .line 27
    const-string v3, "mAccessibilityDelegate"

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sput-object v1, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 36
    .line 37
    .line 38
    :cond_2
    sget-object v1, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 39
    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    instance-of v3, v1, Landroid/view/View$AccessibilityDelegate;

    .line 45
    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    check-cast v1, Landroid/view/View$AccessibilityDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    sput-boolean v2, Lp/k;->b:Z

    .line 52
    .line 53
    :cond_3
    :goto_0
    move-object v1, v0

    .line 54
    :goto_1
    instance-of v1, v1, Lp/a;

    .line 55
    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    new-instance p1, Lp/b;

    .line 59
    .line 60
    invoke-direct {p1}, Lp/b;-><init>()V

    .line 61
    .line 62
    .line 63
    :cond_4
    if-nez p1, :cond_5

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_5
    iget-object v0, p1, Lp/b;->b:Lp/a;

    .line 67
    .line 68
    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public static b(Landroid/view/View;Lp/f;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void

    :cond_0
    new-instance v0, Lp/g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lp/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method
