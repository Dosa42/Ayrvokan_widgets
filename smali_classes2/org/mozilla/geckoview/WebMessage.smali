.class public abstract Lorg/mozilla/geckoview/WebMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/WebMessage$Builder;
    }
.end annotation

.annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
.end annotation


# instance fields
.field public final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/WebMessage$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/mozilla/geckoview/WebMessage$Builder;->mUri:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/geckoview/WebMessage;->uri:Ljava/lang/String;

    iget-object p1, p1, Lorg/mozilla/geckoview/WebMessage$Builder;->mHeaders:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/WebMessage;->headers:Ljava/util/Map;

    return-void
.end method

.method private getHeaderKeys()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/WebMessage;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/geckoview/WebMessage;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method private getHeaderValues()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/WebMessage;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/geckoview/WebMessage;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method
