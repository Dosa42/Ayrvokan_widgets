.class public final Lz/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lz/c;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public final c:Lf/b;

.field public final d:Landroid/util/SparseBooleanArray;

.field public final e:Lz/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lz/c;

    invoke-direct {v0}, Lz/c;-><init>()V

    sput-object v0, Lz/f;->f:Lz/c;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz/f;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lz/f;->b:Ljava/util/List;

    .line 7
    .line 8
    new-instance p2, Landroid/util/SparseBooleanArray;

    .line 9
    .line 10
    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lz/f;->d:Landroid/util/SparseBooleanArray;

    .line 14
    .line 15
    new-instance p2, Lf/b;

    .line 16
    .line 17
    invoke-direct {p2}, Lf/b;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lz/f;->c:Lf/b;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    const/high16 v0, -0x80000000

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_0
    if-ge v2, p2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lz/e;

    .line 37
    .line 38
    iget v4, v3, Lz/e;->e:I

    .line 39
    .line 40
    if-le v4, v0, :cond_0

    .line 41
    .line 42
    move-object v1, v3

    .line 43
    move v0, v4

    .line 44
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iput-object v1, p0, Lz/f;->e:Lz/e;

    .line 48
    .line 49
    return-void
.end method
