.class public abstract Lo1/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final f:Ljava/lang/String;

.field public g:Z

.field public final synthetic h:Lo1/v0;


# direct methods
.method public constructor <init>(Lo1/v0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo1/t0;->h:Lo1/v0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo1/t0;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo1/t0;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo1/t0;->h:Lo1/v0;

    iget-object v0, v0, Lo1/v0;->a:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo1/t0;->g:Z

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo1/t0;->g:Z

    invoke-virtual {p0}, Lo1/t0;->a()V

    return-void
.end method
