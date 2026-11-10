.class public final synthetic Lo0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/b;
.implements Lp0/i;


# instance fields
.field public final synthetic f:J

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lo0/k;->g:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p4, p0, Lo0/k;->h:Ljava/lang/Object;

    .line 4
    .line 5
    iput-wide p1, p0, Lo0/k;->f:J

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lo0/k;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lo0/k;->h:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lm0/d;

    .line 8
    .line 9
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    .line 11
    sget-object v2, Lp0/k;->f:Lg0/b;

    .line 12
    .line 13
    iget v2, v1, Lm0/d;->a:I

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?"

    .line 24
    .line 25
    invoke-virtual {p1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    new-instance v3, Lh0/c;

    .line 30
    .line 31
    const/4 v4, 0x7

    .line 32
    invoke-direct {v3, v4}, Lh0/c;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v3}, Lp0/k;->g(Landroid/database/Cursor;Lp0/i;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, 0x0

    .line 46
    iget-wide v4, p0, Lo0/k;->f:J

    .line 47
    .line 48
    iget v1, v1, Lm0/d;->a:I

    .line 49
    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    new-instance v2, Landroid/content/ContentValues;

    .line 53
    .line 54
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v6, "log_source"

    .line 58
    .line 59
    invoke-virtual {v2, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v1, "reason"

    .line 67
    .line 68
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    .line 70
    .line 71
    const-string v0, "events_dropped_count"

    .line 72
    .line 73
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    .line 79
    .line 80
    const-string v0, "log_event_dropped"

    .line 81
    .line 82
    invoke-virtual {p1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v6, "UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + "

    .line 89
    .line 90
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v4, " WHERE log_source = ? AND reason = ?"

    .line 97
    .line 98
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :goto_0
    return-object v3
.end method

.method public final d()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lo0/k;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo0/l;

    .line 4
    .line 5
    iget-object v1, p0, Lo0/k;->h:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lj0/k;

    .line 8
    .line 9
    iget-object v2, v0, Lo0/l;->g:Lr0/a;

    .line 10
    .line 11
    check-cast v2, Lr0/b;

    .line 12
    .line 13
    invoke-virtual {v2}, Lr0/b;->a()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    iget-wide v4, p0, Lo0/k;->f:J

    .line 18
    .line 19
    add-long/2addr v2, v4

    .line 20
    iget-object v0, v0, Lo0/l;->c:Lp0/d;

    .line 21
    .line 22
    check-cast v0, Lp0/k;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v4, Lp0/e;

    .line 28
    .line 29
    invoke-direct {v4, v2, v3, v1}, Lp0/e;-><init>(JLj0/k;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v4}, Lp0/k;->c(Lp0/i;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    return-object v0
.end method
