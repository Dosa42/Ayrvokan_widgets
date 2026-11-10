.class public final synthetic Lorg/mozilla/gecko/process/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/process/h;->f:Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;

    iput-boolean p2, p0, Lorg/mozilla/gecko/process/h;->g:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/process/h;->f:Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;

    iget-boolean v1, p0, Lorg/mozilla/gecko/process/h;->g:Z

    invoke-static {v0, v1}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->b(Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;Z)V

    return-void
.end method
