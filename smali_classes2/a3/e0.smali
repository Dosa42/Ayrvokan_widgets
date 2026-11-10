.class public final La3/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/z;


# instance fields
.field public final a:La3/l;

.field public final b:I

.field public final c:La3/f0;

.field public final d:La3/d0;

.field public volatile e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(La3/i;Landroid/net/Uri;La3/d0;)V
    .locals 1

    .line 1
    new-instance v0, La3/l;

    .line 2
    .line 3
    invoke-direct {v0, p2}, La3/l;-><init>(Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p2, La3/f0;

    .line 10
    .line 11
    invoke-direct {p2, p1}, La3/f0;-><init>(La3/i;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, La3/e0;->c:La3/f0;

    .line 15
    .line 16
    iput-object v0, p0, La3/e0;->a:La3/l;

    .line 17
    .line 18
    const/4 p1, 0x4

    .line 19
    iput p1, p0, La3/e0;->b:I

    .line 20
    .line 21
    iput-object p3, p0, La3/e0;->d:La3/d0;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, La3/e0;->c:La3/f0;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    iput-wide v1, v0, La3/f0;->b:J

    .line 6
    .line 7
    new-instance v0, La3/k;

    .line 8
    .line 9
    iget-object v1, p0, La3/e0;->c:La3/f0;

    .line 10
    .line 11
    iget-object v2, p0, La3/e0;->a:La3/l;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, La3/k;-><init>(La3/i;La3/l;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-boolean v1, v0, La3/k;->d:Z

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iget-object v1, v0, La3/k;->a:La3/i;

    .line 21
    .line 22
    iget-object v2, v0, La3/k;->b:La3/l;

    .line 23
    .line 24
    invoke-interface {v1, v2}, La3/i;->b(La3/l;)J

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    iput-boolean v1, v0, La3/k;->d:Z

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    iget-object v1, p0, La3/e0;->c:La3/f0;

    .line 34
    .line 35
    invoke-virtual {v1}, La3/f0;->getUri()Landroid/net/Uri;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, La3/e0;->d:La3/d0;

    .line 43
    .line 44
    invoke-interface {v2, v1, v0}, La3/d0;->c(Landroid/net/Uri;La3/k;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, p0, La3/e0;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    sget v1, Lb3/n;->a:I

    .line 51
    .line 52
    :try_start_1
    invoke-virtual {v0}, La3/k;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    .line 54
    .line 55
    :catch_0
    return-void

    .line 56
    :goto_1
    sget v2, Lb3/n;->a:I

    .line 57
    .line 58
    :try_start_2
    invoke-virtual {v0}, La3/k;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 59
    .line 60
    .line 61
    :catch_1
    throw v1
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method
