.class public final Ld3/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ld3/s;


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ld3/t;->a:I

    iput p2, p0, Ld3/t;->b:I

    new-instance p1, Ld3/s;

    invoke-direct {p1, p3, p4}, Ld3/s;-><init>(II)V

    iput-object p1, p0, Ld3/t;->c:Ld3/s;

    return-void
.end method

.method public constructor <init>(IILd3/s;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ld3/t;->a:I

    iput p2, p0, Ld3/t;->b:I

    iput-object p3, p0, Ld3/t;->c:Ld3/s;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ld3/t;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ld3/t;

    iget v0, p1, Ld3/t;->a:I

    iget v2, p0, Ld3/t;->a:I

    if-ne v2, v0, :cond_1

    iget v0, p0, Ld3/t;->b:I

    iget v2, p1, Ld3/t;->b:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Ld3/t;->c:Ld3/s;

    iget-object p1, p1, Ld3/t;->c:Ld3/s;

    invoke-virtual {v0, p1}, Ld3/s;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Ld3/t;->a:I

    const v1, 0xffd9

    mul-int/2addr v0, v1

    iget v1, p0, Ld3/t;->b:I

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0xfb

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ld3/t;->c:Ld3/s;

    invoke-virtual {v1}, Ld3/s;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ld3/t;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ld3/t;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld3/t;->c:Ld3/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
