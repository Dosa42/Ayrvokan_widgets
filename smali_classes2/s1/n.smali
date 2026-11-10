.class public final Ls1/n;
.super Lr1/q;
.source "SourceFile"


# instance fields
.field public o:Ljava/lang/String;

.field public p:F


# direct methods
.method public constructor <init>(Lq1/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lr1/q;-><init>(Lq1/f;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Ls1/n;->p:F

    return-void
.end method
