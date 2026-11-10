.class public final Lx0/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lv0/a;


# direct methods
.method public constructor <init>(Lv0/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/i0;->l(Ljava/lang/Object;)V

    iput-object p1, p0, Lx0/z;->b:Lv0/a;

    iput p2, p0, Lx0/z;->a:I

    return-void
.end method
