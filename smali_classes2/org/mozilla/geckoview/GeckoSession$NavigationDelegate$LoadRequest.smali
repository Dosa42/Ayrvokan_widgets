.class public Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadRequest"
.end annotation


# instance fields
.field public final hasUserGesture:Z

.field public final isDirectNavigation:Z

.field public final isRedirect:Z

.field public final target:I

.field public final triggerUri:Ljava/lang/String;

.field public final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;->uri:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;->triggerUri:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;->target:I

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;->isRedirect:Z

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;->hasUserGesture:Z

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;->isDirectNavigation:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;->uri:Ljava/lang/String;

    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;->triggerUri:Ljava/lang/String;

    invoke-direct {p0, p3}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;->convertGeckoTarget(I)I

    move-result p1

    iput p1, p0, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;->target:I

    const/high16 p1, 0x800000

    and-int/2addr p1, p4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;->isRedirect:Z

    iput-boolean p5, p0, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;->hasUserGesture:Z

    iput-boolean p6, p0, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;->isDirectNavigation:Z

    return-void
.end method

.method private convertGeckoTarget(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoadRequest { "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", triggerUri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;->triggerUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", target: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;->target:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", isRedirect: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;->isRedirect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", hasUserGesture: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;->hasUserGesture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", fromLoadUri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;->hasUserGesture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
