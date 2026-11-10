.class Lorg/mozilla/gecko/EventDispatcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/gecko/EventDispatcher;->dispose(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/gecko/EventDispatcher;

.field final synthetic val$force:Z


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/EventDispatcher;Z)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/EventDispatcher$1;->this$0:Lorg/mozilla/gecko/EventDispatcher;

    iput-boolean p2, p0, Lorg/mozilla/gecko/EventDispatcher$1;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/gecko/EventDispatcher$1;->val$force:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/gecko/EventDispatcher$1;->this$0:Lorg/mozilla/gecko/EventDispatcher;

    invoke-static {v0}, Lorg/mozilla/gecko/EventDispatcher;->access$000(Lorg/mozilla/gecko/EventDispatcher;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/EventDispatcher$1;->this$0:Lorg/mozilla/gecko/EventDispatcher;

    invoke-virtual {v0}, Lorg/mozilla/gecko/EventDispatcher;->disposeNative()V

    :cond_1
    return-void
.end method
