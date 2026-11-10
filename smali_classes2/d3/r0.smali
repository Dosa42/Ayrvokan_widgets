.class public final Ld3/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/u0;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Landroid/graphics/Matrix;

.field public final f:Landroid/os/Handler;

.field public final g:Lj0/j;

.field public final h:Ln2/a0;

.field public final i:Ld3/q0;


# direct methods
.method public constructor <init>(IIIILandroid/graphics/Matrix;Landroid/os/Handler;Lj0/j;Ld3/o0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ld3/r0;->a:I

    iput p2, p0, Ld3/r0;->b:I

    iput p3, p0, Ld3/r0;->c:I

    iput p4, p0, Ld3/r0;->d:I

    iput-object p5, p0, Ld3/r0;->e:Landroid/graphics/Matrix;

    iput-object p6, p0, Ld3/r0;->f:Landroid/os/Handler;

    iput-object p7, p0, Ld3/r0;->g:Lj0/j;

    new-instance p1, Ln2/a0;

    new-instance p2, Lo0/e;

    const/16 p3, 0xd

    invoke-direct {p2, p3, p0, p8}, Lo0/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Ln2/a0;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Ld3/r0;->h:Ln2/a0;

    iput-object p8, p0, Ld3/r0;->i:Ld3/q0;

    return-void
.end method


# virtual methods
.method public final a()Lorg/webrtc/JavaI420Buffer;
    .locals 2

    .line 1
    new-instance v0, Lorg/mozilla/gecko/media/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/mozilla/gecko/media/a;-><init>(Ljava/lang/Object;I)V

    iget-object v1, p0, Ld3/r0;->f:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/i0;->U(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/JavaI420Buffer;

    return-object v0
.end method

.method public final release()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld3/r0;->i:Ld3/q0;

    check-cast v0, Ld3/o0;

    invoke-virtual {v0}, Ld3/o0;->b()V

    iget-object v0, p0, Ld3/r0;->h:Ln2/a0;

    invoke-virtual {v0}, Ln2/a0;->d()V

    return-void
.end method
