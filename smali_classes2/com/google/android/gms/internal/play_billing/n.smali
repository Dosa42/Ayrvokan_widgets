.class public final Lcom/google/android/gms/internal/play_billing/n;
.super Lcom/google/android/gms/internal/play_billing/f;
.source "SourceFile"


# instance fields
.field public final transient c:[Ljava/lang/Object;

.field public final transient d:I

.field public final transient e:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/f;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/n;->c:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/play_billing/n;->d:I

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/n;->e:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/n;->e:I

    invoke-static {p1, v0}, Lc1/b;->D(II)V

    add-int/2addr p1, p1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/n;->d:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/n;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/n;->e:I

    return v0
.end method
