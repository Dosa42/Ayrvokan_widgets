.class public final synthetic Lu1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lu1/i;


# direct methods
.method public synthetic constructor <init>(Lu1/i;I)V
    .locals 0

    .line 1
    iput p2, p0, Lu1/a;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lu1/a;->g:Lu1/i;

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
    .locals 5

    .line 1
    iget v0, p0, Lu1/a;->f:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lu1/a;->g:Lu1/i;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_1

    .line 10
    :pswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v3, 0x1a

    .line 13
    .line 14
    if-lt v0, v3, :cond_0

    .line 15
    .line 16
    iget-object v0, v2, Lu1/i;->a:Lq1/f;

    .line 17
    .line 18
    iget-object v0, v0, Lq1/f;->c:Landroid/view/ViewGroup;

    .line 19
    .line 20
    invoke-static {v0}, Lorg/mozilla/geckoview/b;->g(Landroid/view/ViewGroup;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    iput-wide v3, v2, Lu1/i;->F:J

    .line 32
    .line 33
    iput-boolean v1, v2, Lu1/i;->E:Z

    .line 34
    .line 35
    return-void

    .line 36
    :goto_1
    iput-boolean v1, v2, Lu1/i;->e:Z

    .line 37
    .line 38
    invoke-virtual {v2}, Lu1/i;->l()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
