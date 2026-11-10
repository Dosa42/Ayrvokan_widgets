.class public Lorg/mozilla/geckoview/GeckoSession$ContentDelegate$ContextElement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContextElement"
.end annotation


# static fields
.field public static final TYPE_AUDIO:I = 0x3

.field public static final TYPE_IMAGE:I = 0x1

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_VIDEO:I = 0x2


# instance fields
.field public final altText:Ljava/lang/String;

.field public final baseUri:Ljava/lang/String;

.field public final linkUri:Ljava/lang/String;

.field public final srcUri:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate$ContextElement;->baseUri:Ljava/lang/String;

    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate$ContextElement;->linkUri:Ljava/lang/String;

    iput-object p3, p0, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate$ContextElement;->title:Ljava/lang/String;

    iput-object p4, p0, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate$ContextElement;->altText:Ljava/lang/String;

    invoke-static {p5}, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate$ContextElement;->getType(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate$ContextElement;->type:I

    iput-object p6, p0, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate$ContextElement;->srcUri:Ljava/lang/String;

    return-void
.end method

.method private static getType(Ljava/lang/String;)I
    .locals 1

    const-string v0, "HTMLImageElement"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "HTMLVideoElement"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string v0, "HTMLAudioElement"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
