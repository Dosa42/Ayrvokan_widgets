.class public abstract synthetic Lorg/mozilla/geckoview/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/app/NotificationManager;)Landroid/app/NotificationChannel;
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.availability"

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 3

    .line 1
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "com.google.android.gms.availability"

    const/4 v2, 0x4

    invoke-direct {v0, v1, p0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public static bridge synthetic c()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 1

    .line 1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_MOVE_WINDOW:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method

.method public static bridge synthetic d(Landroid/app/NotificationChannel;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Landroid/app/NotificationChannel;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic f(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public static bridge synthetic g(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->releasePointerCapture()V

    return-void
.end method

.method public static bridge synthetic h(Landroid/view/ViewStructure;)V
    .locals 1

    .line 1
    const/16 v0, 0xe1

    invoke-virtual {p0, v0}, Landroid/view/ViewStructure;->setInputType(I)V

    return-void
.end method

.method public static bridge synthetic i(Landroid/view/ViewStructure;Landroid/view/autofill/AutofillId;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method public static bridge synthetic j(Landroid/view/ViewStructure;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewStructure;->setWebDomain(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic k(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic l(Landroid/view/autofill/AutofillManager;Lorg/mozilla/geckoview/GeckoView;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->notifyViewExited(Landroid/view/View;I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/autofill/AutofillManager;Lorg/mozilla/geckoview/GeckoView;ILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V

    return-void
.end method

.method public static bridge synthetic n(Landroid/view/autofill/AutofillManager;Lorg/mozilla/geckoview/GeckoView;ILandroid/view/autofill/AutofillValue;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    return-void
.end method

.method public static bridge synthetic o(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->requestPointerCapture()V

    return-void
.end method

.method public static bridge synthetic p(Landroid/view/ViewStructure;)V
    .locals 1

    .line 1
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/view/ViewStructure;->setInputType(I)V

    return-void
.end method

.method public static bridge synthetic q(Landroid/view/ViewStructure;)V
    .locals 1

    .line 1
    const/16 v0, 0xa1

    invoke-virtual {p0, v0}, Landroid/view/ViewStructure;->setInputType(I)V

    return-void
.end method

.method public static bridge synthetic r(Landroid/view/ViewStructure;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/ViewStructure;->setInputType(I)V

    return-void
.end method

.method public static bridge synthetic s(Landroid/view/ViewStructure;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/view/ViewStructure;->setInputType(I)V

    return-void
.end method
