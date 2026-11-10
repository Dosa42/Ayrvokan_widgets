.class public final enum Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/process/ServiceAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PriorityLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

.field public static final enum BACKGROUND:Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

.field public static final enum FOREGROUND:Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

.field public static final enum IDLE:Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;


# instance fields
.field private final mAndroidFlag:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    const/16 v1, 0x40

    const-string v2, "FOREGROUND"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;->FOREGROUND:Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    new-instance v1, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    const-string v2, "BACKGROUND"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;->BACKGROUND:Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    new-instance v2, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    const/4 v3, 0x2

    const/16 v4, 0x20

    const-string v5, "IDLE"

    invoke-direct {v2, v5, v3, v4}, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;->IDLE:Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    filled-new-array {v0, v1, v2}, [Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;->$VALUES:[Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

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

    iput p3, p0, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;->mAndroidFlag:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;
    .locals 1

    const-class v0, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;->$VALUES:[Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    invoke-virtual {v0}, [Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    return-object v0
.end method


# virtual methods
.method public getAndroidFlag()I
    .locals 1

    iget v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;->mAndroidFlag:I

    return v0
.end method
