.class public final Ls1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/c1;


# instance fields
.field public f:Z

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lj0/r;->b(Landroid/content/Context;)V

    invoke-static {}, Lj0/r;->a()Lj0/r;

    move-result-object p1

    sget-object v0, Lh0/a;->e:Lh0/a;

    invoke-virtual {p1, v0}, Lj0/r;->c(Lh0/a;)Lf0/k;

    move-result-object p1

    const-string v0, "proto"

    .line 1
    new-instance v1, Lg0/b;

    invoke-direct {v1, v0}, Lg0/b;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lc/a;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lc/a;-><init>(II)V

    invoke-virtual {p1, v1, v0}, Lf0/k;->f(Lg0/b;Lc/a;)Lj0/j;

    move-result-object p1

    iput-object p1, p0, Ls1/k;->g:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Ls1/k;->f:Z

    return-void
.end method

.method public constructor <init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;)V
    .locals 0

    .line 3
    iput-object p1, p0, Ls1/k;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;Z)V
    .locals 0

    .line 4
    iput-object p1, p0, Ls1/k;->g:Ljava/lang/Object;

    iput-boolean p2, p0, Ls1/k;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pactl "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Ls1/k;->f:Z

    if-eqz v1, :cond_0

    const-string v1, "aaudio-sink"

    goto :goto_0

    :cond_0
    const-string v1, "sles-sink"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " module number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sdf"

    invoke-static {v0, p1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/play_billing/d3;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ls1/k;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget p1, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Ls1/k;->g:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lj0/j;

    .line 11
    .line 12
    new-instance v1, Lg0/a;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Lg0/a;-><init>(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lj0/j;->m(Lg0/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    sget p1, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 22
    .line 23
    return-void
.end method
