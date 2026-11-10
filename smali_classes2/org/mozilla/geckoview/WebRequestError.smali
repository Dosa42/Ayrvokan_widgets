.class public Lorg/mozilla/geckoview/WebRequestError;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final ERROR_CATEGORY_CONTENT:I = 0x4

.field public static final ERROR_CATEGORY_NETWORK:I = 0x3

.field public static final ERROR_CATEGORY_PROXY:I = 0x6

.field public static final ERROR_CATEGORY_SAFEBROWSING:I = 0x7

.field public static final ERROR_CATEGORY_SECURITY:I = 0x2

.field public static final ERROR_CATEGORY_UNKNOWN:I = 0x1

.field public static final ERROR_CATEGORY_URI:I = 0x5

.field public static final ERROR_CONNECTION_REFUSED:I = 0x43

.field public static final ERROR_CONTENT_CRASHED:I = 0x44

.field public static final ERROR_CORRUPTED_CONTENT:I = 0x34

.field public static final ERROR_FILE_ACCESS_DENIED:I = 0x65

.field public static final ERROR_FILE_NOT_FOUND:I = 0x55

.field public static final ERROR_INVALID_CONTENT_ENCODING:I = 0x54

.field public static final ERROR_MALFORMED_URI:I = 0x35

.field public static final ERROR_NET_INTERRUPT:I = 0x23

.field public static final ERROR_NET_RESET:I = 0x93

.field public static final ERROR_NET_TIMEOUT:I = 0x33

.field public static final ERROR_OFFLINE:I = 0x73

.field public static final ERROR_PORT_BLOCKED:I = 0x83

.field public static final ERROR_PROXY_CONNECTION_REFUSED:I = 0x26

.field public static final ERROR_REDIRECT_LOOP:I = 0x63

.field public static final ERROR_SAFEBROWSING_HARMFUL_URI:I = 0x47

.field public static final ERROR_SAFEBROWSING_MALWARE_URI:I = 0x27

.field public static final ERROR_SAFEBROWSING_PHISHING_URI:I = 0x57

.field public static final ERROR_SAFEBROWSING_UNWANTED_URI:I = 0x37

.field public static final ERROR_SECURITY_BAD_CERT:I = 0x32

.field public static final ERROR_SECURITY_SSL:I = 0x22

.field public static final ERROR_UNKNOWN:I = 0x11

.field public static final ERROR_UNKNOWN_HOST:I = 0x25

.field public static final ERROR_UNKNOWN_PROTOCOL:I = 0x45

.field public static final ERROR_UNKNOWN_PROXY_HOST:I = 0x36

.field public static final ERROR_UNKNOWN_SOCKET_TYPE:I = 0x53

.field public static final ERROR_UNSAFE_CONTENT_TYPE:I = 0x24


# instance fields
.field public final category:I

.field public final certificate:Ljava/security/cert/X509Certificate;

.field public final code:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/geckoview/WebRequestError;-><init>(IILjava/security/cert/X509Certificate;)V

    return-void
.end method

