.class public final Lcom/google/android/gms/internal/play_billing/w;
.super Lcom/google/android/gms/internal/play_billing/x;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:I

.field public final synthetic c:Lcom/google/android/gms/internal/play_billing/z;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/z;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/w;->c:Lcom/google/android/gms/internal/play_billing/z;

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/x;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/w;->a:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/z;->i()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/w;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/w;->a:I

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/w;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
