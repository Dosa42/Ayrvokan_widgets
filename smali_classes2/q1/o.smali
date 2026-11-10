.class public final synthetic Lq1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/nomone/vr_desktop/Applications/PromptApplication;


# direct methods
.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/Applications/PromptApplication;I)V
    .locals 0

    .line 1
    iput p2, p0, Lq1/o;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lq1/o;->g:Lcom/nomone/vr_desktop/Applications/PromptApplication;

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
    .locals 2

    .line 1
    iget v0, p0, Lq1/o;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Lq1/o;->g:Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object v0, v1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 10
    .line 11
    invoke-virtual {v0}, La2/i;->q()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :goto_0
    iget-object v0, v1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 16
    .line 17
    invoke-virtual {v0}, La2/i;->q()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
