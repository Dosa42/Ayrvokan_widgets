.class public final Ln2/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb3/l;

.field public final b:Lb3/h;

.field public final c:I


# direct methods
.method public constructor <init>(ILb3/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ln2/x;->c:I

    iput-object p2, p0, Ln2/x;->a:Lb3/l;

    new-instance p1, Lb3/h;

    invoke-direct {p1}, Lb3/h;-><init>()V

    iput-object p1, p0, Ln2/x;->b:Lb3/h;

    return-void
.end method
