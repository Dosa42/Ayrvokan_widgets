.class public final Lb2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lo1/f;

.field public b:Ljava/net/Socket;

.field public c:Ljava/io/BufferedReader;

.field public d:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/i0;Ljava/net/Socket;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb2/b;->b:Ljava/net/Socket;

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lb2/b;->c:Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lb2/b;->d:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, Lo1/f;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "connectionThread"

    invoke-direct {p2, v0, p1}, Lo1/f;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    iput-object p2, p0, Lb2/b;->a:Lo1/f;

    invoke-virtual {p2}, Lo1/f;->start()V

    new-instance p1, Lo0/a;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lo0/a;-><init>(I)V

    invoke-virtual {p2, p1}, Lo1/f;->a(Ljava/lang/Runnable;)V

    new-instance p1, Lo0/n;

    const/16 v0, 0x16

    invoke-direct {p1, p0, v0}, Lo0/n;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p1}, Lo1/f;->a(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    invoke-virtual {p0}, Lb2/b;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    throw v0
.end method
