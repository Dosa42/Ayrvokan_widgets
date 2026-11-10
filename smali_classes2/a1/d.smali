.class public final La1/d;
.super Lw0/d;
.source "SourceFile"


# static fields
.field public static final i:Lf0/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lc/a;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lc/a;-><init>(I)V

    new-instance v1, La1/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, La1/c;-><init>(I)V

    new-instance v2, Lf0/k;

    invoke-direct {v2, v1, v0}, Lf0/k;-><init>(La1/c;Lc/a;)V

    sput-object v2, La1/d;->i:Lf0/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, La1/d;->i:Lf0/k;

    sget-object v1, Lw0/c;->b:Lw0/c;

    invoke-direct {p0, p1, v0, v1}, Lw0/d;-><init>(Landroid/content/Context;Lf0/k;Lw0/c;)V

    return-void
.end method


# virtual methods
.method public final b(Ly0/k;)Li1/f;
    .locals 6

    .line 1
    new-instance v0, Lf0/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lf0/d;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sget-object v2, Lc1/b;->h:Lv0/c;

    .line 8
    .line 9
    filled-new-array {v2}, [Lv0/c;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iput-object v2, v0, Lf0/d;->c:Ljava/lang/Object;

    .line 14
    .line 15
    iput-boolean v1, v0, Lf0/d;->a:Z

    .line 16
    .line 17
    new-instance v3, Lh/a;

    .line 18
    .line 19
    const/4 v4, 0x4

    .line 20
    invoke-direct {v3, p1, v4}, Lh/a;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    iput-object v3, v0, Lf0/d;->b:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance p1, Lf0/d;

    .line 26
    .line 27
    invoke-direct {p1, v0, v2, v1, v1}, Lf0/d;-><init>(Lf0/d;[Lv0/c;ZI)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Li1/b;

    .line 31
    .line 32
    invoke-direct {v0}, Li1/b;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lw0/d;->h:Lx0/d;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object v2, v1, Lx0/d;->r:Le1/d;

    .line 41
    .line 42
    new-instance v3, Lx0/x;

    .line 43
    .line 44
    iget-object v5, p0, Lw0/d;->g:Lc/a;

    .line 45
    .line 46
    invoke-direct {v3, p1, v0, v5}, Lx0/x;-><init>(Lf0/d;Li1/b;Lc/a;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, v1, Lx0/d;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    .line 51
    new-instance v1, Lx0/u;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-direct {v1, v3, p1, p0}, Lx0/u;-><init>(Lx0/x;ILw0/d;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 65
    .line 66
    .line 67
    iget-object p1, v0, Li1/b;->a:Li1/f;

    .line 68
    .line 69
    return-object p1
.end method
