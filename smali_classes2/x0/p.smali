.class public final Lx0/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lx0/a;

.field public final b:Lv0/c;


# direct methods
.method public synthetic constructor <init>(Lx0/a;Lv0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/p;->a:Lx0/a;

    iput-object p2, p0, Lx0/p;->b:Lv0/c;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lx0/p;

    if-eqz v1, :cond_0

    check-cast p1, Lx0/p;

    iget-object v1, p0, Lx0/p;->a:Lx0/a;

    iget-object v2, p1, Lx0/p;->a:Lx0/a;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/i0;->E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lx0/p;->b:Lv0/c;

    iget-object p1, p1, Lx0/p;->b:Lv0/c;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/i0;->E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lx0/p;->a:Lx0/a;

    .line 2
    .line 3
    iget-object v1, p0, Lx0/p;->b:Lv0/c;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Landroidx/fragment/app/h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/fragment/app/h;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "key"

    .line 7
    .line 8
    iget-object v2, p0, Lx0/p;->a:Lx0/a;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/h;->j(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "feature"

    .line 14
    .line 15
    iget-object v2, p0, Lx0/p;->b:Lv0/c;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/h;->j(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/fragment/app/h;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method
