.class public final synthetic Ls1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/w;
.implements Lq1/z;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;


# direct methods
.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;I)V
    .locals 0

    .line 1
    iput p2, p0, Ls1/g;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Ls1/g;->g:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->y:Ljava/lang/ThreadGroup;

    .line 2
    .line 3
    iget-object v0, p0, Ls1/g;->g:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Lr1/y;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 10
    .line 11
    invoke-direct {p1, v0}, Lr1/y;-><init>(Lq1/f;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "Thanks a lot <3 \u2764\ufe0f"

    .line 15
    .line 16
    iput-object v0, p1, Lr1/y;->d:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "Report sent."

    .line 19
    .line 20
    iput-object v0, p1, Lr1/y;->e:Ljava/lang/String;

    .line 21
    .line 22
    const/16 v0, 0x12c

    .line 23
    .line 24
    const/16 v1, 0xaa

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Lr1/y;->d(II)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Lr1/y;

    .line 31
    .line 32
    iget-object v1, v0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 33
    .line 34
    invoke-direct {p1, v1}, Lr1/y;-><init>(Lq1/f;)V

    .line 35
    .line 36
    .line 37
    const-string v1, ":("

    .line 38
    .line 39
    iput-object v1, p1, Lr1/y;->d:Ljava/lang/String;

    .line 40
    .line 41
    const-string v1, "Failed to send report (are you connected to the Internet?)."

    .line 42
    .line 43
    iput-object v1, p1, Lr1/y;->e:Ljava/lang/String;

    .line 44
    .line 45
    const/16 v1, 0x140

    .line 46
    .line 47
    const/16 v2, 0xc8

    .line 48
    .line 49
    invoke-virtual {p1, v1, v2}, Lr1/y;->d(II)V

    .line 50
    .line 51
    .line 52
    const-string v1, "Ok"

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Lr1/y;->a(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Ls1/g;

    .line 58
    .line 59
    const/4 v2, 0x2

    .line 60
    invoke-direct {v1, v0, v2}, Ls1/g;-><init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;I)V

    .line 61
    .line 62
    .line 63
    iput-object v1, p1, Lr1/y;->o:Lr1/w;

    .line 64
    .line 65
    :goto_0
    const/4 v0, 0x0

    .line 66
    invoke-static {p1, v0}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Ls1/g;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Ls1/g;->g:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    sget-object v0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->y:Ljava/lang/ThreadGroup;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v0, "View/Send<br>Crash Report"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->j()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :goto_0
    sget-object p1, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->y:Ljava/lang/ThreadGroup;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->j()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
