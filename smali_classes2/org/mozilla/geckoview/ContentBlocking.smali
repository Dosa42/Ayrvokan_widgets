.class public Lorg/mozilla/geckoview/ContentBlocking;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/ContentBlocking$Delegate;,
        Lorg/mozilla/geckoview/ContentBlocking$BlockEvent;,
        Lorg/mozilla/geckoview/ContentBlocking$EtpLevel;,
        Lorg/mozilla/geckoview/ContentBlocking$CookieLifetime;,
        Lorg/mozilla/geckoview/ContentBlocking$CookieBehavior;,
        Lorg/mozilla/geckoview/ContentBlocking$SafeBrowsing;,
        Lorg/mozilla/geckoview/ContentBlocking$AntiTracking;,
        Lorg/mozilla/geckoview/ContentBlocking$Settings;
    }
.end annotation


# static fields
.field private static final AD:Ljava/lang/String; = "ads-track-digest256"

.field private static final ANALYTIC:Ljava/lang/String; = "analytics-track-digest256"

.field private static final CONTENT:Ljava/lang/String; = "content-track-digest256"

.field private static final CRYPTOMINING:Ljava/lang/String; = "base-cryptomining-track-digest256"

.field private static final FINGERPRINTING:Ljava/lang/String; = "base-fingerprinting-track-digest256"

.field private static final SOCIAL:Ljava/lang/String; = "social-track-digest256"

.field private static final STATE_COOKIES_BLOCKED_ALL:J = 0x40000000L

.field private static final STATE_COOKIES_BLOCKED_FOREIGN:J = 0x80L

.field private static final STATE_COOKIES_BLOCKED_SOCIALTRACKER:J = 0x1000000L

.field private static final STATE_COOKIES_BLOCKED_TRACKER:J = 0x20000000L

.field private static final STATE_COOKIES_LOADED:J = 0x8000L

.field private static final STATE_COOKIES_LOADED_SOCIALTRACKER:J = 0x80000L

.field private static final STATE_COOKIES_LOADED_TRACKER:J = 0x40000L

.field private static final STP:Ljava/lang/String; = "social-tracking-protection-facebook-digest256,social-tracking-protection-linkedin-digest256,social-tracking-protection-twitter-digest256"

.field private static final TEST:Ljava/lang/String; = "moztest-track-simple"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static atListToAtCat(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "moztest-track-simple"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/16 v0, 0x20

    :cond_1
    const-string v1, "ads-track-digest256"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    const-string v1, "analytics-track-digest256"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_3

    or-int/lit8 v0, v0, 0x4

    :cond_3
    const-string v1, "social-track-digest256"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_4

    or-int/lit8 v0, v0, 0x8

    :cond_4
    const-string v1, "content-track-digest256"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v2, :cond_5

    or-int/lit8 v0, v0, 0x10

    :cond_5
    return v0
.end method

.method public static catToAtPref(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_0

    const-string v1, "moztest-track-simple,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, "ads-track-digest256,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string v1, "analytics-track-digest256,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    const-string v1, "social-track-digest256,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_4

    const-string p0, "content-track-digest256,"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static catToCmListPref(I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const-string p0, "base-cryptomining-track-digest256"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static catToCmPref(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static catToFpListPref(I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const-string p0, "base-fingerprinting-track-digest256"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static catToFpPref(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static catToSbMalware(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x1c00

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static catToSbPhishing(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static catToStListPref(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const-string p0, "social-tracking-protection-facebook-digest256,social-tracking-protection-linkedin-digest256,social-tracking-protection-twitter-digest256,"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static catToStPref(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static cmListToAtCat(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "base-cryptomining-track-digest256"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    const/16 v0, 0x40

    :cond_1
    return v0
.end method

.method public static errorToSbCat(J)I
    .locals 2

    const-wide v0, 0x805d001fL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/16 p0, 0x2000

    return p0

    :cond_0
    const-wide v0, 0x805d001eL

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const/16 p0, 0x400

    return p0

    :cond_1
    const-wide v0, 0x805d0023L

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    const/16 p0, 0x800

    return p0

    :cond_2
    const-wide v0, 0x805d0026L

    cmp-long p0, p0, v0

    if-nez p0, :cond_3

    const/16 p0, 0x1000

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static fpListToAtCat(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "base-fingerprinting-track-digest256"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    const/16 v0, 0x80

    :cond_1
    return v0
.end method

.method public static geckoCatToCbCat(J)I
    .locals 6

    const-wide/32 v0, 0x8000

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v4, 0x80

    and-long/2addr v4, p0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-wide/32 v4, 0x210c0000

    and-long/2addr v4, p0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const-wide/32 v4, 0x40000000

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static isBlockingGeckoCbCat(J)Z
    .locals 2

    const-wide/32 v0, 0x61000080

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static sbMalwareToSbCat(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x1c00

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static sbPhishingToSbCat(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x2000

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static stListToAtCat(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "social-tracking-protection-facebook-digest256,social-tracking-protection-linkedin-digest256,social-tracking-protection-twitter-digest256"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    const/16 v0, 0x100

    :cond_1
    return v0
.end method
