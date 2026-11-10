.class public final enum Lcom/google/android/gms/internal/play_billing/r2;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/n0;


# static fields
.field public static final enum b:Lcom/google/android/gms/internal/play_billing/r2;

.field public static final enum c:Lcom/google/android/gms/internal/play_billing/r2;

.field public static final enum d:Lcom/google/android/gms/internal/play_billing/r2;

.field public static final enum e:Lcom/google/android/gms/internal/play_billing/r2;

.field public static final synthetic f:[Lcom/google/android/gms/internal/play_billing/r2;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/play_billing/r2;

    const-string v1, "BROADCAST_ACTION_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/play_billing/r2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/r2;->b:Lcom/google/android/gms/internal/play_billing/r2;

    new-instance v1, Lcom/google/android/gms/internal/play_billing/r2;

    const-string v2, "PURCHASES_UPDATED_ACTION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/play_billing/r2;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/play_billing/r2;->c:Lcom/google/android/gms/internal/play_billing/r2;

    new-instance v2, Lcom/google/android/gms/internal/play_billing/r2;

    const-string v3, "LOCAL_PURCHASES_UPDATED_ACTION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/play_billing/r2;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/play_billing/r2;->d:Lcom/google/android/gms/internal/play_billing/r2;

    new-instance v3, Lcom/google/android/gms/internal/play_billing/r2;

    const-string v4, "ALTERNATIVE_BILLING_ACTION"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/play_billing/r2;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/play_billing/r2;->e:Lcom/google/android/gms/internal/play_billing/r2;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/internal/play_billing/r2;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/r2;->f:[Lcom/google/android/gms/internal/play_billing/r2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/r2;->a:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/play_billing/r2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/r2;->f:[Lcom/google/android/gms/internal/play_billing/r2;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/play_billing/r2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/play_billing/r2;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/r2;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
