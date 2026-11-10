.class public final La3/k;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final a:La3/i;

.field public final b:La3/l;

.field public final c:[B

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(La3/i;La3/l;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La3/k;->d:Z

    iput-boolean v0, p0, La3/k;->e:Z

    iput-object p1, p0, La3/k;->a:La3/i;

    iput-object p2, p0, La3/k;->b:La3/l;

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, La3/k;->c:[B

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, La3/k;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, La3/k;->a:La3/i;

    .line 6
    .line 7
    iget-object v1, p0, La3/k;->b:La3/l;

    .line 8
    .line 9
    invoke-interface {v0, v1}, La3/i;->b(La3/l;)J

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, La3/k;->d:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, La3/k;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, La3/k;->a:La3/i;

    invoke-interface {v0}, La3/i;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, La3/k;->e:Z

    :cond_0
    return-void
.end method

.method public final read()I
    .locals 3

    .line 1
    iget-object v0, p0, La3/k;->c:[B

    invoke-virtual {p0, v0}, La3/k;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v2, v0, 0xff

    :goto_0
    return v2
.end method

.method public final read([B)I
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, La3/k;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 3

    iget-boolean v0, p0, La3/k;->e:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 3
    iget-boolean v0, p0, La3/k;->d:Z

    iget-object v2, p0, La3/k;->a:La3/i;

    if-nez v0, :cond_0

    iget-object v0, p0, La3/k;->b:La3/l;

    invoke-interface {v2, v0}, La3/i;->b(La3/l;)J

    iput-boolean v1, p0, La3/k;->d:Z

    .line 4
    :cond_0
    invoke-interface {v2, p1, p2, p3}, La3/i;->d([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    return p2

    :cond_1
    return p1
.end method
