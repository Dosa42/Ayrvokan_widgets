.class public Lorg/mozilla/gecko/gfx/ISurfaceAllocator$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/gfx/ISurfaceAllocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/gfx/ISurfaceAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireSurface(IIZ)Lorg/mozilla/gecko/gfx/GeckoSurface;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public configureSync(Lorg/mozilla/gecko/gfx/SyncConfig;)V
    .locals 0

    return-void
.end method

.method public releaseSurface(I)V
    .locals 0

    return-void
.end method

.method public sync(I)V
    .locals 0

    return-void
.end method
