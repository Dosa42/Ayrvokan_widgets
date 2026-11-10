.class public final Lq1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/x;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lq1/x;


# direct methods
.method public synthetic constructor <init>(Lq1/x;I)V
    .locals 0

    .line 1
    iput p2, p0, Lq1/q;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lq1/q;->g:Lq1/x;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final q(Lcom/nomone/vr_desktop/Applications/PromptApplication;)V
    .locals 2

    .line 1
    iget v0, p0, Lq1/q;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Lq1/q;->g:Lq1/x;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p1, p1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 10
    .line 11
    invoke-static {v1, p1}, Lq1/x;->a(Lq1/x;La2/b;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_1
    iget-object p1, p1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 16
    .line 17
    invoke-static {v1, p1}, Lq1/x;->a(Lq1/x;La2/b;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_2
    iget-object p1, p1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 22
    .line 23
    invoke-static {v1, p1}, Lq1/x;->a(Lq1/x;La2/b;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :goto_0
    iget-object p1, p1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 28
    .line 29
    invoke-static {v1, p1}, Lq1/x;->a(Lq1/x;La2/b;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
