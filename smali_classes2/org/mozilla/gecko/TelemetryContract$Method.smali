.class public final enum Lorg/mozilla/gecko/TelemetryContract$Method;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/TelemetryContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/gecko/TelemetryContract$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum ACTIONBAR:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum BACK:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum BUTTON:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum CONTENT:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum CONTEXT_MENU:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum DIALOG:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum DOORHANGER:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum GRID_ITEM:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum HOMESCREEN:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum INTENT:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum LIST:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum LIST_ITEM:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum MENU:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum NONE:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum NOTIFICATION:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum PAGEACTION:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum PANEL:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum SERVICE:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum SETTINGS:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum SHARE_OVERLAY:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum SUGGESTION:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum SYSTEM:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum TOAST:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum WIDGET:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum _TEST1:Lorg/mozilla/gecko/TelemetryContract$Method;

.field public static final enum _TEST2:Lorg/mozilla/gecko/TelemetryContract$Method;


# instance fields
.field private final mString:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 30

    new-instance v1, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object v0, v1

    const/4 v2, 0x0

    const-string v3, "actionbar"

    const-string v4, "ACTIONBAR"

    invoke-direct {v1, v4, v2, v3}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/mozilla/gecko/TelemetryContract$Method;->ACTIONBAR:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v2, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object v1, v2

    const/4 v3, 0x1

    const-string v4, "back"

    const-string v5, "BACK"

    invoke-direct {v2, v5, v3, v4}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/mozilla/gecko/TelemetryContract$Method;->BACK:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v3, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object v2, v3

    const/4 v4, 0x2

    const-string v5, "button"

    const-string v6, "BUTTON"

    invoke-direct {v3, v6, v4, v5}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/mozilla/gecko/TelemetryContract$Method;->BUTTON:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v4, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object v3, v4

    const/4 v5, 0x3

    const-string v6, "content"

    const-string v7, "CONTENT"

    invoke-direct {v4, v7, v5, v6}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/mozilla/gecko/TelemetryContract$Method;->CONTENT:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v5, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object v4, v5

    const/4 v6, 0x4

    const-string v7, "contextmenu"

    const-string v8, "CONTEXT_MENU"

    invoke-direct {v5, v8, v6, v7}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/mozilla/gecko/TelemetryContract$Method;->CONTEXT_MENU:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v6, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object v5, v6

    const/4 v7, 0x5

    const-string v8, "dialog"

    const-string v9, "DIALOG"

    invoke-direct {v6, v9, v7, v8}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/mozilla/gecko/TelemetryContract$Method;->DIALOG:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v7, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object v6, v7

    const/4 v8, 0x6

    const-string v9, "doorhanger"

    const-string v10, "DOORHANGER"

    invoke-direct {v7, v10, v8, v9}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/mozilla/gecko/TelemetryContract$Method;->DOORHANGER:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v8, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object v7, v8

    const/4 v9, 0x7

    const-string v10, "griditem"

    const-string v11, "GRID_ITEM"

    invoke-direct {v8, v11, v9, v10}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/mozilla/gecko/TelemetryContract$Method;->GRID_ITEM:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v9, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object v8, v9

    const/16 v10, 0x8

    const-string v11, "intent"

    const-string v12, "INTENT"

    invoke-direct {v9, v12, v10, v11}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/mozilla/gecko/TelemetryContract$Method;->INTENT:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v10, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object v9, v10

    const/16 v11, 0x9

    const-string v12, "homescreen"

    const-string v13, "HOMESCREEN"

    invoke-direct {v10, v13, v11, v12}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/mozilla/gecko/TelemetryContract$Method;->HOMESCREEN:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v11, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object v10, v11

    const/16 v12, 0xa

    const-string v13, "list"

    const-string v14, "LIST"

    invoke-direct {v11, v14, v12, v13}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/mozilla/gecko/TelemetryContract$Method;->LIST:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v12, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object v11, v12

    const/16 v13, 0xb

    const-string v14, "listitem"

    const-string v15, "LIST_ITEM"

    invoke-direct {v12, v15, v13, v14}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/mozilla/gecko/TelemetryContract$Method;->LIST_ITEM:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v13, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object v12, v13

    const/16 v14, 0xc

    const-string v15, "menu"

    move-object/from16 v26, v0

    const-string v0, "MENU"

    invoke-direct {v13, v0, v14, v15}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/mozilla/gecko/TelemetryContract$Method;->MENU:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object v13, v0

    const/16 v14, 0xd

    const/4 v15, 0x0

    move-object/from16 v27, v1

    const-string v1, "NONE"

    invoke-direct {v0, v1, v14, v15}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Method;->NONE:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object v14, v0

    const/16 v1, 0xe

    const-string v15, "notification"

    move-object/from16 v28, v2

    const-string v2, "NOTIFICATION"

    invoke-direct {v0, v2, v1, v15}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Method;->NOTIFICATION:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object v15, v0

    const/16 v1, 0xf

    const-string v2, "pageaction"

    move-object/from16 v29, v3

    const-string v3, "PAGEACTION"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Method;->PAGEACTION:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const-string v2, "panel"

    const-string v3, "PANEL"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Method;->PANEL:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const-string v2, "service"

    const-string v3, "SERVICE"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Method;->SERVICE:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object/from16 v18, v0

    const/16 v1, 0x12

    const-string v2, "settings"

    const-string v3, "SETTINGS"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Method;->SETTINGS:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object/from16 v19, v0

    const/16 v1, 0x13

    const-string v2, "shareoverlay"

    const-string v3, "SHARE_OVERLAY"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Method;->SHARE_OVERLAY:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object/from16 v20, v0

    const/16 v1, 0x14

    const-string v2, "suggestion"

    const-string v3, "SUGGESTION"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Method;->SUGGESTION:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const-string v2, "system"

    const-string v3, "SYSTEM"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Method;->SYSTEM:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    const-string v2, "toast"

    const-string v3, "TOAST"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Method;->TOAST:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object/from16 v23, v0

    const/16 v1, 0x17

    const-string v2, "widget"

    const-string v3, "WIDGET"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Method;->WIDGET:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object/from16 v24, v0

    const/16 v1, 0x18

    const-string v2, "_test_method_1"

    const-string v3, "_TEST1"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Method;->_TEST1:Lorg/mozilla/gecko/TelemetryContract$Method;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object/from16 v25, v0

    const/16 v1, 0x19

    const-string v2, "_test_method_2"

    const-string v3, "_TEST2"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Method;->_TEST2:Lorg/mozilla/gecko/TelemetryContract$Method;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    filled-new-array/range {v0 .. v25}, [Lorg/mozilla/gecko/TelemetryContract$Method;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Method;->$VALUES:[Lorg/mozilla/gecko/TelemetryContract$Method;

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

    iput-object p3, p0, Lorg/mozilla/gecko/TelemetryContract$Method;->mString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/gecko/TelemetryContract$Method;
    .locals 1

    const-class v0, Lorg/mozilla/gecko/TelemetryContract$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/gecko/TelemetryContract$Method;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/gecko/TelemetryContract$Method;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/TelemetryContract$Method;->$VALUES:[Lorg/mozilla/gecko/TelemetryContract$Method;

    invoke-virtual {v0}, [Lorg/mozilla/gecko/TelemetryContract$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/gecko/TelemetryContract$Method;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/TelemetryContract$Method;->mString:Ljava/lang/String;

    return-object v0
.end method
