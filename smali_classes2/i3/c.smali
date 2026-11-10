.class public abstract Li3/c;
.super Li3/i;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Le3/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLh3/a;Lh3/a;Le3/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4, p5}, Li3/i;-><init>(Ljava/lang/String;Lh3/a;Lh3/a;)V

    iput-object p2, p0, Li3/c;->d:Ljava/lang/String;

    iput-boolean p3, p0, Li3/c;->e:Z

    iput-object p6, p0, Li3/c;->f:Le3/a;

    return-void
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

    iget-object v1, p0, Li3/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", implicit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Li3/c;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
