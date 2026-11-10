.class public final Lz1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/b;


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz1/a;->a:F

    iput p2, p0, Lz1/a;->b:F

    return-void
.end method


# virtual methods
.method public final a()Lz1/b;
    .locals 3

    .line 1
    new-instance v0, Lz1/a;

    iget v1, p0, Lz1/a;->a:F

    iget v2, p0, Lz1/a;->b:F

    invoke-direct {v0, v1, v2}, Lz1/a;-><init>(FF)V

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lz1/a;->a()Lz1/b;

    move-result-object v0

    return-object v0
.end method
