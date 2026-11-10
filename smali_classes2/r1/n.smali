.class public final Lr1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/d;


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr1/n;->b:Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lr1/n;->b:Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;

    iget-boolean v1, v0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->f:Z

    iput-boolean v1, p0, Lr1/n;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->f()V

    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Lr1/n;->a:Z

    if-eqz p1, :cond_0

    sget-object p1, Lq1/f;->L:Lo1/j0;

    new-instance v0, Lo0/n;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lo0/n;-><init>(Ljava/lang/Object;I)V

    const-string v1, "Maximize"

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v0, v1, v2, v3}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
