.class public abstract Lorg/mozilla/geckoview/WebMessage$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# instance fields
.field mBody:Ljava/nio/ByteBuffer;

.field mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf/b;

    invoke-direct {v0}, Lf/b;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/WebMessage$Builder;->mHeaders:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/WebMessage$Builder;->uri(Ljava/lang/String;)Lorg/mozilla/geckoview/WebMessage$Builder;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/geckoview/WebMessage$Builder;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/WebMessage$Builder;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/mozilla/geckoview/WebMessage$Builder;->mHeaders:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/WebMessage$Builder;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/geckoview/WebMessage$Builder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/WebMessage$Builder;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public uri(Ljava/lang/String;)Lorg/mozilla/geckoview/WebMessage$Builder;
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/WebMessage$Builder;->mUri:Ljava/lang/String;

    return-object p0
.end method
