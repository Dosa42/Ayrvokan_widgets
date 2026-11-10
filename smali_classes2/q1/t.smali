.class public final Lq1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/d;


# instance fields
.field public final synthetic a:Lq1/x;


# direct methods
.method public constructor <init>(Lq1/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq1/t;->a:Lq1/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    invoke-static {}, Lz1/f;->o()F

    move-result v0

    sput v0, Lz1/f;->A:F

    invoke-static {v0}, Lz1/f;->p(F)F

    move-result v0

    sput v0, Lz1/f;->B:F

    const/4 v0, 0x1

    sput-boolean v0, Lz1/f;->z:Z

    return-void
.end method

.method public final c(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq1/t;->a:Lq1/x;

    invoke-virtual {v0, p1}, Lq1/x;->b(Z)V

    return-void
.end method
