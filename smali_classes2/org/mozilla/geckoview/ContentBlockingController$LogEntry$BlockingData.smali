.class public Lorg/mozilla/geckoview/ContentBlockingController$LogEntry$BlockingData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/ContentBlockingController$LogEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockingData"
.end annotation


# instance fields
.field public final blocked:Z

.field public final category:I

.field public final count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/geckoview/ContentBlockingController$LogEntry$BlockingData;->category:I

    iput-boolean v0, p0, Lorg/mozilla/geckoview/ContentBlockingController$LogEntry$BlockingData;->blocked:Z

    iput v0, p0, Lorg/mozilla/geckoview/ContentBlockingController$LogEntry$BlockingData;->count:I

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "category"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/mozilla/geckoview/ContentBlockingController$LogEntry$BlockingData;->category:I

    const-string v0, "blocked"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/ContentBlockingController$LogEntry$BlockingData;->blocked:Z

    const-string v0, "count"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/mozilla/geckoview/ContentBlockingController$LogEntry$BlockingData;->count:I

    return-void
.end method
