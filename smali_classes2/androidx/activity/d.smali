.class public abstract Landroidx/activity/d;
.super Lj/b;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/b0;
.implements Landroidx/savedstate/f;


# instance fields
.field public final b:Lb/a;

.field public final c:Landroidx/lifecycle/p;

.field public final d:Landroidx/savedstate/e;

.field public e:Landroidx/lifecycle/a0;

.field public final f:Landroidx/activity/e;

.field public final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final h:Landroidx/activity/b;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lj/b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lb/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lb/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/activity/d;->b:Lb/a;

    .line 10
    .line 11
    new-instance v0, Landroidx/lifecycle/p;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroidx/lifecycle/p;-><init>(Landroidx/lifecycle/n;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/activity/d;->c:Landroidx/lifecycle/p;

    .line 17
    .line 18
    new-instance v1, Landroidx/savedstate/e;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Landroidx/savedstate/e;-><init>(Landroidx/savedstate/f;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Landroidx/activity/d;->d:Landroidx/savedstate/e;

    .line 24
    .line 25
    new-instance v1, Landroidx/activity/e;

    .line 26
    .line 27
    new-instance v2, Landroidx/activity/a;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-direct {v2, p0, v3}, Landroidx/activity/a;-><init>(Ljava/lang/Object;I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2}, Landroidx/activity/e;-><init>(Landroidx/activity/a;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Landroidx/activity/d;->f:Landroidx/activity/e;

    .line 37
    .line 38
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Landroidx/activity/d;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    .line 45
    new-instance v1, Landroidx/activity/b;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Landroidx/activity/b;-><init>(Landroidx/activity/d;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Landroidx/activity/d;->h:Landroidx/activity/b;

    .line 51
    .line 52
    new-instance v1, Landroidx/activity/ComponentActivity$3;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$3;-><init>(Landroidx/activity/d;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->a(Landroidx/lifecycle/m;)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Landroidx/activity/ComponentActivity$4;

    .line 61
    .line 62
    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$4;-><init>(Landroidx/activity/d;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->a(Landroidx/lifecycle/m;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Landroidx/activity/ComponentActivity$5;

    .line 69
    .line 70
    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$5;-><init>(Landroidx/activity/d;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->a(Landroidx/lifecycle/m;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public static synthetic d(Landroidx/activity/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/savedstate/d;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/d;->d:Landroidx/savedstate/e;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/savedstate/e;->b:Landroidx/savedstate/d;

    .line 4
    .line 5
    return-object v0
.end method

.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/activity/d;->e()V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()Landroidx/lifecycle/a0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/activity/d;->e:Landroidx/lifecycle/a0;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/activity/c;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/activity/c;->a:Landroidx/lifecycle/a0;

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/activity/d;->e:Landroidx/lifecycle/a0;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/activity/d;->e:Landroidx/lifecycle/a0;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Landroidx/lifecycle/a0;

    .line 28
    .line 29
    invoke-direct {v0}, Landroidx/lifecycle/a0;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Landroidx/activity/d;->e:Landroidx/lifecycle/a0;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Landroidx/activity/d;->e:Landroidx/lifecycle/a0;

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public final c()Landroidx/lifecycle/p;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/d;->c:Landroidx/lifecycle/p;

    return-object v0
.end method

.method public final e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lw/a;->view_tree_lifecycle_owner:I

    .line 10
    .line 11
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget v1, Lx/a;->view_tree_view_model_store_owner:I

    .line 23
    .line 24
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget v1, Landroidx/savedstate/a;->view_tree_saved_state_registry_owner:I

    .line 36
    .line 37
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroidx/activity/d;->h:Landroidx/activity/b;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/activity/result/f;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/activity/d;->f:Landroidx/activity/e;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/activity/e;->b:Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/fragment/app/e;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, v0, Landroidx/activity/e;->a:Ljava/lang/Runnable;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/activity/d;->d:Landroidx/savedstate/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/savedstate/e;->a(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/activity/d;->b:Lb/a;

    .line 7
    .line 8
    iget-object v0, v0, Lb/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_4

    .line 19
    .line 20
    invoke-super {p0, p1}, Lj/b;->onCreate(Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroidx/activity/d;->h:Landroidx/activity/b;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const-string v1, "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS"

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS"

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/4 v4, 0x0

    .line 53
    :goto_0
    if-ge v4, v3, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    check-cast v5, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Ljava/lang/String;

    .line 70
    .line 71
    iget-object v7, v0, Landroidx/activity/result/f;->b:Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    iget-object v7, v0, Landroidx/activity/result/f;->c:Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    add-int/lit8 v4, v4, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    const-string v1, "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS"

    .line 93
    .line 94
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iput-object v1, v0, Landroidx/activity/result/f;->e:Ljava/util/ArrayList;

    .line 99
    .line 100
    const-string v1, "KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT"

    .line 101
    .line 102
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Ljava/util/Random;

    .line 107
    .line 108
    iput-object v1, v0, Landroidx/activity/result/f;->a:Ljava/util/Random;

    .line 109
    .line 110
    const-string v1, "KEY_COMPONENT_ACTIVITY_PENDING_RESULT"

    .line 111
    .line 112
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iget-object v0, v0, Landroidx/activity/result/f;->h:Landroid/os/Bundle;

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 119
    .line 120
    .line 121
    :cond_3
    :goto_1
    invoke-static {p0}, Landroidx/lifecycle/x;->c(Landroid/app/Activity;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    const/4 p1, 0x0

    .line 133
    throw p1
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Landroidx/activity/d;->h:Landroidx/activity/b;

    invoke-virtual {v2, p1, v1, v0}, Landroidx/activity/result/f;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/activity/d;->e:Landroidx/lifecycle/a0;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/c;

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroidx/activity/c;->a:Landroidx/lifecycle/a0;

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v1, Landroidx/activity/c;

    invoke-direct {v1}, Landroidx/activity/c;-><init>()V

    iput-object v0, v1, Landroidx/activity/c;->a:Landroidx/lifecycle/a0;

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/activity/d;->c:Landroidx/lifecycle/p;

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/lifecycle/p;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-object v1, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/i;

    .line 8
    .line 9
    const-string v2, "setCurrentState"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroidx/lifecycle/p;->D0(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->F0(Landroidx/lifecycle/i;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0, p1}, Lj/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroidx/activity/d;->d:Landroidx/savedstate/e;

    .line 21
    .line 22
    iget-object v0, v0, Landroidx/savedstate/e;->b:Landroidx/savedstate/d;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v1, Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, Landroidx/savedstate/d;->b:Landroid/os/Bundle;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v0, v0, Landroidx/savedstate/d;->a:Le/g;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance v2, Le/d;

    .line 45
    .line 46
    invoke-direct {v2, v0}, Le/d;-><init>(Le/g;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, v0, Le/g;->c:Ljava/util/WeakHashMap;

    .line 50
    .line 51
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {v0, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {v2}, Le/d;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {v2}, Le/d;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/util/Map$Entry;

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Ljava/lang/String;

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroidx/savedstate/b;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    new-instance v4, Landroid/os/Bundle;

    .line 84
    .line 85
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 86
    .line 87
    .line 88
    new-instance v5, Ljava/util/ArrayList;

    .line 89
    .line 90
    iget-object v0, v0, Landroidx/savedstate/b;->a:Ljava/util/HashSet;

    .line 91
    .line 92
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    .line 94
    .line 95
    const-string v0, "classes_to_restore"

    .line 96
    .line 97
    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 105
    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Landroidx/activity/d;->h:Landroidx/activity/b;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    new-instance v1, Ljava/util/ArrayList;

    .line 115
    .line 116
    iget-object v2, v0, Landroidx/activity/result/f;->b:Ljava/util/HashMap;

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    .line 124
    .line 125
    const-string v3, "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS"

    .line 126
    .line 127
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 128
    .line 129
    .line 130
    new-instance v1, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 137
    .line 138
    .line 139
    const-string v2, "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS"

    .line 140
    .line 141
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 142
    .line 143
    .line 144
    new-instance v1, Ljava/util/ArrayList;

    .line 145
    .line 146
    iget-object v2, v0, Landroidx/activity/result/f;->e:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 149
    .line 150
    .line 151
    const-string v2, "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS"

    .line 152
    .line 153
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 154
    .line 155
    .line 156
    iget-object v1, v0, Landroidx/activity/result/f;->h:Landroid/os/Bundle;

    .line 157
    .line 158
    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Landroid/os/Bundle;

    .line 163
    .line 164
    const-string v2, "KEY_COMPONENT_ACTIVITY_PENDING_RESULT"

    .line 165
    .line 166
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 167
    .line 168
    .line 169
    const-string v1, "KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT"

    .line 170
    .line 171
    iget-object v0, v0, Landroidx/activity/result/f;->a:Ljava/util/Random;

    .line 172
    .line 173
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method public final reportFullyDrawn()V
    .locals 2

    .line 1
    const-string v0, "reportFullyDrawn() for "

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lc1/b;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->reportFullyDrawn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 39
    .line 40
    .line 41
    throw v0
.end method

.method public final setContentView(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/activity/d;->e()V

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness",
                "MissingNullability"
            }
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Landroidx/activity/d;->e()V

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Landroidx/activity/d;->e()V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public final startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public final startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method
