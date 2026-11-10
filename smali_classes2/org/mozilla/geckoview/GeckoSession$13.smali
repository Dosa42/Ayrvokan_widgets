.class synthetic Lorg/mozilla/geckoview/GeckoSession$13;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$mozilla$geckoview$SlowScriptResponse:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/mozilla/geckoview/SlowScriptResponse;->values()[Lorg/mozilla/geckoview/SlowScriptResponse;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/mozilla/geckoview/GeckoSession$13;->$SwitchMap$org$mozilla$geckoview$SlowScriptResponse:[I

    :try_start_0
    sget-object v1, Lorg/mozilla/geckoview/SlowScriptResponse;->STOP:Lorg/mozilla/geckoview/SlowScriptResponse;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/mozilla/geckoview/GeckoSession$13;->$SwitchMap$org$mozilla$geckoview$SlowScriptResponse:[I

    sget-object v1, Lorg/mozilla/geckoview/SlowScriptResponse;->CONTINUE:Lorg/mozilla/geckoview/SlowScriptResponse;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
