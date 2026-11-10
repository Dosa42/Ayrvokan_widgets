.class public final synthetic Lu1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lu1/k;


# direct methods
.method public synthetic constructor <init>(Lu1/k;I)V
    .locals 0

    .line 1
    iput p2, p0, Lu1/j;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lu1/j;->g:Lu1/k;

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
    .locals 10

    .line 1
    iget-object v7, p0, Lu1/j;->g:Lu1/k;

    .line 2
    .line 3
    iget v0, p0, Lu1/j;->f:I

    .line 4
    .line 5
    const/4 v8, 0x1

    .line 6
    const/4 v9, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    iget-object v0, v7, Lu1/k;->a:Lu1/v;

    .line 12
    .line 13
    invoke-virtual {v0}, Lu1/v;->a()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_1
    const/4 v1, 0x1

    .line 18
    const/16 v2, 0x18

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x1

    .line 24
    move-object v0, v7

    .line 25
    invoke-virtual/range {v0 .. v6}, Lu1/k;->a(IIIZZZ)Z

    .line 26
    .line 27
    .line 28
    iput-boolean v9, v7, Lu1/k;->e:Z

    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_2
    const/4 v1, 0x0

    .line 32
    const/16 v2, 0x18

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x1

    .line 38
    move-object v0, v7

    .line 39
    invoke-virtual/range {v0 .. v6}, Lu1/k;->a(IIIZZZ)Z

    .line 40
    .line 41
    .line 42
    iput-boolean v8, v7, Lu1/k;->e:Z

    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_3
    const/4 v1, 0x1

    .line 46
    const/16 v2, 0x19

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    const/4 v4, 0x0

    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x1

    .line 52
    move-object v0, v7

    .line 53
    invoke-virtual/range {v0 .. v6}, Lu1/k;->a(IIIZZZ)Z

    .line 54
    .line 55
    .line 56
    iput-boolean v9, v7, Lu1/k;->d:Z

    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_4
    const/4 v1, 0x0

    .line 60
    const/16 v2, 0x19

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    const/4 v4, 0x0

    .line 64
    const/4 v5, 0x0

    .line 65
    const/4 v6, 0x1

    .line 66
    move-object v0, v7

    .line 67
    invoke-virtual/range {v0 .. v6}, Lu1/k;->a(IIIZZZ)Z

    .line 68
    .line 69
    .line 70
    iput-boolean v8, v7, Lu1/k;->d:Z

    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_5
    const/4 v1, 0x1

    .line 74
    const/16 v2, 0x4f

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    const/4 v4, 0x0

    .line 78
    const/4 v5, 0x0

    .line 79
    const/4 v6, 0x0

    .line 80
    move-object v0, v7

    .line 81
    invoke-virtual/range {v0 .. v6}, Lu1/k;->a(IIIZZZ)Z

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :goto_0
    iget-object v0, v7, Lu1/k;->a:Lu1/v;

    .line 86
    .line 87
    invoke-virtual {v0}, Lu1/v;->b()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
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
