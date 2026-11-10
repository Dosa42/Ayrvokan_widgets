.class public abstract La2/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/r;


# instance fields
.field public c:La2/c0;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:La2/q;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, La2/s;->d:Z

    iput-boolean v0, p0, La2/s;->e:Z

    iput-boolean v0, p0, La2/s;->f:Z

    return-void
.end method


# virtual methods
.method public final e(Lr1/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, La2/s;->g:La2/q;

    return-void
.end method

.method public final f()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getParent()La2/c0;
    .locals 1

    .line 1
    iget-object v0, p0, La2/s;->c:La2/c0;

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final o(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, La2/s;->e:Z

    return-void
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La2/s;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, La2/s;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final r()V
    .locals 0

    .line 1
    return-void
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La2/s;->f:Z

    return v0
.end method

.method public u(Lu1/w;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final v(La2/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, La2/s;->c:La2/c0;

    return-void
.end method

.method public y()V
    .locals 1

    .line 1
    iget-object v0, p0, La2/s;->g:La2/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, La2/q;->s()V

    :cond_0
    return-void
.end method
