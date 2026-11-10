.class public final Ld3/r;
.super Ld3/u;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    iput p1, p0, Ld3/r;->a:I

    iput p2, p0, Ld3/r;->b:I

    invoke-direct {p0}, Ld3/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Ld3/l0;

    .line 2
    .line 3
    iget v0, p1, Ld3/l0;->a:I

    .line 4
    .line 5
    iget v1, p0, Ld3/r;->a:I

    .line 6
    .line 7
    sub-int/2addr v1, v0

    .line 8
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p0, Ld3/r;->b:I

    .line 13
    .line 14
    iget p1, p1, Ld3/l0;->b:I

    .line 15
    .line 16
    sub-int/2addr v1, p1

    .line 17
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    add-int/2addr p1, v0

    .line 22
    return p1
.end method
