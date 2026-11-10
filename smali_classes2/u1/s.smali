.class public final Lu1/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public f:I

.field public final synthetic g:Lo/a;

.field public final synthetic h:Lu1/v;


# direct methods
.method public constructor <init>(Lu1/v;Lo/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu1/s;->h:Lu1/v;

    iput-object p2, p0, Lu1/s;->g:Lo/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x14

    iput p1, p0, Lu1/s;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lu1/s;->g:Lo/a;

    .line 2
    .line 3
    iget-object v1, v0, Lo/a;->g:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lu1/i;

    .line 6
    .line 7
    iget-object v1, v1, Lu1/i;->a:Lq1/f;

    .line 8
    .line 9
    invoke-virtual {v1}, Lq1/f;->a()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v9, p0, Lu1/s;->h:Lu1/v;

    .line 14
    .line 15
    if-lez v1, :cond_0

    .line 16
    .line 17
    int-to-float v1, v1

    .line 18
    const/high16 v2, 0x3f000000    # 0.5f

    .line 19
    .line 20
    mul-float v3, v1, v2

    .line 21
    .line 22
    iget-object v0, v0, Lo/a;->g:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lu1/i;

    .line 25
    .line 26
    iget-object v0, v0, Lu1/i;->a:Lq1/f;

    .line 27
    .line 28
    iget v0, v0, Lq1/f;->z:I

    .line 29
    .line 30
    int-to-float v0, v0

    .line 31
    mul-float v4, v0, v2

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v7, 0x1

    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x1

    .line 37
    move-object v2, v9

    .line 38
    invoke-virtual/range {v2 .. v8}, Lu1/v;->d(FFZZZZ)V

    .line 39
    .line 40
    .line 41
    iget v0, p0, Lu1/s;->f:I

    .line 42
    .line 43
    add-int/lit8 v1, v0, -0x1

    .line 44
    .line 45
    iput v1, p0, Lu1/s;->f:I

    .line 46
    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    const-string v0, "VirtualCursor move cursor to screen center"

    .line 51
    .line 52
    iget-object v1, v9, Lu1/v;->a:Lo1/j0;

    .line 53
    .line 54
    invoke-virtual {v1, v0, p0}, Lo1/j0;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
