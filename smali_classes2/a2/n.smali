.class public final synthetic La2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:La2/p;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Lz1/c;


# direct methods
.method public synthetic constructor <init>(IILz1/c;La2/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, La2/n;->f:La2/p;

    iput p1, p0, La2/n;->g:I

    iput p2, p0, La2/n;->h:I

    iput-object p3, p0, La2/n;->i:Lz1/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, La2/n;->f:La2/p;

    .line 2
    .line 3
    iget v1, v0, La2/p;->Z:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    iget v2, p0, La2/n;->g:I

    .line 7
    .line 8
    int-to-float v2, v2

    .line 9
    div-float v2, v1, v2

    .line 10
    .line 11
    iput v2, v0, La2/p;->l0:F

    .line 12
    .line 13
    iget v3, v0, La2/p;->a0:I

    .line 14
    .line 15
    int-to-float v3, v3

    .line 16
    iget v4, p0, La2/n;->h:I

    .line 17
    .line 18
    int-to-float v4, v4

    .line 19
    div-float v4, v3, v4

    .line 20
    .line 21
    iput v4, v0, La2/p;->m0:F

    .line 22
    .line 23
    iget-object v5, p0, La2/n;->i:Lz1/c;

    .line 24
    .line 25
    iget v6, v5, Lz1/c;->c:I

    .line 26
    .line 27
    int-to-float v6, v6

    .line 28
    mul-float/2addr v2, v6

    .line 29
    div-float/2addr v2, v1

    .line 30
    iget v1, v5, Lz1/c;->d:I

    .line 31
    .line 32
    int-to-float v1, v1

    .line 33
    mul-float/2addr v4, v1

    .line 34
    div-float/2addr v4, v3

    .line 35
    invoke-virtual {v0, v2, v4}, La2/p;->O(FF)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
