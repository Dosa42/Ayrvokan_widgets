.class public final Ls1/m;
.super Landroid/os/FileObserver;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/m;->c:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    iput-object p3, p0, Ls1/m;->b:Ljava/lang/String;

    const/16 p1, 0xc06

    invoke-direct {p0, p2, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Ls1/m;->a:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Ls1/m;->c:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    iget-object p2, p1, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->u:Ls1/m;

    invoke-virtual {p2}, Ls1/m;->stopWatching()V

    iget-object p2, p1, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->v:Ls1/m;

    invoke-virtual {p2}, Ls1/m;->stopWatching()V

    iget-object p2, p1, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->w:Ls1/m;

    invoke-virtual {p2}, Ls1/m;->stopWatching()V

    iget-object p2, p0, Ls1/m;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final stopWatching()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls1/m;->a:Z

    return-void
.end method
