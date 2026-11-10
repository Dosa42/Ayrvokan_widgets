.class public final synthetic Lorg/mozilla/geckoview/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoResult$Consumer;


# instance fields
.field public final synthetic f:Lorg/mozilla/geckoview/GeckoSession;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:I

.field public final synthetic i:Lorg/mozilla/geckoview/GeckoSession;

.field public final synthetic j:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;ILorg/mozilla/geckoview/GeckoSession;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/i;->f:Lorg/mozilla/geckoview/GeckoSession;

    iput-object p2, p0, Lorg/mozilla/geckoview/i;->g:Ljava/lang/String;

    iput p3, p0, Lorg/mozilla/geckoview/i;->h:I

    iput-object p4, p0, Lorg/mozilla/geckoview/i;->i:Lorg/mozilla/geckoview/GeckoSession;

    iput-object p5, p0, Lorg/mozilla/geckoview/i;->j:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/mozilla/geckoview/i;->f:Lorg/mozilla/geckoview/GeckoSession;

    iget-object v1, p0, Lorg/mozilla/geckoview/i;->g:Ljava/lang/String;

    iget v2, p0, Lorg/mozilla/geckoview/i;->h:I

    iget-object v3, p0, Lorg/mozilla/geckoview/i;->i:Lorg/mozilla/geckoview/GeckoSession;

    iget-object v4, p0, Lorg/mozilla/geckoview/i;->j:Ljava/util/Map;

    move-object v5, p1

    check-cast v5, Lorg/mozilla/geckoview/AllowOrDeny;

    invoke-static/range {v0 .. v5}, Lorg/mozilla/geckoview/GeckoSession;->b(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;ILorg/mozilla/geckoview/GeckoSession;Ljava/util/Map;Lorg/mozilla/geckoview/AllowOrDeny;)V

    return-void
.end method
