.class public Lorg/mozilla/geckoview/GeckoSessionSettings$Key;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSessionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final initOnly:Z

.field final name:Ljava/lang/String;

.field final values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;-><init>(Ljava/lang/String;ZLjava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->name:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->initOnly:Z

    iput-object p3, p0, Lorg/mozilla/geckoview/GeckoSessionSettings$Key;->values:Ljava/util/Collection;

    return-void
.end method
