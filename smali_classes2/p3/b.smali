.class public abstract Lp3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/LinkedHashMap;

.field public c:Le3/b;

.field public d:Le3/a;

.field public e:Lf2/g;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lp3/b;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lp3/b;->b:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lp3/b;->c:Le3/b;

    sget-object v0, Le3/a;->d:Le3/a;

    iput-object v0, p0, Lp3/b;->d:Le3/a;

    new-instance v0, Lp3/a;

    invoke-direct {v0}, Lp3/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lp3/b;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Lf2/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/b;->e:Lf2/g;

    if-nez v0, :cond_0

    new-instance v0, Lf2/g;

    invoke-direct {v0}, Lf2/g;-><init>()V

    iput-object v0, p0, Lp3/b;->e:Lf2/g;

    :cond_0
    iget-object v0, p0, Lp3/b;->e:Lf2/g;

    return-object v0
.end method
