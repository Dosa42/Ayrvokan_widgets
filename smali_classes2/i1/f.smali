.class public final Li1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ly0/j0;

.field public c:Z

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Li1/f;->a:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ly0/j0;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Ly0/j0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Li1/f;->b:Ly0/j0;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Li1/f;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    sget v0, Lf2/v;->a:I

    .line 6
    .line 7
    iget-object v0, p0, Li1/f;->a:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-boolean v1, p0, Li1/f;->c:Z

    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 13
    if-eqz v1, :cond_5

    .line 14
    .line 15
    iget-object v0, p0, Li1/f;->a:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_1
    iget-object v1, p0, Li1/f;->e:Ljava/lang/Exception;

    .line 19
    .line 20
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 21
    if-nez v1, :cond_4

    .line 22
    .line 23
    iget-object v0, p0, Li1/f;->a:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_2
    iget-boolean v2, p0, Li1/f;->c:Z

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-object v2, p0, Li1/f;->e:Ljava/lang/Exception;

    .line 31
    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v2, 0x0

    .line 37
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    iget-object v0, p0, Li1/f;->a:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v0

    .line 43
    :try_start_3
    iget-boolean v2, p0, Li1/f;->c:Z

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    iget-object v2, p0, Li1/f;->e:Ljava/lang/Exception;

    .line 48
    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    iget-object v2, p0, Li1/f;->d:Ljava/lang/Object;

    .line 52
    .line 53
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v2, "result "

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    :try_start_4
    new-instance v1, Landroidx/fragment/app/b;

    .line 66
    .line 67
    invoke-direct {v1, v2}, Landroidx/fragment/app/b;-><init>(Ljava/lang/Exception;)V

    .line 68
    .line 69
    .line 70
    throw v1

    .line 71
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    const-string v2, "Task is not yet complete"

    .line 74
    .line 75
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v1

    .line 79
    :catchall_0
    move-exception v1

    .line 80
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    throw v1

    .line 82
    :cond_3
    const-string v0, "unknown issue"

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catchall_1
    move-exception v1

    .line 86
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 87
    throw v1

    .line 88
    :cond_4
    const-string v0, "failure"

    .line 89
    .line 90
    :goto_1
    const-string v2, "Complete with: "

    .line 91
    .line 92
    new-instance v3, Lf2/v;

    .line 93
    .line 94
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-direct {v3, v0, v1}, Lf2/v;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catchall_2
    move-exception v1

    .line 103
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 104
    throw v1

    .line 105
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 106
    .line 107
    const-string v0, "DuplicateTaskCompletionException can only be created from completed Task."

    .line 108
    .line 109
    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :goto_2
    throw v3

    .line 113
    :catchall_3
    move-exception v1

    .line 114
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 115
    throw v1

    .line 116
    :cond_6
    return-void
.end method
