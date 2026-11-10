.class public final Lo1/c0;
.super Lcom/google/android/gms/internal/play_billing/i0;
.source "SourceFile"


# instance fields
.field public final synthetic w:I

.field public final synthetic x:Lo1/e0;


# direct methods
.method public synthetic constructor <init>(Lo1/e0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo1/c0;->w:I

    .line 2
    .line 3
    iput-object p1, p0, Lo1/c0;->x:Lo1/e0;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/i0;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    iget v0, p0, Lo1/c0;->w:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lo1/c0;->x:Lo1/e0;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    iget-object v0, v2, Lo1/e0;->a:Lu1/c;

    .line 11
    .line 12
    iget-object v0, v0, Lu1/c;->c:Lu1/i;

    .line 13
    .line 14
    invoke-virtual {v0}, Lu1/i;->i()V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lu1/i;->p:Lu1/k;

    .line 18
    .line 19
    iget-object v0, v0, Lu1/k;->h:Lu1/j;

    .line 20
    .line 21
    invoke-virtual {v0}, Lu1/j;->run()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_1
    iget-object v0, v2, Lo1/e0;->a:Lu1/c;

    .line 26
    .line 27
    iget-object v0, v0, Lu1/c;->c:Lu1/i;

    .line 28
    .line 29
    invoke-virtual {v0}, Lu1/i;->i()V

    .line 30
    .line 31
    .line 32
    iget-object v0, v0, Lu1/i;->p:Lu1/k;

    .line 33
    .line 34
    iget-object v0, v0, Lu1/k;->g:Lu1/j;

    .line 35
    .line 36
    invoke-virtual {v0}, Lu1/j;->run()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_2
    iget-object v0, v2, Lo1/e0;->a:Lu1/c;

    .line 41
    .line 42
    iget-object v0, v0, Lu1/c;->c:Lu1/i;

    .line 43
    .line 44
    invoke-virtual {v0}, Lu1/i;->i()V

    .line 45
    .line 46
    .line 47
    iget-object v0, v0, Lu1/i;->p:Lu1/k;

    .line 48
    .line 49
    iget-object v0, v0, Lu1/k;->f:Lu1/j;

    .line 50
    .line 51
    invoke-virtual {v0}, Lu1/j;->run()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_3
    iget-object v0, v2, Lo1/e0;->a:Lu1/c;

    .line 56
    .line 57
    iget-object v0, v0, Lu1/c;->c:Lu1/i;

    .line 58
    .line 59
    invoke-virtual {v0}, Lu1/i;->i()V

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Lu1/i;->b(Lu1/i;Z)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_4
    iget-object v0, v2, Lo1/e0;->a:Lu1/c;

    .line 67
    .line 68
    iget-object v0, v0, Lu1/c;->c:Lu1/i;

    .line 69
    .line 70
    invoke-virtual {v0}, Lu1/i;->i()V

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v1}, Lu1/i;->a(Lu1/i;Z)V

    .line 74
    .line 75
    .line 76
    const/4 v1, 0x3

    .line 77
    invoke-static {v0, v1}, Lu1/i;->d(Lu1/i;I)V

    .line 78
    .line 79
    .line 80
    :pswitch_5
    return-void

    .line 81
    :goto_0
    iget-object v0, v2, Lo1/e0;->a:Lu1/c;

    .line 82
    .line 83
    iget-object v0, v0, Lu1/c;->c:Lu1/i;

    .line 84
    .line 85
    invoke-virtual {v0}, Lu1/i;->i()V

    .line 86
    .line 87
    .line 88
    iget-object v0, v0, Lu1/i;->p:Lu1/k;

    .line 89
    .line 90
    iget-object v0, v0, Lu1/k;->i:Lu1/j;

    .line 91
    .line 92
    invoke-virtual {v0}, Lu1/j;->run()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
