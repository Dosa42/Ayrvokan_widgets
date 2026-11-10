.class public final enum Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/GeckoScreenOrientation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

.field public static final enum DEFAULT:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

.field public static final enum LANDSCAPE:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

.field public static final enum LANDSCAPE_PRIMARY:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

.field public static final enum LANDSCAPE_SECONDARY:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

.field public static final enum NONE:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

.field public static final enum PORTRAIT:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

.field public static final enum PORTRAIT_PRIMARY:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

.field public static final enum PORTRAIT_SECONDARY:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

.field private static final sValues:[Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;


# instance fields
.field public final value:S


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->NONE:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    new-instance v1, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    const-string v2, "PORTRAIT_PRIMARY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->PORTRAIT_PRIMARY:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    new-instance v2, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    const-string v3, "PORTRAIT_SECONDARY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->PORTRAIT_SECONDARY:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    new-instance v3, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    iget-short v4, v1, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->value:S

    iget-short v5, v2, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->value:S

    or-int/2addr v4, v5

    const-string v5, "PORTRAIT"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->PORTRAIT:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    new-instance v4, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    const-string v5, "LANDSCAPE_PRIMARY"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->LANDSCAPE_PRIMARY:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    new-instance v5, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    const/4 v6, 0x5

    const/16 v7, 0x8

    const-string v8, "LANDSCAPE_SECONDARY"

    invoke-direct {v5, v8, v6, v7}, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->LANDSCAPE_SECONDARY:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    new-instance v6, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    iget-short v7, v4, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->value:S

    iget-short v8, v5, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->value:S

    or-int/2addr v7, v8

    const-string v8, "LANDSCAPE"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->LANDSCAPE:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    new-instance v7, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    const/4 v8, 0x7

    const/16 v9, 0x10

    const-string v10, "DEFAULT"

    invoke-direct {v7, v10, v8, v9}, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->DEFAULT:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    filled-new-array/range {v0 .. v7}, [Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->$VALUES:[Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    invoke-static {}, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->values()[Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->sValues:[Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

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

    int-to-short p1, p3

    iput-short p1, p0, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->value:S

    return-void
.end method

.method public static get(I)Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;
    .locals 5

    sget-object v0, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->sValues:[Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-short v4, v3, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->value:S

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->NONE:Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;
    .locals 1

    const-class v0, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->$VALUES:[Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    invoke-virtual {v0}, [Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    return-object v0
.end method
