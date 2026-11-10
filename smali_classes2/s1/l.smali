.class public final Ls1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/c1;


# instance fields
.field public final synthetic f:Ls1/k;

.field public final synthetic g:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;Ls1/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/l;->g:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    iput-object p2, p0, Ls1/l;->f:Ls1/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Ls1/l;->f:Ls1/k;

    iput-boolean p2, p1, Ls1/k;->f:Z

    return-void
.end method

.method public final j(Ljava/lang/Process;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/l;->g:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    iput-object p1, v0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->r:Ljava/lang/Process;

    return-void
.end method
