.class final Lorg/mozilla/gecko/GeckoAppShell$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/GeckoAppShell$GeckoProcessesVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/gecko/GeckoAppShell;->killAnyZombies()V
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
.method public callback(I)Z
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
