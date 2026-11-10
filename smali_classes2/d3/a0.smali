.class public final Ld3/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ld3/p0;

.field public final b:Ld3/y;

.field public c:I

.field public d:I

.field public final e:Ld3/z;


# direct methods
.method public constructor <init>(Ld3/p0;Ld3/y;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld3/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ld3/z;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Ld3/a0;->e:Ld3/z;

    if-eqz p1, :cond_0

    iput-object p1, p0, Ld3/a0;->a:Ld3/p0;

    iput-object p2, p0, Ld3/a0;->b:Ld3/y;

    iput v1, p0, Ld3/a0;->c:I

    iput v1, p0, Ld3/a0;->d:I

    const-wide/16 v1, 0x7d0

    iget-object p1, p1, Ld3/p0;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SurfaceTextureHelper is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
