.class public final Lo1/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public f:Ljava/lang/String;

.field public g:Z

.field public final synthetic h:Lo1/n0;


# direct methods
.method public constructor <init>(Lo1/n0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo1/l0;->h:Lo1/n0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo1/l0;->h:Lo1/n0;

    iget-object v1, p0, Lo1/l0;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lo1/n0;->a(Lo1/n0;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo1/l0;->g:Z

    return-void
.end method
