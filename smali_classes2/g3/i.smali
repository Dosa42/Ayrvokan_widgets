.class public final Lg3/i;
.super Lg3/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lh3/a;Ljava/lang/Object;Lh3/a;)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "found duplicate key "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "while constructing a mapping"

    invoke-direct {p0, v0, p1, p2, p3}, Lg3/h;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    return-void
.end method
