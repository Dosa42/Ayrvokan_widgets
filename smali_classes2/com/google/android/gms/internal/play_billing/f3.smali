.class public final Lcom/google/android/gms/internal/play_billing/f3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/o0;


# static fields
.field public static final a:Lcom/google/android/gms/internal/play_billing/f3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/f3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/f3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/f3;->a:Lcom/google/android/gms/internal/play_billing/f3;

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method
