.class public Lorg/mozilla/gecko/util/IntentUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ENV_VAR_IN_AUTOMATION:Ljava/lang/String; = "MOZ_IN_AUTOMATION"

.field private static final ENV_VAR_REGEX:Ljava/lang/String; = "(.+)=(.*)"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBooleanExtraSafe(Landroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 1

    new-instance v0, Lorg/mozilla/gecko/mozglue/SafeIntent;

    invoke-direct {v0, p0}, Lorg/mozilla/gecko/mozglue/SafeIntent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/gecko/mozglue/SafeIntent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getBundleExtraSafe(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    new-instance v0, Lorg/mozilla/gecko/mozglue/SafeIntent;

    invoke-direct {v0, p0}, Lorg/mozilla/gecko/mozglue/SafeIntent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/mozglue/SafeIntent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getEnvVarMap(Lorg/mozilla/gecko/mozglue/SafeIntent;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/gecko/mozglue/SafeIntent;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "(.+)=(.*)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    const-string v3, "env"

    .line 20
    .line 21
    invoke-static {v3, v2}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    invoke-virtual {p0, v3}, Lorg/mozilla/gecko/mozglue/SafeIntent;->hasExtra(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_0
    invoke-static {v1, p0, v3, v0}, Lorg/mozilla/gecko/util/IntentUtils;->maybeAddEnvVarToEnvVarMap(Ljava/util/HashMap;Lorg/mozilla/gecko/mozglue/SafeIntent;Ljava/lang/String;Ljava/util/regex/Matcher;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0
.end method

.method public static getIsInAutomationFromEnvironment(Lorg/mozilla/gecko/mozglue/SafeIntent;)Z
    .locals 1

    invoke-static {p0}, Lorg/mozilla/gecko/util/IntentUtils;->getEnvVarMap(Lorg/mozilla/gecko/mozglue/SafeIntent;)Ljava/util/HashMap;

    move-result-object p0

    const-string v0, "MOZ_IN_AUTOMATION"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getSafeIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/mozilla/gecko/util/IntentUtils;->normalizeUriScheme(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {p0}, Lorg/mozilla/gecko/util/IntentUtils;->nullIntentSelector(Landroid/content/Intent;)V

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static getStringExtraSafe(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/mozilla/gecko/mozglue/SafeIntent;

    invoke-direct {v0, p0}, Lorg/mozilla/gecko/mozglue/SafeIntent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/mozglue/SafeIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isUriSafeForScheme(Landroid/net/Uri;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "sms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "intent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const-string v1, "android-app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    invoke-static {p0}, Lorg/mozilla/gecko/util/IntentUtils;->getSafeIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_4

    move v2, v3

    :cond_4
    :goto_1
    return v2
.end method

.method public static isUriSafeForScheme(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/mozilla/gecko/util/IntentUtils;->normalizeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/gecko/util/IntentUtils;->isUriSafeForScheme(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method private static maybeAddEnvVarToEnvVarMap(Ljava/util/HashMap;Lorg/mozilla/gecko/mozglue/SafeIntent;Ljava/lang/String;Ljava/util/regex/Matcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/mozilla/gecko/mozglue/SafeIntent;",
            "Ljava/lang/String;",
            "Ljava/util/regex/Matcher;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/mozilla/gecko/mozglue/SafeIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p3, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static normalizeUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lorg/mozilla/gecko/util/IntentUtils;->normalizeUriScheme(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static normalizeUriScheme(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static nullIntentSelector(Landroid/content/Intent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    return-void
.end method
