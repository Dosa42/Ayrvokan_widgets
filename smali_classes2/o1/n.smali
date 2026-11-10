.class public final Lo1/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:I

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo1/n;->a:I

    const/16 p1, 0x83

    new-array p1, p1, [B

    iput-object p1, p0, Lo1/n;->e:Ljava/lang/Object;

    const/4 v0, 0x2

    const/4 v1, 0x1

    aput-byte v1, p1, v0

    return-void
.end method


# virtual methods
.method public final a([BII)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lo1/n;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr p3, p2

    iget-object v0, p0, Lo1/n;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [B

    array-length v1, v1

    iget v2, p0, Lo1/n;->d:I

    add-int v3, v2, p3

    if-ge v1, v3, :cond_1

    check-cast v0, [B

    add-int/2addr v2, p3

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lo1/n;->e:Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lo1/n;->e:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p0, Lo1/n;->d:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lo1/n;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Lo1/n;->d:I

    return-void
.end method

.method public final b(I)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lo1/n;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lo1/n;->d:I

    sub-int/2addr v0, p1

    iput v0, p0, Lo1/n;->d:I

    iput-boolean v1, p0, Lo1/n;->b:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo1/n;->c:Z

    return p1
.end method

.method public final c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo1/n;->b:Z

    iput-boolean v0, p0, Lo1/n;->c:Z

    return-void
.end method

.method public final d(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lo1/n;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    iget v0, p0, Lo1/n;->a:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lo1/n;->b:Z

    if-eqz v1, :cond_1

    const/4 p1, 0x3

    iput p1, p0, Lo1/n;->d:I

    iput-boolean v2, p0, Lo1/n;->c:Z

    :cond_1
    return-void
.end method
