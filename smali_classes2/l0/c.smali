.class public final Ll0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll0/b;
.implements Ly0/b;


# instance fields
.field public final f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll0/c;->f:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lv0/a;)V
    .locals 2

    .line 1
    iget v0, p1, Lv0/a;->b:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Ll0/c;->f:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ly0/f;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object p1, v1, Ly0/f;->w:Ljava/util/Set;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {v1, v0, p1}, Ly0/f;->a(Ly0/g;Ljava/util/Set;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object v0, v1, Ly0/f;->o:Ll0/c;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v0, v0, Ll0/c;->f:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lx0/h;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Lx0/h;->a(Lv0/a;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public m()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ll0/c;->f:Ljava/lang/Object;

    return-object v0
.end method
