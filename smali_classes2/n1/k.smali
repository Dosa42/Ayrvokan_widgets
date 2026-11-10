.class public final Ln1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/Autofill$Delegate;


# instance fields
.field public final synthetic a:Lcom/nomone/GeckoView/MyGeckoView;


# direct methods
.method public constructor <init>(Lcom/nomone/GeckoView/MyGeckoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln1/k;->a:Lcom/nomone/GeckoView/MyGeckoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAutofill(Lorg/mozilla/geckoview/GeckoSession;ILorg/mozilla/geckoview/Autofill$Node;)V
    .locals 4

    .line 1
    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1a

    .line 7
    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Ln1/k;->a:Lcom/nomone/GeckoView/MyGeckoView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {}, Lc1/a;->k()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lc1/a;->i(Ljava/lang/Object;)Landroid/view/autofill/AutofillManager;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    if-eqz p2, :cond_6

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    if-eq p2, v2, :cond_5

    .line 36
    .line 37
    const/4 v2, 0x2

    .line 38
    if-eq p2, v2, :cond_6

    .line 39
    .line 40
    const/4 v2, 0x5

    .line 41
    if-eq p2, v2, :cond_4

    .line 42
    .line 43
    const/4 v2, 0x6

    .line 44
    if-eq p2, v2, :cond_3

    .line 45
    .line 46
    const/4 p1, 0x7

    .line 47
    if-eq p2, p1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p3}, Lorg/mozilla/geckoview/Autofill$Node;->getId()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-static {v1, v0, p1}, Lc1/a;->u(Landroid/view/autofill/AutofillManager;Lcom/nomone/GeckoView/MyGeckoView;I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {p3}, Lorg/mozilla/geckoview/Autofill$Node;->getId()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    new-instance v2, Landroid/graphics/Matrix;

    .line 63
    .line 64
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v3, Landroid/graphics/RectF;

    .line 68
    .line 69
    invoke-virtual {p3}, Lorg/mozilla/geckoview/Autofill$Node;->getDimensions()Landroid/graphics/Rect;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-direct {v3, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v2}, Lorg/mozilla/geckoview/GeckoSession;->getPageToScreenMatrix(Landroid/graphics/Matrix;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 80
    .line 81
    .line 82
    new-instance p1, Landroid/graphics/Rect;

    .line 83
    .line 84
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, p1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v0, p2, p1}, Lc1/a;->v(Landroid/view/autofill/AutofillManager;Lcom/nomone/GeckoView/MyGeckoView;ILandroid/graphics/Rect;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_4
    invoke-virtual {p3}, Lorg/mozilla/geckoview/Autofill$Node;->getId()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-virtual {p3}, Lorg/mozilla/geckoview/Autofill$Node;->getValue()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-static {p2}, Lc1/a;->j(Ljava/lang/String;)Landroid/view/autofill/AutofillValue;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-static {v1, v0, p1, p2}, Lc1/a;->w(Landroid/view/autofill/AutofillManager;Lcom/nomone/GeckoView/MyGeckoView;ILandroid/view/autofill/AutofillValue;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_5
    invoke-static {v1}, Lc1/a;->C(Landroid/view/autofill/AutofillManager;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_6
    invoke-static {v1}, Lc1/a;->t(Landroid/view/autofill/AutofillManager;)V

    .line 115
    .line 116
    .line 117
    :goto_0
    return-void
.end method
