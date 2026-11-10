.class public final Lw2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw2/b;

.field public b:Lc/a;

.field public final c:Lc/a;

.field public final d:La3/r;


# direct methods
.method public constructor <init>(Lf0/k;)V
    .locals 2

    .line 1
    new-instance v0, Lw2/b;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lw2/b;-><init>(Lf0/k;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lw2/j;->a:Lw2/b;

    .line 10
    .line 11
    new-instance p1, Lc/a;

    .line 12
    .line 13
    const/16 v0, 0x14

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {p1, v0, v1}, Lc/a;-><init>(II)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lw2/j;->b:Lc/a;

    .line 20
    .line 21
    new-instance p1, La3/r;

    .line 22
    .line 23
    invoke-direct {p1}, La3/r;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lw2/j;->d:La3/r;

    .line 27
    .line 28
    new-instance p1, Lc/a;

    .line 29
    .line 30
    const/16 v0, 0x11

    .line 31
    .line 32
    invoke-direct {p1, v0, v1}, Lc/a;-><init>(II)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lw2/j;->c:Lc/a;

    .line 36
    .line 37
    return-void
.end method
