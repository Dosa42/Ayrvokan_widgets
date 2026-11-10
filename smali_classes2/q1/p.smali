.class public final Lq1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public f:Z

.field public final synthetic g:Landroidx/fragment/app/h;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq1/p;->g:Landroidx/fragment/app/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq1/p;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :cond_0
    iget-boolean v0, p0, Lq1/p;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lq1/p;->g:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    check-cast v0, Lq1/x;

    iget-object v0, v0, Lq1/x;->a:Lcom/nomone/vr_desktop/LaunchActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x3b9aca00

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "sdf"

    const-string v1, "Busy loop finished"

    invoke-static {v0, v1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
