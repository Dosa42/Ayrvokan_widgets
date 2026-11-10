.class public final Lc2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public final synthetic f:Lc2/e;


# direct methods
.method public constructor <init>(Lc2/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc2/d;->f:Lc2/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lc2/e;IIIII)V
    .locals 0

    iput-object p1, p0, Lc2/d;->f:Lc2/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lc2/d;->a:I

    iput p3, p0, Lc2/d;->b:I

    iput p4, p0, Lc2/d;->c:I

    iput p5, p0, Lc2/d;->d:I

    iput p6, p0, Lc2/d;->e:I

    return-void
.end method
