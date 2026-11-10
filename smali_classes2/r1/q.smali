.class public abstract Lr1/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:La2/a;

.field public b:Lz1/c;

.field public c:F

.field public d:F

.field public e:I

.field public f:I

.field public g:Z

.field public h:F

.field public i:F

.field public j:Z

.field public final k:Lq1/f;

.field public final l:Lc/a;

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>(Lq1/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lr1/q;->c:F

    .line 6
    .line 7
    iput v0, p0, Lr1/q;->d:F

    .line 8
    .line 9
    const/16 v1, 0x140

    .line 10
    .line 11
    iput v1, p0, Lr1/q;->e:I

    .line 12
    .line 13
    const/16 v1, 0xf0

    .line 14
    .line 15
    iput v1, p0, Lr1/q;->f:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lr1/q;->g:Z

    .line 19
    .line 20
    iput v0, p0, Lr1/q;->h:F

    .line 21
    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    .line 24
    iput v0, p0, Lr1/q;->i:F

    .line 25
    .line 26
    iput-boolean v1, p0, Lr1/q;->j:Z

    .line 27
    .line 28
    iput-boolean v1, p0, Lr1/q;->m:Z

    .line 29
    .line 30
    iput-boolean v1, p0, Lr1/q;->n:Z

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lr1/q;->a:La2/a;

    .line 34
    .line 35
    iput-object v0, p0, Lr1/q;->b:Lz1/c;

    .line 36
    .line 37
    iput-object p1, p0, Lr1/q;->k:Lq1/f;

    .line 38
    .line 39
    sget-object p1, Lc/a;->g:Lc/a;

    .line 40
    .line 41
    if-nez p1, :cond_0

    .line 42
    .line 43
    new-instance p1, Lc/a;

    .line 44
    .line 45
    const/16 v0, 0xd

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-direct {p1, v0, v1}, Lc/a;-><init>(II)V

    .line 49
    .line 50
    .line 51
    sput-object p1, Lc/a;->g:Lc/a;

    .line 52
    .line 53
    :cond_0
    sget-object p1, Lc/a;->g:Lc/a;

    .line 54
    .line 55
    iput-object p1, p0, Lr1/q;->l:Lc/a;

    .line 56
    .line 57
    return-void
.end method
