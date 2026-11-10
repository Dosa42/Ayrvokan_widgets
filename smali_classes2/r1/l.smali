.class public final synthetic Lr1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/m;


# instance fields
.field public final synthetic a:Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;

.field public final synthetic b:F

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;FZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr1/l;->a:Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;

    iput p2, p0, Lr1/l;->b:F

    iput-boolean p3, p0, Lr1/l;->c:Z

    iput-boolean p4, p0, Lr1/l;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lr1/l;->a:Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "Page started"

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object p1, v0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 15
    .line 16
    iget v1, p0, Lr1/l;->b:F

    .line 17
    .line 18
    iput v1, p1, La2/p;->O0:F

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v3, "document.documentElement.style.setProperty(\'--extraBar-height\', \'"

    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, "px\')"

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p1, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p1, La2/i;->c:Lz1/c;

    .line 45
    .line 46
    iget v2, v1, Lz1/c;->c:I

    .line 47
    .line 48
    iget v1, v1, Lz1/c;->d:I

    .line 49
    .line 50
    invoke-virtual {p1, v2, v1}, La2/p;->L(II)V

    .line 51
    .line 52
    .line 53
    iget-boolean p1, p0, Lr1/l;->c:Z

    .line 54
    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    iget-object p1, v0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 58
    .line 59
    iget-object p1, p1, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 60
    .line 61
    const-string v1, "EnableCloseButton"

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Lcom/nomone/GeckoView/MyGeckoView;->g(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-boolean p1, p0, Lr1/l;->d:Z

    .line 67
    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    iget-object p1, v0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 71
    .line 72
    iget-object p1, p1, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 73
    .line 74
    const-string v0, "EnableMaximizeButton"

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lcom/nomone/GeckoView/MyGeckoView;->g(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    const-string v1, "maximizeButtonPressed"

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    iget-boolean p1, v0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->f:Z

    .line 89
    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->f()V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v0}, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->e()V

    .line 97
    .line 98
    .line 99
    :goto_0
    iget-object p1, v0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 100
    .line 101
    invoke-virtual {p1}, Lq1/f;->d()V

    .line 102
    .line 103
    .line 104
    const/4 p1, 0x1

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 107
    :goto_2
    return p1
.end method
