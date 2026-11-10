.class final Lorg/mozilla/geckoview/SessionAccessibility$Settings$1;
.super Lorg/mozilla/gecko/PrefsHelper$PrefHandlerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/SessionAccessibility$Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/PrefsHelper$PrefHandlerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public prefValue(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "accessibility.force_disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-gez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sput-boolean p1, Lorg/mozilla/geckoview/SessionAccessibility$Settings;->sForceEnabled:Z

    invoke-static {}, Lorg/mozilla/geckoview/SessionAccessibility$Settings;->dispatch()V

    :cond_1
    return-void
.end method
