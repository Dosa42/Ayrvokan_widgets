.class public final Lp3/c;
.super Lp3/d;
.source "SourceFile"


# instance fields
.field public i:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lp3/d;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lp3/c;->i:Ljava/util/Map;

    iget-object v0, p0, Lp3/b;->a:Ljava/util/HashMap;

    new-instance v1, Lh/a;

    const/16 v2, 0x17

    invoke-direct {v1, p0, v2}, Lh/a;-><init>(Ljava/lang/Object;I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
