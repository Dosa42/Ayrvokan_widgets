.class public final synthetic Lp0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/i;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:J

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(JLj0/k;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lp0/e;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lp0/e;->g:J

    iput-object p3, p0, Lp0/e;->h:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lp0/k;J)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lp0/e;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/e;->h:Ljava/lang/Object;

    iput-wide p2, p0, Lp0/e;->g:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lp0/e;->f:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-wide v2, p0, Lp0/e;->g:J

    .line 5
    .line 6
    iget-object v4, p0, Lp0/e;->h:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_0
    check-cast v4, Lp0/k;

    .line 13
    .line 14
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    filled-new-array {v0}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v2, "SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name"

    .line 28
    .line 29
    invoke-virtual {p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-instance v3, Lp0/g;

    .line 34
    .line 35
    invoke-direct {v3, v4, v1}, Lp0/g;-><init>(Lp0/k;I)V

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v3}, Lp0/k;->g(Landroid/database/Cursor;Lp0/i;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const-string v1, "events"

    .line 42
    .line 43
    const-string v2, "timestamp_ms < ?"

    .line 44
    .line 45
    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :goto_0
    check-cast v4, Lj0/k;

    .line 55
    .line 56
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 57
    .line 58
    new-instance v0, Landroid/content/ContentValues;

    .line 59
    .line 60
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v5, "next_request_ms"

    .line 64
    .line 65
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    .line 71
    .line 72
    iget-object v2, v4, Lj0/k;->a:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v3, v4, Lj0/k;->c:Lg0/c;

    .line 75
    .line 76
    invoke-static {v3}, Ls0/a;->a(Lg0/c;)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    filled-new-array {v2, v5}, [Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const-string v5, "transport_contexts"

    .line 89
    .line 90
    const-string v6, "backend_name = ? and priority = ?"

    .line 91
    .line 92
    invoke-virtual {p1, v5, v0, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    const/4 v6, 0x0

    .line 97
    if-ge v2, v1, :cond_0

    .line 98
    .line 99
    const-string v1, "backend_name"

    .line 100
    .line 101
    iget-object v2, v4, Lj0/k;->a:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v3}, Ls0/a;->a(Lg0/c;)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const-string v2, "priority"

    .line 115
    .line 116
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 120
    .line 121
    .line 122
    :cond_0
    return-object v6

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
