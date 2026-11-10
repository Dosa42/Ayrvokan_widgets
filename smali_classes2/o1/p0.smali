.class public final Lo1/p0;
.super Lo1/u0;
.source "SourceFile"


# instance fields
.field public final synthetic k:I

.field public final synthetic l:Lo1/v0;


# direct methods
.method public synthetic constructor <init>(Lo1/v0;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lo1/p0;->k:I

    .line 2
    .line 3
    iput-object p1, p0, Lo1/p0;->l:Lo1/v0;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lo1/u0;-><init>(Lo1/v0;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget v0, p0, Lo1/p0;->k:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lo1/p0;->l:Lo1/v0;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    iget-boolean v0, v3, Lo1/v0;->k:Z

    .line 12
    .line 13
    iget-object v1, v3, Lo1/v0;->b:Lu1/e;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget v0, p0, Lo1/u0;->i:F

    .line 18
    .line 19
    iget v3, p0, Lo1/u0;->j:F

    .line 20
    .line 21
    invoke-virtual {v1, v0, v3}, Lu1/e;->c(FF)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v1, v2}, Lu1/e;->d(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lu1/e;->e(Z)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1
    iget-boolean v0, v3, Lo1/v0;->k:Z

    .line 32
    .line 33
    iget-object v2, v3, Lo1/v0;->b:Lu1/e;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget v0, p0, Lo1/u0;->i:F

    .line 38
    .line 39
    iget v3, p0, Lo1/u0;->j:F

    .line 40
    .line 41
    invoke-virtual {v2, v0, v3}, Lu1/e;->c(FF)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {v2, v1}, Lu1/e;->d(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v1}, Lu1/e;->e(Z)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :goto_0
    iget-boolean v0, v3, Lo1/v0;->k:Z

    .line 52
    .line 53
    iget-object v4, v3, Lo1/v0;->b:Lu1/e;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iget v0, p0, Lo1/u0;->i:F

    .line 58
    .line 59
    iget v5, p0, Lo1/u0;->j:F

    .line 60
    .line 61
    invoke-virtual {v4, v0, v5}, Lu1/e;->c(FF)V

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {v4, v1}, Lu1/e;->d(Z)V

    .line 65
    .line 66
    .line 67
    iget-object v0, v3, Lo1/v0;->d:[Z

    .line 68
    .line 69
    aput-boolean v1, v0, v2

    .line 70
    .line 71
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
