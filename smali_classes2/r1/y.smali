.class public final Lr1/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lq1/f;

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/util/ArrayList;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Lr1/w;

.field public p:Lr1/x;


# direct methods
.method public constructor <init>(Lq1/f;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr1/y;->b:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lr1/y;->c:Z

    const-string v2, ""

    iput-object v2, p0, Lr1/y;->d:Ljava/lang/String;

    iput-object v2, p0, Lr1/y;->e:Ljava/lang/String;

    const-string v2, "<style>#messageContent { text-align: justify; font-size: 16px; line-height: 21px; hyphens: manual; } strong { color: var(--base-color-8); }</style>"

    iput-object v2, p0, Lr1/y;->f:Ljava/lang/String;

    const/16 v2, 0x12c

    iput v2, p0, Lr1/y;->g:I

    const/16 v2, 0xa0

    iput v2, p0, Lr1/y;->h:I

    const/16 v2, 0x64

    iput v2, p0, Lr1/y;->i:I

    const/16 v2, 0x1c

    iput v2, p0, Lr1/y;->j:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lr1/y;->k:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lr1/y;->l:Z

    iput-boolean v0, p0, Lr1/y;->m:Z

    iput-boolean v1, p0, Lr1/y;->n:Z

    iput-object p1, p0, Lr1/y;->a:Lq1/f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lr1/y;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lr1/y;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<style>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</style>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lr1/y;->f:Ljava/lang/String;

    return-void
.end method

.method public final c()Lr1/y;
    .locals 3

    .line 1
    new-instance v0, Lr1/y;

    iget-object v1, p0, Lr1/y;->a:Lq1/f;

    invoke-direct {v0, v1}, Lr1/y;-><init>(Lq1/f;)V

    iget-boolean v1, p0, Lr1/y;->b:Z

    iput-boolean v1, v0, Lr1/y;->b:Z

    iget-boolean v1, p0, Lr1/y;->c:Z

    iput-boolean v1, v0, Lr1/y;->c:Z

    iget-object v1, p0, Lr1/y;->d:Ljava/lang/String;

    iput-object v1, v0, Lr1/y;->d:Ljava/lang/String;

    iget-object v1, p0, Lr1/y;->e:Ljava/lang/String;

    iput-object v1, v0, Lr1/y;->e:Ljava/lang/String;

    iget-object v1, p0, Lr1/y;->f:Ljava/lang/String;

    iput-object v1, v0, Lr1/y;->f:Ljava/lang/String;

    iget v1, p0, Lr1/y;->g:I

    iput v1, v0, Lr1/y;->g:I

    iget v1, p0, Lr1/y;->h:I

    iput v1, v0, Lr1/y;->h:I

    iget v1, p0, Lr1/y;->i:I

    iput v1, v0, Lr1/y;->i:I

    iget v1, p0, Lr1/y;->j:I

    iput v1, v0, Lr1/y;->j:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lr1/y;->k:Ljava/util/ArrayList;

    iget-object v2, p0, Lr1/y;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-boolean v1, p0, Lr1/y;->l:Z

    iput-boolean v1, v0, Lr1/y;->l:Z

    iget-boolean v1, p0, Lr1/y;->m:Z

    iput-boolean v1, v0, Lr1/y;->m:Z

    iget-boolean v1, p0, Lr1/y;->n:Z

    iput-boolean v1, v0, Lr1/y;->n:Z

    iget-object v1, p0, Lr1/y;->o:Lr1/w;

    iput-object v1, v0, Lr1/y;->o:Lr1/w;

    iget-object v1, p0, Lr1/y;->p:Lr1/x;

    iput-object v1, v0, Lr1/y;->p:Lr1/x;

    return-object v0
.end method

.method public final d(II)V
    .locals 0

    .line 1
    iput p1, p0, Lr1/y;->g:I

    iput p2, p0, Lr1/y;->h:I

    const/16 p1, 0x168

    if-le p2, p1, :cond_0

    const-string p1, "sdf"

    const-string p2, "Setting prompt height > 360 us highly discouraged"

    invoke-static {p1, p2}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    :cond_0
    return-void
.end method
