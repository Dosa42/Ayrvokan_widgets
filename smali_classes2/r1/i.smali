.class public final synthetic Lr1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/w;


# instance fields
.field public final synthetic f:Lq1/f;


# direct methods
.method public synthetic constructor <init>(Lq1/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr1/i;->f:Lq1/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    sget-object v0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->y:Ljava/lang/ThreadGroup;

    .line 2
    .line 3
    const-string v0, "Should show gestures tutorial dialog 2"

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lr1/y;

    .line 14
    .line 15
    iget-object v2, p0, Lr1/i;->f:Lq1/f;

    .line 16
    .line 17
    invoke-direct {v0, v2}, Lr1/y;-><init>(Lq1/f;)V

    .line 18
    .line 19
    .line 20
    const-string v2, "User Input Tutorial"

    .line 21
    .line 22
    iput-object v2, v0, Lr1/y;->d:Ljava/lang/String;

    .line 23
    .line 24
    const-string v2, "<style>   .instructions {       display: inline-block;       width: 300px;       vertical-align: middle;   }   img {       margin-left: 25px;       vertical-align: middle;   }   .tinyButton {       display: inline-block;       width: 10px;       height: 10px;       border: 2px solid var(--base-color-8);       border-radius: 3px;   }   .blink {       position: relative;       top: 0px;       font-size: 30px;       animation: blink 1.5s linear infinite;   }   @keyframes blink {       50% {           opacity: 0;       }   }</style><div class=\'instructions\'>Desktop applications need precise input. <strong>Touch and hold</strong> the <strong>upper-left corner</strong> of the screen for <strong>1 second</strong> to toggle virtual mouse mode. Then you can use your screen as a touch pad.</div><img src=\'../tutorials/images/touchMode_small.png\'/><br><br><br>Press this button to continue. &nbsp;&nbsp;&nbsp; <span class=\'blink\'>\u27f9</span>&nbsp;<div id=\'tinyButton\' class=\'tinyButton\'></div>&nbsp;<span class=\'blink\'>\u27f8</span><br><br><br><div class=\'instructions\'>To right click, <strong>tap</strong> with <strong>two fingers</strong> at once (very short press).</div><img src=\'../tutorials/images/rightClick.png\'/><br><br>Please right click to continue.<br><br><br><div class=\'instructions\'>To scroll the window under the cursor, <strong>drag</strong> with <strong>two fingers</strong> at once.</div><img src=\'../tutorials/images/scroll.png\'/><br><br>Please scroll down to continue.<br><br><br><div class=\'instructions\'>To toggle fullscreen, press and <strong>hold three fingers</strong> for <strong>2 seconds</strong>.<br>If you are using a mouse, press and hold <strong>left and right buttons</strong> instead.</div><img src=\'../tutorials/images/fullscreen.png\'/><br><br>Please perform the gesture to dismiss this tutorial."

    .line 25
    .line 26
    iput-object v2, v0, Lr1/y;->e:Ljava/lang/String;

    .line 27
    .line 28
    iput-boolean v1, v0, Lr1/y;->c:Z

    .line 29
    .line 30
    const/16 v2, 0x1f4

    .line 31
    .line 32
    const/16 v3, 0x118

    .line 33
    .line 34
    invoke-virtual {v0, v2, v3}, Lr1/y;->d(II)V

    .line 35
    .line 36
    .line 37
    iput-boolean v1, v0, Lr1/y;->m:Z

    .line 38
    .line 39
    iput-boolean v1, v0, Lr1/y;->l:Z

    .line 40
    .line 41
    iput-boolean v1, v0, Lr1/y;->n:Z

    .line 42
    .line 43
    new-instance v1, Lc/a;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    const/16 v3, 0xc

    .line 47
    .line 48
    invoke-direct {v1, v3, v2}, Lc/a;-><init>(II)V

    .line 49
    .line 50
    .line 51
    iput-object v1, v0, Lr1/y;->p:Lr1/x;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-static {v0, v1}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/nomone/vr_desktop/Applications/ExitApplication;->i:Lcom/nomone/vr_desktop/Applications/ExitApplication;

    .line 3
    .line 4
    const-string v0, "Yes"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lr1/i;->f:Lq1/f;

    .line 13
    .line 14
    iget-object p1, p1, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
