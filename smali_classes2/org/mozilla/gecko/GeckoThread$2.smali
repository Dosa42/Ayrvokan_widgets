.class Lorg/mozilla/gecko/GeckoThread$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/gecko/GeckoThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/gecko/GeckoThread;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/GeckoThread;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/GeckoThread$2;->this$0:Lorg/mozilla/gecko/GeckoThread;

    iput-object p2, p0, Lorg/mozilla/gecko/GeckoThread$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public report(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lorg/mozilla/gecko/GeckoThread$2;->val$context:Landroid/content/Context;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/play_billing/i0;->L(Landroid/content/Context;Z)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, "<pre>Exception:<br>===========<br>"

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    new-instance p1, Ljava/io/StringWriter;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v2, Ljava/io/PrintWriter;

    .line 30
    .line 31
    invoke-direct {v2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, "</pre><pre>Logs:<br>===========<br>"

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lo1/m;->e()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, "</pre>"

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string p2, "Q3Jhc2g"

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    const/4 v2, 0x1

    .line 69
    invoke-static {p2, p1, v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/i0;->e0(Ljava/lang/String;Ljava/lang/String;ZZLq1/z;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
