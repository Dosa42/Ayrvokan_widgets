.class public final Ln1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/WebExtension$PortDelegate;


# instance fields
.field public final synthetic a:Lcom/nomone/GeckoView/MyGeckoView;


# direct methods
.method public constructor <init>(Lcom/nomone/GeckoView/MyGeckoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln1/g;->a:Lcom/nomone/GeckoView/MyGeckoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisconnect(Lorg/mozilla/geckoview/WebExtension$Port;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln1/g;->a:Lcom/nomone/GeckoView/MyGeckoView;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/nomone/GeckoView/MyGeckoView;->k:Lorg/mozilla/geckoview/WebExtension$Port;

    return-void
.end method

.method public final onPortMessage(Ljava/lang/Object;Lorg/mozilla/geckoview/WebExtension$Port;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "Page started"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    iget-object v2, p0, Ln1/g;->a:Lcom/nomone/GeckoView/MyGeckoView;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iput-object p2, v2, Lcom/nomone/GeckoView/MyGeckoView;->k:Lorg/mozilla/geckoview/WebExtension$Port;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/nomone/GeckoView/MyGeckoView;->getScale()F

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-virtual {v2, p2}, Lcom/nomone/GeckoView/MyGeckoView;->setScale(F)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p2, "devicePixelRatio:"

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    const/16 p2, 0x3a

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    add-int/2addr p2, v1

    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    sput p1, Lcom/nomone/GeckoView/MyGeckoView;->o:F

    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    :goto_0
    iget-object p2, v2, Lcom/nomone/GeckoView/MyGeckoView;->j:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Ln1/m;

    .line 69
    .line 70
    invoke-interface {v0, p1}, Ln1/m;->a(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    const/4 v1, 0x0

    .line 78
    :goto_1
    if-nez v1, :cond_4

    .line 79
    .line 80
    const-string p2, "Message received: "

    .line 81
    .line 82
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string p2, "sdf"

    .line 87
    .line 88
    invoke-static {p2, p1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    return-void
.end method
