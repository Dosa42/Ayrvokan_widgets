.class public final Ld3/q;
.super Ld3/u;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ld3/q;->a:I

    invoke-direct {p0}, Ld3/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Ld3/s;

    .line 2
    .line 3
    iget v0, p1, Ld3/s;->a:I

    .line 4
    .line 5
    const/16 v1, 0x1f40

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sub-int/2addr v0, v1

    .line 13
    mul-int/lit8 v0, v0, 0x4

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    :goto_0
    iget v1, p0, Ld3/q;->a:I

    .line 17
    .line 18
    mul-int/lit16 v1, v1, 0x3e8

    .line 19
    .line 20
    iget p1, p1, Ld3/s;->b:I

    .line 21
    .line 22
    sub-int/2addr v1, p1

    .line 23
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/16 v1, 0x1388

    .line 28
    .line 29
    if-ge p1, v1, :cond_1

    .line 30
    .line 31
    mul-int/lit8 p1, p1, 0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    sub-int/2addr p1, v1

    .line 35
    mul-int/lit8 p1, p1, 0x3

    .line 36
    .line 37
    add-int/2addr p1, v1

    .line 38
    :goto_1
    add-int/2addr p1, v0

    .line 39
    return p1
.end method
