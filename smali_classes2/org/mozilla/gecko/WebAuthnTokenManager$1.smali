.class final Lorg/mozilla/gecko/WebAuthnTokenManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/WebAuthnTokenManager$WebAuthnMakeCredentialResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/gecko/WebAuthnTokenManager;->webAuthnMakeCredential(Lorg/mozilla/gecko/util/GeckoBundle;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;[Ljava/lang/Object;Ljava/nio/ByteBuffer;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/GeckoBundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/mozilla/gecko/WebAuthnTokenManager;->webAuthnMakeCredentialReturnError(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess([B[B[B)V
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/mozilla/gecko/WebAuthnTokenManager;->webAuthnMakeCredentialFinish([B[B[B)V

    return-void
.end method
