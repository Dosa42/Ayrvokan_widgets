.class public Lr1/u;
.super Lr1/q;
.source "SourceFile"


# instance fields
.field public o:Ljava/lang/String;

.field public p:I

.field public q:Z


# direct methods
.method public constructor <init>(Lq1/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lr1/q;-><init>(Lq1/f;)V

    const/4 p1, 0x1

    iput p1, p0, Lr1/u;->p:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr1/u;->q:Z

    iput-object p2, p0, Lr1/u;->o:Ljava/lang/String;

    return-void
.end method
