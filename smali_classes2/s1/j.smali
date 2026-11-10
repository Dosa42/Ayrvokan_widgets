.class public final Ls1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/d;


# instance fields
.field public final a:Lo0/n;

.field public final synthetic b:Lo1/f;

.field public final synthetic c:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;Lo1/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/j;->c:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    iput-object p2, p0, Ls1/j;->b:Lo1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lo0/n;

    const/16 p2, 0x8

    invoke-direct {p1, p0, p2}, Lo0/n;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Ls1/j;->a:Lo0/n;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/j;->a:Lo0/n;

    iget-object v1, p0, Ls1/j;->b:Lo1/f;

    invoke-virtual {v1, v0}, Lo1/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method
