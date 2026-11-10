.class public final Ln1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/WebExtension$MessageDelegate;


# instance fields
.field public final synthetic a:Lorg/mozilla/geckoview/WebExtension$PortDelegate;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/WebExtension$PortDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln1/b;->a:Lorg/mozilla/geckoview/WebExtension$PortDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnect(Lorg/mozilla/geckoview/WebExtension$Port;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln1/b;->a:Lorg/mozilla/geckoview/WebExtension$PortDelegate;

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/WebExtension$Port;->setDelegate(Lorg/mozilla/geckoview/WebExtension$PortDelegate;)V

    return-void
.end method
