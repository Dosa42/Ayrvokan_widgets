.class public Lorg/mozilla/gecko/util/IOUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/util/IOUtils$ConsumedInputStream;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "GeckoIOUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static readFully(Ljava/io/InputStream;I)Lorg/mozilla/gecko/util/IOUtils$ConsumedInputStream;
    .locals 6

    new-array v0, p1, [B

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    :try_start_0
    array-length v2, v0

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    add-int/2addr v3, v2

    array-length v4, v0

    if-ne v3, v4, :cond_0

    mul-int/lit8 v4, p1, 0x2

    new-array v4, v4, [B

    array-length v5, v0

    invoke-static {v0, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/mozilla/gecko/util/IOUtils$ConsumedInputStream;

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p1, v3, v0}, Lorg/mozilla/gecko/util/IOUtils$ConsumedInputStream;-><init>(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lorg/mozilla/gecko/util/IOUtils;->safeStreamClose(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lorg/mozilla/gecko/util/IOUtils;->safeStreamClose(Ljava/io/Closeable;)V

    throw p1

    :catch_0
    invoke-static {p0}, Lorg/mozilla/gecko/util/IOUtils;->safeStreamClose(Ljava/io/Closeable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static safeStreamClose(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static truncateBytes([BI)[B
    .locals 2

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
