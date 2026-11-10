.class public Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo$TimeRange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeRange"
.end annotation


# instance fields
.field public final end:D

.field public final start:D

.field final synthetic this$0:Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo;DD)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo$TimeRange;->this$0:Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo$TimeRange;->start:D

    iput-wide p4, p0, Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo$TimeRange;->end:D

    return-void
.end method
