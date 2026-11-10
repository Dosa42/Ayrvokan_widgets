.class public Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity$NotificationHandler;
    }
.end annotation


# static fields
.field public static j:Lr1/i;

.field public static k:Ljava/lang/ThreadGroup;

.field public static final l:Ljava/util/ArrayList;

.field public static m:Ljava/lang/String;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Landroid/widget/ViewFlipper;

.field public d:[I

.field public e:Landroid/view/animation/Animation;

.field public f:Landroid/view/animation/Animation;

.field public g:Landroid/view/animation/Animation;

.field public h:Landroid/view/animation/Animation;

.field public i:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 10

    .line 1
    const-string v0, "\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    move v2, p1

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    mul-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    sub-int/2addr v5, v4

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const v6, 0x7f03000d

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v4, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v8, v3, 0x1

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v1, v4, v8, v9, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/16 v4, 0x12

    invoke-virtual {v1, v6, v8, v9, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v3, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v1, v5, v9}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/2addr v2, v7

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static n(Lq1/f;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 2
    .line 3
    new-instance v1, Landroid/content/Intent;

    .line 4
    .line 5
    iget-object p0, p0, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 6
    .line 7
    const-class v2, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;

    .line 8
    .line 9
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/play_billing/i0;->L(Landroid/content/Context;Z)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string p1, "UFBLVFN0YXJ0ZWQ"

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-static {p1, p0, v1, v1, v0}, Lcom/google/android/gms/internal/play_billing/i0;->e0(Ljava/lang/String;Ljava/lang/String;ZZLq1/z;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static p()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const-string v0, "ppkt phantom process fixed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "development_settings_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c(IZLjava/lang/String;)V
    .locals 1

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const-string p3, ""

    .line 4
    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-eqz p2, :cond_4

    .line 7
    .line 8
    const/4 p2, 0x3

    .line 9
    if-ne p1, p2, :cond_1

    .line 10
    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/play_billing/i0;->L(Landroid/content/Context;Z)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "UFBLVEFib3J0ZWQ"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p2, 0x1

    .line 34
    if-ne p1, p2, :cond_2

    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/play_billing/i0;->L(Landroid/content/Context;Z)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string p2, "UFBLVFN1Y2Nlc3M"

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 p2, 0x2

    .line 59
    if-ne p1, p2, :cond_3

    .line 60
    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/play_billing/i0;->L(Landroid/content/Context;Z)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string p2, "UFBLVEZhaWxlZA"

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    const/4 p2, 0x4

    .line 84
    if-ne p1, p2, :cond_4

    .line 85
    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/play_billing/i0;->L(Landroid/content/Context;Z)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const-string p2, "UFBLVEdhdmVVcA"

    .line 106
    .line 107
    :goto_0
    const/4 p3, 0x0

    .line 108
    invoke-static {p2, p1, v0, v0, p3}, Lcom/google/android/gms/internal/play_billing/i0;->e0(Ljava/lang/String;Ljava/lang/String;ZZLq1/z;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    const-string p1, "ppkt current step"

    .line 112
    .line 113
    invoke-static {v0, p1}, Lo1/y;->g(ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 117
    .line 118
    .line 119
    sget-object p1, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 120
    .line 121
    if-eqz p1, :cond_5

    .line 122
    .line 123
    invoke-virtual {p1}, Lr1/i;->a()V

    .line 124
    .line 125
    .line 126
    :cond_5
    return-void
.end method

.method public final d(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    const/16 v1, 0xa

    .line 12
    .line 13
    int-to-float v1, v1

    .line 14
    mul-float/2addr v0, v1

    .line 15
    float-to-int v0, v0

    .line 16
    const-string v1, "\n"

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    move v4, v3

    .line 29
    :cond_0
    :goto_0
    array-length v5, p1

    .line 30
    if-ge v4, v5, :cond_1

    .line 31
    .line 32
    new-instance v5, Landroid/text/SpannableString;

    .line 33
    .line 34
    aget-object v6, p1, v4

    .line 35
    .line 36
    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    new-instance v6, Landroid/text/style/BulletSpan;

    .line 40
    .line 41
    invoke-direct {v6, v0}, Landroid/text/style/BulletSpan;-><init>(I)V

    .line 42
    .line 43
    .line 44
    aget-object v7, p1, v4

    .line 45
    .line 46
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    const/16 v8, 0x21

    .line 51
    .line 52
    invoke-virtual {v5, v6, v3, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 56
    .line 57
    .line 58
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    array-length v5, p1

    .line 61
    if-ge v4, v5, :cond_0

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    return-object v2
.end method

.method public final e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c:Landroid/widget/ViewFlipper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-le p1, v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c:Landroid/widget/ViewFlipper;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->e:Landroid/view/animation/Animation;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c:Landroid/widget/ViewFlipper;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->f:Landroid/view/animation/Animation;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c:Landroid/widget/ViewFlipper;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->g:Landroid/view/animation/Animation;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c:Landroid/widget/ViewFlipper;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->h:Landroid/view/animation/Animation;

    .line 34
    .line 35
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c:Landroid/widget/ViewFlipper;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 41
    .line 42
    .line 43
    const-string v0, "ppkt current step"

    .line 44
    .line 45
    invoke-static {p1, v0}, Lo1/y;->g(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final f(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->d:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->e(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "sdf"

    const-string v1, "Couldn\'t jump to page, ID not found."

    invoke-static {p1, v1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->showNext()V

    return-void
.end method

.method public final h()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->a:Z

    .line 3
    .line 4
    const-string v0, "ppkt connection port"

    .line 5
    .line 6
    const/16 v1, 0x3039

    .line 7
    .line 8
    invoke-static {v0, v1}, Lo1/y;->c(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x15b3

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    const-string v1, "$BIN/adb connect localhost:"

    .line 17
    .line 18
    invoke-static {v1, v0}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v0, "$BIN/adb devices"

    .line 24
    .line 25
    :goto_0
    new-instance v1, Landroidx/fragment/app/h;

    .line 26
    .line 27
    const/16 v2, 0x1c

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-direct {v1, p0, v2, v3}, Landroidx/fragment/app/h;-><init>(Ljava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Ln1/a;

    .line 34
    .line 35
    const/4 v3, 0x4

    .line 36
    invoke-direct {v2, p0, v0, v1, v3}, Ln1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lw1/p;

    .line 40
    .line 41
    invoke-direct {v0, p0, v1}, Lw1/p;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;Landroidx/fragment/app/h;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, v1, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-virtual {v2}, Ln1/a;->run()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final i(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/high16 p1, 0x50200000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "top_or_left"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lnom/vrd/Launch;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->showPrevious()V

    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Lw1/r;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/play_billing/i0;->T(Landroid/content/Context;Z)V

    .line 3
    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/play_billing/i0;->s:Ljava/io/File;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v0, "/bin/busybox sh "

    .line 12
    .line 13
    invoke-static {v2, v0}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, "/bin/runCommand.sh "

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, " "

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v3, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string p1, "os.version"

    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v0, "OS_VERSION"

    .line 58
    .line 59
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v0, ""

    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v0, "ANDROID_VERSION"

    .line 79
    .line 80
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    const-string p1, "COMMON_FILESYSTEM"

    .line 84
    .line 85
    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    sget-object p1, Lcom/google/android/gms/internal/play_billing/i0;->t:Ljava/io/File;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-string v0, "COMMON_FILESYSTEM_HOME"

    .line 95
    .line 96
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    if-eqz p2, :cond_0

    .line 100
    .line 101
    const-string p1, "STD_INPUT"

    .line 102
    .line 103
    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :cond_0
    sget-object v5, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->k:Ljava/lang/ThreadGroup;

    .line 107
    .line 108
    new-instance v6, Lw1/q;

    .line 109
    .line 110
    invoke-direct {v6, p0, p3}, Lw1/q;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;Lw1/r;)V

    .line 111
    .line 112
    .line 113
    const/4 v4, 0x1

    .line 114
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/i0;->i0([Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/ThreadGroup;Lo1/c1;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public final l(Landroid/widget/Button;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    new-instance v0, Lw1/j;

    invoke-direct {v0, p0, p2}, Lw1/j;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final m(ILandroid/widget/TextView;)V
    .locals 1

    .line 1
    new-instance v0, Lw1/l;

    invoke-direct {v0, p1, p2, p0}, Lw1/l;-><init>(ILandroid/widget/TextView;Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o(Landroid/widget/TextView;Lw1/m;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0b0040

    invoke-virtual {p0, v0, p1}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->m(ILandroid/widget/TextView;)V

    new-instance p1, Lo0/n;

    const/16 v0, 0x13

    invoke-direct {p1, p2, v0}, Lo0/n;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_2

    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/Thread;

    sget-object v2, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->k:Ljava/lang/ThreadGroup;

    new-instance v3, Lo0/g;

    invoke-direct {v3, p0, v0, p1, p2}, Lo0/g;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;ILandroid/widget/TextView;Lw1/m;)V

    const-string p1, "isConnectionPortOpenThread"

    invoke-direct {v1, v2, v3, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_2
    :goto_0
    const v1, 0x7f0b0039

    invoke-virtual {p0, v1, p1}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->m(ILandroid/widget/TextView;)V

    new-instance p1, Lw1/n;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lw1/n;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c:Landroid/widget/ViewFlipper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    sparse-switch v0, :sswitch_data_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v4, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->d:[I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :sswitch_0
    invoke-virtual {p0, v1, v3, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c(IZLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :sswitch_1
    const/4 v0, 0x2

    .line 29
    invoke-virtual {p0, v0, v3, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c(IZLjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :goto_0
    iget-object v5, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c:Landroid/widget/ViewFlipper;

    .line 34
    .line 35
    invoke-virtual {v5}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    aget v4, v4, v5

    .line 40
    .line 41
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v5, "<pre><br>Exited using back button:<br>========================="

    .line 48
    .line 49
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v6, "<br>Page resource ID: "

    .line 55
    .line 56
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, "."

    .line 63
    .line 64
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v6, "<br>Screen splits   : "

    .line 77
    .line 78
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v6, "ppkt entered multi-window"

    .line 82
    .line 83
    invoke-static {v6, v3}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_0

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    sget-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->m:Ljava/lang/String;

    .line 108
    .line 109
    if-nez v0, :cond_1

    .line 110
    .line 111
    const-string v0, ""

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v1, "<br>Failing command : "

    .line 117
    .line 118
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sget-object v1, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->m:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    :goto_2
    const-string v1, "</pre>"

    .line 131
    .line 132
    invoke-static {v4, v0, v1}, La1/b;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 137
    .line 138
    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    const v4, 0x7f0b002b

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    const v4, 0x7f0b005b

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    new-instance v4, Lw1/i;

    .line 168
    .line 169
    invoke-direct {v4, p0, v0}, Lw1/i;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    const v3, 0x7f0b003b

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :sswitch_data_0
    .sparse-switch
        0x7f06006a -> :sswitch_1
        0x7f06006d -> :sswitch_0
        0x7f060078 -> :sswitch_1
        0x7f06007b -> :sswitch_1
    .end sparse-switch
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ppkt entered multi-window"

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo1/y;->e(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v1, 0x7f080011

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/nomone/vr_desktop/MyApplication;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/nomone/vr_desktop/MyApplication;->b:Ljava/lang/ThreadGroup;

    .line 19
    .line 20
    sput-object v1, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->k:Ljava/lang/ThreadGroup;

    .line 21
    .line 22
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    .line 24
    const/16 v2, 0x1d

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    if-ge v1, v2, :cond_0

    .line 28
    .line 29
    const-string v1, "This activity uses advanced notification features not available for android < 10"

    .line 30
    .line 31
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    sget-object v1, Lo1/y;->a:Landroid/content/SharedPreferences;

    .line 40
    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sput-object v1, Lo1/y;->a:Landroid/content/SharedPreferences;

    .line 48
    .line 49
    :cond_1
    const v1, 0x7f0600a7

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroid/widget/ViewFlipper;

    .line 57
    .line 58
    iput-object v1, v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c:Landroid/widget/ViewFlipper;

    .line 59
    .line 60
    const v1, 0x7f010001

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->e:Landroid/view/animation/Animation;

    .line 68
    .line 69
    const v1, 0x7f010002

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iput-object v1, v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->f:Landroid/view/animation/Animation;

    .line 77
    .line 78
    const/high16 v1, 0x7f010000

    .line 79
    .line 80
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iput-object v1, v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->g:Landroid/view/animation/Animation;

    .line 85
    .line 86
    const v1, 0x7f010003

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iput-object v1, v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->h:Landroid/view/animation/Animation;

    .line 94
    .line 95
    iget-object v1, v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c:Landroid/widget/ViewFlipper;

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    new-array v1, v1, [I

    .line 102
    .line 103
    iput-object v1, v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->d:[I

    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    move v2, v1

    .line 107
    :goto_0
    iget-object v4, v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->d:[I

    .line 108
    .line 109
    array-length v5, v4

    .line 110
    if-ge v2, v5, :cond_2

    .line 111
    .line 112
    iget-object v5, v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c:Landroid/widget/ViewFlipper;

    .line 113
    .line 114
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    aput v5, v4, v2

    .line 123
    .line 124
    add-int/lit8 v2, v2, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_2
    const v2, 0x7f060076

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Landroid/widget/Button;

    .line 135
    .line 136
    const v4, 0x7f060073

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    check-cast v4, Landroid/widget/Button;

    .line 144
    .line 145
    const v5, 0x7f060072

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    check-cast v5, Landroid/widget/TextView;

    .line 153
    .line 154
    new-instance v6, Lw1/c;

    .line 155
    .line 156
    const/4 v7, 0x3

    .line 157
    invoke-direct {v6, v0, v7}, Lw1/c;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v2, v6}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 161
    .line 162
    .line 163
    new-instance v2, Lw1/c;

    .line 164
    .line 165
    const/4 v6, 0x4

    .line 166
    invoke-direct {v2, v0, v6}, Lw1/c;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v4, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v0, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->d(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    const v2, 0x7f06008e

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    check-cast v2, Landroid/widget/Button;

    .line 195
    .line 196
    const v4, 0x7f06008c

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    check-cast v4, Landroid/widget/Button;

    .line 204
    .line 205
    new-instance v5, Lw1/c;

    .line 206
    .line 207
    const/16 v8, 0xa

    .line 208
    .line 209
    invoke-direct {v5, v0, v8}, Lw1/c;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v2, v5}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 213
    .line 214
    .line 215
    new-instance v2, Lw1/c;

    .line 216
    .line 217
    const/16 v5, 0xb

    .line 218
    .line 219
    invoke-direct {v2, v0, v5}, Lw1/c;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v4, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 223
    .line 224
    .line 225
    const v2, 0x7f060062

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    check-cast v2, Landroid/view/ViewGroup;

    .line 233
    .line 234
    const v4, 0x7f060061

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    check-cast v4, Landroid/widget/Button;

    .line 242
    .line 243
    const v5, 0x7f06005e

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    check-cast v5, Landroid/widget/Button;

    .line 251
    .line 252
    const v8, 0x7f060063

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    check-cast v8, Landroid/widget/TextView;

    .line 260
    .line 261
    const v9, 0x7f06005d

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object v9

    .line 268
    check-cast v9, Landroid/widget/TextView;

    .line 269
    .line 270
    const v10, 0x7f06005f

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object v10

    .line 277
    check-cast v10, Landroid/widget/TextView;

    .line 278
    .line 279
    new-instance v11, Lw1/h;

    .line 280
    .line 281
    invoke-direct {v11, v0, v8}, Lw1/h;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;Landroid/widget/TextView;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 285
    .line 286
    .line 287
    new-instance v2, Lw1/f;

    .line 288
    .line 289
    invoke-direct {v2, v6, v8, v0}, Lw1/f;-><init>(ILandroid/widget/TextView;Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v4, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 293
    .line 294
    .line 295
    new-instance v2, Lw1/f;

    .line 296
    .line 297
    const/4 v4, 0x5

    .line 298
    invoke-direct {v2, v4, v8, v0}, Lw1/f;-><init>(ILandroid/widget/TextView;Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v5, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {v0, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->d(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-static {v0, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->b(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-static {v0, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->b(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    .line 337
    .line 338
    const v2, 0x7f060071

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    check-cast v2, Landroid/widget/Button;

    .line 346
    .line 347
    const v5, 0x7f06006f

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    check-cast v5, Landroid/widget/Button;

    .line 355
    .line 356
    const v6, 0x7f06006e

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    check-cast v6, Landroid/widget/TextView;

    .line 364
    .line 365
    new-instance v8, Lw1/c;

    .line 366
    .line 367
    const/16 v9, 0x11

    .line 368
    .line 369
    invoke-direct {v8, v0, v9}, Lw1/c;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0, v2, v8}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 373
    .line 374
    .line 375
    new-instance v2, Lw1/f;

    .line 376
    .line 377
    const/4 v8, 0x7

    .line 378
    invoke-direct {v2, v8, v6, v0}, Lw1/f;-><init>(ILandroid/widget/TextView;Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v0, v5, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    invoke-virtual {v0, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->d(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-static {v0, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->b(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    .line 402
    .line 403
    const v2, 0x7f060053

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    check-cast v2, Landroid/widget/Button;

    .line 411
    .line 412
    const v5, 0x7f060050

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    check-cast v5, Landroid/widget/Button;

    .line 420
    .line 421
    const v6, 0x7f060052

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 425
    .line 426
    .line 427
    move-result-object v6

    .line 428
    check-cast v6, Landroid/widget/TextView;

    .line 429
    .line 430
    const v9, 0x7f06004f

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 434
    .line 435
    .line 436
    move-result-object v9

    .line 437
    check-cast v9, Landroid/widget/TextView;

    .line 438
    .line 439
    new-instance v10, Lw1/f;

    .line 440
    .line 441
    const/4 v11, 0x2

    .line 442
    invoke-direct {v10, v11, v9, v0}, Lw1/f;-><init>(ILandroid/widget/TextView;Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0, v2, v10}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 446
    .line 447
    .line 448
    new-instance v2, Lw1/f;

    .line 449
    .line 450
    invoke-direct {v2, v7, v9, v0}, Lw1/f;-><init>(ILandroid/widget/TextView;Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0, v5, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    invoke-static {v0, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->b(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 465
    .line 466
    .line 467
    move-result-object v2

    .line 468
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    invoke-virtual {v0, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->d(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    invoke-static {v0, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->b(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    .line 489
    .line 490
    const v2, 0x7f060068

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    check-cast v2, Landroid/widget/Button;

    .line 498
    .line 499
    const v5, 0x7f060065

    .line 500
    .line 501
    .line 502
    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 503
    .line 504
    .line 505
    move-result-object v5

    .line 506
    check-cast v5, Landroid/widget/Button;

    .line 507
    .line 508
    const v6, 0x7f060064

    .line 509
    .line 510
    .line 511
    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 512
    .line 513
    .line 514
    move-result-object v6

    .line 515
    check-cast v6, Landroid/widget/TextView;

    .line 516
    .line 517
    new-instance v7, Lw1/c;

    .line 518
    .line 519
    const/4 v9, 0x6

    .line 520
    invoke-direct {v7, v0, v9}, Lw1/c;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;I)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v0, v2, v7}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 524
    .line 525
    .line 526
    new-instance v2, Lw1/c;

    .line 527
    .line 528
    invoke-direct {v2, v0, v8}, Lw1/c;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;I)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v0, v5, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    invoke-virtual {v0, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->d(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 543
    .line 544
    .line 545
    move-result-object v2

    .line 546
    invoke-static {v0, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->b(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    .line 552
    .line 553
    const v2, 0x7f06005c

    .line 554
    .line 555
    .line 556
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    check-cast v2, Landroid/widget/Button;

    .line 561
    .line 562
    const v5, 0x7f060059

    .line 563
    .line 564
    .line 565
    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 566
    .line 567
    .line 568
    move-result-object v5

    .line 569
    check-cast v5, Landroid/widget/Button;

    .line 570
    .line 571
    const v6, 0x7f060058

    .line 572
    .line 573
    .line 574
    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 575
    .line 576
    .line 577
    move-result-object v6

    .line 578
    check-cast v6, Landroid/widget/TextView;

    .line 579
    .line 580
    const v7, 0x7f060057

    .line 581
    .line 582
    .line 583
    invoke-virtual {v0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 584
    .line 585
    .line 586
    move-result-object v7

    .line 587
    check-cast v7, Landroid/widget/TextView;

    .line 588
    .line 589
    const v8, 0x7f06005a

    .line 590
    .line 591
    .line 592
    invoke-virtual {v0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 593
    .line 594
    .line 595
    move-result-object v8

    .line 596
    check-cast v8, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/Numpad;

    .line 597
    .line 598
    sget-object v10, Lw1/b;->b:Lw1/b;

    .line 599
    .line 600
    invoke-virtual {v8, v7, v10}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/Numpad;->setOutputTextView(Landroid/widget/TextView;Lw1/b;)V

    .line 601
    .line 602
    .line 603
    new-instance v8, Lw1/c;

    .line 604
    .line 605
    invoke-direct {v8, v0, v3}, Lw1/c;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;I)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v0, v2, v8}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 609
    .line 610
    .line 611
    new-instance v2, Lw1/f;

    .line 612
    .line 613
    invoke-direct {v2, v3, v7, v0}, Lw1/f;-><init>(ILandroid/widget/TextView;Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v0, v5, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 620
    .line 621
    .line 622
    move-result-object v2

    .line 623
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v2

    .line 627
    invoke-virtual {v0, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->d(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 628
    .line 629
    .line 630
    move-result-object v2

    .line 631
    invoke-static {v0, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->b(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 632
    .line 633
    .line 634
    move-result-object v2

    .line 635
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    .line 637
    .line 638
    const v2, 0x7f060082

    .line 639
    .line 640
    .line 641
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    check-cast v2, Landroid/widget/Button;

    .line 646
    .line 647
    const v5, 0x7f06007f

    .line 648
    .line 649
    .line 650
    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 651
    .line 652
    .line 653
    move-result-object v5

    .line 654
    check-cast v5, Landroid/widget/Button;

    .line 655
    .line 656
    const v6, 0x7f06007e

    .line 657
    .line 658
    .line 659
    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 660
    .line 661
    .line 662
    move-result-object v6

    .line 663
    check-cast v6, Landroid/widget/TextView;

    .line 664
    .line 665
    const v7, 0x7f06007d

    .line 666
    .line 667
    .line 668
    invoke-virtual {v0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 669
    .line 670
    .line 671
    move-result-object v7

    .line 672
    check-cast v7, Landroid/widget/TextView;

    .line 673
    .line 674
    const v8, 0x7f060080

    .line 675
    .line 676
    .line 677
    invoke-virtual {v0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 678
    .line 679
    .line 680
    move-result-object v8

    .line 681
    check-cast v8, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/Numpad;

    .line 682
    .line 683
    sget-object v12, Lw1/b;->a:Lw1/b;

    .line 684
    .line 685
    invoke-virtual {v8, v7, v12}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/Numpad;->setOutputTextView(Landroid/widget/TextView;Lw1/b;)V

    .line 686
    .line 687
    .line 688
    new-instance v8, Lw1/c;

    .line 689
    .line 690
    invoke-direct {v8, v0, v1}, Lw1/c;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;I)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v0, v2, v8}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 694
    .line 695
    .line 696
    new-instance v2, Lw1/f;

    .line 697
    .line 698
    invoke-direct {v2, v1, v7, v0}, Lw1/f;-><init>(ILandroid/widget/TextView;Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v0, v5, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 705
    .line 706
    .line 707
    move-result-object v2

    .line 708
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v2

    .line 712
    invoke-virtual {v0, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->d(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 713
    .line 714
    .line 715
    move-result-object v2

    .line 716
    invoke-static {v0, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->b(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 717
    .line 718
    .line 719
    move-result-object v2

    .line 720
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    .line 722
    .line 723
    const v2, 0x7f06006c

    .line 724
    .line 725
    .line 726
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 727
    .line 728
    .line 729
    move-result-object v2

    .line 730
    check-cast v2, Landroid/widget/Button;

    .line 731
    .line 732
    new-instance v5, Lw1/c;

    .line 733
    .line 734
    invoke-direct {v5, v0, v11}, Lw1/c;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;I)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v0, v2, v5}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 738
    .line 739
    .line 740
    const v2, 0x7f06006b

    .line 741
    .line 742
    .line 743
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    check-cast v2, Landroid/widget/TextView;

    .line 748
    .line 749
    const v5, 0x7f060069

    .line 750
    .line 751
    .line 752
    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 753
    .line 754
    .line 755
    move-result-object v5

    .line 756
    check-cast v5, Landroid/widget/Button;

    .line 757
    .line 758
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 759
    .line 760
    .line 761
    move-result-object v6

    .line 762
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 763
    .line 764
    .line 765
    new-instance v2, Lw1/c;

    .line 766
    .line 767
    const/16 v6, 0x10

    .line 768
    .line 769
    invoke-direct {v2, v0, v6}, Lw1/c;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;I)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v0, v5, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 773
    .line 774
    .line 775
    const v2, 0x7f06007c

    .line 776
    .line 777
    .line 778
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 779
    .line 780
    .line 781
    move-result-object v2

    .line 782
    check-cast v2, Landroid/widget/TextView;

    .line 783
    .line 784
    const v5, 0x7f06007a

    .line 785
    .line 786
    .line 787
    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 788
    .line 789
    .line 790
    move-result-object v5

    .line 791
    check-cast v5, Landroid/widget/Button;

    .line 792
    .line 793
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 794
    .line 795
    .line 796
    move-result-object v6

    .line 797
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 798
    .line 799
    .line 800
    new-instance v2, Lw1/c;

    .line 801
    .line 802
    const/16 v6, 0x8

    .line 803
    .line 804
    invoke-direct {v2, v0, v6}, Lw1/c;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;I)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {v0, v5, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 808
    .line 809
    .line 810
    const v2, 0x7f060079

    .line 811
    .line 812
    .line 813
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 814
    .line 815
    .line 816
    move-result-object v2

    .line 817
    check-cast v2, Landroid/widget/TextView;

    .line 818
    .line 819
    const v5, 0x7f060077

    .line 820
    .line 821
    .line 822
    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 823
    .line 824
    .line 825
    move-result-object v5

    .line 826
    check-cast v5, Landroid/widget/Button;

    .line 827
    .line 828
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 829
    .line 830
    .line 831
    move-result-object v6

    .line 832
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 833
    .line 834
    .line 835
    new-instance v2, Lw1/c;

    .line 836
    .line 837
    invoke-direct {v2, v0, v4}, Lw1/c;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;I)V

    .line 838
    .line 839
    .line 840
    invoke-virtual {v0, v5, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 841
    .line 842
    .line 843
    const v2, 0x7f060089

    .line 844
    .line 845
    .line 846
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 847
    .line 848
    .line 849
    move-result-object v2

    .line 850
    check-cast v2, Landroid/widget/Button;

    .line 851
    .line 852
    const v4, 0x7f06008b

    .line 853
    .line 854
    .line 855
    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 856
    .line 857
    .line 858
    move-result-object v4

    .line 859
    check-cast v4, Landroid/widget/Button;

    .line 860
    .line 861
    new-instance v5, Ljava/lang/StringBuilder;

    .line 862
    .line 863
    const-string v6, "<pre><br>Gave up when pairing failed:<br>============================"

    .line 864
    .line 865
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    new-instance v6, Ljava/lang/StringBuilder;

    .line 869
    .line 870
    const-string v7, "<br>Screen splits   : "

    .line 871
    .line 872
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 873
    .line 874
    .line 875
    const-string v8, "ppkt entered multi-window"

    .line 876
    .line 877
    invoke-static {v8, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 878
    .line 879
    .line 880
    move-result v11

    .line 881
    if-eqz v11, :cond_3

    .line 882
    .line 883
    move v11, v3

    .line 884
    goto :goto_1

    .line 885
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 886
    .line 887
    .line 888
    move-result v11

    .line 889
    :goto_1
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 890
    .line 891
    .line 892
    const-string v11, "."

    .line 893
    .line 894
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v6

    .line 901
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    .line 903
    .line 904
    sget-object v6, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->m:Ljava/lang/String;

    .line 905
    .line 906
    const-string v12, ""

    .line 907
    .line 908
    const-string v13, "<br>Failing command : "

    .line 909
    .line 910
    if-nez v6, :cond_4

    .line 911
    .line 912
    move-object v6, v12

    .line 913
    goto :goto_2

    .line 914
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 915
    .line 916
    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 917
    .line 918
    .line 919
    sget-object v14, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->m:Ljava/lang/String;

    .line 920
    .line 921
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    .line 923
    .line 924
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v6

    .line 928
    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    const-string v6, "</pre>"

    .line 932
    .line 933
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    .line 935
    .line 936
    new-instance v14, Ljava/lang/StringBuilder;

    .line 937
    .line 938
    const-string v15, "<pre>Logcat:<br>===========<br>"

    .line 939
    .line 940
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 941
    .line 942
    .line 943
    invoke-static {}, Lo1/m;->e()Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object v9

    .line 947
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    .line 949
    .line 950
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    .line 952
    .line 953
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v9

    .line 957
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v5

    .line 964
    new-instance v9, Lw1/g;

    .line 965
    .line 966
    invoke-direct {v9, v0, v5, v3}, Lw1/g;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;Ljava/lang/String;I)V

    .line 967
    .line 968
    .line 969
    invoke-virtual {v0, v2, v9}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 970
    .line 971
    .line 972
    new-instance v2, Lw1/c;

    .line 973
    .line 974
    const/16 v5, 0xc

    .line 975
    .line 976
    invoke-direct {v2, v0, v5}, Lw1/c;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;I)V

    .line 977
    .line 978
    .line 979
    invoke-virtual {v0, v4, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 980
    .line 981
    .line 982
    const v2, 0x7f060054

    .line 983
    .line 984
    .line 985
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 986
    .line 987
    .line 988
    move-result-object v2

    .line 989
    check-cast v2, Landroid/widget/Button;

    .line 990
    .line 991
    const v4, 0x7f060056

    .line 992
    .line 993
    .line 994
    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 995
    .line 996
    .line 997
    move-result-object v4

    .line 998
    check-cast v4, Landroid/widget/Button;

    .line 999
    .line 1000
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    const-string v9, "<pre><br>Gave up when connection failed:<br>==============================="

    .line 1003
    .line 1004
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1005
    .line 1006
    .line 1007
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1008
    .line 1009
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1010
    .line 1011
    .line 1012
    invoke-static {v8, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 1013
    .line 1014
    .line 1015
    move-result v7

    .line 1016
    if-eqz v7, :cond_5

    .line 1017
    .line 1018
    goto :goto_3

    .line 1019
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 1020
    .line 1021
    .line 1022
    move-result v3

    .line 1023
    :goto_3
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v3

    .line 1033
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    .line 1035
    .line 1036
    sget-object v3, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->m:Ljava/lang/String;

    .line 1037
    .line 1038
    if-nez v3, :cond_6

    .line 1039
    .line 1040
    goto :goto_4

    .line 1041
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1042
    .line 1043
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1044
    .line 1045
    .line 1046
    sget-object v7, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->m:Ljava/lang/String;

    .line 1047
    .line 1048
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v12

    .line 1055
    :goto_4
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    .line 1060
    .line 1061
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1062
    .line 1063
    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1064
    .line 1065
    .line 1066
    invoke-static {}, Lo1/m;->e()Ljava/lang/String;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v7

    .line 1070
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    .line 1075
    .line 1076
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v3

    .line 1080
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v3

    .line 1087
    new-instance v5, Lw1/g;

    .line 1088
    .line 1089
    invoke-direct {v5, v0, v3, v1}, Lw1/g;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;Ljava/lang/String;I)V

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v0, v2, v5}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 1093
    .line 1094
    .line 1095
    new-instance v2, Lw1/c;

    .line 1096
    .line 1097
    const/16 v3, 0x9

    .line 1098
    .line 1099
    invoke-direct {v2, v0, v3}, Lw1/c;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;I)V

    .line 1100
    .line 1101
    .line 1102
    invoke-virtual {v0, v4, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 1103
    .line 1104
    .line 1105
    const v2, 0x7f060091

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v2

    .line 1112
    check-cast v2, Landroid/widget/Button;

    .line 1113
    .line 1114
    const v3, 0x7f06008f

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v3

    .line 1121
    check-cast v3, Landroid/widget/Button;

    .line 1122
    .line 1123
    new-instance v4, Lw1/c;

    .line 1124
    .line 1125
    const/16 v5, 0xe

    .line 1126
    .line 1127
    invoke-direct {v4, v0, v5}, Lw1/c;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;I)V

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {v0, v2, v4}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 1131
    .line 1132
    .line 1133
    new-instance v2, Lw1/c;

    .line 1134
    .line 1135
    const/16 v4, 0xf

    .line 1136
    .line 1137
    invoke-direct {v2, v0, v4}, Lw1/c;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;I)V

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {v0, v3, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 1141
    .line 1142
    .line 1143
    const v2, 0x7f060088

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v2

    .line 1150
    check-cast v2, Landroid/widget/Button;

    .line 1151
    .line 1152
    const v3, 0x7f060085

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v3

    .line 1159
    check-cast v3, Landroid/widget/Button;

    .line 1160
    .line 1161
    const v4, 0x7f060084

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v4

    .line 1168
    check-cast v4, Landroid/widget/TextView;

    .line 1169
    .line 1170
    const v5, 0x7f060083

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v5

    .line 1177
    check-cast v5, Landroid/widget/TextView;

    .line 1178
    .line 1179
    const v6, 0x7f060086

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v6

    .line 1186
    check-cast v6, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/Numpad;

    .line 1187
    .line 1188
    invoke-virtual {v6, v5, v10}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/Numpad;->setOutputTextView(Landroid/widget/TextView;Lw1/b;)V

    .line 1189
    .line 1190
    .line 1191
    new-instance v6, Lw1/c;

    .line 1192
    .line 1193
    const/16 v7, 0xd

    .line 1194
    .line 1195
    invoke-direct {v6, v0, v7}, Lw1/c;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;I)V

    .line 1196
    .line 1197
    .line 1198
    invoke-virtual {v0, v2, v6}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 1199
    .line 1200
    .line 1201
    new-instance v2, Lw1/f;

    .line 1202
    .line 1203
    const/4 v6, 0x6

    .line 1204
    invoke-direct {v2, v6, v5, v0}, Lw1/f;-><init>(ILandroid/widget/TextView;Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;)V

    .line 1205
    .line 1206
    .line 1207
    invoke-virtual {v0, v3, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->l(Landroid/widget/Button;Ljava/lang/Runnable;)V

    .line 1208
    .line 1209
    .line 1210
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v2

    .line 1214
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v2

    .line 1218
    invoke-virtual {v0, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->d(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v2

    .line 1222
    invoke-static {v0, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->b(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v2

    .line 1226
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 1230
    .line 1231
    .line 1232
    move-result v2

    .line 1233
    if-eqz v2, :cond_7

    .line 1234
    .line 1235
    const-string v2, "ppkt current step"

    .line 1236
    .line 1237
    invoke-static {v2, v1}, Lo1/y;->c(Ljava/lang/String;I)I

    .line 1238
    .line 1239
    .line 1240
    move-result v1

    .line 1241
    invoke-virtual {v0, v1}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->e(I)V

    .line 1242
    .line 1243
    .line 1244
    :cond_7
    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->b:Z

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->b:Z

    return-void
.end method
