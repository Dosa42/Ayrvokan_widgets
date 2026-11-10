.class final enum Lorg/mozilla/gecko/AndroidGamepadManager$Axis;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/AndroidGamepadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Axis"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/gecko/AndroidGamepadManager$Axis;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/gecko/AndroidGamepadManager$Axis;

.field public static final enum RZ:Lorg/mozilla/gecko/AndroidGamepadManager$Axis;

.field public static final enum X:Lorg/mozilla/gecko/AndroidGamepadManager$Axis;

.field public static final enum Y:Lorg/mozilla/gecko/AndroidGamepadManager$Axis;

.field public static final enum Z:Lorg/mozilla/gecko/AndroidGamepadManager$Axis;


# instance fields
.field public final axis:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/mozilla/gecko/AndroidGamepadManager$Axis;

    const-string v1, "X"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/mozilla/gecko/AndroidGamepadManager$Axis;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/mozilla/gecko/AndroidGamepadManager$Axis;->X:Lorg/mozilla/gecko/AndroidGamepadManager$Axis;

    new-instance v1, Lorg/mozilla/gecko/AndroidGamepadManager$Axis;

    const-string v2, "Y"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/mozilla/gecko/AndroidGamepadManager$Axis;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mozilla/gecko/AndroidGamepadManager$Axis;->Y:Lorg/mozilla/gecko/AndroidGamepadManager$Axis;

    new-instance v2, Lorg/mozilla/gecko/AndroidGamepadManager$Axis;

    const/4 v3, 0x2

    const/16 v4, 0xb

    const-string v5, "Z"

    invoke-direct {v2, v5, v3, v4}, Lorg/mozilla/gecko/AndroidGamepadManager$Axis;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/mozilla/gecko/AndroidGamepadManager$Axis;->Z:Lorg/mozilla/gecko/AndroidGamepadManager$Axis;

    new-instance v3, Lorg/mozilla/gecko/AndroidGamepadManager$Axis;

    const/4 v4, 0x3

    const/16 v5, 0xe

    const-string v6, "RZ"

    invoke-direct {v3, v6, v4, v5}, Lorg/mozilla/gecko/AndroidGamepadManager$Axis;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/mozilla/gecko/AndroidGamepadManager$Axis;->RZ:Lorg/mozilla/gecko/AndroidGamepadManager$Axis;

    filled-new-array {v0, v1, v2, v3}, [Lorg/mozilla/gecko/AndroidGamepadManager$Axis;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/AndroidGamepadManager$Axis;->$VALUES:[Lorg/mozilla/gecko/AndroidGamepadManager$Axis;

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

    iput p3, p0, Lorg/mozilla/gecko/AndroidGamepadManager$Axis;->axis:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/gecko/AndroidGamepadManager$Axis;
    .locals 1

    const-class v0, Lorg/mozilla/gecko/AndroidGamepadManager$Axis;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/gecko/AndroidGamepadManager$Axis;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/gecko/AndroidGamepadManager$Axis;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/AndroidGamepadManager$Axis;->$VALUES:[Lorg/mozilla/gecko/AndroidGamepadManager$Axis;

    invoke-virtual {v0}, [Lorg/mozilla/gecko/AndroidGamepadManager$Axis;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/gecko/AndroidGamepadManager$Axis;

    return-object v0
.end method
