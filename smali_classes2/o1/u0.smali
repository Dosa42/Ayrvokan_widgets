.class public abstract Lo1/u0;
.super Lo1/t0;
.source "SourceFile"


# instance fields
.field public i:F

.field public j:F


# virtual methods
.method public final c(FFJ)V
    .locals 0

    .line 1
    iput p1, p0, Lo1/u0;->i:F

    .line 2
    .line 3
    iput p2, p0, Lo1/u0;->j:F

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lo1/t0;->g:Z

    .line 7
    .line 8
    iget-object p1, p0, Lo1/t0;->h:Lo1/v0;

    .line 9
    .line 10
    iget-object p1, p1, Lo1/v0;->a:Lo1/j0;

    .line 11
    .line 12
    iget-object p2, p0, Lo1/t0;->f:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1, p0, p2, p3, p4}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
