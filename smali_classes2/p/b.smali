.class public Lp/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Landroid/view/View$AccessibilityDelegate;


# instance fields
.field public final a:Landroid/view/View$AccessibilityDelegate;

.field public final b:Lp/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    sput-object v0, Lp/b;->c:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lp/b;->c:Landroid/view/View$AccessibilityDelegate;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lp/b;->a:Landroid/view/View$AccessibilityDelegate;

    .line 7
    .line 8
    new-instance v0, Lp/a;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lp/a;-><init>(Lp/b;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lp/b;->b:Lp/a;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lp/b;->a:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp/b;->a:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public c(Landroid/view/View;Lq/c;)V
    .locals 1

    .line 1
    iget-object p2, p2, Lq/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2
    .line 3
    iget-object v0, p0, Lp/b;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lp/b;->a:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public e(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4

    .line 1
    sget v0, Li/a;->tag_accessibility_actions:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ge v2, v3, :cond_2

    .line 22
    .line 23
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lq/b;

    .line 28
    .line 29
    iget-object v3, v3, Lq/b;->a:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-ne v3, p2, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    :goto_1
    iget-object v0, p0, Lp/b;->a:Landroid/view/View$AccessibilityDelegate;

    .line 44
    .line 45
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_7

    .line 50
    .line 51
    sget v2, Li/a;->accessibility_action_clickable_span:I

    .line 52
    .line 53
    if-ne p2, v2, :cond_7

    .line 54
    .line 55
    const-string p2, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    .line 56
    .line 57
    const/4 v0, -0x1

    .line 58
    invoke-virtual {p3, p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    sget p3, Li/a;->tag_accessibility_clickable_spans:I

    .line 63
    .line 64
    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    check-cast p3, Landroid/util/SparseArray;

    .line 69
    .line 70
    if-eqz p3, :cond_6

    .line 71
    .line 72
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Ljava/lang/ref/WeakReference;

    .line 77
    .line 78
    if-eqz p2, :cond_6

    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    check-cast p2, Landroid/text/style/ClickableSpan;

    .line 85
    .line 86
    const/4 p3, 0x1

    .line 87
    if-eqz p2, :cond_5

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    instance-of v2, v0, Landroid/text/Spanned;

    .line 98
    .line 99
    if-eqz v2, :cond_3

    .line 100
    .line 101
    move-object v2, v0

    .line 102
    check-cast v2, Landroid/text/Spanned;

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    const-class v3, Landroid/text/style/ClickableSpan;

    .line 109
    .line 110
    invoke-interface {v2, v1, v0, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    const/4 v0, 0x0

    .line 118
    :goto_2
    move v2, v1

    .line 119
    :goto_3
    if-eqz v0, :cond_5

    .line 120
    .line 121
    array-length v3, v0

    .line 122
    if-ge v2, v3, :cond_5

    .line 123
    .line 124
    aget-object v3, v0, v2

    .line 125
    .line 126
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_4

    .line 131
    .line 132
    move v0, p3

    .line 133
    goto :goto_4

    .line 134
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_5
    move v0, v1

    .line 138
    :goto_4
    if-eqz v0, :cond_6

    .line 139
    .line 140
    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 141
    .line 142
    .line 143
    move v1, p3

    .line 144
    :cond_6
    move v0, v1

    .line 145
    :cond_7
    return v0
.end method
