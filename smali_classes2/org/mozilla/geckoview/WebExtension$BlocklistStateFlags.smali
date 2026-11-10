.class public Lorg/mozilla/geckoview/WebExtension$BlocklistStateFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlocklistStateFlags"
.end annotation


# static fields
.field public static final BLOCKED:I = 0x2

.field public static final NOT_BLOCKED:I = 0x0

.field public static final OUTDATED:I = 0x3

.field public static final SOFTBLOCKED:I = 0x1

.field public static final VULNERABLE_NO_UPDATE:I = 0x5

.field public static final VULNERABLE_UPDATE_AVAILABLE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
