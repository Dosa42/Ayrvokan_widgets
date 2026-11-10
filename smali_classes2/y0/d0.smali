.class public final Ly0/d0;
.super Ly0/v;
.source "SourceFile"


# instance fields
.field public final synthetic g:Ly0/f;


# direct methods
.method public constructor <init>(Ly0/f;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Ly0/d0;->g:Ly0/f;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ly0/v;-><init>(Ly0/f;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final a(Lv0/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly0/d0;->g:Ly0/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Ly0/f;->i:Ly0/b;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ly0/b;->a(Lv0/a;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ly0/d0;->g:Ly0/f;

    iget-object v0, v0, Ly0/f;->i:Ly0/b;

    sget-object v1, Lv0/a;->e:Lv0/a;

    invoke-interface {v0, v1}, Ly0/b;->a(Lv0/a;)V

    const/4 v0, 0x1

    return v0
.end method
