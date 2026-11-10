.class public final Lorg/mozilla/gecko/InputMethods;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IME_FLAG_NO_PERSONALIZED_LEARNING:I = 0x1000000

.field public static final METHOD_ANDROID_LATINIME:Ljava/lang/String; = "com.android.inputmethod.latin/.LatinIME"

.field public static final METHOD_ATOK_OEM_PREFIX:Ljava/lang/String; = "com.atok.mobile."

.field public static final METHOD_ATOK_OEM_SOFTBANK:Ljava/lang/String; = "com.mobiroo.n.justsystems.atok/.AtokInputMethodService"

.field public static final METHOD_ATOK_PREFIX:Ljava/lang/String; = "com.justsystems.atokmobile"

.field public static final METHOD_GOOGLE_JAPANESE_INPUT:Ljava/lang/String; = "com.google.android.inputmethod.japanese/.MozcService"

.field public static final METHOD_GOOGLE_LATINIME:Ljava/lang/String; = "com.google.android.inputmethod.latin/com.android.inputmethod.latin.LatinIME"

.field public static final METHOD_HTC_TOUCH_INPUT:Ljava/lang/String; = "com.htc.android.htcime/.HTCIMEService"

.field public static final METHOD_IWNN:Ljava/lang/String; = "jp.co.omronsoft.iwnnime.ml/.standardcommon.IWnnLanguageSwitcher"

.field public static final METHOD_OPENWNN_PLUS:Ljava/lang/String; = "com.owplus.ime.openwnnplus/.OpenWnnJAJP"

.field public static final METHOD_SAMSUNG:Ljava/lang/String; = "com.sec.android.inputmethod/.SamsungKeypad"

.field public static final METHOD_SIMEJI:Ljava/lang/String; = "com.adamrocker.android.input.simeji/.OpenWnnSimeji"

.field public static final METHOD_SONY:Ljava/lang/String; = "com.sonyericsson.textinput.uxp/.glue.InputMethodServiceGlue"

.field public static final METHOD_SWIFTKEY:Ljava/lang/String; = "com.touchtype.swiftkey/com.touchtype.KeyboardService"

.field public static final METHOD_SWYPE:Ljava/lang/String; = "com.swype.android.inputmethod/.SwypeInputMethod"

.field public static final METHOD_SWYPE_BETA:Ljava/lang/String; = "com.nuance.swype.input/.IME"

.field public static final METHOD_TOUCHPAL_KEYBOARD:Ljava/lang/String; = "com.cootek.smartinputv5/com.cootek.smartinput5.TouchPalIME"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentInputMethod(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_input_method"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getInputMethodInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 2

    invoke-static {p0}, Lorg/mozilla/gecko/InputMethods;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method public static needsRestartInput(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.justsystems.atokmobile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.atok.mobile."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.mobiroo.n.justsystems.atok/.AtokInputMethodService"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static needsRestartOnReplaceRemove(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lorg/mozilla/gecko/InputMethods;->getCurrentInputMethod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.sonyericsson.textinput.uxp/.glue.InputMethodServiceGlue"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static needsSoftResetWorkaround(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.android.inputmethod.latin/.LatinIME"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.google.android.inputmethod.latin/com.android.inputmethod.latin.LatinIME"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static restartInput(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lorg/mozilla/gecko/InputMethods;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static shouldCommitCharAsKey(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.htc.android.htcime/.HTCIMEService"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
