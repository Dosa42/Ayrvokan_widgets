.class public final Lf2/h;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lf2/t;

.field public final d:I


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 6

    .line 1
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lf2/h;-><init>(ILjava/lang/Throwable;ILf2/t;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;ILf2/t;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput p1, p0, Lf2/h;->a:I

    iput p3, p0, Lf2/h;->b:I

    iput-object p4, p0, Lf2/h;->c:Lf2/t;

    iput p5, p0, Lf2/h;->d:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    return-void
.end method
