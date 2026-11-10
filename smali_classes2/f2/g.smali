.class public final Lf2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/b;


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lh/a;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lh/a;-><init>(ILjava/lang/Object;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lf2/g;->c:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lf2/g;->d:Ljava/lang/Object;

    sget-object v1, Ll3/a;->a:Ll3/a;

    iput-object v1, p0, Lf2/g;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lf2/g;->a:Z

    iput-boolean v1, p0, Lf2/g;->b:Z

    iput-object v0, p0, Lf2/g;->f:Ljava/lang/Object;

    .line 2
    iget-object v2, v0, Lh/a;->g:Ljava/lang/Object;

    .line 3
    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_1

    const-string v2, "java.runtime.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "Android Runtime"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lh/a;->g:Ljava/lang/Object;

    :cond_1
    iget-object v0, v0, Lh/a;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Ll3/a;->b:Ll3/a;

    iput-object v0, p0, Lf2/g;->e:Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public constructor <init>(Lf2/f;Lb3/a;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/g;->d:Ljava/lang/Object;

    new-instance p1, Lt2/o;

    invoke-direct {p1, p2}, Lt2/o;-><init>(Lb3/a;)V

    iput-object p1, p0, Lf2/g;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lf2/g;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Lf2/b0;
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/g;->f:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lb3/b;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lb3/b;

    .line 9
    .line 10
    invoke-interface {v0}, Lb3/b;->a()Lf2/b0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lf2/g;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lt2/o;

    .line 18
    .line 19
    iget-object v0, v0, Lt2/o;->e:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lf2/b0;

    .line 22
    .line 23
    :goto_0
    return-object v0
.end method

.method public final b(Lf2/b0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/g;->f:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lb3/b;

    if-eqz v1, :cond_0

    check-cast v0, Lb3/b;

    invoke-interface {v0, p1}, Lb3/b;->b(Lf2/b0;)V

    iget-object p1, p0, Lf2/g;->f:Ljava/lang/Object;

    check-cast p1, Lb3/b;

    invoke-interface {p1}, Lb3/b;->a()Lf2/b0;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lf2/g;->c:Ljava/lang/Object;

    check-cast v0, Lt2/o;

    invoke-virtual {v0, p1}, Lt2/o;->b(Lf2/b0;)V

    return-void
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf2/g;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf2/g;->c:Ljava/lang/Object;

    check-cast v0, Lt2/o;

    invoke-virtual {v0}, Lt2/o;->c()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf2/g;->f:Ljava/lang/Object;

    check-cast v0, Lb3/b;

    invoke-interface {v0}, Lb3/b;->c()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
