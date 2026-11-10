.class public final Lcom/google/android/gms/internal/play_billing/e;
.super Lcom/google/android/gms/internal/play_billing/f;
.source "SourceFile"


# instance fields
.field public final transient c:I

.field public final transient d:I

.field public final synthetic e:Lcom/google/android/gms/internal/play_billing/f;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/f;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/e;->e:Lcom/google/android/gms/internal/play_billing/f;

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/f;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/play_billing/e;->c:I

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/e;->d:I

    return-void
.end method


# virtual methods
.method public final f()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/e;->e:Lcom/google/android/gms/internal/play_billing/f;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/c;->g()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/e;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/e;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final g()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/e;->e:Lcom/google/android/gms/internal/play_billing/f;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/c;->g()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/e;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/e;->d:I

    invoke-static {p1, v0}, Lc1/b;->D(II)V

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/e;->c:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/e;->e:Lcom/google/android/gms/internal/play_billing/f;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/e;->e:Lcom/google/android/gms/internal/play_billing/f;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/c;->h()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final i(II)Lcom/google/android/gms/internal/play_billing/f;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/e;->d:I

    invoke-static {p1, p2, v0}, Lc1/b;->M(III)V

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/e;->c:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/e;->e:Lcom/google/android/gms/internal/play_billing/f;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/f;->i(II)Lcom/google/android/gms/internal/play_billing/f;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/e;->d:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/e;->i(II)Lcom/google/android/gms/internal/play_billing/f;

    move-result-object p1

    return-object p1
.end method