.method public constructor <init>(IILjava/security/cert/X509Certificate;)V
    .locals 2

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Request failed, error=0x%x, category=0x%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lorg/mozilla/geckoview/WebRequestError;->code:I

    iput p2, p0, Lorg/mozilla/geckoview/WebRequestError;->category:I

    iput-object p3, p0, Lorg/mozilla/geckoview/WebRequestError;->certificate:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public static convertGeckoError(JII)I
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    const-wide v0, 0x805d001fL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/16 p0, 0x57

    return p0

    :cond_0
    const-wide v0, 0x805d001eL

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const/16 p0, 0x27

    return p0

    :cond_1
    const-wide v0, 0x805d0023L

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    const/16 p0, 0x37

    return p0

    :cond_2
    const-wide v0, 0x805d0026L

    cmp-long v0, p0, v0

    if-nez v0, :cond_3

    const/16 p0, 0x47

    return p0

    :cond_3
    const-wide v0, 0x805e0010L

    cmp-long v0, p0, v0

    if-nez v0, :cond_4

    const/16 p0, 0x44

    return p0

    :cond_4
    const-wide v0, 0x804b001bL

    cmp-long v0, p0, v0

    if-nez v0, :cond_5

    const/16 p0, 0x54

    return p0

    :cond_5
    const-wide v0, 0x804b004aL

    cmp-long v0, p0, v0

    if-nez v0, :cond_6

    const/16 p0, 0x24

    return p0

    :cond_6
    const-wide v0, 0x804b001dL

    cmp-long v0, p0, v0

    if-nez v0, :cond_7

    const/16 p0, 0x34

    return p0

    :cond_7
    const-wide v0, 0x804b0014L

    cmp-long v0, p0, v0

    if-nez v0, :cond_8

    const/16 p0, 0x93

    return p0

    :cond_8
    const-wide v0, 0x804b0047L

    cmp-long v0, p0, v0

    if-nez v0, :cond_9

    const/16 p0, 0x23

    return p0

    :cond_9
    const-wide v0, 0x804b000eL

    cmp-long v0, p0, v0

    if-nez v0, :cond_a

    const/16 p0, 0x33

    return p0

    :cond_a
    const-wide v0, 0x804b000dL

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    const/16 p0, 0x43

    return p0

    :cond_b
    const-wide v0, 0x804b0033L

    cmp-long v0, p0, v0

    if-nez v0, :cond_c

    const/16 p0, 0x53

    return p0

    :cond_c
    const-wide v0, 0x804b001fL

    cmp-long v0, p0, v0

    if-nez v0, :cond_d

    const/16 p0, 0x63

    return p0

    :cond_d
    const-wide v0, 0x804b0010L

    cmp-long v0, p0, v0

    if-nez v0, :cond_e

    const/16 p0, 0x73

    return p0

    :cond_e
    const-wide v0, 0x804b0013L

    cmp-long v0, p0, v0

    if-nez v0, :cond_f

    const/16 p0, 0x83

    return p0

    :cond_f
    const-wide v0, 0x804b0012L

    cmp-long v0, p0, v0

    if-nez v0, :cond_10

    const/16 p0, 0x45

    return p0

    :cond_10
    const-wide v0, 0x804b001eL

    cmp-long v0, p0, v0

    if-nez v0, :cond_11

    const/16 p0, 0x25

    return p0

    :cond_11
    const-wide v0, 0x804b000aL

    cmp-long v0, p0, v0

    if-nez v0, :cond_12

    const/16 p0, 0x35

    return p0

    :cond_12
    const-wide v0, 0x80520012L

    cmp-long v0, p0, v0

    if-nez v0, :cond_13

    const/16 p0, 0x55

    return p0

    :cond_13
    const-wide v0, 0x80520015L

    cmp-long v0, p0, v0

    if-nez v0, :cond_14

    const/16 p0, 0x65

    return p0

    :cond_14
    const-wide v0, 0x804b002aL

    cmp-long v0, p0, v0

    if-nez v0, :cond_15

    const/16 p0, 0x36

    return p0

    :cond_15
    const-wide v0, 0x804b0048L

    cmp-long p0, p0, v0

    if-nez p0, :cond_16

    const/16 p0, 0x26

    return p0

    :cond_16
    const/16 p0, 0x15

    if-ne p2, p0, :cond_18

    const/4 p0, 0x1

    if-ne p3, p0, :cond_17

    const/16 p0, 0x22

    return p0

    :cond_17
    const/4 p0, 0x2

    if-ne p3, p0, :cond_18

    const/16 p0, 0x32

    return p0

    :cond_18
    const/16 p0, 0x11

    return p0
.end method

.method public static fromGeckoError(JII[B)Lorg/mozilla/geckoview/WebRequestError;
    .locals 0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/geckoview/WebRequestError;->convertGeckoError(JII)I

    move-result p0

    int-to-long p1, p2

    invoke-static {p1, p2, p0}, Lorg/mozilla/geckoview/WebRequestError;->getErrorCategory(JI)I

    move-result p1

    if-eqz p4, :cond_0

    :try_start_0
    const-string p2, "X.509"

    invoke-static {p2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p2

    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-direct {p3, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p2, p3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p2

    check-cast p2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to parse DER certificate"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-instance p3, Lorg/mozilla/geckoview/WebRequestError;

    invoke-direct {p3, p0, p1, p2}, Lorg/mozilla/geckoview/WebRequestError;-><init>(IILjava/security/cert/X509Certificate;)V

    return-object p3
.end method

.method public static getErrorCategory(JI)I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    const-wide/16 v0, 0x15

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    and-int/lit8 p0, p2, 0xf

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lorg/mozilla/geckoview/WebRequestError;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/mozilla/geckoview/WebRequestError;

    iget v1, p1, Lorg/mozilla/geckoview/WebRequestError;->code:I

    iget v2, p0, Lorg/mozilla/geckoview/WebRequestError;->code:I

    if-ne v1, v2, :cond_1

    iget p1, p1, Lorg/mozilla/geckoview/WebRequestError;->category:I

    iget v1, p0, Lorg/mozilla/geckoview/WebRequestError;->category:I

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/mozilla/geckoview/WebRequestError;->category:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lorg/mozilla/geckoview/WebRequestError;->code:I

    add-int/2addr v0, v1

    return v0
.end method
