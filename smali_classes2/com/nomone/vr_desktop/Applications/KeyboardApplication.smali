.class public Lcom/nomone/vr_desktop/Applications/KeyboardApplication;
.super Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/String;


# instance fields
.field public final f:Lu1/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "apps/keyboard/index.html"

    invoke-static {v0}, Lt1/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nomone/vr_desktop/Applications/KeyboardApplication;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lq1/f;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lq1/f;->G:Lu1/o;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/nomone/vr_desktop/Applications/KeyboardApplication;->f:Lu1/o;

    .line 7
    .line 8
    invoke-static {}, Lcom/nomone/GeckoView/MyGeckoView;->getGlobalDisplayDensity()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    mul-float/2addr v0, v1

    .line 15
    const/high16 v1, 0x44200000    # 640.0f

    .line 16
    .line 17
    mul-float/2addr v1, v0

    .line 18
    float-to-int v1, v1

    .line 19
    const/high16 v2, 0x438c0000    # 280.0f

    .line 20
    .line 21
    mul-float/2addr v0, v2

    .line 22
    float-to-int v0, v0

    .line 23
    new-instance v2, Lr1/e0;

    .line 24
    .line 25
    sget-object v3, Lcom/nomone/vr_desktop/Applications/KeyboardApplication;->g:Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {v2, p1, v3}, Lr1/e0;-><init>(Lq1/f;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput v1, v2, Lr1/q;->e:I

    .line 31
    .line 32
    iput v0, v2, Lr1/q;->f:I

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, v2, Lr1/e0;->r:Z

    .line 36
    .line 37
    const-string v0, "keyboardTheme"

    .line 38
    .line 39
    iput-object v0, v2, Lr1/e0;->t:Ljava/lang/String;

    .line 40
    .line 41
    iput-boolean p1, v2, Lr1/e0;->s:Z

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c(Lr1/e0;)V

    .line 44
    .line 45
    .line 46
    new-array v0, p1, [C

    .line 47
    .line 48
    iget-object v1, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 49
    .line 50
    iget-object v1, v1, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 51
    .line 52
    new-instance v2, Lr1/f;

    .line 53
    .line 54
    invoke-direct {v2, p0, v0, p1}, Lr1/f;-><init>(Lr1/c;Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lcom/nomone/GeckoView/MyGeckoView;->a(Ln1/m;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 61
    .line 62
    iput-boolean p1, v0, La2/i;->y:Z

    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 68
    .line 69
    .line 70
    const/high16 p1, 0x60000

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
