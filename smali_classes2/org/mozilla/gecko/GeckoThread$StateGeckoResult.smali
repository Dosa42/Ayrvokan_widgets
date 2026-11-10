.class Lorg/mozilla/gecko/GeckoThread$StateGeckoResult;
.super Lorg/mozilla/geckoview/GeckoResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/GeckoThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateGeckoResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mozilla/geckoview/GeckoResult<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final state:Lorg/mozilla/gecko/GeckoThread$State;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/GeckoThread$State;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoResult;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/GeckoThread$StateGeckoResult;->state:Lorg/mozilla/gecko/GeckoThread$State;

    return-void
.end method
