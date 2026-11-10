.class public final enum Lorg/mozilla/gecko/GeckoThread$State;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/NativeQueue$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/GeckoThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/gecko/GeckoThread$State;",
        ">;",
        "Lorg/mozilla/gecko/NativeQueue$State;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/gecko/GeckoThread$State;

.field public static final enum CORRUPT_APK:Lorg/mozilla/gecko/GeckoThread$State;

.field public static final enum EXITED:Lorg/mozilla/gecko/GeckoThread$State;
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public static final enum EXITING:Lorg/mozilla/gecko/GeckoThread$State;
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public static final enum INITIAL:Lorg/mozilla/gecko/GeckoThread$State;
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public static final enum JNI_READY:Lorg/mozilla/gecko/GeckoThread$State;
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public static final enum LAUNCHED:Lorg/mozilla/gecko/GeckoThread$State;
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public static final enum LIBS_READY:Lorg/mozilla/gecko/GeckoThread$State;
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public static final enum MOZGLUE_READY:Lorg/mozilla/gecko/GeckoThread$State;
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public static final enum PROFILE_READY:Lorg/mozilla/gecko/GeckoThread$State;
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public static final enum RESTARTING:Lorg/mozilla/gecko/GeckoThread$State;
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public static final enum RUNNING:Lorg/mozilla/gecko/GeckoThread$State;
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field


# instance fields
.field private final mRank:I


