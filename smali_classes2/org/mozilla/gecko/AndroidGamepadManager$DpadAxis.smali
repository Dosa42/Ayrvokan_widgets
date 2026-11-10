.class final enum Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/AndroidGamepadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DpadAxis"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;

.field public static final enum LeftRight:Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;

.field public static final enum UpDown:Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;


# instance fields
.field public final axis:I

.field public final negativeButton:I

.field public final positiveButton:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v6, Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;

    const-string v1, "UpDown"

    const/4 v2, 0x0

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;->UpDown:Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;

    new-instance v0, Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;

    const-string v8, "LeftRight"

    const/4 v9, 0x1

    const/16 v10, 0xf

    const/4 v11, 0x2

    const/4 v12, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;->LeftRight:Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;

    filled-new-array {v6, v0}, [Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;->$VALUES:[Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;->axis:I

    iput p4, p0, Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;->negativeButton:I

    iput p5, p0, Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;->positiveButton:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;
    .locals 1

    const-class v0, Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;->$VALUES:[Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;

    invoke-virtual {v0}, [Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/gecko/AndroidGamepadManager$DpadAxis;

    return-object v0
.end method
