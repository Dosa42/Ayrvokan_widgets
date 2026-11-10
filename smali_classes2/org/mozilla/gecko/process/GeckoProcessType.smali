.class public final enum Lorg/mozilla/gecko/process/GeckoProcessType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/gecko/process/GeckoProcessType;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/gecko/process/GeckoProcessType;

.field public static final enum CONTENT:Lorg/mozilla/gecko/process/GeckoProcessType;

.field public static final enum FORKSERVER:Lorg/mozilla/gecko/process/GeckoProcessType;

.field public static final enum GMPLUGIN:Lorg/mozilla/gecko/process/GeckoProcessType;

.field public static final enum GPU:Lorg/mozilla/gecko/process/GeckoProcessType;

.field public static final enum IPDLUNITTEST:Lorg/mozilla/gecko/process/GeckoProcessType;

.field public static final enum PARENT:Lorg/mozilla/gecko/process/GeckoProcessType;

.field public static final enum PLUGIN:Lorg/mozilla/gecko/process/GeckoProcessType;

.field public static final enum RDD:Lorg/mozilla/gecko/process/GeckoProcessType;

.field public static final enum REMOTESANDBOXBROKER:Lorg/mozilla/gecko/process/GeckoProcessType;

.field public static final enum SOCKET:Lorg/mozilla/gecko/process/GeckoProcessType;

.field public static final enum VR:Lorg/mozilla/gecko/process/GeckoProcessType;


# instance fields
.field private final mGeckoName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    new-instance v0, Lorg/mozilla/gecko/process/GeckoProcessType;

    const/4 v1, 0x0

    const-string v2, "default"

    const-string v3, "PARENT"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/process/GeckoProcessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/process/GeckoProcessType;->PARENT:Lorg/mozilla/gecko/process/GeckoProcessType;

    new-instance v1, Lorg/mozilla/gecko/process/GeckoProcessType;

    const/4 v2, 0x1

    const-string v3, "plugin"

    const-string v4, "PLUGIN"

    invoke-direct {v1, v4, v2, v3}, Lorg/mozilla/gecko/process/GeckoProcessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/mozilla/gecko/process/GeckoProcessType;->PLUGIN:Lorg/mozilla/gecko/process/GeckoProcessType;

    new-instance v2, Lorg/mozilla/gecko/process/GeckoProcessType;

    const/4 v3, 0x2

    const-string v4, "tab"

    const-string v5, "CONTENT"

    invoke-direct {v2, v5, v3, v4}, Lorg/mozilla/gecko/process/GeckoProcessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/mozilla/gecko/process/GeckoProcessType;->CONTENT:Lorg/mozilla/gecko/process/GeckoProcessType;

    new-instance v3, Lorg/mozilla/gecko/process/GeckoProcessType;

    const/4 v4, 0x3

    const-string v5, "ipdlunittest"

    const-string v6, "IPDLUNITTEST"

    invoke-direct {v3, v6, v4, v5}, Lorg/mozilla/gecko/process/GeckoProcessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/mozilla/gecko/process/GeckoProcessType;->IPDLUNITTEST:Lorg/mozilla/gecko/process/GeckoProcessType;

    new-instance v4, Lorg/mozilla/gecko/process/GeckoProcessType;

    const/4 v5, 0x4

    const-string v6, "gmplugin"

    const-string v7, "GMPLUGIN"

    invoke-direct {v4, v7, v5, v6}, Lorg/mozilla/gecko/process/GeckoProcessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/mozilla/gecko/process/GeckoProcessType;->GMPLUGIN:Lorg/mozilla/gecko/process/GeckoProcessType;

    new-instance v5, Lorg/mozilla/gecko/process/GeckoProcessType;

    const/4 v6, 0x5

    const-string v7, "gpu"

    const-string v8, "GPU"

    invoke-direct {v5, v8, v6, v7}, Lorg/mozilla/gecko/process/GeckoProcessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/mozilla/gecko/process/GeckoProcessType;->GPU:Lorg/mozilla/gecko/process/GeckoProcessType;

    new-instance v6, Lorg/mozilla/gecko/process/GeckoProcessType;

    const/4 v7, 0x6

    const-string v8, "vr"

    const-string v9, "VR"

    invoke-direct {v6, v9, v7, v8}, Lorg/mozilla/gecko/process/GeckoProcessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/mozilla/gecko/process/GeckoProcessType;->VR:Lorg/mozilla/gecko/process/GeckoProcessType;

    new-instance v7, Lorg/mozilla/gecko/process/GeckoProcessType;

    const/4 v8, 0x7

    const-string v9, "rdd"

    const-string v10, "RDD"

    invoke-direct {v7, v10, v8, v9}, Lorg/mozilla/gecko/process/GeckoProcessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/mozilla/gecko/process/GeckoProcessType;->RDD:Lorg/mozilla/gecko/process/GeckoProcessType;

    new-instance v8, Lorg/mozilla/gecko/process/GeckoProcessType;

    const/16 v9, 0x8

    const-string v10, "socket"

    const-string v11, "SOCKET"

    invoke-direct {v8, v11, v9, v10}, Lorg/mozilla/gecko/process/GeckoProcessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/mozilla/gecko/process/GeckoProcessType;->SOCKET:Lorg/mozilla/gecko/process/GeckoProcessType;

    new-instance v9, Lorg/mozilla/gecko/process/GeckoProcessType;

    const/16 v10, 0x9

    const-string v11, "sandboxbroker"

    const-string v12, "REMOTESANDBOXBROKER"

    invoke-direct {v9, v12, v10, v11}, Lorg/mozilla/gecko/process/GeckoProcessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/mozilla/gecko/process/GeckoProcessType;->REMOTESANDBOXBROKER:Lorg/mozilla/gecko/process/GeckoProcessType;

    new-instance v10, Lorg/mozilla/gecko/process/GeckoProcessType;

    const/16 v11, 0xa

    const-string v12, "forkserver"

    const-string v13, "FORKSERVER"

    invoke-direct {v10, v13, v11, v12}, Lorg/mozilla/gecko/process/GeckoProcessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/mozilla/gecko/process/GeckoProcessType;->FORKSERVER:Lorg/mozilla/gecko/process/GeckoProcessType;

    filled-new-array/range {v0 .. v10}, [Lorg/mozilla/gecko/process/GeckoProcessType;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/process/GeckoProcessType;->$VALUES:[Lorg/mozilla/gecko/process/GeckoProcessType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/mozilla/gecko/process/GeckoProcessType;->mGeckoName:Ljava/lang/String;

    return-void
.end method

.method private static final fromInt(I)Lorg/mozilla/gecko/process/GeckoProcessType;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/process/GeckoProcessType;->values()[Lorg/mozilla/gecko/process/GeckoProcessType;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/gecko/process/GeckoProcessType;
    .locals 1

    const-class v0, Lorg/mozilla/gecko/process/GeckoProcessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/gecko/process/GeckoProcessType;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/gecko/process/GeckoProcessType;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/process/GeckoProcessType;->$VALUES:[Lorg/mozilla/gecko/process/GeckoProcessType;

    invoke-virtual {v0}, [Lorg/mozilla/gecko/process/GeckoProcessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/gecko/process/GeckoProcessType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessType;->mGeckoName:Ljava/lang/String;

    return-object v0
.end method