# direct methods
.method private static synthetic $values()[Lorg/mozilla/gecko/GeckoThread$State;
    .locals 11

    sget-object v0, Lorg/mozilla/gecko/GeckoThread$State;->INITIAL:Lorg/mozilla/gecko/GeckoThread$State;

    sget-object v1, Lorg/mozilla/gecko/GeckoThread$State;->LAUNCHED:Lorg/mozilla/gecko/GeckoThread$State;

    sget-object v2, Lorg/mozilla/gecko/GeckoThread$State;->MOZGLUE_READY:Lorg/mozilla/gecko/GeckoThread$State;

    sget-object v3, Lorg/mozilla/gecko/GeckoThread$State;->LIBS_READY:Lorg/mozilla/gecko/GeckoThread$State;

    sget-object v4, Lorg/mozilla/gecko/GeckoThread$State;->JNI_READY:Lorg/mozilla/gecko/GeckoThread$State;

    sget-object v5, Lorg/mozilla/gecko/GeckoThread$State;->PROFILE_READY:Lorg/mozilla/gecko/GeckoThread$State;

    sget-object v6, Lorg/mozilla/gecko/GeckoThread$State;->RUNNING:Lorg/mozilla/gecko/GeckoThread$State;

    sget-object v7, Lorg/mozilla/gecko/GeckoThread$State;->EXITING:Lorg/mozilla/gecko/GeckoThread$State;

    sget-object v8, Lorg/mozilla/gecko/GeckoThread$State;->RESTARTING:Lorg/mozilla/gecko/GeckoThread$State;

    sget-object v9, Lorg/mozilla/gecko/GeckoThread$State;->CORRUPT_APK:Lorg/mozilla/gecko/GeckoThread$State;

    sget-object v10, Lorg/mozilla/gecko/GeckoThread$State;->EXITED:Lorg/mozilla/gecko/GeckoThread$State;

    filled-new-array/range {v0 .. v10}, [Lorg/mozilla/gecko/GeckoThread$State;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/mozilla/gecko/GeckoThread$State;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/mozilla/gecko/GeckoThread$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/mozilla/gecko/GeckoThread$State;->INITIAL:Lorg/mozilla/gecko/GeckoThread$State;

    new-instance v0, Lorg/mozilla/gecko/GeckoThread$State;

    const-string v1, "LAUNCHED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/mozilla/gecko/GeckoThread$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/mozilla/gecko/GeckoThread$State;->LAUNCHED:Lorg/mozilla/gecko/GeckoThread$State;

    new-instance v0, Lorg/mozilla/gecko/GeckoThread$State;

    const-string v1, "MOZGLUE_READY"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v3}, Lorg/mozilla/gecko/GeckoThread$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/mozilla/gecko/GeckoThread$State;->MOZGLUE_READY:Lorg/mozilla/gecko/GeckoThread$State;

    new-instance v0, Lorg/mozilla/gecko/GeckoThread$State;

    const-string v1, "LIBS_READY"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v4}, Lorg/mozilla/gecko/GeckoThread$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/mozilla/gecko/GeckoThread$State;->LIBS_READY:Lorg/mozilla/gecko/GeckoThread$State;

    new-instance v0, Lorg/mozilla/gecko/GeckoThread$State;

    const-string v1, "JNI_READY"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v5, v5}, Lorg/mozilla/gecko/GeckoThread$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/mozilla/gecko/GeckoThread$State;->JNI_READY:Lorg/mozilla/gecko/GeckoThread$State;

    new-instance v0, Lorg/mozilla/gecko/GeckoThread$State;

    const-string v1, "PROFILE_READY"

    const/4 v5, 0x5

    invoke-direct {v0, v1, v5, v5}, Lorg/mozilla/gecko/GeckoThread$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/mozilla/gecko/GeckoThread$State;->PROFILE_READY:Lorg/mozilla/gecko/GeckoThread$State;

    new-instance v0, Lorg/mozilla/gecko/GeckoThread$State;

    const-string v1, "RUNNING"

    const/4 v5, 0x6

    invoke-direct {v0, v1, v5, v5}, Lorg/mozilla/gecko/GeckoThread$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/mozilla/gecko/GeckoThread$State;->RUNNING:Lorg/mozilla/gecko/GeckoThread$State;

    new-instance v0, Lorg/mozilla/gecko/GeckoThread$State;

    const-string v1, "EXITING"

    const/4 v5, 0x7

    invoke-direct {v0, v1, v5, v4}, Lorg/mozilla/gecko/GeckoThread$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/mozilla/gecko/GeckoThread$State;->EXITING:Lorg/mozilla/gecko/GeckoThread$State;

    new-instance v0, Lorg/mozilla/gecko/GeckoThread$State;

    const-string v1, "RESTARTING"

    const/16 v5, 0x8

    invoke-direct {v0, v1, v5, v4}, Lorg/mozilla/gecko/GeckoThread$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/mozilla/gecko/GeckoThread$State;->RESTARTING:Lorg/mozilla/gecko/GeckoThread$State;

    new-instance v0, Lorg/mozilla/gecko/GeckoThread$State;

    const-string v1, "CORRUPT_APK"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v4, v3}, Lorg/mozilla/gecko/GeckoThread$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/mozilla/gecko/GeckoThread$State;->CORRUPT_APK:Lorg/mozilla/gecko/GeckoThread$State;

    new-instance v0, Lorg/mozilla/gecko/GeckoThread$State;

    const-string v1, "EXITED"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lorg/mozilla/gecko/GeckoThread$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/mozilla/gecko/GeckoThread$State;->EXITED:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread$State;->$values()[Lorg/mozilla/gecko/GeckoThread$State;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/GeckoThread$State;->$VALUES:[Lorg/mozilla/gecko/GeckoThread$State;

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

    iput p3, p0, Lorg/mozilla/gecko/GeckoThread$State;->mRank:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/gecko/GeckoThread$State;
    .locals 1

    const-class v0, Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/gecko/GeckoThread$State;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/gecko/GeckoThread$State;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoThread$State;->$VALUES:[Lorg/mozilla/gecko/GeckoThread$State;

    invoke-virtual {v0}, [Lorg/mozilla/gecko/GeckoThread$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/gecko/GeckoThread$State;

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
    .locals 2

    instance-of v0, p1, Lorg/mozilla/gecko/GeckoThread$State;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mozilla/gecko/GeckoThread$State;->mRank:I

    check-cast p1, Lorg/mozilla/gecko/GeckoThread$State;

    iget p1, p1, Lorg/mozilla/gecko/GeckoThread$State;->mRank:I

    if-lt v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
