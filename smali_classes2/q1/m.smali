.class public final synthetic Lq1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/w;


# instance fields
.field public final synthetic f:Lq1/x;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lq1/x;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq1/m;->f:Lq1/x;

    iput-boolean p2, p0, Lq1/m;->g:Z

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq1/m;->f:Lq1/x;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lq1/x;->C:Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 5
    .line 6
    const-string v1, "skip"

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Lq1/x;->o()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-boolean p1, p0, Lq1/m;->g:Z

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lq1/x;->f(Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, v0, Lq1/x;->h:La2/b0;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p1, La2/e0;->m:Z

    .line 31
    .line 32
    invoke-virtual {p1, v1}, La2/e0;->B(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lq1/x;->i()V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method
