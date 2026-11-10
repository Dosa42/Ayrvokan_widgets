.class final enum Lorg/mozilla/geckoview/GeckoSession$State;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/NativeQueue$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/geckoview/GeckoSession$State;",
        ">;",
        "Lorg/mozilla/gecko/NativeQueue$State;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/geckoview/GeckoSession$State;

.field public static final enum INITIAL:Lorg/mozilla/geckoview/GeckoSession$State;

.field public static final enum READY:Lorg/mozilla/geckoview/GeckoSession$State;


# instance fields
.field private final mRank:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/mozilla/geckoview/GeckoSession$State;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/mozilla/geckoview/GeckoSession$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/mozilla/geckoview/GeckoSession$State;->INITIAL:Lorg/mozilla/geckoview/GeckoSession$State;

    new-instance v1, Lorg/mozilla/geckoview/GeckoSession$State;

    const-string v2, "READY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/mozilla/geckoview/GeckoSession$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mozilla/geckoview/GeckoSession$State;->READY:Lorg/mozilla/geckoview/GeckoSession$State;

    filled-new-array {v0, v1}, [Lorg/mozilla/geckoview/GeckoSession$State;

    move-result-object v0

    sput-object v0, Lorg/mozilla/geckoview/GeckoSession$State;->$VALUES:[Lorg/mozilla/geckoview/GeckoSession$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/mozilla/geckoview/GeckoSession$State;->mRank:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoSession$State;
    .locals 1

    const-class v0, Lorg/mozilla/geckoview/GeckoSession$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/geckoview/GeckoSession$State;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/geckoview/GeckoSession$State;
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/GeckoSession$State;->$VALUES:[Lorg/mozilla/geckoview/GeckoSession$State;

    invoke-virtual {v0}, [Lorg/mozilla/geckoview/GeckoSession$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/geckoview/GeckoSession$State;

    return-object v0
.end method


# virtual methods
.method public is(Lorg/mozilla/gecko/NativeQueue$State;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAtLeast(Lorg/mozilla/gecko/NativeQueue$State;)Z
    .locals 1

    instance-of v0, p1, Lorg/mozilla/geckoview/GeckoSession$State;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession$State;->mRank:I

    check-cast p1, Lorg/mozilla/geckoview/GeckoSession$State;

    iget p1, p1, Lorg/mozilla/geckoview/GeckoSession$State;->mRank:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
