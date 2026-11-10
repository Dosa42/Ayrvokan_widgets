.class public Lorg/mozilla/geckoview/WebResponse$Builder;
.super Lorg/mozilla/geckoview/WebMessage$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
.end annotation


# instance fields
.field mBody:Ljava/io/InputStream;

.field mCertificate:Ljava/security/cert/X509Certificate;

.field mIsSecure:Z

.field mRedirected:Z

.field mStatusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/WebMessage$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private certificateBytes([B)V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        exceptionMode = "nsresult"
    .end annotation

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/WebResponse$Builder;->certificate(Ljava/security/cert/X509Certificate;)Lorg/mozilla/geckoview/WebResponse$Builder;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to parse DER certificate"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/geckoview/WebMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/geckoview/WebResponse$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/geckoview/WebResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/geckoview/WebResponse$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/mozilla/geckoview/WebMessage$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/geckoview/WebMessage$Builder;

    return-object p0
.end method

.method public body(Ljava/io/InputStream;)Lorg/mozilla/geckoview/WebResponse$Builder;
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/WebResponse$Builder;->mBody:Ljava/io/InputStream;

    return-object p0
.end method

.method public build()Lorg/mozilla/geckoview/WebResponse;
    .locals 1

    new-instance v0, Lorg/mozilla/geckoview/WebResponse;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/WebResponse;-><init>(Lorg/mozilla/geckoview/WebResponse$Builder;)V

    return-object v0
.end method

.method public certificate(Ljava/security/cert/X509Certificate;)Lorg/mozilla/geckoview/WebResponse$Builder;
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/WebResponse$Builder;->mCertificate:Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public bridge synthetic header(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/geckoview/WebMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/geckoview/WebResponse$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/geckoview/WebResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/geckoview/WebResponse$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/mozilla/geckoview/WebMessage$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/geckoview/WebMessage$Builder;

    return-object p0
.end method

.method public isSecure(Z)Lorg/mozilla/geckoview/WebResponse$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/mozilla/geckoview/WebResponse$Builder;->mIsSecure:Z

    return-object p0
.end method

.method public redirected(Z)Lorg/mozilla/geckoview/WebResponse$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/mozilla/geckoview/WebResponse$Builder;->mRedirected:Z

    return-object p0
.end method

.method public statusCode(I)Lorg/mozilla/geckoview/WebResponse$Builder;
    .locals 0

    iput p1, p0, Lorg/mozilla/geckoview/WebResponse$Builder;->mStatusCode:I

    return-object p0
.end method

.method public bridge synthetic uri(Ljava/lang/String;)Lorg/mozilla/geckoview/WebMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/WebResponse$Builder;->uri(Ljava/lang/String;)Lorg/mozilla/geckoview/WebResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public uri(Ljava/lang/String;)Lorg/mozilla/geckoview/WebResponse$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lorg/mozilla/geckoview/WebMessage$Builder;->uri(Ljava/lang/String;)Lorg/mozilla/geckoview/WebMessage$Builder;

    return-object p0
.end method
