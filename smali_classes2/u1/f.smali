.class public final Lu1/f;
.super Lu1/c;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lu1/i;


# direct methods
.method public synthetic constructor <init>(Lu1/i;I)V
    .locals 0

    .line 1
    iput p2, p0, Lu1/f;->d:I

    .line 2
    .line 3
    iput-object p1, p0, Lu1/f;->e:Lu1/i;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lu1/c;-><init>(Lu1/i;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    const/16 v0, 0x7d0

    .line 2
    .line 3
    const-string v1, "Remote not responding"

    .line 4
    .line 5
    iget-object v2, p0, Lu1/c;->c:Lu1/i;

    .line 6
    .line 7
    iget v3, p0, Lu1/f;->d:I

    .line 8
    .line 9
    iget-object v4, p0, Lu1/f;->e:Lu1/i;

    .line 10
    .line 11
    const-string v5, "sdf"

    .line 12
    .line 13
    packed-switch v3, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_0
    iget-object v2, v2, Lu1/i;->a:Lq1/f;

    .line 18
    .line 19
    iget-object v2, v2, Lq1/f;->H:Lo1/n0;

    .line 20
    .line 21
    invoke-virtual {v2, v0, v1}, Lo1/n0;->c(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "Remote cursor TCP: client not responsive"

    .line 25
    .line 26
    invoke-static {v5, v0}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, v4, Lu1/i;->n:Lo1/h0;

    .line 30
    .line 31
    invoke-virtual {v0}, Lo1/e0;->h()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :goto_0
    iget-object v2, v2, Lu1/i;->a:Lq1/f;

    .line 36
    .line 37
    iget-object v2, v2, Lq1/f;->H:Lo1/n0;

    .line 38
    .line 39
    invoke-virtual {v2, v0, v1}, Lo1/n0;->c(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v0, "Remote cursor Bluetooth: client not responsive"

    .line 43
    .line 44
    invoke-static {v5, v0}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v4, Lu1/i;->o:Lo1/g0;

    .line 48
    .line 49
    invoke-virtual {v0}, Lo1/e0;->h()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
