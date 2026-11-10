.class public final Lm3/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lm3/i;

.field public static final d:Lm3/i;

.field public static final e:Lm3/i;

.field public static final f:Lm3/i;

.field public static final g:Lm3/i;

.field public static final h:Lm3/i;

.field public static final i:Lm3/i;

.field public static final j:Lm3/i;

.field public static final k:Lm3/i;

.field public static final l:Lm3/i;

.field public static final m:Lm3/i;

.field public static final n:Lm3/i;

.field public static final o:Lm3/i;

.field public static final p:Lm3/i;

.field public static final q:Ljava/util/HashMap;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lm3/i;

    const-string v1, "tag:yaml.org,2002:yaml"

    invoke-direct {v0, v1}, Lm3/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lm3/i;->c:Lm3/i;

    new-instance v0, Lm3/i;

    const-string v1, "tag:yaml.org,2002:merge"

    invoke-direct {v0, v1}, Lm3/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lm3/i;->d:Lm3/i;

    new-instance v0, Lm3/i;

    const-string v1, "tag:yaml.org,2002:set"

    invoke-direct {v0, v1}, Lm3/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lm3/i;->e:Lm3/i;

    new-instance v0, Lm3/i;

    const-string v1, "tag:yaml.org,2002:pairs"

    invoke-direct {v0, v1}, Lm3/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lm3/i;->f:Lm3/i;

    new-instance v0, Lm3/i;

    const-string v1, "tag:yaml.org,2002:omap"

    invoke-direct {v0, v1}, Lm3/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lm3/i;->g:Lm3/i;

    new-instance v0, Lm3/i;

    const-string v1, "tag:yaml.org,2002:binary"

    invoke-direct {v0, v1}, Lm3/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lm3/i;->h:Lm3/i;

    new-instance v0, Lm3/i;

    const-string v1, "tag:yaml.org,2002:int"

    invoke-direct {v0, v1}, Lm3/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lm3/i;->i:Lm3/i;

    new-instance v1, Lm3/i;

    const-string v2, "tag:yaml.org,2002:float"

    invoke-direct {v1, v2}, Lm3/i;-><init>(Ljava/lang/String;)V

    sput-object v1, Lm3/i;->j:Lm3/i;

    new-instance v2, Lm3/i;

    const-string v3, "tag:yaml.org,2002:timestamp"

    invoke-direct {v2, v3}, Lm3/i;-><init>(Ljava/lang/String;)V

    sput-object v2, Lm3/i;->k:Lm3/i;

    new-instance v2, Lm3/i;

    const-string v3, "tag:yaml.org,2002:bool"

    invoke-direct {v2, v3}, Lm3/i;-><init>(Ljava/lang/String;)V

    sput-object v2, Lm3/i;->l:Lm3/i;

    new-instance v2, Lm3/i;

    const-string v3, "tag:yaml.org,2002:null"

    invoke-direct {v2, v3}, Lm3/i;-><init>(Ljava/lang/String;)V

    sput-object v2, Lm3/i;->m:Lm3/i;

    new-instance v2, Lm3/i;

    const-string v3, "tag:yaml.org,2002:str"

    invoke-direct {v2, v3}, Lm3/i;-><init>(Ljava/lang/String;)V

    sput-object v2, Lm3/i;->n:Lm3/i;

    new-instance v2, Lm3/i;

    const-string v3, "tag:yaml.org,2002:seq"

    invoke-direct {v2, v3}, Lm3/i;-><init>(Ljava/lang/String;)V

    sput-object v2, Lm3/i;->o:Lm3/i;

    new-instance v2, Lm3/i;

    const-string v3, "tag:yaml.org,2002:map"

    invoke-direct {v2, v3}, Lm3/i;-><init>(Ljava/lang/String;)V

    sput-object v2, Lm3/i;->p:Lm3/i;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lm3/i;->q:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-class v4, Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v4, Ljava/lang/Float;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v4, Ljava/math/BigDecimal;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v3, Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v3, Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-class v1, Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :try_start_0
    const-string v1, "java.sql.Date"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "java.sql.Timestamp"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v1, Lm3/i;->q:Ljava/util/HashMap;

    sget-object v2, Lm3/i;->k:Lm3/i;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm3/i;->b:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lt3/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "tag:yaml.org,2002:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lm3/i;->a:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Class for tag must be provided."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm3/i;->b:Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lt3/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm3/i;->a:Ljava/lang/String;

    const-string v0, "tag:yaml.org,2002:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lm3/i;->b:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tag must not contain leading or trailing spaces."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tag must not be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lm3/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lm3/i;

    .line 6
    .line 7
    iget-object p1, p1, Lm3/i;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, p0, Lm3/i;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lm3/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lm3/i;->a:Ljava/lang/String;

    return-object v0
.end method
