.class public final Lo3/c;
.super Ljava/io/Reader;
.source "SourceFile"


# static fields
.field public static final c:Ljava/nio/charset/Charset;

.field public static final d:Ljava/nio/charset/Charset;

.field public static final e:Ljava/nio/charset/Charset;


# instance fields
.field public final a:Ljava/io/PushbackInputStream;

.field public b:Ljava/io/InputStreamReader;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo3/c;->c:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo3/c;->d:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo3/c;->e:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileInputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo3/c;->b:Ljava/io/InputStreamReader;

    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lo3/c;->a:Ljava/io/PushbackInputStream;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lo3/c;->b:Ljava/io/InputStreamReader;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [B

    iget-object v2, p0, Lo3/c;->a:Ljava/io/PushbackInputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v0

    aget-byte v3, v1, v3

    const/16 v4, -0x11

    sget-object v5, Lo3/c;->c:Ljava/nio/charset/Charset;

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1

    aget-byte v4, v1, v6

    const/16 v7, -0x45

    if-ne v4, v7, :cond_1

    const/4 v4, 0x2

    aget-byte v4, v1, v4

    const/16 v7, -0x41

    if-ne v4, v7, :cond_1

    add-int/lit8 v3, v0, -0x3

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    const/4 v7, -0x2

    if-ne v3, v7, :cond_2

    aget-byte v8, v1, v6

    if-ne v8, v4, :cond_2

    add-int/lit8 v3, v0, -0x2

    sget-object v5, Lo3/c;->d:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_2
    if-ne v3, v4, :cond_3

    aget-byte v3, v1, v6

    if-ne v3, v7, :cond_3

    add-int/lit8 v3, v0, -0x2

    sget-object v5, Lo3/c;->e:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_3
    move v3, v0

    :goto_0
    if-lez v3, :cond_4

    sub-int/2addr v0, v3

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    :cond_4
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;)V

    iput-object v1, p0, Lo3/c;->b:Ljava/io/InputStreamReader;

    return-void
.end method

.method public final close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo3/c;->a()V

    iget-object v0, p0, Lo3/c;->b:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    return-void
.end method

.method public final read([CII)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo3/c;->a()V

    iget-object v0, p0, Lo3/c;->b:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result p1

    return p1
.end method
