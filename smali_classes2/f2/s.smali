.class public abstract Lf2/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashSet;

.field public static b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lf2/s;->a:Ljava/util/HashSet;

    const-string v0, "goog.exo.core"

    sput-object v0, Lf2/s;->b:Ljava/lang/String;

    return-void
.end method
