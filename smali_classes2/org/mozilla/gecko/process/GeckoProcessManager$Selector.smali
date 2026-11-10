.class public final Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/process/GeckoProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Selector"
.end annotation


# instance fields
.field private final mPid:I

.field private final mType:Lorg/mozilla/gecko/process/GeckoProcessType;


# direct methods
.method private constructor <init>(Lorg/mozilla/gecko/process/GeckoProcessType;)V
    .locals 0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;->mType:Lorg/mozilla/gecko/process/GeckoProcessType;

    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;->mPid:I

    return-void
.end method

.method private constructor <init>(Lorg/mozilla/gecko/process/GeckoProcessType;I)V
    .locals 0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;->mType:Lorg/mozilla/gecko/process/GeckoProcessType;

    iput p2, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;->mPid:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid PID"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;

    iget-object v2, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;->mType:Lorg/mozilla/gecko/process/GeckoProcessType;

    iget-object v3, p1, Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;->mType:Lorg/mozilla/gecko/process/GeckoProcessType;

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;->mPid:I

    iget p1, p1, Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;->mPid:I

    if-ne v2, p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public getPid()I
    .locals 1

    iget v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;->mPid:I

    return v0
.end method

.method public getType()Lorg/mozilla/gecko/process/GeckoProcessType;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;->mType:Lorg/mozilla/gecko/process/GeckoProcessType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;->mType:Lorg/mozilla/gecko/process/GeckoProcessType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;->mPid:I

    add-int/2addr v0, v1

    return v0
.end method
