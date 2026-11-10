.class public Lorg/mozilla/geckoview/GeckoSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate;,
        Lorg/mozilla/geckoview/GeckoSession$MediaDelegate;,
        Lorg/mozilla/geckoview/GeckoSession$TextInputDelegate;,
        Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate;,
        Lorg/mozilla/geckoview/GeckoSession$ScrollDelegate;,
        Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;,
        Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;,
        Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;,
        Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;,
        Lorg/mozilla/geckoview/GeckoSession$WebResponseInfo;,
        Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate;,
        Lorg/mozilla/geckoview/GeckoSession$SessionState;,
        Lorg/mozilla/geckoview/GeckoSession$FinderResult;,
        Lorg/mozilla/geckoview/GeckoSession$Listener;,
        Lorg/mozilla/geckoview/GeckoSession$Window;,
        Lorg/mozilla/geckoview/GeckoSession$PermissionCallback;,
        Lorg/mozilla/geckoview/GeckoSession$Compositor;,
        Lorg/mozilla/geckoview/GeckoSession$State;
    }
.end annotation


# static fields
.field static final COMPOSITOR_CONTROLLER_OPEN:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mozilla/geckoview/GeckoSession;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final FINDER_DISPLAY_DIM_PAGE:I = 0x2

.field public static final FINDER_DISPLAY_DRAW_LINK_OUTLINE:I = 0x4

.field public static final FINDER_DISPLAY_HIGHLIGHT_ALL:I = 0x1

.field public static final FINDER_FIND_BACKWARDS:I = 0x1

.field public static final FINDER_FIND_LINKS_ONLY:I = 0x8

.field public static final FINDER_FIND_MATCH_CASE:I = 0x2

.field public static final FINDER_FIND_WHOLE_WORD:I = 0x4

.field static final FIRST_PAINT:I = 0x0

.field static final IS_COMPOSITOR_CONTROLLER_OPEN:I = 0x3

.field static final LAYERS_UPDATED:I = 0x1

.field public static final LOAD_FLAGS_ALLOW_POPUPS:I = 0x8

.field public static final LOAD_FLAGS_BYPASS_CACHE:I = 0x1

.field public static final LOAD_FLAGS_BYPASS_CLASSIFIER:I = 0x10

.field public static final LOAD_FLAGS_BYPASS_PROXY:I = 0x2

.field public static final LOAD_FLAGS_EXTERNAL:I = 0x4

.field public static final LOAD_FLAGS_FORCE_ALLOW_DATA_URI:I = 0x20

.field public static final LOAD_FLAGS_NONE:I = 0x0

.field public static final LOAD_FLAGS_REPLACE_HISTORY:I = 0x40

.field private static final LOGTAG:Ljava/lang/String; = "GeckoSession"

.field private static final WINDOW_CLOSE:I = 0x0

.field private static final WINDOW_OPEN:I = 0x1

.field private static final WINDOW_TRANSFER_IN:I = 0x3

.field private static final WINDOW_TRANSFER_OUT:I = 0x2


# instance fields
.field handlersCount:I

.field private mAccessibility:Lorg/mozilla/geckoview/SessionAccessibility;

.field private mAttachedCompositor:Z

.field private mAutofillSupport:Lorg/mozilla/geckoview/Autofill$Support;

.field private mClientHeight:I

.field private mClientTop:I

.field final mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

.field private mCompositorReady:Z

.field private final mContentBlockingHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoSessionHandler<",
            "Lorg/mozilla/geckoview/ContentBlocking$Delegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoSessionHandler<",
            "Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mController:Lorg/mozilla/geckoview/CompositorController;

.field private mDisplay:Lorg/mozilla/geckoview/GeckoDisplay;

.field private mDynamicToolbarMaxHeight:I

.field private final mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

.field private mFinder:Lorg/mozilla/geckoview/SessionFinder;

.field private mFixedBottomOffset:I

.field private mHeight:I

.field private final mHistoryHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoSessionHandler<",
            "Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Ljava/lang/String;

.field private mLeft:I

.field private final mListener:Lorg/mozilla/geckoview/GeckoSession$Listener;

.field private mMediaElements:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lorg/mozilla/geckoview/MediaElement;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoSessionHandler<",
            "Lorg/mozilla/geckoview/GeckoSession$MediaDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeQueue:Lorg/mozilla/gecko/NativeQueue;

.field private final mNavigationHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoSessionHandler<",
            "Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mOffsetX:I

.field private mOffsetY:I

.field private mOverscroll:Lorg/mozilla/geckoview/OverscrollEdgeEffect;

.field private mPanZoomController:Lorg/mozilla/geckoview/PanZoomController;

.field private final mPermissionHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoSessionHandler<",
            "Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessHangHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoSessionHandler<",
            "Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mProgressHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoSessionHandler<",
            "Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mPromptDelegate:Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;

.field private final mScrollHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoSessionHandler<",
            "Lorg/mozilla/geckoview/GeckoSession$ScrollDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectionActionDelegate:Lorg/mozilla/geckoview/GeckoSessionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoSessionHandler<",
            "Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionHandlers:[Lorg/mozilla/geckoview/GeckoSessionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/mozilla/geckoview/GeckoSessionHandler<",
            "*>;"
        }
    .end annotation
.end field

.field private mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

.field private mShouldPinOnScreen:Z

.field private mStateCache:Lorg/mozilla/geckoview/GeckoSession$SessionState;

.field private mSurface:Landroid/view/Surface;

.field private final mTextInput:Lorg/mozilla/geckoview/SessionTextInput;

.field private mTop:I

.field private mViewportLeft:F

.field private mViewportTop:F

.field private mViewportZoom:F

.field private final mWebExtensionController:Lorg/mozilla/geckoview/WebExtension$SessionController;

.field private mWidth:I

