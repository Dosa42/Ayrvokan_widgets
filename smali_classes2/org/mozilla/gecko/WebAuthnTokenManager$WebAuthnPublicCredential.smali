.class public Lorg/mozilla/gecko/WebAuthnTokenManager$WebAuthnPublicCredential;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/WebAuthnTokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebAuthnPublicCredential"
.end annotation


# instance fields
.field public final mId:[B

.field public final mTransports:B


# direct methods
.method public constructor <init>([BB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/WebAuthnTokenManager$WebAuthnPublicCredential;->mId:[B

    iput-byte p2, p0, Lorg/mozilla/gecko/WebAuthnTokenManager$WebAuthnPublicCredential;->mTransports:B

    return-void
.end method

.method public static CombineBuffers([Ljava/lang/Object;Ljava/nio/ByteBuffer;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/mozilla/gecko/WebAuthnTokenManager$WebAuthnPublicCredential;",
            ">;"
        }
    .end annotation

    array-length v0, p0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    :goto_0
    array-length v2, p0

    if-ge p1, v2, :cond_0

    aget-object v2, p0, p1

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v2, Lorg/mozilla/gecko/WebAuthnTokenManager$WebAuthnPublicCredential;

    aget-byte v4, v1, p1

    invoke-direct {v2, v3, v4}, Lorg/mozilla/gecko/WebAuthnTokenManager$WebAuthnPublicCredential;-><init>([BB)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Couldn\'t extract allowed list!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
