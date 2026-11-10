.class public final Lorg/mozilla/gecko/gfx/SurfaceAllocatorService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "SurfaceAllocatorService"


# instance fields
.field private mBinder:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lorg/mozilla/gecko/gfx/SurfaceAllocatorService$1;

    invoke-direct {v0, p0}, Lorg/mozilla/gecko/gfx/SurfaceAllocatorService$1;-><init>(Lorg/mozilla/gecko/gfx/SurfaceAllocatorService;)V

    iput-object v0, p0, Lorg/mozilla/gecko/gfx/SurfaceAllocatorService;->mBinder:Landroid/os/Binder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lorg/mozilla/gecko/gfx/SurfaceAllocatorService;->mBinder:Landroid/os/Binder;

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
