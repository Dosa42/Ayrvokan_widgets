.class public abstract Ls3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lh3/a;

.field public final b:Lh3/a;


# direct methods
.method public constructor <init>(Lh3/a;Lh3/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p1, p0, Ls3/j;->a:Lh3/a;

    iput-object p2, p0, Ls3/j;->b:Lh3/a;

    return-void

    :cond_0
    new-instance p1, Lh3/c;

    const-string p2, "Token requires marks."

    invoke-direct {p1, p2}, Lh3/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract a()I
.end method
