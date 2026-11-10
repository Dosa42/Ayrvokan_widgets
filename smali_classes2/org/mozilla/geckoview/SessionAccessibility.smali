.class public Lorg/mozilla/geckoview/SessionAccessibility;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;,
        Lorg/mozilla/geckoview/SessionAccessibility$Settings;,
        Lorg/mozilla/geckoview/SessionAccessibility$NodeProvider;
    }
.end annotation


# static fields
.field private static final ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE:Ljava/lang/String; = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

.field private static final BRAILLE_CLICK_BASE_INDEX:I = -0x10642ac0

.field private static final CLASSNAMES:[Ljava/lang/String;

.field static final CLASSNAME_BUTTON:I = 0x1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final CLASSNAME_CHECKBOX:I = 0x2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final CLASSNAME_DIALOG:I = 0x3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final CLASSNAME_EDITTEXT:I = 0x4
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final CLASSNAME_GRIDVIEW:I = 0x5
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final CLASSNAME_IMAGE:I = 0x6
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final CLASSNAME_LISTVIEW:I = 0x7
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final CLASSNAME_MENUITEM:I = 0x8
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final CLASSNAME_PROGRESSBAR:I = 0x9
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final CLASSNAME_RADIOBUTTON:I = 0xa
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final CLASSNAME_SEEKBAR:I = 0xb
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final CLASSNAME_SPINNER:I = 0xc
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final CLASSNAME_TABWIDGET:I = 0xd
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final CLASSNAME_TOGGLEBUTTON:I = 0xe
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final CLASSNAME_UNKNOWN:I = -0x1

.field static final CLASSNAME_VIEW:I = 0x0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final CLASSNAME_WEBVIEW:I = 0xf
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final FLAG_ACCESSIBILITY_FOCUSED:I = 0x0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final FLAG_CHECKABLE:I = 0x2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final FLAG_CHECKED:I = 0x4
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final FLAG_CLICKABLE:I = 0x8
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final FLAG_CONTENT_INVALID:I = 0x10
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final FLAG_CONTEXT_CLICKABLE:I = 0x20
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final FLAG_EDITABLE:I = 0x40
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final FLAG_ENABLED:I = 0x80
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final FLAG_EXPANDABLE:I = 0x20000
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final FLAG_EXPANDED:I = 0x40000
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final FLAG_FOCUSABLE:I = 0x100
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final FLAG_FOCUSED:I = 0x200
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final FLAG_LONG_CLICKABLE:I = 0x400
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final FLAG_MULTI_LINE:I = 0x800
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final FLAG_PASSWORD:I = 0x1000
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final FLAG_SCROLLABLE:I = 0x2000
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final FLAG_SELECTABLE:I = 0x10000
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final FLAG_SELECTED:I = 0x4000
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final FLAG_VISIBLE_TO_USER:I = 0x8000
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_ARTICLE:I = 0x0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_BUTTON:I = 0x1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_CHECKBOX:I = 0x2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_COMBOBOX:I = 0x3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_CONTROL:I = 0x4
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_DEFAULT:I = -0x1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_FOCUSABLE:I = 0x5
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_FRAME:I = 0x6
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_GRAPHIC:I = 0x7
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_H1:I = 0x8
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_H2:I = 0x9
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_H3:I = 0xa
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_H4:I = 0xb
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_H5:I = 0xc
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_H6:I = 0xd
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_HEADING:I = 0xe
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_LANDMARK:I = 0xf
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_LINK:I = 0x10
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_LIST:I = 0x11
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_LIST_ITEM:I = 0x12
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_MAIN:I = 0x13
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_MEDIA:I = 0x14
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_RADIO:I = 0x15
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_SECTION:I = 0x16
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_TABLE:I = 0x17
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_TEXT_FIELD:I = 0x18
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_UNVISITED_LINK:I = 0x19
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field static final HTML_GRANULARITY_VISITED_LINK:I = 0x1a
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field private static final LOGTAG:Ljava/lang/String; = "GeckoAccessibility"

.field private static sHtmlGranularities:[Ljava/lang/String;


# instance fields
.field private mAccessibilityFocusedNode:I

.field private mAtEndOfText:Z

.field private mAtLastWord:Z

.field private mAtStartOfText:Z

.field private mAttached:Z

.field mCaches:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/SparseArray<",
            "Lorg/mozilla/gecko/util/GeckoBundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEndOffset:I

.field private mFirstAccessibilityFocusable:I

.field final mFocusPathCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/mozilla/gecko/util/GeckoBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusedNode:I

.field private mLastAccessibilityFocusable:I

.field final mSession:Lorg/mozilla/geckoview/GeckoSession;

.field private mStartOffset:I

.field private mView:Landroid/view/View;

.field private mViewFocusRequested:Z

.field final mViewportCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/mozilla/gecko/util/GeckoBundle;",
            ">;"
        }
    .end annotation
.end field

.field final nativeProvider:Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 28

    const-string v0, "android.view.View"

    const-string v1, "android.widget.Button"

    const-string v2, "android.widget.CheckBox"

    const-string v3, "android.app.Dialog"

    const-string v4, "android.widget.EditText"

    const-string v5, "android.widget.GridView"

    const-string v6, "android.widget.Image"

    const-string v7, "android.widget.ListView"

    const-string v8, "android.view.MenuItem"

    const-string v9, "android.widget.ProgressBar"

    const-string v10, "android.widget.RadioButton"

    const-string v11, "android.widget.SeekBar"

    const-string v12, "android.widget.Spinner"

    const-string v13, "android.widget.TabWidget"

    const-string v14, "android.widget.ToggleButton"

    const-string v15, "android.webkit.WebView"

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/geckoview/SessionAccessibility;->CLASSNAMES:[Ljava/lang/String;

    const-string v1, "ARTICLE"

    const-string v2, "BUTTON"

    const-string v3, "CHECKBOX"

    const-string v4, "COMBOBOX"

    const-string v5, "CONTROL"

    const-string v6, "FOCUSABLE"

    const-string v7, "FRAME"

    const-string v8, "GRAPHIC"

    const-string v9, "H1"

    const-string v10, "H2"

    const-string v11, "H3"

    const-string v12, "H4"

    const-string v13, "H5"

    const-string v14, "H6"

    const-string v15, "HEADING"

    const-string v16, "LANDMARK"

    const-string v17, "LINK"

    const-string v18, "LIST"

    const-string v19, "LIST_ITEM"

    const-string v20, "MAIN"

    const-string v21, "MEDIA"

    const-string v22, "RADIO"

    const-string v23, "SECTION"

    const-string v24, "TABLE"

    const-string v25, "TEXT_FIELD"

    const-string v26, "UNVISITED_LINK"

    const-string v27, "VISITED_LINK"

    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/geckoview/SessionAccessibility;->sHtmlGranularities:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;-><init>(Lorg/mozilla/geckoview/SessionAccessibility;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->nativeProvider:Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mAttached:Z

    iput v0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mAccessibilityFocusedNode:I

    iput v0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mFirstAccessibilityFocusable:I

    iput v0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mLastAccessibilityFocusable:I

    iput v0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mFocusedNode:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mStartOffset:I

    iput v1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mEndOffset:I

    iput-boolean v0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mAtStartOfText:Z

    iput-boolean v0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mAtEndOfText:Z

    iput-boolean v0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mAtLastWord:Z

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mViewportCache:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mFocusPathCache:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mCaches:Ljava/util/LinkedList;

    iput-boolean v0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mViewFocusRequested:Z

    iput-object p1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-static {}, Lorg/mozilla/geckoview/SessionAccessibility$Settings;->updateAccessibilitySettings()V

    return-void
.end method

.method public static synthetic access$000(Lorg/mozilla/geckoview/SessionAccessibility;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mAttached:Z

    return p0
.end method

.method public static synthetic access$002(Lorg/mozilla/geckoview/SessionAccessibility;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mAttached:Z

    return p1
.end method

.method public static synthetic access$100(Lorg/mozilla/geckoview/SessionAccessibility;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1000(Lorg/mozilla/geckoview/SessionAccessibility;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mAccessibilityFocusedNode:I

    return p0
.end method

.method public static synthetic access$1100(Lorg/mozilla/geckoview/SessionAccessibility;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mFocusedNode:I

    return p0
.end method

.method public static synthetic access$1200(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/mozilla/geckoview/SessionAccessibility;->getClassName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1300()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/SessionAccessibility;->sHtmlGranularities:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1402(Lorg/mozilla/geckoview/SessionAccessibility;I)I
    .locals 0

    iput p1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mFirstAccessibilityFocusable:I

    return p1
.end method

.method public static synthetic access$1502(Lorg/mozilla/geckoview/SessionAccessibility;I)I
    .locals 0

    iput p1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mLastAccessibilityFocusable:I

    return p1
.end method

.method public static synthetic access$200(Lorg/mozilla/geckoview/SessionAccessibility;I)Lorg/mozilla/gecko/util/GeckoBundle;
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/SessionAccessibility;->getMostRecentBundle(I)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lorg/mozilla/geckoview/SessionAccessibility;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/geckoview/SessionAccessibility;->requestViewFocus()V

    return-void
.end method

.method public static synthetic access$400(Lorg/mozilla/geckoview/SessionAccessibility;ILjava/lang/String;ZZ)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/geckoview/SessionAccessibility;->pivot(ILjava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lorg/mozilla/geckoview/SessionAccessibility;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mAtEndOfText:Z

    return p0
.end method

.method public static synthetic access$600(Lorg/mozilla/geckoview/SessionAccessibility;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mAtLastWord:Z

    return p0
.end method

.method public static synthetic access$700(Lorg/mozilla/geckoview/SessionAccessibility;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mAtStartOfText:Z

    return p0
.end method

.method public static synthetic access$800(Lorg/mozilla/geckoview/SessionAccessibility;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mStartOffset:I

    return p0
.end method

.method public static synthetic access$900(Lorg/mozilla/geckoview/SessionAccessibility;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mEndOffset:I

    return p0
.end method

.method private static getClassName(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_0

    sget-object v0, Lorg/mozilla/geckoview/SessionAccessibility;->CLASSNAMES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const-string p0, "android.view.View"

    return-object p0
.end method

.method private declared-synchronized getMostRecentBundle(I)Lorg/mozilla/gecko/util/GeckoBundle;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mCaches:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/gecko/util/GeckoBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-object v1

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isInTest()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private pivot(ILjava/lang/String;ZZ)Z
    .locals 3

    sget-object v0, Lorg/mozilla/geckoview/SessionAccessibility;->sHtmlGranularities:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget v1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mLastAccessibilityFocusable:I

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p3, :cond_2

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mFirstAccessibilityFocusable:I

    if-ne p1, v0, :cond_2

    const/16 p1, 0xf

    const/4 p2, 0x0

    const p3, 0x8000

    invoke-virtual {p0, p3, v2, p1, p2}, Lorg/mozilla/geckoview/SessionAccessibility;->sendEvent(IIILorg/mozilla/gecko/util/GeckoBundle;)V

    return v1

    :cond_2
    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->nativeProvider:Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->pivotNative(IIZZ)V

    return v1
.end method

.method private requestViewFocus()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/mozilla/geckoview/SessionAccessibility;->isInTest()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mViewFocusRequested:Z

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lorg/mozilla/geckoview/SessionAccessibility$Settings;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v2, 0x1002

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Lorg/mozilla/geckoview/SessionAccessibility;->requestViewFocus()V

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->nativeProvider:Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

    iget v1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mAccessibilityFocusedNode:I

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->exploreByTouch(IFF)V

    const/4 p1, 0x1

    return p1
.end method

.method public sendEvent(IIILorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 8

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mViewFocusRequested:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    if-ne p3, v0, :cond_1

    iput-boolean v1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mViewFocusRequested:Z

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lorg/mozilla/geckoview/SessionAccessibility;->getMostRecentBundle(I)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    const/4 v2, -0x1

    if-nez v0, :cond_2

    if-eq p2, v2, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mView:Landroid/view/View;

    invoke-virtual {v3, v4, p2}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    if-ne p3, v2, :cond_3

    if-eqz v0, :cond_3

    const-string p3, "className"

    invoke-virtual {v0, p3}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result p3

    :cond_3
    invoke-static {p3}, Lorg/mozilla/geckoview/SessionAccessibility;->getClassName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    const/4 p3, 0x4

    const-string v5, "flags"

    if-eqz p4, :cond_6

    const-string v6, "text"

    invoke-virtual {p4, v6}, Lorg/mozilla/gecko/util/GeckoBundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p4, v6}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v6, "description"

    const-string v7, ""

    invoke-virtual {p4, v6, v7}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v6, "addedCount"

    invoke-virtual {p4, v6, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    const-string v6, "removedCount"

    invoke-virtual {p4, v6, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    const-string v6, "fromIndex"

    invoke-virtual {p4, v6, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    const-string v6, "itemCount"

    invoke-virtual {p4, v6, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    const-string v6, "currentItemIndex"

    invoke-virtual {p4, v6, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityRecord;->setCurrentItemIndex(I)V

    const-string v6, "beforeText"

    invoke-virtual {p4, v6, v7}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    const-string v6, "toIndex"

    invoke-virtual {p4, v6, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    const-string v6, "scrollX"

    invoke-virtual {p4, v6, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    const-string v6, "scrollY"

    invoke-virtual {p4, v6, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    const-string v6, "maxScrollX"

    invoke-virtual {p4, v6, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    const-string v6, "maxScrollY"

    invoke-virtual {p4, v6, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    invoke-virtual {p4, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    and-int/2addr v6, p3

    if-eqz v6, :cond_5

    move v6, v4

    goto :goto_0

    :cond_5
    move v6, v1

    :goto_0
    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    :cond_6
    const/high16 v6, 0x20000

    if-eq p1, v4, :cond_f

    if-eq p1, p3, :cond_d

    const/16 p3, 0x8

    if-eq p1, p3, :cond_c

    const p3, 0x8000

    if-eq p1, p3, :cond_b

    const/high16 p3, 0x10000

    if-eq p1, p3, :cond_a

    if-eq p1, v6, :cond_7

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityRecord;->getFromIndex()I

    move-result p1

    iput p1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mStartOffset:I

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityRecord;->getToIndex()I

    move-result p1

    iput p1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mEndOffset:I

    iget p1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mStartOffset:I

    if-nez p1, :cond_8

    move p1, v4

    goto :goto_1

    :cond_8
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mAtStartOfText:Z

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iget p2, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mEndOffset:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lt p2, p3, :cond_9

    move v1, v4

    :cond_9
    iput-boolean v1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mAtEndOfText:Z

    iput-boolean v1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mAtLastWord:Z

    if-nez v1, :cond_13

    iget p2, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mEndOffset:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result p1

    if-nez p1, :cond_13

    iput-boolean v4, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mAtLastWord:Z

    goto/16 :goto_4

    :cond_a
    iget p1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mAccessibilityFocusedNode:I

    if-ne p1, p2, :cond_13

    iput v1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mAccessibilityFocusedNode:I

    goto/16 :goto_4

    :cond_b
    iput v2, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mStartOffset:I

    iput v2, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mEndOffset:I

    iput-boolean v1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mAtStartOfText:Z

    iput-boolean v1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mAtEndOfText:Z

    iput-boolean v1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mAtLastWord:Z

    iput p2, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mAccessibilityFocusedNode:I

    goto/16 :goto_4

    :cond_c
    iput p2, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mFocusedNode:I

    iget-object p1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-nez p1, :cond_13

    invoke-direct {p0}, Lorg/mozilla/geckoview/SessionAccessibility;->isInTest()Z

    move-result p1

    if-nez p1, :cond_13

    return-void

    :cond_d
    if-eqz v0, :cond_13

    if-eqz p4, :cond_13

    const-string p1, "selected"

    invoke-virtual {p4, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_13

    invoke-virtual {p4, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {v0, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    or-int/lit16 p1, p1, 0x4000

    goto :goto_2

    :cond_e
    invoke-virtual {v0, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    and-int/lit16 p1, p1, -0x4001

    :goto_2
    invoke-virtual {v0, v5, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :cond_f
    if-eqz v0, :cond_13

    if-eqz p4, :cond_13

    invoke-virtual {p4, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p4, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_11

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_10

    invoke-virtual {v0, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    or-int/2addr p2, p3

    goto :goto_3

    :cond_10
    invoke-virtual {v0, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    and-int/lit8 p2, p2, -0x5

    :goto_3
    invoke-virtual {v0, v5, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->putInt(Ljava/lang/String;I)V

    :cond_11
    and-int p2, p1, v6

    if-eqz p2, :cond_13

    const/high16 p2, 0x40000

    and-int/2addr p1, p2

    if-eqz p1, :cond_12

    invoke-virtual {v0, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    or-int/2addr p1, p2

    goto :goto_2

    :cond_12
    invoke-virtual {v0, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const p2, -0x40001

    and-int/2addr p1, p2

    goto :goto_2

    :cond_13
    :goto_4
    :try_start_0
    iget-object p1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mView:Landroid/view/View;

    move-object p2, p1

    check-cast p2, Landroid/view/ViewParent;

    invoke-interface {p2, p1, v3}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    iput-object p1, p0, Lorg/mozilla/geckoview/SessionAccessibility;->mView:Landroid/view/View;

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/mozilla/geckoview/SessionAccessibility$1;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/SessionAccessibility$1;-><init>(Lorg/mozilla/geckoview/SessionAccessibility;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method
