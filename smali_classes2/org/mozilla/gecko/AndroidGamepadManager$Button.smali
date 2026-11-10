.class final enum Lorg/mozilla/gecko/AndroidGamepadManager$Button;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/AndroidGamepadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Button"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/gecko/AndroidGamepadManager$Button;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/gecko/AndroidGamepadManager$Button;

.field public static final enum A:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

.field public static final enum B:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

.field public static final enum DPAD_DOWN:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

.field public static final enum DPAD_LEFT:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

.field public static final enum DPAD_RIGHT:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

.field public static final enum DPAD_UP:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

.field public static final enum L1:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

.field public static final enum L2:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

.field public static final enum R1:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

.field public static final enum R2:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

.field public static final enum SELECT:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

.field public static final enum START:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

.field public static final enum THUMBL:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

.field public static final enum THUMBR:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

.field public static final enum X:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

.field public static final enum Y:Lorg/mozilla/gecko/AndroidGamepadManager$Button;


# instance fields
.field public final button:I


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    new-instance v0, Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    const/4 v1, 0x0

    const/16 v2, 0x60

    const-string v3, "A"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/AndroidGamepadManager$Button;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/mozilla/gecko/AndroidGamepadManager$Button;->A:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    new-instance v1, Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    const/4 v2, 0x1

    const/16 v3, 0x61

    const-string v4, "B"

    invoke-direct {v1, v4, v2, v3}, Lorg/mozilla/gecko/AndroidGamepadManager$Button;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mozilla/gecko/AndroidGamepadManager$Button;->B:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    new-instance v2, Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    const/4 v3, 0x2

    const/16 v4, 0x63

    const-string v5, "X"

    invoke-direct {v2, v5, v3, v4}, Lorg/mozilla/gecko/AndroidGamepadManager$Button;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/mozilla/gecko/AndroidGamepadManager$Button;->X:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    new-instance v3, Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    const/4 v4, 0x3

    const/16 v5, 0x64

    const-string v6, "Y"

    invoke-direct {v3, v6, v4, v5}, Lorg/mozilla/gecko/AndroidGamepadManager$Button;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/mozilla/gecko/AndroidGamepadManager$Button;->Y:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    new-instance v4, Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    const/4 v5, 0x4

    const/16 v6, 0x66

    const-string v7, "L1"

    invoke-direct {v4, v7, v5, v6}, Lorg/mozilla/gecko/AndroidGamepadManager$Button;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/mozilla/gecko/AndroidGamepadManager$Button;->L1:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    new-instance v5, Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    const/4 v6, 0x5

    const/16 v7, 0x67

    const-string v8, "R1"

    invoke-direct {v5, v8, v6, v7}, Lorg/mozilla/gecko/AndroidGamepadManager$Button;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/mozilla/gecko/AndroidGamepadManager$Button;->R1:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    new-instance v6, Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    const/4 v7, 0x6

    const/16 v8, 0x68

    const-string v9, "L2"

    invoke-direct {v6, v9, v7, v8}, Lorg/mozilla/gecko/AndroidGamepadManager$Button;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/mozilla/gecko/AndroidGamepadManager$Button;->L2:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    new-instance v7, Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    const/4 v8, 0x7

    const/16 v9, 0x69

    const-string v10, "R2"

    invoke-direct {v7, v10, v8, v9}, Lorg/mozilla/gecko/AndroidGamepadManager$Button;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/mozilla/gecko/AndroidGamepadManager$Button;->R2:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    new-instance v8, Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    const/16 v9, 0x8

    const/16 v10, 0x6d

    const-string v11, "SELECT"

    invoke-direct {v8, v11, v9, v10}, Lorg/mozilla/gecko/AndroidGamepadManager$Button;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/mozilla/gecko/AndroidGamepadManager$Button;->SELECT:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    new-instance v9, Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    const/16 v10, 0x9

    const/16 v11, 0x6c

    const-string v12, "START"

    invoke-direct {v9, v12, v10, v11}, Lorg/mozilla/gecko/AndroidGamepadManager$Button;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/mozilla/gecko/AndroidGamepadManager$Button;->START:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    new-instance v10, Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    const/16 v11, 0xa

    const/16 v12, 0x6a

    const-string v13, "THUMBL"

    invoke-direct {v10, v13, v11, v12}, Lorg/mozilla/gecko/AndroidGamepadManager$Button;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/mozilla/gecko/AndroidGamepadManager$Button;->THUMBL:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    new-instance v11, Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    const/16 v12, 0xb

    const/16 v13, 0x6b

    const-string v14, "THUMBR"

    invoke-direct {v11, v14, v12, v13}, Lorg/mozilla/gecko/AndroidGamepadManager$Button;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/mozilla/gecko/AndroidGamepadManager$Button;->THUMBR:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    new-instance v12, Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    const/16 v13, 0xc

    const/16 v14, 0x13

    const-string v15, "DPAD_UP"

    invoke-direct {v12, v15, v13, v14}, Lorg/mozilla/gecko/AndroidGamepadManager$Button;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/mozilla/gecko/AndroidGamepadManager$Button;->DPAD_UP:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    new-instance v13, Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    const/16 v14, 0xd

    const/16 v15, 0x14

    move-object/from16 v16, v12

    const-string v12, "DPAD_DOWN"

    invoke-direct {v13, v12, v14, v15}, Lorg/mozilla/gecko/AndroidGamepadManager$Button;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lorg/mozilla/gecko/AndroidGamepadManager$Button;->DPAD_DOWN:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    new-instance v14, Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    const/16 v12, 0xe

    const/16 v15, 0x15

    move-object/from16 v17, v13

    const-string v13, "DPAD_LEFT"

    invoke-direct {v14, v13, v12, v15}, Lorg/mozilla/gecko/AndroidGamepadManager$Button;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lorg/mozilla/gecko/AndroidGamepadManager$Button;->DPAD_LEFT:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    new-instance v15, Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    const/16 v12, 0xf

    const/16 v13, 0x16

    move-object/from16 v18, v14

    const-string v14, "DPAD_RIGHT"

    invoke-direct {v15, v14, v12, v13}, Lorg/mozilla/gecko/AndroidGamepadManager$Button;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lorg/mozilla/gecko/AndroidGamepadManager$Button;->DPAD_RIGHT:Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    filled-new-array/range {v0 .. v15}, [Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/AndroidGamepadManager$Button;->$VALUES:[Lorg/mozilla/gecko/AndroidGamepadManager$Button;

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

    iput p3, p0, Lorg/mozilla/gecko/AndroidGamepadManager$Button;->button:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/gecko/AndroidGamepadManager$Button;
    .locals 1

    const-class v0, Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/gecko/AndroidGamepadManager$Button;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/AndroidGamepadManager$Button;->$VALUES:[Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    invoke-virtual {v0}, [Lorg/mozilla/gecko/AndroidGamepadManager$Button;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/gecko/AndroidGamepadManager$Button;

    return-object v0
.end method
