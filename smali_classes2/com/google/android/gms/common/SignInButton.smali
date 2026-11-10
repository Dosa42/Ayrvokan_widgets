.class public final Lcom/google/android/gms/common/SignInButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/view/View;

.field public d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/SignInButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/SignInButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p3, Lu0/d;->SignInButton:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lu0/d;->SignInButton_buttonSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/common/SignInButton;->a:I

    sget p2, Lu0/d;->SignInButton_colorScheme:I

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/common/SignInButton;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget p1, p0, Lcom/google/android/gms/common/SignInButton;->a:I

    iget p2, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    if-ne p1, v1, :cond_0

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setColorScheme(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View$OnClickListener;

    iget-object p1, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setScopes([Lcom/google/android/gms/common/api/Scope;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p1, p0, Lcom/google/android/gms/common/SignInButton;->a:I

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void
.end method

.method public setSize(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void
.end method

.method public setStyle(II)V
    .locals 8

    iput p1, p0, Lcom/google/android/gms/common/SignInButton;->a:I

    iput p2, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    :try_start_0
    iget p2, p0, Lcom/google/android/gms/common/SignInButton;->a:I

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    invoke-static {p1, p2, v0}, Ly0/u;->c(Landroid/content/Context;II)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;
    :try_end_0
    .catch Ld1/c; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    iget p2, p0, Lcom/google/android/gms/common/SignInButton;->a:I

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    new-instance v1, Lcom/google/android/gms/common/internal/zaaa;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/common/internal/zaaa;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42400000    # 48.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    sget v3, Lu0/b;->common_google_signin_btn_icon_dark:I

    sget v4, Lu0/b;->common_google_signin_btn_icon_light:I

    invoke-static {v0, v3, v4, v4}, Lcom/google/android/gms/common/internal/zaaa;->a(IIII)I

    move-result v3

    sget v4, Lu0/b;->common_google_signin_btn_text_dark:I

    sget v5, Lu0/b;->common_google_signin_btn_text_light:I

    invoke-static {v0, v4, v5, v5}, Lcom/google/android/gms/common/internal/zaaa;->a(IIII)I

    move-result v4

    const-string v5, "Unknown button size: "

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v7, :cond_2

    if-ne p2, v6, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 3
    invoke-static {v5, p2}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lu0/a;->common_google_signin_btn_tint:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 5
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 7
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 8
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v3, Lu0/a;->common_google_signin_btn_text_dark:I

    sget v4, Lu0/a;->common_google_signin_btn_text_light:I

    invoke-static {v0, v3, v4, v4}, Lcom/google/android/gms/common/internal/zaaa;->a(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->l(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_5

    if-eq p2, v7, :cond_4

    if-ne p2, v6, :cond_3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    invoke-static {v5, p2}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    sget p2, Lu0/c;->common_signin_button_text_long:I

    goto :goto_1

    :cond_5
    sget p2, Lu0/c;->common_signin_button_text:I

    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc1/b;->k(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x13

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 11
    :cond_6
    iput-object v1, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setStyle(II[Lcom/google/android/gms/common/api/Scope;)V
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/InlineMe;
        replacement = "this.setStyle(buttonSize, colorScheme)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void
.end method
