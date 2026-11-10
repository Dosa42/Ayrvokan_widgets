.class public Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate$SecurityInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecurityInformation"
.end annotation


# static fields
.field public static final CONTENT_BLOCKED:I = 0x1

.field public static final CONTENT_LOADED:I = 0x2

.field public static final CONTENT_UNKNOWN:I = 0x0

.field public static final SECURITY_MODE_IDENTIFIED:I = 0x1

.field public static final SECURITY_MODE_UNKNOWN:I = 0x0

.field public static final SECURITY_MODE_VERIFIED:I = 0x2


# instance fields
.field public final certificate:Ljava/security/cert/X509Certificate;

.field public final host:Ljava/lang/String;

.field public final isException:Z

.field public final isSecure:Z

.field public final mixedModeActive:I

.field public final mixedModePassive:I

.field public final origin:Ljava/lang/String;

.field public final securityMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate$SecurityInformation;->mixedModePassive:I

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate$SecurityInformation;->mixedModeActive:I

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate$SecurityInformation;->securityMode:I

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate$SecurityInformation;->isSecure:Z

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate$SecurityInformation;->isException:Z

    const-string v0, ""

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate$SecurityInformation;->origin:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate$SecurityInformation;->host:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate$SecurityInformation;->certificate:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mode"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    const-string v1, "mixed_display"

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate$SecurityInformation;->mixedModePassive:I

    const-string v1, "mixed_active"

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate$SecurityInformation;->mixedModeActive:I

    const-string v1, "identity"

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate$SecurityInformation;->securityMode:I

    const-string v0, "secure"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate$SecurityInformation;->isSecure:Z

    const-string v0, "securityException"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate$SecurityInformation;->isException:Z

    const-string v0, "origin"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate$SecurityInformation;->origin:Ljava/lang/String;

    const-string v0, "host"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate$SecurityInformation;->host:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    const-string v2, "certificate"

    invoke-virtual {p1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :catch_0
    :cond_0
    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate$SecurityInformation;->certificate:Ljava/security/cert/X509Certificate;

    return-void
.end method
