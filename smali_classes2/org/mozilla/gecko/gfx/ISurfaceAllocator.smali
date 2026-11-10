.class public interface abstract Lorg/mozilla/gecko/gfx/ISurfaceAllocator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/gfx/ISurfaceAllocator$Stub;,
        Lorg/mozilla/gecko/gfx/ISurfaceAllocator$Default;
    }
.end annotation


# virtual methods
.method public abstract acquireSurface(IIZ)Lorg/mozilla/gecko/gfx/GeckoSurface;
.end method

.method public abstract configureSync(Lorg/mozilla/gecko/gfx/SyncConfig;)V
.end method

.method public abstract releaseSurface(I)V
.end method

.method public abstract sync(I)V
.end method
