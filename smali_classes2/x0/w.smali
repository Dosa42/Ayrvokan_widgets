.class public final Lx0/w;
.super Lh1/c;
.source "SourceFile"

# interfaces
.implements Lw0/e;
.implements Lw0/f;


# static fields
.field public static final h:La1/c;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:La1/c;

.field public final d:Ljava/util/Set;

.field public final e:Ly0/c;

.field public f:Lg1/c;

.field public g:Lf0/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lg1/b;->a:La1/c;

    sput-object v0, Lx0/w;->h:La1/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Le1/d;Ly0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lh1/c;-><init>()V

    iput-object p1, p0, Lx0/w;->a:Landroid/content/Context;

    iput-object p2, p0, Lx0/w;->b:Landroid/os/Handler;

    iput-object p3, p0, Lx0/w;->e:Ly0/c;

    iget-object p1, p3, Ly0/c;->b:Ljava/util/Set;

    iput-object p1, p0, Lx0/w;->d:Ljava/util/Set;

    sget-object p1, Lx0/w;->h:La1/c;

    iput-object p1, p0, Lx0/w;->c:La1/c;

    return-void
.end method


# virtual methods
.method public final a(Lv0/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/w;->g:Lf0/c;

    invoke-virtual {v0, p1}, Lf0/c;->c(Lv0/a;)V

    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lx0/w;->g:Lf0/c;

    .line 2
    .line 3
    iget-object v1, v0, Lf0/c;->k:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lx0/d;

    .line 6
    .line 7
    iget-object v1, v1, Lx0/d;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    iget-object v0, v0, Lf0/c;->h:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lx0/a;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lx0/o;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-boolean v1, v0, Lx0/o;->i:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    new-instance p1, Lv0/a;

    .line 26
    .line 27
    const/16 v1, 0x11

    .line 28
    .line 29
    invoke-direct {p1, v1}, Lv0/a;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lx0/o;->p(Lv0/a;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0, p1}, Lx0/o;->b(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/w;->f:Lg1/c;

    invoke-interface {v0, p0}, Lg1/c;->c(Lh1/e;)V

    return-void
.end method
