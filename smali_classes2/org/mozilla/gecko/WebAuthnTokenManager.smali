.class public Lorg/mozilla/gecko/WebAuthnTokenManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/WebAuthnTokenManager$WebAuthnGetAssertionResponse;,
        Lorg/mozilla/gecko/WebAuthnTokenManager$WebAuthnMakeCredentialResponse;,
        Lorg/mozilla/gecko/WebAuthnTokenManager$AttestationPreference;,
        Lorg/mozilla/gecko/WebAuthnTokenManager$WebAuthnPublicCredential;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "WebAuthnTokenManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static webAuthnGetAssertion(Ljava/nio/ByteBuffer;[Ljava/lang/Object;Ljava/nio/ByteBuffer;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    const-string p0, "NOT_SUPPORTED_ERR"

    invoke-static {p0}, Lorg/mozilla/gecko/WebAuthnTokenManager;->webAuthnGetAssertionReturnError(Ljava/lang/String;)V

    return-void
.end method

.method public static native webAuthnGetAssertionFinish([B[B[B[B[B)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method public static native webAuthnGetAssertionReturnError(Ljava/lang/String;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method private static webAuthnMakeCredential(Lorg/mozilla/gecko/util/GeckoBundle;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;[Ljava/lang/Object;Ljava/nio/ByteBuffer;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    const-string p0, "NOT_SUPPORTED_ERR"

    invoke-static {p0}, Lorg/mozilla/gecko/WebAuthnTokenManager;->webAuthnMakeCredentialReturnError(Ljava/lang/String;)V

    return-void
.end method

.method public static native webAuthnMakeCredentialFinish([B[B[B)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method public static native webAuthnMakeCredentialReturnError(Ljava/lang/String;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method
