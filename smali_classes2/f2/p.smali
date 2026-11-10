.class public final Lf2/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lf2/a0;

.field public b:I

.field public c:Z

.field public d:I


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf2/p;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lf2/p;->d:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->g(Z)V

    return-void

    :cond_1
    iput-boolean v1, p0, Lf2/p;->c:Z

    iput p1, p0, Lf2/p;->d:I

    return-void
.end method
