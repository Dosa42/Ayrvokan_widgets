.class public abstract Lm3/b;
.super Lm3/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lm3/i;Lh3/a;Le3/a;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lm3/d;-><init>(Lm3/i;Lh3/a;Lh3/a;)V

    .line 3
    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 9
    .line 10
    const-string p2, "Flow style must be provided."

    .line 11
    .line 12
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method


# virtual methods
.method public abstract c()Ljava/util/List;
.end method
