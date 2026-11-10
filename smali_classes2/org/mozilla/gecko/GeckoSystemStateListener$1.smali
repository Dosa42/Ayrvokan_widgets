.class Lorg/mozilla/gecko/GeckoSystemStateListener$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/gecko/GeckoSystemStateListener;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/gecko/GeckoSystemStateListener;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/GeckoSystemStateListener;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/GeckoSystemStateListener$1;->this$0:Lorg/mozilla/gecko/GeckoSystemStateListener;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    invoke-static {}, Lorg/mozilla/gecko/GeckoSystemStateListener;->onDeviceChanged()V

    return-void
.end method
