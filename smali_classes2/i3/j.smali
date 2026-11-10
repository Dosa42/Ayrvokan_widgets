.class public final Li3/j;
.super Li3/i;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Le3/b;

.field public final f:Ljava/lang/String;

.field public final g:Lf0/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lf0/h;Ljava/lang/String;Lh3/a;Lh3/a;Le3/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p5, p6}, Li3/i;-><init>(Ljava/lang/String;Lh3/a;Lh3/a;)V

    iput-object p2, p0, Li3/j;->d:Ljava/lang/String;

    iput-object p3, p0, Li3/j;->g:Lf0/h;

    if-eqz p4, :cond_1

    iput-object p4, p0, Li3/j;->f:Ljava/lang/String;

    if-eqz p7, :cond_0

    iput-object p7, p0, Li3/j;->e:Le3/b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Style must be provided."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Value must be provided."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Li3/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li3/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li3/j;->g:Lf0/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li3/j;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 1
    const/4 v0, 0x6

    return v0
.end method
