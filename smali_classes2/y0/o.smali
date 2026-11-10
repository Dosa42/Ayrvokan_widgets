.class public final Ly0/o;
.super Ly0/p;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lx0/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly0/o;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ly0/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Ly0/o;->a:Landroid/content/Intent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
