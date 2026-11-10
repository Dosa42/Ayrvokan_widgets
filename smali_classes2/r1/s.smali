.class public final Lr1/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public f:I

.field public final synthetic g:La2/i;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(La2/p;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr1/s;->g:La2/i;

    iput-object p2, p0, Lr1/s;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x18

    iput p1, p0, Lr1/s;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lr1/s;->g:La2/i;

    .line 2
    .line 3
    iget-boolean v1, v0, La2/i;->i:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "document.getElementById(\'titleBar\').textContent = `"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lr1/s;->h:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, "`"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/nomone/GeckoView/MyGeckoView;->e(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget v0, p0, Lr1/s;->f:I

    .line 35
    .line 36
    if-lez v0, :cond_1

    .line 37
    .line 38
    sget-object v0, Lq1/f;->L:Lo1/j0;

    .line 39
    .line 40
    const-string v1, "setPageTitleTask"

    .line 41
    .line 42
    const-wide/16 v2, 0x64

    .line 43
    .line 44
    invoke-virtual {v0, p0, v1, v2, v3}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 45
    .line 46
    .line 47
    iget v0, p0, Lr1/s;->f:I

    .line 48
    .line 49
    add-int/lit8 v0, v0, -0x1

    .line 50
    .line 51
    iput v0, p0, Lr1/s;->f:I

    .line 52
    .line 53
    :cond_1
    :goto_0
    return-void
.end method
