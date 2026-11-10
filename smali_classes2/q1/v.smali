.class public final Lq1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lq1/x;


# direct methods
.method public synthetic constructor <init>(Lq1/x;I)V
    .locals 0

    .line 1
    iput p2, p0, Lq1/v;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lq1/v;->g:Lq1/x;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lq1/v;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_1

    .line 7
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-object v2, p0, Lq1/v;->g:Lq1/x;

    .line 12
    .line 13
    iget-object v3, v2, Lq1/x;->k:Lu1/i;

    .line 14
    .line 15
    iget-wide v3, v3, Lu1/i;->C:J

    .line 16
    .line 17
    sub-long/2addr v0, v3

    .line 18
    const-wide/32 v3, 0xea60

    .line 19
    .line 20
    .line 21
    cmp-long v0, v0, v3

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    const/4 v5, 0x0

    .line 25
    if-gez v0, :cond_0

    .line 26
    .line 27
    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v5

    .line 30
    :goto_0
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const-string v0, "Interactive time"

    .line 33
    .line 34
    invoke-static {v0, v5}, Lo1/y;->c(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    add-int/2addr v5, v1

    .line 39
    invoke-static {v5, v0}, Lo1/y;->g(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    const-string v0, "Measure interactive time"

    .line 43
    .line 44
    invoke-virtual {v2, p0, v0, v3, v4}, Lq1/x;->k(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :goto_1
    sget-boolean v0, Ln1/c;->b:Z

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    sget-object v0, Lq1/f;->L:Lo1/j0;

    .line 53
    .line 54
    new-instance v1, Lo0/n;

    .line 55
    .line 56
    const/16 v2, 0x12

    .line 57
    .line 58
    invoke-direct {v1, p0, v2}, Lo0/n;-><init>(Ljava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    const-wide/16 v2, 0x64

    .line 62
    .line 63
    const-string v4, "startAppsTask"

    .line 64
    .line 65
    invoke-virtual {v0, v1, v4, v2, v3}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    sget-object v0, Lq1/f;->L:Lo1/j0;

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    :goto_2
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
