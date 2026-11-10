.class public final Lo1/q0;
.super Lo1/t0;
.source "SourceFile"


# instance fields
.field public final synthetic i:Lo1/v0;


# direct methods
.method public constructor <init>(Lo1/v0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lo1/q0;->i:Lo1/v0;

    const-string v0, "requestTouchModeToggleTask"

    invoke-direct {p0, p1, v0}, Lo1/t0;-><init>(Lo1/v0;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo1/q0;->i:Lo1/v0;

    .line 2
    .line 3
    iget-object v1, v0, Lo1/v0;->b:Lu1/e;

    .line 4
    .line 5
    iget-boolean v2, v0, Lo1/v0;->k:Z

    .line 6
    .line 7
    xor-int/lit8 v2, v2, 0x1

    .line 8
    .line 9
    iget-object v1, v1, Lu1/e;->b:Lu1/i;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lu1/i;->j(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lo1/v0;->j:Lo1/p0;

    .line 15
    .line 16
    invoke-virtual {v0}, Lo1/t0;->b()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
