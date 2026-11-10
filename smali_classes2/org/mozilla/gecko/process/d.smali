.class public final synthetic Lorg/mozilla/gecko/process/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoResult$Consumer;


# instance fields
.field public final synthetic f:Lorg/mozilla/gecko/process/GeckoProcessManager;

.field public final synthetic g:Lorg/mozilla/geckoview/GeckoResult;

.field public final synthetic h:Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;

.field public final synthetic i:Lorg/mozilla/gecko/process/GeckoProcessType;

.field public final synthetic j:[Ljava/lang/String;

.field public final synthetic k:Landroid/os/Bundle;

.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:I

.field public final synthetic q:I

.field public final synthetic r:Z

.field public final synthetic s:Landroid/os/RemoteException;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/gecko/process/GeckoProcessManager;Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIIIZLandroid/os/RemoteException;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/process/d;->f:Lorg/mozilla/gecko/process/GeckoProcessManager;

    iput-object p2, p0, Lorg/mozilla/gecko/process/d;->g:Lorg/mozilla/geckoview/GeckoResult;

    iput-object p3, p0, Lorg/mozilla/gecko/process/d;->h:Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;

    iput-object p4, p0, Lorg/mozilla/gecko/process/d;->i:Lorg/mozilla/gecko/process/GeckoProcessType;

    iput-object p5, p0, Lorg/mozilla/gecko/process/d;->j:[Ljava/lang/String;

    iput-object p6, p0, Lorg/mozilla/gecko/process/d;->k:Landroid/os/Bundle;

    iput p7, p0, Lorg/mozilla/gecko/process/d;->l:I

    iput p8, p0, Lorg/mozilla/gecko/process/d;->m:I

    iput p9, p0, Lorg/mozilla/gecko/process/d;->n:I

    iput p10, p0, Lorg/mozilla/gecko/process/d;->o:I

    iput p11, p0, Lorg/mozilla/gecko/process/d;->p:I

    iput p12, p0, Lorg/mozilla/gecko/process/d;->q:I

    iput-boolean p13, p0, Lorg/mozilla/gecko/process/d;->r:Z

    iput-object p14, p0, Lorg/mozilla/gecko/process/d;->s:Landroid/os/RemoteException;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mozilla/gecko/process/d;->f:Lorg/mozilla/gecko/process/GeckoProcessManager;

    iget-object v2, v0, Lorg/mozilla/gecko/process/d;->g:Lorg/mozilla/geckoview/GeckoResult;

    iget-object v3, v0, Lorg/mozilla/gecko/process/d;->h:Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;

    iget-object v4, v0, Lorg/mozilla/gecko/process/d;->i:Lorg/mozilla/gecko/process/GeckoProcessType;

    iget-object v5, v0, Lorg/mozilla/gecko/process/d;->j:[Ljava/lang/String;

    iget-object v6, v0, Lorg/mozilla/gecko/process/d;->k:Landroid/os/Bundle;

    iget v7, v0, Lorg/mozilla/gecko/process/d;->l:I

    iget v8, v0, Lorg/mozilla/gecko/process/d;->m:I

    iget v9, v0, Lorg/mozilla/gecko/process/d;->n:I

    iget v10, v0, Lorg/mozilla/gecko/process/d;->o:I

    iget v11, v0, Lorg/mozilla/gecko/process/d;->p:I

    iget v12, v0, Lorg/mozilla/gecko/process/d;->q:I

    iget-boolean v13, v0, Lorg/mozilla/gecko/process/d;->r:Z

    iget-object v14, v0, Lorg/mozilla/gecko/process/d;->s:Landroid/os/RemoteException;

    move-object/from16 v15, p1

    check-cast v15, Lorg/mozilla/gecko/process/IChildProcess;

    invoke-static/range {v1 .. v15}, Lorg/mozilla/gecko/process/GeckoProcessManager;->d(Lorg/mozilla/gecko/process/GeckoProcessManager;Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIIIZLandroid/os/RemoteException;Lorg/mozilla/gecko/process/IChildProcess;)V

    return-void
.end method
