.class Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PostRequestTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostRequestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "PostRequestTask"


# instance fields
.field private mDrmRequest:[B

.field private mPromiseId:I

.field private mResponseBody:[B

.field private mURL:Ljava/lang/String;

.field final synthetic this$0:Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;ILjava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PostRequestTask;->this$0:Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p2, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PostRequestTask;->mPromiseId:I

    iput-object p3, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PostRequestTask;->mURL:Ljava/lang/String;

    iput-object p4, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PostRequestTask;->mDrmRequest:[B

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PostRequestTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .line 2
    const/4 p1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PostRequestTask;->mURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&signedRequest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PostRequestTask;->mDrmRequest:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mozilla/gecko/util/ProxySelector;->openConnectionWithProxy(Ljava/net/URI;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "User-Agent"

    iget-object v2, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PostRequestTask;->this$0:Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;

    invoke-static {v2}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->access$100(Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    sget-object v4, Lorg/mozilla/gecko/util/StringUtils;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/gecko/util/StringUtils;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PostRequestTask;->mResponseBody:[B

    if-eqz v2, :cond_2

    array-length v2, v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    move-object v1, p1

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v1, :cond_7

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    goto :goto_6

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_3

    :catch_0
    move-object v1, p1

    goto :goto_4

    :catch_1
    move-object v1, p1

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_4
    throw p1

    :catch_3
    move-object v0, p1

    move-object v1, v0

    :catch_4
    :goto_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    if-eqz v1, :cond_7

    goto :goto_2

    :catch_5
    move-object v0, p1

    move-object v1, v0

    :catch_6
    :goto_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    if-eqz v1, :cond_7

    goto :goto_2

    :catch_7
    :cond_7
    :goto_6
    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PostRequestTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PostRequestTask;->this$0:Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;

    iget v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PostRequestTask;->mPromiseId:I

    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PostRequestTask;->mResponseBody:[B

    invoke-static {p1, v0, v1}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->access$200(Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;I[B)V

    return-void
.end method
