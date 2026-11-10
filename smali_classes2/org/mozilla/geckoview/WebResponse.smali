.class public Lorg/mozilla/geckoview/WebResponse;
.super Lorg/mozilla/geckoview/WebMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/WebResponse$Builder;
    }
.end annotation

.annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
.end annotation


# static fields
.field public static final DEFAULT_READ_TIMEOUT_MS:J = 0x7530L


# instance fields
.field public final body:Ljava/io/InputStream;

.field public final certificate:Ljava/security/cert/X509Certificate;

.field public final isSecure:Z

.field public final redirected:Z

.field public final statusCode:I


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/WebResponse$Builder;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/WebMessage;-><init>(Lorg/mozilla/geckoview/WebMessage$Builder;)V

    iget v0, p1, Lorg/mozilla/geckoview/WebResponse$Builder;->mStatusCode:I

    iput v0, p0, Lorg/mozilla/geckoview/WebResponse;->statusCode:I

    iget-boolean v0, p1, Lorg/mozilla/geckoview/WebResponse$Builder;->mRedirected:Z

    iput-boolean v0, p0, Lorg/mozilla/geckoview/WebResponse;->redirected:Z

    iget-object v0, p1, Lorg/mozilla/geckoview/WebResponse$Builder;->mBody:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/mozilla/geckoview/WebResponse;->body:Ljava/io/InputStream;

    iget-boolean v0, p1, Lorg/mozilla/geckoview/WebResponse$Builder;->mIsSecure:Z

    iput-boolean v0, p0, Lorg/mozilla/geckoview/WebResponse;->isSecure:Z

    iget-object p1, p1, Lorg/mozilla/geckoview/WebResponse$Builder;->mCertificate:Ljava/security/cert/X509Certificate;

    iput-object p1, p0, Lorg/mozilla/geckoview/WebResponse;->certificate:Ljava/security/cert/X509Certificate;

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/geckoview/WebResponse;->setReadTimeoutMillis(J)V

    return-void
.end method


# virtual methods
.method public setReadTimeoutMillis(J)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/WebResponse;->body:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/mozilla/geckoview/GeckoInputStream;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/mozilla/geckoview/GeckoInputStream;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/geckoview/GeckoInputStream;->setReadTimeoutMillis(J)V

    :cond_0
    return-void
.end method
