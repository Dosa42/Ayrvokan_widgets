.class public final synthetic Lorg/mozilla/gecko/process/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:Lorg/mozilla/geckoview/GeckoResult;

.field public final synthetic g:Lorg/mozilla/gecko/process/GeckoProcessType;

.field public final synthetic h:[Ljava/lang/String;

.field public final synthetic i:Landroid/os/Bundle;

.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/process/b;->f:Lorg/mozilla/geckoview/GeckoResult;

    iput-object p2, p0, Lorg/mozilla/gecko/process/b;->g:Lorg/mozilla/gecko/process/GeckoProcessType;

    iput-object p3, p0, Lorg/mozilla/gecko/process/b;->h:[Ljava/lang/String;

    iput-object p4, p0, Lorg/mozilla/gecko/process/b;->i:Landroid/os/Bundle;

    iput p5, p0, Lorg/mozilla/gecko/process/b;->j:I

    iput p6, p0, Lorg/mozilla/gecko/process/b;->k:I

    iput p7, p0, Lorg/mozilla/gecko/process/b;->l:I

    iput p8, p0, Lorg/mozilla/gecko/process/b;->m:I

    iput p9, p0, Lorg/mozilla/gecko/process/b;->n:I

    iput p10, p0, Lorg/mozilla/gecko/process/b;->o:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/process/b;->f:Lorg/mozilla/geckoview/GeckoResult;

    iget-object v1, p0, Lorg/mozilla/gecko/process/b;->g:Lorg/mozilla/gecko/process/GeckoProcessType;

    iget-object v2, p0, Lorg/mozilla/gecko/process/b;->h:[Ljava/lang/String;

    iget-object v3, p0, Lorg/mozilla/gecko/process/b;->i:Landroid/os/Bundle;

    iget v4, p0, Lorg/mozilla/gecko/process/b;->j:I

    iget v5, p0, Lorg/mozilla/gecko/process/b;->k:I

    iget v6, p0, Lorg/mozilla/gecko/process/b;->l:I

    iget v7, p0, Lorg/mozilla/gecko/process/b;->m:I

    iget v8, p0, Lorg/mozilla/gecko/process/b;->n:I

    iget v9, p0, Lorg/mozilla/gecko/process/b;->o:I

    invoke-static/range {v0 .. v9}, Lorg/mozilla/gecko/process/GeckoProcessManager;->i(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIII)V

    return-void
.end method
