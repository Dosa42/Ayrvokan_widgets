.class public final Lk2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb3/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb3/h;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lb3/h;-><init>(I)V

    iput-object v0, p0, Lk2/k;->a:Lb3/h;

    return-void
.end method