.field protected mWindow:Lorg/mozilla/geckoview/GeckoSession$Window;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/geckoview/GeckoSession$12;

    invoke-direct {v0}, Lorg/mozilla/geckoview/GeckoSession$12;-><init>()V

    sput-object v0, Lorg/mozilla/geckoview/GeckoSession;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoSession;-><init>(Lorg/mozilla/geckoview/GeckoSessionSettings;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSessionSettings;)V
    .locals 25

    .line 2
    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/gecko/NativeQueue;

    sget-object v1, Lorg/mozilla/geckoview/GeckoSession$State;->INITIAL:Lorg/mozilla/geckoview/GeckoSession$State;

    sget-object v2, Lorg/mozilla/geckoview/GeckoSession$State;->READY:Lorg/mozilla/geckoview/GeckoSession$State;

    invoke-direct {v0, v1, v2}, Lorg/mozilla/gecko/NativeQueue;-><init>(Lorg/mozilla/gecko/NativeQueue$State;Lorg/mozilla/gecko/NativeQueue$State;)V

    iput-object v0, v6, Lorg/mozilla/geckoview/GeckoSession;->mNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    new-instance v1, Lorg/mozilla/gecko/EventDispatcher;

    invoke-direct {v1, v0}, Lorg/mozilla/gecko/EventDispatcher;-><init>(Lorg/mozilla/gecko/NativeQueue;)V

    iput-object v1, v6, Lorg/mozilla/geckoview/GeckoSession;->mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    new-instance v1, Lorg/mozilla/geckoview/SessionTextInput;

    invoke-direct {v1, v6, v0}, Lorg/mozilla/geckoview/SessionTextInput;-><init>(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/gecko/NativeQueue;)V

    iput-object v1, v6, Lorg/mozilla/geckoview/GeckoSession;->mTextInput:Lorg/mozilla/geckoview/SessionTextInput;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lorg/mozilla/geckoview/GeckoSession;->mId:Ljava/lang/String;

    new-instance v0, Lorg/mozilla/geckoview/PanZoomController;

    invoke-direct {v0, v6}, Lorg/mozilla/geckoview/PanZoomController;-><init>(Lorg/mozilla/geckoview/GeckoSession;)V

    iput-object v0, v6, Lorg/mozilla/geckoview/GeckoSession;->mPanZoomController:Lorg/mozilla/geckoview/PanZoomController;

    const/4 v7, 0x0

    iput v7, v6, Lorg/mozilla/geckoview/GeckoSession;->mFixedBottomOffset:I

    iput v7, v6, Lorg/mozilla/geckoview/GeckoSession;->mDynamicToolbarMaxHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v6, Lorg/mozilla/geckoview/GeckoSession;->mViewportZoom:F

    new-instance v0, Lorg/mozilla/geckoview/GeckoSession$Compositor;

    invoke-direct {v0, v6}, Lorg/mozilla/geckoview/GeckoSession$Compositor;-><init>(Lorg/mozilla/geckoview/GeckoSession;)V

    iput-object v0, v6, Lorg/mozilla/geckoview/GeckoSession;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    new-instance v8, Lorg/mozilla/geckoview/GeckoSession$1;

    const-string v0, "GeckoView:OnVisited"

    const-string v1, "GeckoView:GetVisited"

    const-string v9, "GeckoView:StateUpdated"

    filled-new-array {v0, v1, v9}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeckoViewHistory"

    invoke-direct {v8, v6, v1, v6, v0}, Lorg/mozilla/geckoview/GeckoSession$1;-><init>(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V

    iput-object v8, v6, Lorg/mozilla/geckoview/GeckoSession;->mHistoryHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    new-instance v10, Lorg/mozilla/geckoview/GeckoSession$2;

    const-string v11, "GeckoView:ContentCrash"

    const-string v12, "GeckoView:ContentKill"

    const-string v13, "GeckoView:ContextMenu"

    const-string v14, "GeckoView:DOMMetaViewportFit"

    const-string v15, "GeckoView:DOMTitleChanged"

    const-string v16, "GeckoView:DOMWindowClose"

    const-string v17, "GeckoView:ExternalResponse"

    const-string v18, "GeckoView:FocusRequest"

    const-string v19, "GeckoView:FullScreenEnter"

    const-string v20, "GeckoView:FullScreenExit"

    const-string v21, "GeckoView:WebAppManifest"

    const-string v22, "GeckoView:FirstContentfulPaint"

    filled-new-array/range {v11 .. v22}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeckoViewContent"

    invoke-direct {v10, v6, v1, v6, v0}, Lorg/mozilla/geckoview/GeckoSession$2;-><init>(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V

    iput-object v10, v6, Lorg/mozilla/geckoview/GeckoSession;->mContentHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    new-instance v11, Lorg/mozilla/geckoview/GeckoSession$3;

    const-string v2, "GeckoViewNavigation"

    const-string v0, "GeckoView:LocationChange"

    const-string v1, "GeckoView:OnNewSession"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "GeckoView:OnLoadError"

    const-string v1, "GeckoView:OnLoadRequest"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/geckoview/GeckoSession$3;-><init>(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v11, v6, Lorg/mozilla/geckoview/GeckoSession;->mNavigationHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    new-instance v0, Lorg/mozilla/geckoview/GeckoSession$4;

    const-string v1, "GeckoView:HangReport"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeckoViewProcessHangMonitor"

    invoke-direct {v0, v6, v2, v6, v1}, Lorg/mozilla/geckoview/GeckoSession$4;-><init>(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V

    iput-object v0, v6, Lorg/mozilla/geckoview/GeckoSession;->mProcessHangHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    new-instance v1, Lorg/mozilla/geckoview/GeckoSession$5;

    const-string v2, "GeckoView:ProgressChanged"

    const-string v3, "GeckoView:SecurityChanged"

    const-string v4, "GeckoView:PageStart"

    const-string v5, "GeckoView:PageStop"

    filled-new-array {v4, v5, v2, v3, v9}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "GeckoViewProgress"

    invoke-direct {v1, v6, v3, v6, v2}, Lorg/mozilla/geckoview/GeckoSession$5;-><init>(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V

    iput-object v1, v6, Lorg/mozilla/geckoview/GeckoSession;->mProgressHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    new-instance v2, Lorg/mozilla/geckoview/GeckoSession$6;

    const-string v3, "GeckoView:ScrollChanged"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "GeckoViewScroll"

    invoke-direct {v2, v6, v4, v6, v3}, Lorg/mozilla/geckoview/GeckoSession$6;-><init>(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V

    iput-object v2, v6, Lorg/mozilla/geckoview/GeckoSession;->mScrollHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    new-instance v3, Lorg/mozilla/geckoview/GeckoSession$7;

    const-string v4, "GeckoView:ContentBlockingEvent"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "GeckoViewContentBlocking"

    invoke-direct {v3, v6, v5, v6, v4}, Lorg/mozilla/geckoview/GeckoSession$7;-><init>(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V

    iput-object v3, v6, Lorg/mozilla/geckoview/GeckoSession;->mContentBlockingHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    new-instance v4, Lorg/mozilla/geckoview/GeckoSession$8;

    const-string v5, "GeckoView:ContentPermission"

    const-string v9, "GeckoView:MediaPermission"

    const-string v12, "GeckoView:AndroidPermission"

    filled-new-array {v12, v5, v9}, [Ljava/lang/String;

    move-result-object v5

    const-string v9, "GeckoViewPermission"

    invoke-direct {v4, v6, v9, v6, v5}, Lorg/mozilla/geckoview/GeckoSession$8;-><init>(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V

    iput-object v4, v6, Lorg/mozilla/geckoview/GeckoSession;->mPermissionHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    new-instance v5, Lorg/mozilla/geckoview/GeckoSession$9;

    const-string v9, "GeckoView:HideSelectionAction"

    const-string v12, "GeckoView:ShowSelectionAction"

    filled-new-array {v9, v12}, [Ljava/lang/String;

    move-result-object v9

    const-string v12, "GeckoViewSelectionAction"

    invoke-direct {v5, v6, v12, v6, v9}, Lorg/mozilla/geckoview/GeckoSession$9;-><init>(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V

    iput-object v5, v6, Lorg/mozilla/geckoview/GeckoSession;->mSelectionActionDelegate:Lorg/mozilla/geckoview/GeckoSessionHandler;

    new-instance v9, Landroid/util/LongSparseArray;

    invoke-direct {v9}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v9, v6, Lorg/mozilla/geckoview/GeckoSession;->mMediaElements:Landroid/util/LongSparseArray;

    new-instance v9, Lorg/mozilla/geckoview/GeckoSession$10;

    const-string v12, "GeckoView:MediaAdd"

    const-string v13, "GeckoView:MediaRemove"

    const-string v14, "GeckoView:MediaRemoveAll"

    const-string v15, "GeckoView:MediaReadyStateChanged"

    const-string v16, "GeckoView:MediaTimeChanged"

    const-string v17, "GeckoView:MediaPlaybackStateChanged"

    const-string v18, "GeckoView:MediaMetadataChanged"

    const-string v19, "GeckoView:MediaProgress"

    const-string v20, "GeckoView:MediaVolumeChanged"

    const-string v21, "GeckoView:MediaRateChanged"

    const-string v22, "GeckoView:MediaFullscreenChanged"

    const-string v23, "GeckoView:MediaError"

    const-string v24, "GeckoView:MediaRecordingStatusChanged"

    filled-new-array/range {v12 .. v24}, [Ljava/lang/String;

    move-result-object v12

    const-string v13, "GeckoViewMedia"

    invoke-direct {v9, v6, v13, v6, v12}, Lorg/mozilla/geckoview/GeckoSession$10;-><init>(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V

    iput-object v9, v6, Lorg/mozilla/geckoview/GeckoSession;->mMediaHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    const/16 v12, 0xa

    new-array v12, v12, [Lorg/mozilla/geckoview/GeckoSessionHandler;

    aput-object v10, v12, v7

    const/4 v7, 0x1

    aput-object v8, v12, v7

    const/4 v7, 0x2

    aput-object v9, v12, v7

    const/4 v7, 0x3

    aput-object v11, v12, v7

    const/4 v7, 0x4

    aput-object v4, v12, v7

    const/4 v4, 0x5

    aput-object v0, v12, v4

    const/4 v0, 0x6

    aput-object v1, v12, v0

    const/4 v0, 0x7

    aput-object v2, v12, v0

    const/16 v0, 0x8

    aput-object v5, v12, v0

    const/16 v0, 0x9

    aput-object v3, v12, v0

    iput-object v12, v6, Lorg/mozilla/geckoview/GeckoSession;->mSessionHandlers:[Lorg/mozilla/geckoview/GeckoSessionHandler;

    new-instance v0, Lorg/mozilla/geckoview/GeckoSession$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, v6, v1}, Lorg/mozilla/geckoview/GeckoSession$Listener;-><init>(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$1;)V

    iput-object v0, v6, Lorg/mozilla/geckoview/GeckoSession;->mListener:Lorg/mozilla/geckoview/GeckoSession$Listener;

    new-instance v2, Lorg/mozilla/geckoview/GeckoSession$SessionState;

    invoke-direct {v2, v1}, Lorg/mozilla/geckoview/GeckoSession$SessionState;-><init>(Lorg/mozilla/geckoview/GeckoSession$1;)V

    iput-object v2, v6, Lorg/mozilla/geckoview/GeckoSession;->mStateCache:Lorg/mozilla/geckoview/GeckoSession$SessionState;

    new-instance v1, Lorg/mozilla/geckoview/GeckoSessionSettings;

    move-object/from16 v2, p1

    invoke-direct {v1, v2, v6}, Lorg/mozilla/geckoview/GeckoSessionSettings;-><init>(Lorg/mozilla/geckoview/GeckoSessionSettings;Lorg/mozilla/geckoview/GeckoSession;)V

    iput-object v1, v6, Lorg/mozilla/geckoview/GeckoSession;->mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession$Listener;->registerListeners()V

    new-instance v0, Lorg/mozilla/geckoview/WebExtension$SessionController;

    invoke-direct {v0, v6}, Lorg/mozilla/geckoview/WebExtension$SessionController;-><init>(Lorg/mozilla/geckoview/GeckoSession;)V

    iput-object v0, v6, Lorg/mozilla/geckoview/GeckoSession;->mWebExtensionController:Lorg/mozilla/geckoview/WebExtension$SessionController;

    new-instance v0, Lorg/mozilla/geckoview/Autofill$Support;

    invoke-direct {v0, v6}, Lorg/mozilla/geckoview/Autofill$Support;-><init>(Lorg/mozilla/geckoview/GeckoSession;)V

    iput-object v0, v6, Lorg/mozilla/geckoview/GeckoSession;->mAutofillSupport:Lorg/mozilla/geckoview/Autofill$Support;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/Autofill$Support;->registerListeners()V

    sget-boolean v0, Lorg/mozilla/geckoview/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_1

    iget v0, v6, Lorg/mozilla/geckoview/GeckoSession;->handlersCount:I

    array-length v1, v12

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Add new handler to handlers list"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/GeckoSession;->lambda$null$2(Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/geckoview/GeckoSession$SessionState;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/geckoview/GeckoSession;->mStateCache:Lorg/mozilla/geckoview/GeckoSession$SessionState;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/geckoview/GeckoSessionHandler;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/geckoview/GeckoSession;->mNavigationHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p0}, Lorg/mozilla/geckoview/GeckoSession;->fixupWebAppManifest(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/gecko/EventDispatcher;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/geckoview/GeckoSession;->mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/mozilla/geckoview/GeckoSession;)Landroid/util/LongSparseArray;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/geckoview/GeckoSession;->mMediaElements:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method private additionalHeadersToStringArray(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static synthetic b(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;ILorg/mozilla/geckoview/GeckoSession;Ljava/util/Map;Lorg/mozilla/geckoview/AllowOrDeny;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/mozilla/geckoview/GeckoSession;->lambda$loadUri$0(Ljava/lang/String;ILorg/mozilla/geckoview/GeckoSession;Ljava/util/Map;Lorg/mozilla/geckoview/AllowOrDeny;)V

    return-void
.end method

.method public static synthetic c(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/geckoview/AllowOrDeny;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/GeckoSession;->lambda$null$1(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/geckoview/AllowOrDeny;)V

    return-void
.end method

.method public static createDataUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "data:%s,%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createDataUri([BLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, p1

    const-string p0, "data:%s;base64,%s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createInitData()Lorg/mozilla/gecko/util/GeckoBundle;
    .locals 7

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

    invoke-virtual {v1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->toBundle()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v1

    const-string v2, "settings"

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->putBundle(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    new-instance v1, Lorg/mozilla/gecko/util/GeckoBundle;

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoSession;->mSessionHandlers:[Lorg/mozilla/geckoview/GeckoSessionHandler;

    array-length v2, v2

    invoke-direct {v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoSession;->mSessionHandlers:[Lorg/mozilla/geckoview/GeckoSessionHandler;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lorg/mozilla/geckoview/GeckoSessionHandler;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/mozilla/geckoview/GeckoSessionHandler;->isEnabled()Z

    move-result v5

    invoke-virtual {v1, v6, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "modules"

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->putBundle(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-object v0
.end method

.method public static synthetic d(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/GeckoSession;->lambda$handlePromptEvent$6(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic e(Lorg/mozilla/geckoview/GeckoSession;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoSession;->lambda$setActive$4(Z)V

    return-void
.end method

.method public static synthetic f(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;Lorg/mozilla/geckoview/GeckoResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/geckoview/GeckoSession;->lambda$shouldLoadUri$3(Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;Lorg/mozilla/geckoview/GeckoResult;)V

    return-void
.end method

.method private static fixupManifestColor(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/geckoview/GeckoSession;->rgbaToArgb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private static fixupWebAppManifest(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    :try_start_0
    const-string v0, "theme_color"

    invoke-static {p0, v0}, Lorg/mozilla/geckoview/GeckoSession;->fixupManifestColor(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "background_color"

    invoke-static {p0, v0}, Lorg/mozilla/geckoview/GeckoSession;->fixupManifestColor(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public static synthetic g(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/GeckoSession;->lambda$handlePromptEvent$5(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;)V

    return-void
.end method

.method private getAutofillSupport()Lorg/mozilla/geckoview/Autofill$Support;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mAutofillSupport:Lorg/mozilla/geckoview/Autofill$Support;

    return-object v0
.end method

.method private getCompositorFromNative()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
        stubName = "GetCompositor"
    .end annotation

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mCompositorReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getDefaultUserAgent()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/BuildConfig;->USER_AGENT_GECKOVIEW_MOBILE:Ljava/lang/String;

    return-object v0
.end method

.method public static handlePromptEvent(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/geckoview/GeckoSession;->getPromptDelegate()Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-interface {v2, v4}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v5, "type"

    invoke-virtual {v1, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mode"

    invoke-virtual {v1, v6}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "title"

    invoke-virtual {v1, v7}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "msg"

    invoke-virtual {v1, v7}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const-string v10, "text"

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, -0x1

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v8, "datetime"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v17, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v8, "beforeUnload"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v17, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v8, "share"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v17, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v8, "popup"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v17, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v8, "color"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v17, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v8, "alert"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_0

    :cond_6
    const/16 v17, 0x7

    goto :goto_0

    :sswitch_6
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_0

    :cond_7
    const/16 v17, 0x6

    goto :goto_0

    :sswitch_7
    const-string v8, "file"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_0

    :cond_8
    const/16 v17, 0x5

    goto :goto_0

    :sswitch_8
    const-string v8, "auth"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_0

    :cond_9
    const/16 v17, 0x4

    goto :goto_0

    :sswitch_9
    const-string v8, "Autocomplete:Select:Login"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_0

    :cond_a
    const/16 v17, 0x3

    goto :goto_0

    :sswitch_a
    const-string v8, "choice"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_0

    :cond_b
    move/from16 v17, v14

    goto :goto_0

    :sswitch_b
    const-string v8, "button"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_0

    :cond_c
    move/from16 v17, v16

    goto :goto_0

    :sswitch_c
    const-string v8, "Autocomplete:Save:Login"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_0

    :cond_d
    move/from16 v17, v15

    :goto_0
    const-string v5, "multiple"

    const-string v8, "single"

    const-string v11, "options"

    const-string v12, "Invalid mode"

    const-string v13, "value"

    packed-switch v17, :pswitch_data_0

    const-string v0, "Invalid type"

    invoke-interface {v2, v0}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    const-string v5, "date"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move/from16 v10, v16

    goto :goto_1

    :cond_e
    const-string v5, "month"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    move v10, v14

    goto :goto_1

    :cond_f
    const-string v5, "week"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v10, 0x3

    goto :goto_1

    :cond_10
    const-string v5, "time"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v10, 0x4

    goto :goto_1

    :cond_11
    const-string v5, "datetime-local"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v10, 0x5

    :goto_1
    invoke-virtual {v1, v13}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v5, "min"

    invoke-virtual {v1, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v5, "max"

    invoke-virtual {v1, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v1, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$DateTimePrompt;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$DateTimePrompt;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0, v1}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;->onDateTimePrompt(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$DateTimePrompt;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    goto/16 :goto_9

    :cond_12
    invoke-interface {v2, v12}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    new-instance v1, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BeforeUnloadPrompt;

    invoke-direct {v1}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BeforeUnloadPrompt;-><init>()V

    invoke-interface {v3, v0, v1}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;->onBeforeUnloadPrompt(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BeforeUnloadPrompt;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    goto/16 :goto_9

    :pswitch_2
    invoke-virtual {v1, v10}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "uri"

    invoke-virtual {v1, v6}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$SharePrompt;

    invoke-direct {v6, v9, v5, v1}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$SharePrompt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0, v6}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;->onSharePrompt(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$SharePrompt;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    goto/16 :goto_9

    :pswitch_3
    const-string v5, "targetUri"

    invoke-virtual {v1, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PopupPrompt;

    invoke-direct {v5, v1}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PopupPrompt;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v0, v5}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;->onPopupPrompt(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PopupPrompt;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    goto/16 :goto_9

    :pswitch_4
    invoke-virtual {v1, v13}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ColorPrompt;

    invoke-direct {v5, v9, v1}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ColorPrompt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0, v5}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;->onColorPrompt(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ColorPrompt;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    goto/16 :goto_9

    :pswitch_5
    new-instance v1, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AlertPrompt;

    invoke-direct {v1, v9, v7}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AlertPrompt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0, v1}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;->onAlertPrompt(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AlertPrompt;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    goto/16 :goto_9

    :pswitch_6
    invoke-virtual {v1, v13}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$TextPrompt;

    invoke-direct {v5, v9, v7, v1}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$TextPrompt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0, v5}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;->onTextPrompt(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$TextPrompt;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    goto/16 :goto_9

    :pswitch_7
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    move/from16 v14, v16

    goto :goto_2

    :cond_13
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    :goto_2
    const-string v5, "mimeTypes"

    invoke-virtual {v1, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "capture"

    invoke-virtual {v1, v6}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v6, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$FilePrompt;

    invoke-direct {v6, v9, v14, v1, v5}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$FilePrompt;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    invoke-interface {v3, v0, v6}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;->onFilePrompt(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$FilePrompt;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    goto/16 :goto_9

    :cond_14
    invoke-interface {v2, v12}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-void

    :pswitch_8
    new-instance v5, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt$AuthOptions;

    invoke-virtual {v1, v11}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v1

    invoke-direct {v5, v1}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt$AuthOptions;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    new-instance v1, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt;

    invoke-direct {v1, v9, v7, v5}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt$AuthOptions;)V

    invoke-interface {v3, v0, v1}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;->onAuthPrompt(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    goto/16 :goto_9

    :pswitch_9
    invoke-virtual {v1, v11}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundleArray(Ljava/lang/String;)[Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v1

    if-nez v1, :cond_15

    goto/16 :goto_7

    :cond_15
    array-length v5, v1

    new-array v6, v5, [Lorg/mozilla/geckoview/Autocomplete$LoginSelectOption;

    :goto_3
    if-ge v15, v5, :cond_16

    aget-object v7, v1, v15

    invoke-static {v7}, Lorg/mozilla/geckoview/Autocomplete$LoginSelectOption;->fromBundle(Lorg/mozilla/gecko/util/GeckoBundle;)Lorg/mozilla/geckoview/Autocomplete$LoginSelectOption;

    move-result-object v7

    aput-object v7, v6, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_16
    new-instance v1, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AutocompleteRequest;

    invoke-direct {v1, v6}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AutocompleteRequest;-><init>([Lorg/mozilla/geckoview/Autocomplete$Option;)V

    invoke-interface {v3, v0, v1}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;->onLoginSelect(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AutocompleteRequest;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    goto/16 :goto_9

    :pswitch_a
    const-string v10, "menu"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    move/from16 v13, v16

    goto :goto_4

    :cond_17
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    move v13, v14

    goto :goto_4

    :cond_18
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v13, 0x3

    :goto_4
    const-string v5, "choices"

    invoke-virtual {v1, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundleArray(Ljava/lang/String;)[Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v1

    if-eqz v1, :cond_1a

    array-length v5, v1

    if-nez v5, :cond_19

    goto :goto_6

    :cond_19
    array-length v5, v1

    new-array v5, v5, [Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;

    :goto_5
    array-length v6, v1

    if-ge v15, v6, :cond_1b

    new-instance v6, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;

    aget-object v8, v1, v15

    invoke-direct {v6, v8}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    aput-object v6, v5, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_1a
    :goto_6
    new-array v5, v15, [Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;

    :cond_1b
    new-instance v1, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt;

    invoke-direct {v1, v9, v7, v13, v5}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt;-><init>(Ljava/lang/String;Ljava/lang/String;I[Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;)V

    invoke-interface {v3, v0, v1}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;->onChoicePrompt(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    goto :goto_9

    :cond_1c
    invoke-interface {v2, v12}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-void

    :pswitch_b
    new-instance v1, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ButtonPrompt;

    invoke-direct {v1, v9, v7}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ButtonPrompt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0, v1}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;->onButtonPrompt(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ButtonPrompt;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    goto :goto_9

    :pswitch_c
    const-string v5, "hint"

    invoke-virtual {v1, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "logins"

    invoke-virtual {v1, v6}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundleArray(Ljava/lang/String;)[Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v1

    if-nez v1, :cond_1d

    :goto_7
    move-object v0, v4

    goto :goto_9

    :cond_1d
    array-length v6, v1

    new-array v7, v6, [Lorg/mozilla/geckoview/Autocomplete$LoginSaveOption;

    :goto_8
    if-ge v15, v6, :cond_1e

    new-instance v8, Lorg/mozilla/geckoview/Autocomplete$LoginSaveOption;

    new-instance v9, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;

    aget-object v10, v1, v15

    invoke-direct {v9, v10}, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    invoke-direct {v8, v9, v5}, Lorg/mozilla/geckoview/Autocomplete$LoginSaveOption;-><init>(Lorg/mozilla/geckoview/Autocomplete$LoginEntry;I)V

    aput-object v8, v7, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_1e
    new-instance v1, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AutocompleteRequest;

    invoke-direct {v1, v7}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AutocompleteRequest;-><init>([Lorg/mozilla/geckoview/Autocomplete$Option;)V

    invoke-interface {v3, v0, v1}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;->onLoginSave(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AutocompleteRequest;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    :goto_9
    if-nez v0, :cond_1f

    invoke-interface {v2, v4}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    goto :goto_a

    :cond_1f
    new-instance v1, Lorg/mozilla/geckoview/a;

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3}, Lorg/mozilla/geckoview/a;-><init>(Lorg/mozilla/gecko/util/EventCallback;I)V

    new-instance v3, Lorg/mozilla/geckoview/a;

    const/16 v4, 0x12

    invoke-direct {v3, v2, v4}, Lorg/mozilla/geckoview/a;-><init>(Lorg/mozilla/gecko/util/EventCallback;I)V

    invoke-virtual {v0, v1, v3}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    :goto_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x56743a22 -> :sswitch_c
        -0x521dd8ce -> :sswitch_b
        -0x5122a25f -> :sswitch_a
        -0x367b0e63 -> :sswitch_9
        0x2ddda8 -> :sswitch_8
        0x2ff57c -> :sswitch_7
        0x36452d -> :sswitch_6
        0x589895c -> :sswitch_5
        0x5a72f63 -> :sswitch_4
        0x65e70ac -> :sswitch_3
        0x6854fdf -> :sswitch_2
        0x7932f5e -> :sswitch_1
        0x6ae9bb7b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$handlePromptEvent$5(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;->dispatch(Lorg/mozilla/gecko/util/EventCallback;)V

    return-void
.end method

.method private static synthetic lambda$handlePromptEvent$6(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "Failed to get prompt response."

    invoke-interface {p0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$loadUri$0(Ljava/lang/String;ILorg/mozilla/geckoview/GeckoSession;Ljava/util/Map;Lorg/mozilla/geckoview/AllowOrDeny;)V
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/AllowOrDeny;->DENY:Lorg/mozilla/geckoview/AllowOrDeny;

    if-ne p5, v0, :cond_0

    return-void

    :cond_0
    new-instance p5, Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-direct {p5}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>()V

    const-string v0, "uri"

    invoke-virtual {p5, v0, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "flags"

    invoke-virtual {p5, p1, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->putInt(Ljava/lang/String;I)V

    if-eqz p3, :cond_1

    const-string p1, "referrerSessionId"

    iget-object p2, p3, Lorg/mozilla/geckoview/GeckoSession;->mId:Ljava/lang/String;

    invoke-virtual {p5, p1, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    const-string p1, "headers"

    invoke-direct {p0, p4}, Lorg/mozilla/geckoview/GeckoSession;->additionalHeadersToStringArray(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->putStringArray(Ljava/lang/String;Ljava/util/Collection;)V

    :cond_2
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoSession;->mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    const-string p2, "GeckoView:LoadUri"

    invoke-virtual {p1, p2, p5}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method private static synthetic lambda$null$1(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/geckoview/AllowOrDeny;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$null$2(Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->completeExceptionally(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$setActive$4(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoSession;->getAutofillSupport()Lorg/mozilla/geckoview/Autofill$Support;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/Autofill$Support;->onActiveChanged(Z)V

    return-void
.end method

.method private synthetic lambda$shouldLoadUri$3(Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;Lorg/mozilla/geckoview/GeckoResult;)V
    .locals 2

    invoke-interface {p1, p0, p2}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;->onLoadRequest(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/mozilla/geckoview/AllowOrDeny;->ALLOW:Lorg/mozilla/geckoview/AllowOrDeny;

    invoke-virtual {p3, p1}, Lorg/mozilla/geckoview/GeckoResult;->complete(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/mozilla/geckoview/k;

    const/4 v0, 0x3

    invoke-direct {p2, p3, v0}, Lorg/mozilla/geckoview/k;-><init>(Lorg/mozilla/geckoview/GeckoResult;I)V

    new-instance v0, Lorg/mozilla/geckoview/k;

    const/4 v1, 0x4

    invoke-direct {v0, p3, v1}, Lorg/mozilla/geckoview/k;-><init>(Lorg/mozilla/geckoview/GeckoResult;I)V

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/geckoview/GeckoResult;->getOrAccept(Lorg/mozilla/geckoview/GeckoResult$Consumer;Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    :goto_0
    return-void
.end method

.method private onWindowChanged(IZ)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mTextInput:Lorg/mozilla/geckoview/SessionTextInput;

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mWindow:Lorg/mozilla/geckoview/GeckoSession$Window;

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/SessionTextInput;->onWindowChanged(Lorg/mozilla/geckoview/GeckoSession$Window;)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    :cond_2
    if-nez p2, :cond_3

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoSession;->getAutofillSupport()Lorg/mozilla/geckoview/Autofill$Support;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/geckoview/Autofill$Support;->clear()V

    :cond_3
    return-void
.end method

.method private static rgbaToArgb(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid color format"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private shouldLoadUri(Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/AllowOrDeny;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mNavigationHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSessionHandler;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;

    if-nez v3, :cond_0

    sget-object p1, Lorg/mozilla/geckoview/AllowOrDeny;->ALLOW:Lorg/mozilla/geckoview/AllowOrDeny;

    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/mozilla/geckoview/GeckoResult;

    invoke-direct {v0}, Lorg/mozilla/geckoview/GeckoResult;-><init>()V

    new-instance v7, Ln0/a;

    const/4 v6, 0x2

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Ln0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v7}, Lorg/mozilla/gecko/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private transferFrom(Lorg/mozilla/geckoview/GeckoSession$Window;Lorg/mozilla/geckoview/GeckoSessionSettings;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/mozilla/geckoview/GeckoSession;->onWindowChanged(IZ)V

    :cond_0
    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession;->mWindow:Lorg/mozilla/geckoview/GeckoSession$Window;

    new-instance p1, Lorg/mozilla/geckoview/GeckoSessionSettings;

    invoke-direct {p1, p2, p0}, Lorg/mozilla/geckoview/GeckoSessionSettings;-><init>(Lorg/mozilla/geckoview/GeckoSessionSettings;Lorg/mozilla/geckoview/GeckoSession;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession;->mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

    iput-object p3, p0, Lorg/mozilla/geckoview/GeckoSession;->mId:Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mWindow:Lorg/mozilla/geckoview/GeckoSession$Window;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lorg/mozilla/geckoview/GeckoSession;->mNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    iget-object v4, p0, Lorg/mozilla/geckoview/GeckoSession;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    iget-object v5, p0, Lorg/mozilla/geckoview/GeckoSession;->mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoSession;->mAccessibility:Lorg/mozilla/geckoview/SessionAccessibility;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/mozilla/geckoview/SessionAccessibility;->nativeProvider:Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    move-object v6, p1

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoSession;->createInitData()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v7

    move-object v2, p0

    invoke-virtual/range {v1 .. v7}, Lorg/mozilla/geckoview/GeckoSession$Window;->transfer(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/gecko/NativeQueue;Lorg/mozilla/geckoview/GeckoSession$Compositor;Lorg/mozilla/gecko/EventDispatcher;Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;Lorg/mozilla/gecko/util/GeckoBundle;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lorg/mozilla/geckoview/GeckoSession;->onWindowChanged(IZ)V

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoSession;->mWebExtensionController:Lorg/mozilla/geckoview/WebExtension$SessionController;

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession;->mWindow:Lorg/mozilla/geckoview/GeckoSession$Window;

    iget-object p2, p2, Lorg/mozilla/geckoview/GeckoSession$Window;->runtime:Lorg/mozilla/geckoview/GeckoRuntime;

    invoke-virtual {p1, p2}, Lorg/mozilla/geckoview/WebExtension$SessionController;->setRuntime(Lorg/mozilla/geckoview/GeckoRuntime;)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Session is open"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public declared-synchronized abandonWindow()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mWindow:Lorg/mozilla/geckoview/GeckoSession$Window;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    :try_start_1
    invoke-direct {p0, v1, v0}, Lorg/mozilla/geckoview/GeckoSession;->onWindowChanged(IZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mWindow:Lorg/mozilla/geckoview/GeckoSession$Window;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lorg/mozilla/geckoview/GeckoSession;->onWindowChanged(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public acquireDisplay()Lorg/mozilla/geckoview/GeckoDisplay;
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mDisplay:Lorg/mozilla/geckoview/GeckoDisplay;

    if-nez v0, :cond_0

    new-instance v0, Lorg/mozilla/geckoview/GeckoDisplay;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/GeckoDisplay;-><init>(Lorg/mozilla/geckoview/GeckoSession;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mDisplay:Lorg/mozilla/geckoview/GeckoDisplay;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Display already acquired"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public autofill(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoSession;->getAutofillSupport()Lorg/mozilla/geckoview/Autofill$Support;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/Autofill$Support;->autofill(Landroid/util/SparseArray;)V

    return-void
.end method

.method public close()V
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/mozilla/geckoview/GeckoSession;->onWindowChanged(IZ)V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mWindow:Lorg/mozilla/geckoview/GeckoSession$Window;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession$Window;->close()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mWindow:Lorg/mozilla/geckoview/GeckoSession$Window;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession$Window;->disposeNative()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mWindow:Lorg/mozilla/geckoview/GeckoSession$Window;

    invoke-direct {p0, v1, v1}, Lorg/mozilla/geckoview/GeckoSession;->onWindowChanged(IZ)V

    return-void
.end method

.method public describeContents()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mId:Ljava/lang/String;

    check-cast p1, Lorg/mozilla/geckoview/GeckoSession;

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoSession;->mId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public exitFullScreen()V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    const-string v1, "GeckoViewContent:ExitFullScreen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public getAccessibility()Lorg/mozilla/geckoview/SessionAccessibility;
    .locals 4

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mAccessibility:Lorg/mozilla/geckoview/SessionAccessibility;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/mozilla/geckoview/SessionAccessibility;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/SessionAccessibility;-><init>(Lorg/mozilla/geckoview/GeckoSession;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mAccessibility:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mWindow:Lorg/mozilla/geckoview/GeckoSession$Window;

    if-eqz v0, :cond_2

    sget-object v0, Lorg/mozilla/gecko/GeckoThread$State;->PROFILE_READY:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mWindow:Lorg/mozilla/geckoview/GeckoSession$Window;

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mAccessibility:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v1, v1, Lorg/mozilla/geckoview/SessionAccessibility;->nativeProvider:Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoSession$Window;->attachAccessibility(Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mWindow:Lorg/mozilla/geckoview/GeckoSession$Window;

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoSession;->mAccessibility:Lorg/mozilla/geckoview/SessionAccessibility;

    iget-object v2, v2, Lorg/mozilla/geckoview/SessionAccessibility;->nativeProvider:Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

    const-class v3, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "attachAccessibility"

    invoke-static {v0, v1, v3, v2}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCallUntil(Lorg/mozilla/gecko/GeckoThread$State;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mAccessibility:Lorg/mozilla/geckoview/SessionAccessibility;

    return-object v0
.end method

.method public getAutofillDelegate()Lorg/mozilla/geckoview/Autofill$Delegate;
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoSession;->getAutofillSupport()Lorg/mozilla/geckoview/Autofill$Support;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/Autofill$Support;->getDelegate()Lorg/mozilla/geckoview/Autofill$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoSession;->getAutofillSupport()Lorg/mozilla/geckoview/Autofill$Support;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/Autofill$Support;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v0

    return-object v0
.end method

.method public getClientBounds(Landroid/graphics/RectF;)V
    .locals 3

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mViewportZoom:F

    div-float/2addr v0, v1

    iget v2, p0, Lorg/mozilla/geckoview/GeckoSession;->mClientHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public getClientToScreenMatrix(Landroid/graphics/Matrix;)V
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoSession;->getClientToSurfaceMatrix(Landroid/graphics/Matrix;)V

    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mLeft:I

    int-to-float v0, v0

    iget v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public getClientToSurfaceMatrix(Landroid/graphics/Matrix;)V
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mViewportZoom:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mClientTop:I

    iget v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mTop:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_0
    return-void
.end method

.method public getCompositorController()Lorg/mozilla/geckoview/CompositorController;
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mController:Lorg/mozilla/geckoview/CompositorController;

    if-nez v0, :cond_0

    new-instance v0, Lorg/mozilla/geckoview/CompositorController;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/CompositorController;-><init>(Lorg/mozilla/geckoview/GeckoSession;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mController:Lorg/mozilla/geckoview/CompositorController;

    iget-boolean v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mCompositorReady:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/CompositorController;->onCompositorReady()V

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mController:Lorg/mozilla/geckoview/CompositorController;

    return-object v0
.end method

.method public getContentBlockingDelegate()Lorg/mozilla/geckoview/ContentBlocking$Delegate;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mContentBlockingHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSessionHandler;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/ContentBlocking$Delegate;

    return-object v0
.end method

.method public getContentDelegate()Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mContentHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSessionHandler;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;

    return-object v0
.end method

.method public getDisplay()Lorg/mozilla/geckoview/GeckoDisplay;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mDisplay:Lorg/mozilla/geckoview/GeckoDisplay;

    return-object v0
.end method

.method public getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    return-object v0
.end method

.method public getFinder()Lorg/mozilla/geckoview/SessionFinder;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mFinder:Lorg/mozilla/geckoview/SessionFinder;

    if-nez v0, :cond_0

    new-instance v0, Lorg/mozilla/geckoview/SessionFinder;

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession;->getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mozilla/geckoview/SessionFinder;-><init>(Lorg/mozilla/gecko/EventDispatcher;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mFinder:Lorg/mozilla/geckoview/SessionFinder;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mFinder:Lorg/mozilla/geckoview/SessionFinder;

    return-object v0
.end method

.method public getHistoryDelegate()Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mHistoryHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSessionHandler;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaDelegate()Lorg/mozilla/geckoview/GeckoSession$MediaDelegate;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mMediaHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSessionHandler;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoSession$MediaDelegate;

    return-object v0
.end method

.method public getMediaElements()Landroid/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "Lorg/mozilla/geckoview/MediaElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mMediaElements:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method public getNavigationDelegate()Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mNavigationHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSessionHandler;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;

    return-object v0
.end method

.method public getOverscrollEdgeEffect()Lorg/mozilla/geckoview/OverscrollEdgeEffect;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mOverscroll:Lorg/mozilla/geckoview/OverscrollEdgeEffect;

    if-nez v0, :cond_0

    new-instance v0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/OverscrollEdgeEffect;-><init>(Lorg/mozilla/geckoview/GeckoSession;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mOverscroll:Lorg/mozilla/geckoview/OverscrollEdgeEffect;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mOverscroll:Lorg/mozilla/geckoview/OverscrollEdgeEffect;

    return-object v0
.end method

.method public getPageToScreenMatrix(Landroid/graphics/Matrix;)V
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoSession;->getPageToSurfaceMatrix(Landroid/graphics/Matrix;)V

    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mLeft:I

    int-to-float v0, v0

    iget v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public getPageToSurfaceMatrix(Landroid/graphics/Matrix;)V
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoSession;->getClientToSurfaceMatrix(Landroid/graphics/Matrix;)V

    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mViewportLeft:F

    neg-float v0, v0

    iget v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mViewportTop:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public getPanZoomController()Lorg/mozilla/geckoview/PanZoomController;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mPanZoomController:Lorg/mozilla/geckoview/PanZoomController;

    return-object v0
.end method

.method public getPermissionDelegate()Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mPermissionHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSessionHandler;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate;

    return-object v0
.end method

.method public getProgressDelegate()Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mProgressHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSessionHandler;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate;

    return-object v0
.end method

.method public getPromptDelegate()Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mPromptDelegate:Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;

    return-object v0
.end method

.method public getRuntime()Lorg/mozilla/geckoview/GeckoRuntime;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mWindow:Lorg/mozilla/geckoview/GeckoSession$Window;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoSession$Window;->runtime:Lorg/mozilla/geckoview/GeckoRuntime;

    return-object v0
.end method

.method public getScrollDelegate()Lorg/mozilla/geckoview/GeckoSession$ScrollDelegate;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mScrollHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSessionHandler;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoSession$ScrollDelegate;

    return-object v0
.end method

.method public getSelectionActionDelegate()Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mSelectionActionDelegate:Lorg/mozilla/geckoview/GeckoSessionHandler;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSessionHandler;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;

    return-object v0
.end method

.method public getSettings()Lorg/mozilla/geckoview/GeckoSessionSettings;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

    return-object v0
.end method

.method public getSurfaceBounds(Landroid/graphics/Rect;)V
    .locals 4

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mClientTop:I

    iget v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mWidth:I

    iget v2, p0, Lorg/mozilla/geckoview/GeckoSession;->mHeight:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getTextInput()Lorg/mozilla/geckoview/SessionTextInput;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mTextInput:Lorg/mozilla/geckoview/SessionTextInput;

    return-object v0
.end method

.method public getUserAgent()Lorg/mozilla/geckoview/GeckoResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/mozilla/geckoview/GeckoSession$11;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/GeckoSession$11;-><init>(Lorg/mozilla/geckoview/GeckoSession;)V

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    const-string v2, "GeckoView:GetUserAgent"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    return-object v0
.end method

.method public getWebExtensionController()Lorg/mozilla/geckoview/WebExtension$SessionController;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mWebExtensionController:Lorg/mozilla/geckoview/WebExtension$SessionController;

    return-object v0
.end method

.method public goBack()V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    const-string v1, "GeckoView:GoBack"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public goForward()V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    const-string v1, "GeckoView:GoForward"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public gotoHistoryIndex(I)V
    .locals 2

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v1, "index"

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoSession;->mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    const-string v1, "GeckoView:GotoHistoryIndex"

    invoke-virtual {p1, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public handleCompositorMessage(I)V
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession;->isCompositorReady()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lorg/mozilla/geckoview/d;

    invoke-direct {p1, p0, v0}, Lorg/mozilla/geckoview/d;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1}, Lorg/mozilla/gecko/util/ThreadUtils;->postToUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoSession;->mController:Lorg/mozilla/geckoview/CompositorController;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/mozilla/geckoview/CompositorController;->notifyDrawCallbacks()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoSession;->mController:Lorg/mozilla/geckoview/CompositorController;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/mozilla/geckoview/CompositorController;->onFirstPaint()V

    :cond_4
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoSession;->mContentHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSessionHandler;->getDelegate()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;->onFirstComposite(Lorg/mozilla/geckoview/GeckoSession;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCompositorReady()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mCompositorReady:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mWindow:Lorg/mozilla/geckoview/GeckoSession$Window;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    invoke-virtual {v0}, Lorg/mozilla/gecko/NativeQueue;->isReady()Z

    move-result v0

    return v0
.end method

.method public loadData([BLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lorg/mozilla/geckoview/GeckoSession;->createDataUri([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/16 v0, 0x20

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/geckoview/GeckoSession;->loadUri(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "data cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lorg/mozilla/geckoview/GeckoSession;->createDataUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/geckoview/GeckoSession;->loadUri(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "data cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadUri(Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v0}, Lorg/mozilla/geckoview/GeckoSession;->loadUri(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;ILjava/util/Map;)V

    return-void
.end method

.method public loadUri(Landroid/net/Uri;I)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v0}, Lorg/mozilla/geckoview/GeckoSession;->loadUri(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;ILjava/util/Map;)V

    return-void
.end method

.method public loadUri(Landroid/net/Uri;Landroid/net/Uri;I)V
    .locals 1

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/mozilla/geckoview/GeckoSession;->loadUri(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public loadUri(Landroid/net/Uri;Landroid/net/Uri;ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/geckoview/GeckoSession;->loadUri(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public loadUri(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/mozilla/geckoview/GeckoSession;->loadUri(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;ILjava/util/Map;)V

    return-void
.end method

.method public loadUri(Ljava/lang/String;)V
    .locals 2

    .line 6
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v0}, Lorg/mozilla/geckoview/GeckoSession;->loadUri(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;ILjava/util/Map;)V

    return-void
.end method

.method public loadUri(Ljava/lang/String;I)V
    .locals 1

    .line 7
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v0}, Lorg/mozilla/geckoview/GeckoSession;->loadUri(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;ILjava/util/Map;)V

    return-void
.end method

.method public loadUri(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 8
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/mozilla/geckoview/GeckoSession;->loadUri(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public loadUri(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 9
    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-direct {v0}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>()V

    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "flags"

    invoke-virtual {v0, p1, p3}, Lorg/mozilla/gecko/util/GeckoBundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    const-string p1, "referrerUri"

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    const-string p1, "headers"

    invoke-direct {p0, p4}, Lorg/mozilla/geckoview/GeckoSession;->additionalHeadersToStringArray(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->putStringArray(Ljava/lang/String;Ljava/util/Collection;)V

    :cond_1
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoSession;->mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    const-string p2, "GeckoView:LoadUri"

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public loadUri(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 10
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/mozilla/geckoview/GeckoSession;->loadUri(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;ILjava/util/Map;)V

    return-void
.end method

.method public loadUri(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;I)V
    .locals 1

    .line 11
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/mozilla/geckoview/GeckoSession;->loadUri(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;ILjava/util/Map;)V

    return-void
.end method

.method public loadUri(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;ILjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/mozilla/geckoview/GeckoSession;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 12
    new-instance v7, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    invoke-direct {p0, v7}, Lorg/mozilla/geckoview/GeckoSession;->shouldLoadUri(Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    new-instance v7, Lorg/mozilla/geckoview/i;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/geckoview/i;-><init>(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;ILorg/mozilla/geckoview/GeckoSession;Ljava/util/Map;)V

    invoke-virtual {v0, v7}, Lorg/mozilla/geckoview/GeckoResult;->getOrAccept(Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    return-void
.end method

.method public onCompositorAttached()V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mAttachedCompositor:Z

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mPanZoomController:Lorg/mozilla/geckoview/PanZoomController;

    iget-object v1, v1, Lorg/mozilla/geckoview/PanZoomController;->mNative:Lorg/mozilla/geckoview/PanZoomController$NativeProvider;

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoSession$Compositor;->attachNPZC(Lorg/mozilla/geckoview/PanZoomController$NativeProvider;)V

    iget-object v3, p0, Lorg/mozilla/geckoview/GeckoSession;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_0

    iget v4, p0, Lorg/mozilla/geckoview/GeckoSession;->mOffsetX:I

    iget v5, p0, Lorg/mozilla/geckoview/GeckoSession;->mOffsetY:I

    iget v6, p0, Lorg/mozilla/geckoview/GeckoSession;->mWidth:I

    iget v7, p0, Lorg/mozilla/geckoview/GeckoSession;->mHeight:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/mozilla/geckoview/GeckoSession;->onSurfaceChanged(Landroid/view/Surface;IIII)V

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoSession$Compositor;->sendToolbarAnimatorMessage(I)V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    iget v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mDynamicToolbarMaxHeight:I

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoSession$Compositor;->setDynamicToolbarMaxHeight(I)V

    return-void
.end method

.method public onCompositorDetached()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mController:Lorg/mozilla/geckoview/CompositorController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/CompositorController;->onCompositorDetached()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mAttachedCompositor:Z

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mCompositorReady:Z

    return-void
.end method

.method public onCompositorReady()V
    .locals 7

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mAttachedCompositor:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mCompositorReady:Z

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mController:Lorg/mozilla/geckoview/CompositorController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/geckoview/CompositorController;->onCompositorReady()V

    :cond_1
    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoSession;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_2

    iget v3, p0, Lorg/mozilla/geckoview/GeckoSession;->mOffsetX:I

    iget v4, p0, Lorg/mozilla/geckoview/GeckoSession;->mOffsetY:I

    iget v5, p0, Lorg/mozilla/geckoview/GeckoSession;->mWidth:I

    iget v6, p0, Lorg/mozilla/geckoview/GeckoSession;->mHeight:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/geckoview/GeckoSession;->onSurfaceChanged(Landroid/view/Surface;IIII)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mSurface:Landroid/view/Surface;

    :cond_2
    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mFixedBottomOffset:I

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    invoke-virtual {v1, v0}, Lorg/mozilla/geckoview/GeckoSession$Compositor;->setFixedBottomOffset(I)V

    :cond_3
    return-void
.end method

.method public onMetricsChanged(FFF)V
    .locals 0

    iput p1, p0, Lorg/mozilla/geckoview/GeckoSession;->mViewportLeft:F

    iput p2, p0, Lorg/mozilla/geckoview/GeckoSession;->mViewportTop:F

    iput p3, p0, Lorg/mozilla/geckoview/GeckoSession;->mViewportZoom:F

    return-void
.end method

.method public onSafeAreaInsetsChanged(IIII)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mAttachedCompositor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mozilla/geckoview/GeckoSession$Compositor;->onSafeAreaInsetsChanged(IIII)V

    :cond_0
    return-void
.end method

.method public onScreenOriginChanged(II)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mLeft:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mTop:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/mozilla/geckoview/GeckoSession;->mLeft:I

    iput p2, p0, Lorg/mozilla/geckoview/GeckoSession;->mTop:I

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession;->onWindowBoundsChanged()V

    return-void
.end method

.method public onSurfaceChanged(Landroid/view/Surface;IIII)V
    .locals 7

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iput p2, p0, Lorg/mozilla/geckoview/GeckoSession;->mOffsetX:I

    iput p3, p0, Lorg/mozilla/geckoview/GeckoSession;->mOffsetY:I

    iput p4, p0, Lorg/mozilla/geckoview/GeckoSession;->mWidth:I

    iput p5, p0, Lorg/mozilla/geckoview/GeckoSession;->mHeight:I

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mCompositorReady:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/geckoview/GeckoSession$Compositor;->syncResumeResizeCompositor(IIIILjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession;->onWindowBoundsChanged()V

    return-void

    :cond_0
    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession;->mSurface:Landroid/view/Surface;

    goto :goto_0
.end method

.method public onSurfaceDestroyed()V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mCompositorReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession$Compositor;->syncPauseCompositor()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method public onWindowBoundsChanged()V
    .locals 5

    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mHeight:I

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mDynamicToolbarMaxHeight:I

    if-eqz v1, :cond_0

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The maximum height of the dynamic toolbar ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/mozilla/geckoview/GeckoSession;->mDynamicToolbarMaxHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") should be smaller than GeckoView height ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/mozilla/geckoview/GeckoSession;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mTop:I

    const/4 v1, 0x0

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mClientTop:I

    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mHeight:I

    sub-int/2addr v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mClientHeight:I

    iget-boolean v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mAttachedCompositor:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    iget v2, p0, Lorg/mozilla/geckoview/GeckoSession;->mLeft:I

    iget v3, p0, Lorg/mozilla/geckoview/GeckoSession;->mClientTop:I

    iget v4, p0, Lorg/mozilla/geckoview/GeckoSession;->mWidth:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/mozilla/geckoview/GeckoSession$Compositor;->onBoundsChanged(IIII)V

    :cond_1
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mOverscroll:Lorg/mozilla/geckoview/OverscrollEdgeEffect;

    if-eqz v0, :cond_2

    iget v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mWidth:I

    iget v2, p0, Lorg/mozilla/geckoview/GeckoSession;->mClientHeight:I

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->setSize(II)V

    :cond_2
    return-void
.end method

.method public open(Lorg/mozilla/geckoview/GeckoRuntime;)V
    .locals 13

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSessionSettings;->getChromeUri()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSessionSettings;->getScreenId()I

    move-result v9

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSessionSettings;->getUsePrivateMode()Z

    move-result v10

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoRuntime;->getSettings()Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->getUseMultiprocess()Z

    move-result v11

    new-instance v0, Lorg/mozilla/geckoview/GeckoSession$Window;

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    invoke-direct {v0, p1, p0, v1}, Lorg/mozilla/geckoview/GeckoSession$Window;-><init>(Lorg/mozilla/geckoview/GeckoRuntime;Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/gecko/NativeQueue;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mWindow:Lorg/mozilla/geckoview/GeckoSession$Window;

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mWebExtensionController:Lorg/mozilla/geckoview/WebExtension$SessionController;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/WebExtension$SessionController;->setRuntime(Lorg/mozilla/geckoview/GeckoRuntime;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lorg/mozilla/geckoview/GeckoSession;->onWindowChanged(IZ)V

    sget-object v0, Lorg/mozilla/gecko/GeckoThread$State;->PROFILE_READY:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v12, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mWindow:Lorg/mozilla/geckoview/GeckoSession$Window;

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    iget-object v3, p0, Lorg/mozilla/geckoview/GeckoSession;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    iget-object v4, p0, Lorg/mozilla/geckoview/GeckoSession;->mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    iget-object v5, p0, Lorg/mozilla/geckoview/GeckoSession;->mAccessibility:Lorg/mozilla/geckoview/SessionAccessibility;

    if-eqz v5, :cond_0

    iget-object v2, v5, Lorg/mozilla/geckoview/SessionAccessibility;->nativeProvider:Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

    :cond_0
    move-object v5, v2

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoSession;->createInitData()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v6

    iget-object v7, p0, Lorg/mozilla/geckoview/GeckoSession;->mId:Ljava/lang/String;

    move-object v2, v0

    invoke-static/range {v1 .. v11}, Lorg/mozilla/geckoview/GeckoSession$Window;->open(Lorg/mozilla/geckoview/GeckoSession$Window;Lorg/mozilla/gecko/NativeQueue;Lorg/mozilla/geckoview/GeckoSession$Compositor;Lorg/mozilla/gecko/EventDispatcher;Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;Lorg/mozilla/gecko/util/GeckoBundle;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/Object;

    const-class v3, Lorg/mozilla/geckoview/GeckoSession$Window;

    aput-object v3, v1, v12

    iget-object v4, p0, Lorg/mozilla/geckoview/GeckoSession;->mWindow:Lorg/mozilla/geckoview/GeckoSession$Window;

    aput-object v4, v1, p1

    const/4 v4, 0x2

    const-class v5, Lorg/mozilla/gecko/NativeQueue;

    aput-object v5, v1, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lorg/mozilla/geckoview/GeckoSession;->mNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-class v5, Lorg/mozilla/geckoview/GeckoSession$Compositor;

    aput-object v5, v1, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lorg/mozilla/geckoview/GeckoSession;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-class v5, Lorg/mozilla/gecko/EventDispatcher;

    aput-object v5, v1, v4

    const/4 v4, 0x7

    iget-object v5, p0, Lorg/mozilla/geckoview/GeckoSession;->mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-class v5, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

    aput-object v5, v1, v4

    iget-object v4, p0, Lorg/mozilla/geckoview/GeckoSession;->mAccessibility:Lorg/mozilla/geckoview/SessionAccessibility;

    if-eqz v4, :cond_2

    iget-object v2, v4, Lorg/mozilla/geckoview/SessionAccessibility;->nativeProvider:Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

    :cond_2
    const/16 v4, 0x9

    aput-object v2, v1, v4

    const/16 v2, 0xa

    const-class v4, Lorg/mozilla/gecko/util/GeckoBundle;

    aput-object v4, v1, v2

    const/16 v2, 0xb

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoSession;->createInitData()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0xc

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v2

    const/16 v2, 0xd

    iget-object v5, p0, Lorg/mozilla/geckoview/GeckoSession;->mId:Ljava/lang/String;

    aput-object v5, v1, v2

    const/16 v2, 0xe

    aput-object v4, v1, v2

    const/16 v2, 0xf

    aput-object v8, v1, v2

    const/16 v2, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0x11

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0x12

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "open"

    invoke-static {v0, v3, v2, v1}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCallUntil(Lorg/mozilla/gecko/GeckoThread$State;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0, p1, v12}, Lorg/mozilla/geckoview/GeckoSession;->onWindowChanged(IZ)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Session is open"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public purgeHistory()V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    const-string v1, "GeckoView:PurgeHistory"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-class v2, Lorg/mozilla/geckoview/GeckoSession$Window;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lorg/mozilla/geckoview/GeckoSession$Window;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/mozilla/geckoview/GeckoSession$Window;

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoSessionSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, v0, p1}, Lorg/mozilla/geckoview/GeckoSession;->transferFrom(Lorg/mozilla/geckoview/GeckoSession$Window;Lorg/mozilla/geckoview/GeckoSessionSettings;Ljava/lang/String;)V

    return-void
.end method

.method public releaseDisplay(Lorg/mozilla/geckoview/GeckoDisplay;)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mDisplay:Lorg/mozilla/geckoview/GeckoDisplay;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession;->mDisplay:Lorg/mozilla/geckoview/GeckoDisplay;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Display not attached"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reload()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/GeckoSession;->reload(I)V

    return-void
.end method

.method public reload(I)V
    .locals 2

    .line 2
    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-direct {v0}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>()V

    const-string v1, "flags"

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoSession;->mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    const-string v1, "GeckoView:Reload"

    invoke-virtual {p1, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public restoreState(Lorg/mozilla/geckoview/GeckoSession$SessionState;)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    const-string v1, "GeckoView:RestoreState"

    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoSession$SessionState;->access$1100(Lorg/mozilla/geckoview/GeckoSession$SessionState;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public setActive(Z)V
    .locals 3

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v1, "active"

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSession;->mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    const-string v2, "GeckoView:SetActive"

    invoke-virtual {v1, v2, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    const-string v1, "GeckoView:FlushSessionState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    :cond_0
    new-instance v0, Lw1/d;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lw1/d;-><init>(Ljava/lang/Object;ZI)V

    invoke-static {v0}, Lorg/mozilla/gecko/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAutofillDelegate(Lorg/mozilla/geckoview/Autofill$Delegate;)V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoSession;->getAutofillSupport()Lorg/mozilla/geckoview/Autofill$Support;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/Autofill$Support;->setDelegate(Lorg/mozilla/geckoview/Autofill$Delegate;)V

    return-void
.end method

.method public setContentBlockingDelegate(Lorg/mozilla/geckoview/ContentBlocking$Delegate;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mContentBlockingHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    invoke-virtual {v0, p1, p0}, Lorg/mozilla/geckoview/GeckoSessionHandler;->setDelegate(Ljava/lang/Object;Lorg/mozilla/geckoview/GeckoSession;)V

    return-void
.end method

.method public setContentDelegate(Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mContentHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    invoke-virtual {v0, p1, p0}, Lorg/mozilla/geckoview/GeckoSessionHandler;->setDelegate(Ljava/lang/Object;Lorg/mozilla/geckoview/GeckoSession;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mProcessHangHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    invoke-virtual {v0, p1, p0}, Lorg/mozilla/geckoview/GeckoSessionHandler;->setDelegate(Ljava/lang/Object;Lorg/mozilla/geckoview/GeckoSession;)V

    return-void
.end method

.method public setDynamicToolbarMaxHeight(I)V
    .locals 3

    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mDynamicToolbarMaxHeight:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mHeight:I

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-ge v0, p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The maximum height of the dynamic toolbar ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") should be smaller than GeckoView height ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/mozilla/geckoview/GeckoSession;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    :cond_1
    iput p1, p0, Lorg/mozilla/geckoview/GeckoSession;->mDynamicToolbarMaxHeight:I

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mAttachedCompositor:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoSession$Compositor;->setDynamicToolbarMaxHeight(I)V

    :cond_2
    return-void
.end method

.method public setFixedBottomOffset(I)V
    .locals 1

    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mFixedBottomOffset:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/mozilla/geckoview/GeckoSession;->mFixedBottomOffset:I

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mCompositorReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoSession$Compositor;->setFixedBottomOffset(I)V

    :cond_1
    return-void
.end method

.method public setFocused(Z)V
    .locals 2

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v1, "focused"

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoSession;->mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    const-string v1, "GeckoView:SetFocused"

    invoke-virtual {p1, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public setHistoryDelegate(Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mHistoryHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    invoke-virtual {v0, p1, p0}, Lorg/mozilla/geckoview/GeckoSessionHandler;->setDelegate(Ljava/lang/Object;Lorg/mozilla/geckoview/GeckoSession;)V

    return-void
.end method

.method public setMediaDelegate(Lorg/mozilla/geckoview/GeckoSession$MediaDelegate;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mMediaHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    invoke-virtual {v0, p1, p0}, Lorg/mozilla/geckoview/GeckoSessionHandler;->setDelegate(Ljava/lang/Object;Lorg/mozilla/geckoview/GeckoSession;)V

    return-void
.end method

.method public setNavigationDelegate(Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mNavigationHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    invoke-virtual {v0, p1, p0}, Lorg/mozilla/geckoview/GeckoSessionHandler;->setDelegate(Ljava/lang/Object;Lorg/mozilla/geckoview/GeckoSession;)V

    return-void
.end method

.method public setPermissionDelegate(Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate;)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mPermissionHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    invoke-virtual {v0, p1, p0}, Lorg/mozilla/geckoview/GeckoSessionHandler;->setDelegate(Ljava/lang/Object;Lorg/mozilla/geckoview/GeckoSession;)V

    return-void
.end method

.method public setProgressDelegate(Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate;)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mProgressHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    invoke-virtual {v0, p1, p0}, Lorg/mozilla/geckoview/GeckoSessionHandler;->setDelegate(Ljava/lang/Object;Lorg/mozilla/geckoview/GeckoSession;)V

    return-void
.end method

.method public setPromptDelegate(Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession;->mPromptDelegate:Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;

    return-void
.end method

.method public setScrollDelegate(Lorg/mozilla/geckoview/GeckoSession$ScrollDelegate;)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mScrollHandler:Lorg/mozilla/geckoview/GeckoSessionHandler;

    invoke-virtual {v0, p1, p0}, Lorg/mozilla/geckoview/GeckoSessionHandler;->setDelegate(Ljava/lang/Object;Lorg/mozilla/geckoview/GeckoSession;)V

    return-void
.end method

.method public setSelectionActionDelegate(Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;)V
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession;->getSelectionActionDelegate()Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession;->getSelectionActionDelegate()Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;->onHideAction(Lorg/mozilla/geckoview/GeckoSession;I)V

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mSelectionActionDelegate:Lorg/mozilla/geckoview/GeckoSessionHandler;

    invoke-virtual {v0, p1, p0}, Lorg/mozilla/geckoview/GeckoSessionHandler;->setDelegate(Ljava/lang/Object;Lorg/mozilla/geckoview/GeckoSession;)V

    return-void
.end method

.method public setShouldPinOnScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mozilla/geckoview/GeckoSession;->mShouldPinOnScreen:Z

    return-void
.end method

.method public shouldPinOnScreen()Z
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mShouldPinOnScreen:Z

    return v0
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    const-string v1, "GeckoView:Stop"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public transferFrom(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 3

    .line 2
    iget-object v0, p1, Lorg/mozilla/geckoview/GeckoSession;->mWindow:Lorg/mozilla/geckoview/GeckoSession$Window;

    iget-object v1, p1, Lorg/mozilla/geckoview/GeckoSession;->mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

    iget-object v2, p1, Lorg/mozilla/geckoview/GeckoSession;->mId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/mozilla/geckoview/GeckoSession;->transferFrom(Lorg/mozilla/geckoview/GeckoSession$Window;Lorg/mozilla/geckoview/GeckoSessionSettings;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/mozilla/geckoview/GeckoSession;->mWindow:Lorg/mozilla/geckoview/GeckoSession$Window;

    return-void
.end method

.method public updateOverscrollOffset(FF)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mOverscroll:Lorg/mozilla/geckoview/OverscrollEdgeEffect;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->setDistance(FI)V

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoSession;->mOverscroll:Lorg/mozilla/geckoview/OverscrollEdgeEffect;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->setDistance(FI)V

    return-void
.end method

.method public updateOverscrollVelocity(FF)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mOverscroll:Lorg/mozilla/geckoview/OverscrollEdgeEffect;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->setVelocity(FI)V

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoSession;->mOverscroll:Lorg/mozilla/geckoview/OverscrollEdgeEffect;

    mul-float/2addr p2, v1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->setVelocity(FI)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mWindow:Lorg/mozilla/geckoview/GeckoSession$Window;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession;->mSettings:Lorg/mozilla/geckoview/GeckoSessionSettings;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
