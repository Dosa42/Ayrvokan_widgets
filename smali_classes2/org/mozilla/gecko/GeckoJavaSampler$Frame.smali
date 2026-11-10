.class Lorg/mozilla/gecko/GeckoJavaSampler$Frame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/GeckoJavaSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Frame"
.end annotation


# instance fields
.field public className:Ljava/lang/String;

.field public methodName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/gecko/GeckoJavaSampler$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/gecko/GeckoJavaSampler$Frame;-><init>()V

    return-void
.end method
