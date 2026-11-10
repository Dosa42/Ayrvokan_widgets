.class public abstract Lz2/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/s;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lz2/s;->b:I

    return-void
.end method
