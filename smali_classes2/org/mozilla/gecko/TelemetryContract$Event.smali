.class public final enum Lorg/mozilla/gecko/TelemetryContract$Event;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/TelemetryContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/gecko/TelemetryContract$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum ACTION:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum CANCEL:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum CAST:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum EDIT:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum LAUNCH:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum LOAD_URL:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum LOCALE_BROWSER_RESET:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum LOCALE_BROWSER_SELECTED:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum LOCALE_BROWSER_UNSELECTED:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum NETERROR:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum PANEL_HIDE:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum PANEL_MOVE:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum PANEL_REMOVE:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum PANEL_SET_DEFAULT:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum PANEL_SHOW:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum PIN:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum POLICY_NOTIFICATION_SUCCESS:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum PWA:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum SANITIZE:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum SAVE:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum SEARCH:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum SEARCH_REMOVE:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum SEARCH_RESTORE_DEFAULTS:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum SEARCH_SET_DEFAULT:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum SEARCH_WIDGET:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum SHARE:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum SHOW:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum UNDO:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum UNPIN:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum UNSAVE:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum _TEST1:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum _TEST2:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum _TEST3:Lorg/mozilla/gecko/TelemetryContract$Event;

.field public static final enum _TEST4:Lorg/mozilla/gecko/TelemetryContract$Event;


