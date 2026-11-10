.class public abstract Lm3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lm3/i;

.field public final b:Lh3/a;

.field public c:Lh3/a;

.field public d:Ljava/lang/Class;

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lm3/i;Lh3/a;Lh3/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lm3/d;->a:Lm3/i;

    .line 7
    .line 8
    iput-object p2, p0, Lm3/d;->b:Lh3/a;

    .line 9
    .line 10
    iput-object p3, p0, Lm3/d;->c:Lh3/a;

    .line 11
    .line 12
    const-class p1, Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p1, p0, Lm3/d;->d:Ljava/lang/Class;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lm3/d;->e:Z

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lm3/d;->f:Z

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lm3/d;->g:Ljava/lang/Boolean;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 27
    .line 28
    const-string p2, "tag in a Node is required."

    .line 29
    .line 30
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method


# virtual methods
.method public abstract a()Lm3/e;
.end method

.method public final b(Ljava/lang/Class;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm3/d;->d:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lm3/d;->d:Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
