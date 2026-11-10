.class public final Ld3/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/q0;
.implements Lr1/x;


# instance fields
.field public final synthetic f:I

.field public g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Ld3/o0;->f:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ld3/o0;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    iput p1, p0, Ld3/o0;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p2, p0, Ld3/o0;->f:I

    iput-object p1, p0, Ld3/o0;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld3/o0;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Thread;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ld3/o0;->g:Ljava/lang/Object;

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ld3/o0;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget v0, p0, Ld3/o0;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Ld3/o0;->g:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ld3/p0;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :goto_0
    iget-object v0, p0, Ld3/o0;->g:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ld3/r0;

    .line 18
    .line 19
    iget-object v0, v0, Ld3/r0;->i:Ld3/q0;

    .line 20
    .line 21
    check-cast v0, Ld3/o0;

    .line 22
    .line 23
    invoke-virtual {v0}, Ld3/o0;->b()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c()V
    .locals 1

    .line 1
    iget v0, p0, Ld3/o0;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Ld3/o0;->g:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ld3/p0;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :goto_0
    iget-object v0, p0, Ld3/o0;->g:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ld3/r0;

    .line 18
    .line 19
    iget-object v0, v0, Ld3/r0;->i:Ld3/q0;

    .line 20
    .line 21
    check-cast v0, Ld3/o0;

    .line 22
    .line 23
    invoke-virtual {v0}, Ld3/o0;->c()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public q(Lcom/nomone/vr_desktop/Applications/PromptApplication;)V
    .locals 1

    .line 1
    iget v0, p0, Ld3/o0;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p1, p1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 8
    .line 9
    iget-object p1, p1, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 10
    .line 11
    const-string v0, "let websiteLinkElement = document.getElementById(\'websiteLink\');setupButton(websiteLinkElement);websiteLinkElement.click = function() { sendMessage(\'Prompt: gotoWebsite\'); };"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :goto_0
    iget-object p1, p0, Ld3/o0;->g:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Ls1/d;

    .line 20
    .line 21
    iget-object p1, p1, Ls1/d;->g:Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 24
    .line 25
    iget-object p1, p1, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 26
    .line 27
    const-string v0, "var framesCount=14;var minFrameDuration=10000;var maxFrameDuration=30000;function loadFrame(frameIndex) {   let iframeElement = document.getElementById(\'carousel\');   iframeElement.src = \'../linuxInstaller/\' + frameIndex + \'.html\';}var currentFrame=1;var lastFlipTime=Date.now();function flipframe() {   lastFlipTime = Date.now();   loadFrame(1 + (currentFrame % framesCount));   currentFrame++;}"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
