.class Lorg/mozilla/gecko/gfx/VsyncSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/gecko/gfx/VsyncSource;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/gecko/gfx/VsyncSource;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/gfx/VsyncSource;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/gfx/VsyncSource$1;->this$0:Lorg/mozilla/gecko/gfx/VsyncSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/VsyncSource$1;->this$0:Lorg/mozilla/gecko/gfx/VsyncSource;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, v0, Lorg/mozilla/gecko/gfx/VsyncSource;->mChoreographer:Landroid/view/Choreographer;

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/VsyncSource$1;->this$0:Lorg/mozilla/gecko/gfx/VsyncSource;

    invoke-static {v0}, Lorg/mozilla/gecko/gfx/VsyncSource;->access$000(Lorg/mozilla/gecko/gfx/VsyncSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/VsyncSource$1;->this$0:Lorg/mozilla/gecko/gfx/VsyncSource;

    iget-object v1, v0, Lorg/mozilla/gecko/gfx/VsyncSource;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method
