.class public Lorg/mozilla/geckoview/ContentBlockingController$LogEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/ContentBlockingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/ContentBlockingController$LogEntry$BlockingData;
    }
.end annotation


# instance fields
.field public final blockingData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/geckoview/ContentBlockingController$LogEntry$BlockingData;",
            ">;"
        }
    .end annotation
.end field

.field public final origin:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/geckoview/ContentBlockingController$LogEntry;->origin:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/geckoview/ContentBlockingController$LogEntry;->blockingData:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "origin"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/ContentBlockingController$LogEntry;->origin:Ljava/lang/String;

    const-string v0, "blockData"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundleArray(Ljava/lang/String;)[Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    new-instance v4, Lorg/mozilla/geckoview/ContentBlockingController$LogEntry$BlockingData;

    invoke-direct {v4, v3}, Lorg/mozilla/geckoview/ContentBlockingController$LogEntry$BlockingData;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlockingController$LogEntry;->blockingData:Ljava/util/List;

    return-void
.end method
