.class public Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/Numpad;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/LinearLayout$LayoutParams;

.field public b:Landroid/widget/TextView;

.field public c:Lw1/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v3, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/Numpad;->a:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v1, Lw1/a;

    invoke-direct {v1, p0, v0}, Lw1/a;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/Numpad;I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v3, "1"

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/Numpad;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/LinearLayout;Lw1/a;)V

    const-string v3, "4"

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/Numpad;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/LinearLayout;Lw1/a;)V

    const-string v3, "7"

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/Numpad;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/LinearLayout;Lw1/a;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v3, "2"

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/Numpad;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/LinearLayout;Lw1/a;)V

    const-string v3, "5"

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/Numpad;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/LinearLayout;Lw1/a;)V

    const-string v3, "8"

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/Numpad;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/LinearLayout;Lw1/a;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v3, "3"

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/Numpad;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/LinearLayout;Lw1/a;)V

    const-string v3, "6"

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/Numpad;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/LinearLayout;Lw1/a;)V

    const-string v3, "9"

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/Numpad;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/LinearLayout;Lw1/a;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p2, Lw1/a;

    invoke-direct {p2, p0, v2}, Lw1/a;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/Numpad;I)V

    const-string v2, "\u232b"

    invoke-virtual {p0, p1, v2, v0, p2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/Numpad;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/LinearLayout;Lw1/a;)V

    const-string p2, "0"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/Numpad;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/LinearLayout;Lw1/a;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/LinearLayout;Lw1/a;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/Numpad;->a:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOutputTextView(Landroid/widget/TextView;Lw1/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/Numpad;->b:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/Numpad;->c:Lw1/b;

    return-void
.end method
