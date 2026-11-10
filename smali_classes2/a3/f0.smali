.class public final La3/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/i;


# instance fields
.field public final a:La3/i;

.field public b:J

.field public c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(La3/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, La3/f0;->a:La3/i;

    .line 8
    .line 9
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 10
    .line 11
    iput-object p1, p0, La3/f0;->c:Landroid/net/Uri;

    .line 12
    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(La3/g0;)V
    .locals 1

    .line 1
    iget-object v0, p0, La3/f0;->a:La3/i;

    invoke-interface {v0, p1}, La3/i;->a(La3/g0;)V

    return-void
.end method

.method public final b(La3/l;)J
    .locals 2

    .line 1
    iget-object v0, p1, La3/l;->a:Landroid/net/Uri;

    .line 2
    .line 3
    iput-object v0, p0, La3/f0;->c:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, La3/f0;->a:La3/i;

    .line 9
    .line 10
    invoke-interface {v0, p1}, La3/i;->b(La3/l;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-virtual {p0}, La3/f0;->getUri()Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, La3/f0;->c:Landroid/net/Uri;

    .line 22
    .line 23
    invoke-virtual {p0}, La3/f0;->c()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    return-wide v0
.end method

.method public final c()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, La3/f0;->a:La3/i;

    invoke-interface {v0}, La3/i;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, La3/f0;->a:La3/i;

    invoke-interface {v0}, La3/i;->close()V

    return-void
.end method

.method public final d([BII)I
    .locals 2

    .line 1
    iget-object v0, p0, La3/f0;->a:La3/i;

    invoke-interface {v0, p1, p2, p3}, La3/i;->d([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-wide p2, p0, La3/f0;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, La3/f0;->b:J

    :cond_0
    return p1
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, La3/f0;->a:La3/i;

    invoke-interface {v0}, La3/i;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