# instance fields
.field private final mString:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 38

    new-instance v1, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object v0, v1

    const/4 v2, 0x0

    const-string v3, "action.1"

    const-string v4, "ACTION"

    invoke-direct {v1, v4, v2, v3}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/mozilla/gecko/TelemetryContract$Event;->ACTION:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v2, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object v1, v2

    const/4 v3, 0x1

    const-string v4, "cancel.1"

    const-string v5, "CANCEL"

    invoke-direct {v2, v5, v3, v4}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/mozilla/gecko/TelemetryContract$Event;->CANCEL:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v3, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object v2, v3

    const/4 v4, 0x2

    const-string v5, "cast.1"

    const-string v6, "CAST"

    invoke-direct {v3, v6, v4, v5}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/mozilla/gecko/TelemetryContract$Event;->CAST:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v4, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object v3, v4

    const/4 v5, 0x3

    const-string v6, "edit.1"

    const-string v7, "EDIT"

    invoke-direct {v4, v7, v5, v6}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/mozilla/gecko/TelemetryContract$Event;->EDIT:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v5, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object v4, v5

    const/4 v6, 0x4

    const-string v7, "launch.1"

    const-string v8, "LAUNCH"

    invoke-direct {v5, v8, v6, v7}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/mozilla/gecko/TelemetryContract$Event;->LAUNCH:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v6, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object v5, v6

    const/4 v7, 0x5

    const-string v8, "loadurl.1"

    const-string v9, "LOAD_URL"

    invoke-direct {v6, v9, v7, v8}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/mozilla/gecko/TelemetryContract$Event;->LOAD_URL:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v7, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object v6, v7

    const/4 v8, 0x6

    const-string v9, "locale.browser.reset.1"

    const-string v10, "LOCALE_BROWSER_RESET"

    invoke-direct {v7, v10, v8, v9}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/mozilla/gecko/TelemetryContract$Event;->LOCALE_BROWSER_RESET:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v8, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object v7, v8

    const/4 v9, 0x7

    const-string v10, "locale.browser.selected.1"

    const-string v11, "LOCALE_BROWSER_SELECTED"

    invoke-direct {v8, v11, v9, v10}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/mozilla/gecko/TelemetryContract$Event;->LOCALE_BROWSER_SELECTED:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v9, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object v8, v9

    const/16 v10, 0x8

    const-string v11, "locale.browser.unselected.1"

    const-string v12, "LOCALE_BROWSER_UNSELECTED"

    invoke-direct {v9, v12, v10, v11}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/mozilla/gecko/TelemetryContract$Event;->LOCALE_BROWSER_UNSELECTED:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v10, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object v9, v10

    const/16 v11, 0x9

    const-string v12, "panel.hide.1"

    const-string v13, "PANEL_HIDE"

    invoke-direct {v10, v13, v11, v12}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/mozilla/gecko/TelemetryContract$Event;->PANEL_HIDE:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v11, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object v10, v11

    const/16 v12, 0xa

    const-string v13, "panel.move.1"

    const-string v14, "PANEL_MOVE"

    invoke-direct {v11, v14, v12, v13}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/mozilla/gecko/TelemetryContract$Event;->PANEL_MOVE:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v12, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object v11, v12

    const/16 v13, 0xb

    const-string v14, "panel.remove.1"

    const-string v15, "PANEL_REMOVE"

    invoke-direct {v12, v15, v13, v14}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/mozilla/gecko/TelemetryContract$Event;->PANEL_REMOVE:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v13, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object v12, v13

    const/16 v14, 0xc

    const-string v15, "panel.setdefault.1"

    move-object/from16 v34, v0

    const-string v0, "PANEL_SET_DEFAULT"

    invoke-direct {v13, v0, v14, v15}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/mozilla/gecko/TelemetryContract$Event;->PANEL_SET_DEFAULT:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object v13, v0

    const/16 v14, 0xd

    const-string v15, "panel.show.1"

    move-object/from16 v35, v1

    const-string v1, "PANEL_SHOW"

    invoke-direct {v0, v1, v14, v15}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Event;->PANEL_SHOW:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object v14, v0

    const/16 v1, 0xe

    const-string v15, "pin.1"

    move-object/from16 v36, v2

    const-string v2, "PIN"

    invoke-direct {v0, v2, v1, v15}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Event;->PIN:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object v15, v0

    const/16 v1, 0xf

    const-string v2, "policynotification.success.1"

    move-object/from16 v37, v3

    const-string v3, "POLICY_NOTIFICATION_SUCCESS"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Event;->POLICY_NOTIFICATION_SUCCESS:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const-string v2, "sanitize.1"

    const-string v3, "SANITIZE"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Event;->SANITIZE:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const-string v2, "save.1"

    const-string v3, "SAVE"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Event;->SAVE:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object/from16 v18, v0

    const/16 v1, 0x12

    const-string v2, "search.1"

    const-string v3, "SEARCH"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Event;->SEARCH:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object/from16 v19, v0

    const/16 v1, 0x13

    const-string v2, "search.remove.1"

    const-string v3, "SEARCH_REMOVE"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Event;->SEARCH_REMOVE:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object/from16 v20, v0

    const/16 v1, 0x14

    const-string v2, "search.restoredefaults.1"

    const-string v3, "SEARCH_RESTORE_DEFAULTS"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Event;->SEARCH_RESTORE_DEFAULTS:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const-string v2, "search.setdefault.1"

    const-string v3, "SEARCH_SET_DEFAULT"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Event;->SEARCH_SET_DEFAULT:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    const-string v2, "search.widget.1"

    const-string v3, "SEARCH_WIDGET"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Event;->SEARCH_WIDGET:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object/from16 v23, v0

    const/16 v1, 0x17

    const-string v2, "share.1"

    const-string v3, "SHARE"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Event;->SHARE:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object/from16 v24, v0

    const/16 v1, 0x18

    const-string v2, "show.1"

    const-string v3, "SHOW"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Event;->SHOW:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object/from16 v25, v0

    const/16 v1, 0x19

    const-string v2, "undo.1"

    const-string v3, "UNDO"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Event;->UNDO:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object/from16 v26, v0

    const/16 v1, 0x1a

    const-string v2, "unpin.1"

    const-string v3, "UNPIN"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Event;->UNPIN:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object/from16 v27, v0

    const/16 v1, 0x1b

    const-string v2, "unsave.1"

    const-string v3, "UNSAVE"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Event;->UNSAVE:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object/from16 v28, v0

    const/16 v1, 0x1c

    const-string v2, "neterror.1"

    const-string v3, "NETERROR"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Event;->NETERROR:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object/from16 v29, v0

    const/16 v1, 0x1d

    const-string v2, "pwa.1"

    const-string v3, "PWA"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Event;->PWA:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object/from16 v30, v0

    const/16 v1, 0x1e

    const-string v2, "_test_event_1.1"

    const-string v3, "_TEST1"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Event;->_TEST1:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object/from16 v31, v0

    const/16 v1, 0x1f

    const-string v2, "_test_event_2.1"

    const-string v3, "_TEST2"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Event;->_TEST2:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object/from16 v32, v0

    const/16 v1, 0x20

    const-string v2, "_test_event_3.1"

    const-string v3, "_TEST3"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Event;->_TEST3:Lorg/mozilla/gecko/TelemetryContract$Event;

    new-instance v0, Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object/from16 v33, v0

    const/16 v1, 0x21

    const-string v2, "_test_event_4.1"

    const-string v3, "_TEST4"

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/gecko/TelemetryContract$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Event;->_TEST4:Lorg/mozilla/gecko/TelemetryContract$Event;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    filled-new-array/range {v0 .. v33}, [Lorg/mozilla/gecko/TelemetryContract$Event;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/TelemetryContract$Event;->$VALUES:[Lorg/mozilla/gecko/TelemetryContract$Event;

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

    iput-object p3, p0, Lorg/mozilla/gecko/TelemetryContract$Event;->mString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/gecko/TelemetryContract$Event;
    .locals 1

    const-class v0, Lorg/mozilla/gecko/TelemetryContract$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/gecko/TelemetryContract$Event;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/gecko/TelemetryContract$Event;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/TelemetryContract$Event;->$VALUES:[Lorg/mozilla/gecko/TelemetryContract$Event;

    invoke-virtual {v0}, [Lorg/mozilla/gecko/TelemetryContract$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/gecko/TelemetryContract$Event;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/TelemetryContract$Event;->mString:Ljava/lang/String;

    return-object v0
.end method
