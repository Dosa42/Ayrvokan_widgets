.class public final synthetic Lorg/mozilla/gecko/process/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoResult$Consumer;


# instance fields
.field public final synthetic f:Lorg/mozilla/gecko/process/GeckoProcessManager;

.field public final synthetic g:Lorg/mozilla/geckoview/GeckoResult;

.field public final synthetic h:Lorg/mozilla/gecko/process/GeckoProcessType;

.field public final synthetic i:[Ljava/lang/String;

.field public final synthetic j:Landroid/os/Bundle;

.field public final synthetic k:I

.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:I

.field public final synthetic q:Landroid/os/RemoteException;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/gecko/process/GeckoProcessManager;Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIIILandroid/os/RemoteException;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/process/c;->f:Lorg/mozilla/gecko/process/GeckoProcessManager;

    iput-object p2, p0, Lorg/mozilla/gecko/process/c;->g:Lorg/mozilla/geckoview/GeckoResult;

    iput-object p3, p0, Lorg/mozilla/gecko/process/c;->h:Lorg/mozilla/gecko/process/GeckoProcessType;

    iput-object p4, p0, Lorg/mozilla/gecko/process/c;->i:[Ljava/lang/String;

    iput-object p5, p0, Lorg/mozilla/gecko/process/c;->j:Landroid/os/Bundle;

    iput p6, p0, Lorg/mozilla/gecko/process/c;->k:I

    iput p7, p0, Lorg/mozilla/gecko/process/c;->l:I

    iput p8, p0, Lorg/mozilla/gecko/process/c;->m:I

    iput p9, p0, Lorg/mozilla/gecko/process/c;->n:I

    iput p10, p0, Lorg/mozilla/gecko/process/c;->o:I

    iput p11, p0, Lorg/mozilla/gecko/process/c;->p:I

    iput-object p12, p0, Lorg/mozilla/gecko/process/c;->q:Landroid/os/RemoteException;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/process/c;->f:Lorg/mozilla/gecko/process/GeckoProcessManager;

    iget-object v1, p0, Lorg/mozilla/gecko/process/c;->g:Lorg/mozilla/geckoview/GeckoResult;

    iget-object v2, p0, Lorg/mozilla/gecko/process/c;->h:Lorg/mozilla/gecko/process/GeckoProcessType;

    iget-object v3, p0, Lorg/mozilla/gecko/process/c;->i:[Ljava/lang/String;

    iget-object v4, p0, Lorg/mozilla/gecko/process/c;->j:Landroid/os/Bundle;

    iget v5, p0, Lorg/mozilla/gecko/process/c;->k:I

    iget v6, p0, Lorg/mozilla/gecko/process/c;->l:I

    iget v7, p0, Lorg/mozilla/gecko/process/c;->m:I

    iget v8, p0, Lorg/mozilla/gecko/process/c;->n:I

    iget v9, p0, Lorg/mozilla/gecko/process/c;->o:I

    iget v10, p0, Lorg/mozilla/gecko/process/c;->p:I

    iget-object v11, p0, Lorg/mozilla/gecko/process/c;->q:Landroid/os/RemoteException;

    move-object v12, p1

    check-cast v12, Ljava/lang/Void;

    invoke-static/range {v0 .. v12}, Lorg/mozilla/gecko/process/GeckoProcessManager;->e(Lorg/mozilla/gecko/process/GeckoProcessManager;Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIIILandroid/os/RemoteException;Ljava/lang/Void;)V

    return-void
.end method
