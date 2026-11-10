.class public final synthetic Lw1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:Lw1/s;

.field public final synthetic g:I

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lw1/s;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/e;->f:Lw1/s;

    iput p2, p0, Lw1/e;->g:I

    iput-boolean p3, p0, Lw1/e;->h:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 2
    .line 3
    iget-object v0, p0, Lw1/e;->f:Lw1/s;

    .line 4
    .line 5
    check-cast v0, Lw1/m;

    .line 6
    .line 7
    iget v1, p0, Lw1/e;->g:I

    .line 8
    .line 9
    iget-boolean v2, p0, Lw1/e;->h:Z

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lw1/m;->a(IZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
