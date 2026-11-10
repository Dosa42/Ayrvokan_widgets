.class final Lorg/mozilla/gecko/GeckoAppShell$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/gecko/GeckoAppShell;->enableNetworkNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/GeckoNetworkManager;->getInstance()Lorg/mozilla/gecko/GeckoNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/gecko/GeckoNetworkManager;->enableNotifications()V

    return-void
.end method
