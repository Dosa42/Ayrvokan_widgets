.class Lorg/mozilla/gecko/EventDispatcher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/gecko/EventDispatcher;->dispatchToThreads(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/gecko/EventDispatcher;

.field final synthetic val$listener:Lorg/mozilla/gecko/util/BundleEventListener;

.field final synthetic val$message:Lorg/mozilla/gecko/util/GeckoBundle;

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$wrappedCallback:Lorg/mozilla/gecko/util/EventCallback;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/EventDispatcher;Lorg/mozilla/gecko/util/BundleEventListener;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/EventDispatcher$2;->this$0:Lorg/mozilla/gecko/EventDispatcher;

    iput-object p2, p0, Lorg/mozilla/gecko/EventDispatcher$2;->val$listener:Lorg/mozilla/gecko/util/BundleEventListener;

    iput-object p3, p0, Lorg/mozilla/gecko/EventDispatcher$2;->val$type:Ljava/lang/String;

    iput-object p4, p0, Lorg/mozilla/gecko/EventDispatcher$2;->val$message:Lorg/mozilla/gecko/util/GeckoBundle;

    iput-object p5, p0, Lorg/mozilla/gecko/EventDispatcher$2;->val$wrappedCallback:Lorg/mozilla/gecko/util/EventCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/gecko/EventDispatcher$2;->val$listener:Lorg/mozilla/gecko/util/BundleEventListener;

    iget-object v1, p0, Lorg/mozilla/gecko/EventDispatcher$2;->val$type:Ljava/lang/String;

    iget-object v2, p0, Lorg/mozilla/gecko/EventDispatcher$2;->val$message:Lorg/mozilla/gecko/util/GeckoBundle;

    iget-object v3, p0, Lorg/mozilla/gecko/EventDispatcher$2;->val$wrappedCallback:Lorg/mozilla/gecko/util/EventCallback;

    invoke-interface {v0, v1, v2, v3}, Lorg/mozilla/gecko/util/BundleEventListener;->handleMessage(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    return-void
.end method
