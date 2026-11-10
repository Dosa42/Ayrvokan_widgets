.class final Lorg/mozilla/geckoview/GeckoEditable;
.super Lorg/mozilla/gecko/IGeckoEditableParent$Stub;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;
.implements Landroid/text/Editable;
.implements Lorg/mozilla/geckoview/SessionTextInput$EditableClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/GeckoEditable$Action;,
        Lorg/mozilla/geckoview/GeckoEditable$AsyncText;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final IME_RANGE_BACKCOLOR:I = 0x4

.field private static final IME_RANGE_CARETPOSITION:I = 0x1

.field private static final IME_RANGE_CONVERTEDTEXT:I = 0x4

.field private static final IME_RANGE_FORECOLOR:I = 0x2

.field private static final IME_RANGE_LINECOLOR:I = 0x8

.field private static final IME_RANGE_LINE_DASHED:I = 0x3

.field private static final IME_RANGE_LINE_DOTTED:I = 0x2

.field private static final IME_RANGE_LINE_DOUBLE:I = 0x4

.field private static final IME_RANGE_LINE_NONE:I = 0x0

.field private static final IME_RANGE_LINE_SOLID:I = 0x1

.field private static final IME_RANGE_LINE_WAVY:I = 0x5

.field private static final IME_RANGE_RAWINPUT:I = 0x2

.field private static final IME_RANGE_SELECTEDCONVERTEDTEXT:I = 0x5

.field private static final IME_RANGE_SELECTEDRAWTEXT:I = 0x3

.field private static final IME_RANGE_UNDERLINE:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "GeckoEditable"

.field private static final SEND_COMPOSITION_KEEP_CURRENT:I = 0x4

.field private static final SEND_COMPOSITION_NOTIFY_GECKO:I = 0x2

.field private static final SEND_COMPOSITION_USE_ENTIRE_TEXT:I = 0x1


# instance fields
.field private final mActions:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lorg/mozilla/geckoview/GeckoEditable$Action;",
            ">;"
        }
    .end annotation
.end field

.field mDefaultChild:Lorg/mozilla/gecko/IGeckoEditableChild;

.field private mFilters:[Landroid/text/InputFilter;

.field mFocusedChild:Lorg/mozilla/gecko/IGeckoEditableChild;

.field mFocusedToken:Landroid/os/IBinder;

.field private mIMEActionHint:Ljava/lang/String;

.field private mIMEFlags:I

.field private mIMEModeHint:Ljava/lang/String;

.field private mIMEState:I

.field private mIMETypeHint:Ljava/lang/String;

.field private mIcPostHandler:Landroid/os/Handler;

.field private mIcRunHandler:Landroid/os/Handler;

.field private mIgnoreSelectionChange:Z

.field mInBatchMode:Z

.field private mKeyMap:Landroid/view/KeyCharacterMap;

.field private mLastTextChangeNewEnd:I

.field private mLastTextChangeOldEnd:I

.field private mLastTextChangeReplacedSelection:Z

.field private mLastTextChangeStart:I

.field mListener:Lorg/mozilla/geckoview/SessionTextInput$EditableListener;

.field mNeedSync:Z

.field private mNeedUpdateComposition:Z

.field private final mProxy:Landroid/text/Editable;

.field final mSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/mozilla/geckoview/GeckoSession;",
            ">;"
        }
    .end annotation
.end field

.field final mSoftInputReentrancyGuard:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSuppressKeyUp:Z

.field private final mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 2

    invoke-direct {p0}, Lorg/mozilla/gecko/IGeckoEditableParent$Stub;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIMEState:I

    const-string v1, ""

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIMETypeHint:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIMEModeHint:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIMEActionHint:Ljava/lang/String;

    const v1, 0x7fffffff

    iput v1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeStart:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeOldEnd:I

    iput v1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeNewEnd:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mSoftInputReentrancyGuard:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mSession:Ljava/lang/ref/WeakReference;

    new-instance p1, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;-><init>(Lorg/mozilla/geckoview/GeckoEditable;Lorg/mozilla/geckoview/GeckoEditable$1;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mActions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Class;

    const-class v1, Landroid/text/Editable;

    aput-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/Editable;

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mProxy:Landroid/text/Editable;

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->getUiHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIcPostHandler:Landroid/os/Handler;

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIcRunHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Landroid/text/Spanned;)Z
    .locals 0

    invoke-static {p0}, Lorg/mozilla/geckoview/GeckoEditable;->isComposing(Landroid/text/Spanned;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lorg/mozilla/geckoview/GeckoEditable;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIcRunHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$202(Lorg/mozilla/geckoview/GeckoEditable;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIcRunHandler:Landroid/os/Handler;

    return-object p1
.end method

.method public static synthetic access$300(Lorg/mozilla/geckoview/GeckoEditable;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIMEState:I

    return p0
.end method

.method private assertOnIcThread()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIcRunHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lorg/mozilla/gecko/util/ThreadUtils$AssertBehavior;->THROW:Lorg/mozilla/gecko/util/ThreadUtils$AssertBehavior;

    invoke-static {v0, v1}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnThread(Ljava/lang/Thread;Lorg/mozilla/gecko/util/ThreadUtils$AssertBehavior;)V

    return-void
.end method

.method private declared-synchronized binderCheckToken(Landroid/os/IBinder;Z)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_1

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static checkEqualText(Landroid/text/Spanned;Landroid/text/Spanned;)Z
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Ljava/lang/Object;

    invoke-interface {p0, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p1, v1, v3, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    array-length v3, v0

    array-length v4, v2

    if-eq v3, v4, :cond_1

    return v1

    :cond_1
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    array-length v6, v2

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, v2, v7

    if-eq v5, v8, :cond_2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_4

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_4

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v8}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static debugAppend(Ljava/lang/StringBuilder;Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "null"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_0
    instance-of v0, p1, Lorg/mozilla/geckoview/GeckoEditable;

    if-eqz v0, :cond_1

    const-string p1, "GeckoEditable"

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/mozilla/gecko/GeckoEditableChild;

    if-eqz v0, :cond_2

    const-string p1, "GeckoEditableChild"

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mozilla/geckoview/GeckoEditable;->debugAppend(Ljava/lang/StringBuilder;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_3
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_5

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoEditable;->getPrintableChar(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_6

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    invoke-static {v2}, Lorg/mozilla/geckoview/GeckoEditable;->getPrintableChar(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3
    return-object p0
.end method

.method private geckoActionReply(Lorg/mozilla/geckoview/GeckoEditable$Action;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoEditable;->geckoSetIcHandler(Landroid/os/Handler;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSpanObject:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->currentRemoveSpan(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->getCurrentText()Landroid/text/Spanned;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mStart:I

    if-gt v1, v0, :cond_d

    iget v1, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mEnd:I

    if-gt v1, v0, :cond_d

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->getCurrentText()Landroid/text/Spanned;

    move-result-object v0

    iget v1, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mStart:I

    iget v2, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mEnd:I

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSequence:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    iget-object v0, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSpanObject:Ljava/lang/Object;

    sget-object v1, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-eq v0, v1, :cond_5

    sget-object v1, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne v0, v1, :cond_8

    :cond_5
    iget v1, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mStart:I

    iget v2, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeStart:I

    if-ge v1, v2, :cond_6

    iget v3, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mEnd:I

    if-lt v3, v2, :cond_7

    :cond_6
    iget v2, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeOldEnd:I

    if-le v1, v2, :cond_8

    iget v1, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mEnd:I

    if-le v1, v2, :cond_8

    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeReplacedSelection:Z

    :cond_8
    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    iget v2, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mStart:I

    iget v3, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mEnd:I

    iget p1, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSpanFlags:I

    invoke-virtual {v1, v0, v2, v3, p1}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->currentSetSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->getCurrentText()Landroid/text/Spanned;

    move-result-object v0

    iget v2, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mStart:I

    iget-object v3, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSequence:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v3, v2

    iget v2, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeStart:I

    iget v4, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeNewEnd:I

    if-gt v2, v4, :cond_d

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v4, v2, :cond_d

    iget v2, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mStart:I

    iget v4, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeStart:I

    if-lt v2, v4, :cond_d

    iget v4, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeNewEnd:I

    if-le v3, v4, :cond_a

    goto :goto_0

    :cond_a
    iget-object v5, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSequence:Ljava/lang/CharSequence;

    invoke-static {v0, v5, v2, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v2

    if-gez v2, :cond_b

    iget v4, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mStart:I

    iget v5, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeStart:I

    if-eq v4, v5, :cond_b

    invoke-static {v0, v5, v3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSequence:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_b

    iget v3, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeStart:I

    add-int/2addr v2, v3

    :cond_b
    if-gez v2, :cond_c

    goto :goto_0

    :cond_c
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v4, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    iget-object v5, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSequence:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v5, v2

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSequence:Ljava/lang/CharSequence;

    invoke-virtual {v4, v2, v5, p1}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->currentReplace(IILjava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {p1, v3, v0}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->currentSetSelection(II)V

    iget-boolean p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeReplacedSelection:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIgnoreSelectionChange:Z

    :cond_d
    :goto_0
    return-void
.end method

.method private geckoIsSameText(IILjava/lang/CharSequence;)Z
    .locals 2

    sub-int/2addr p2, p1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->getCurrentText()Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v0, p1, p3, v1, p2}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private geckoSetIcHandler(Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIcPostHandler:Landroid/os/Handler;

    new-instance v1, Lorg/mozilla/geckoview/GeckoEditable$3;

    invoke-direct {v1, p0, p1}, Lorg/mozilla/geckoview/GeckoEditable$3;-><init>(Lorg/mozilla/geckoview/GeckoEditable;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIcPostHandler:Landroid/os/Handler;

    return-void
.end method

.method private static getCharKeyEvent(C)Landroid/view/KeyEvent;
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v9, Lorg/mozilla/geckoview/GeckoEditable$11;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move-wide v1, v3

    move v8, p0

    invoke-direct/range {v0 .. v8}, Lorg/mozilla/geckoview/GeckoEditable$11;-><init>(JJIIIC)V

    return-object v9
.end method

.method private static getComposingEnd(Landroid/text/Spanned;)I
    .locals 6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    const/4 v3, -0x1

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_0

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private static getComposingStart(Landroid/text/Spanned;)I
    .locals 6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    const v3, 0x7fffffff

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_0

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static getConstantName(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p3
.end method

.method private static getPrintableChar(C)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0xa

    if-ne p0, v0, :cond_1

    const-string p0, "\u21b2"

    return-object p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "\\u%04x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private icMaybeSendComposition(Ljava/lang/CharSequence;I)Z
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_0

    move v1, v7

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    move v8, v2

    :goto_1
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_2

    move v9, v7

    goto :goto_2

    :cond_2
    move v9, v2

    :goto_2
    if-nez v9, :cond_3

    iput-boolean v2, v6, Lorg/mozilla/geckoview/GeckoEditable;->mNeedUpdateComposition:Z

    :cond_3
    invoke-static/range {p1 .. p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static/range {p1 .. p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_d

    move-object v5, v0

    check-cast v5, Landroid/text/Spanned;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v10, Ljava/lang/Object;

    invoke-interface {v5, v2, v0, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v1, :cond_4

    move v10, v2

    goto :goto_3

    :cond_4
    const v10, 0x7fffffff

    :goto_3
    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v11

    goto :goto_4

    :cond_5
    move v11, v2

    :goto_4
    array-length v12, v0

    move v13, v2

    move v14, v13

    :goto_5
    if-ge v13, v12, :cond_8

    aget-object v15, v0, v13

    invoke-interface {v5, v15}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    if-eqz v1, :cond_7

    move v14, v7

    goto :goto_7

    :cond_7
    invoke-interface {v5, v15}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v5, v15}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v14, v7

    move v11, v10

    move v10, v2

    :goto_6
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    goto :goto_5

    :cond_8
    :goto_7
    if-eqz v1, :cond_a

    if-ltz v3, :cond_9

    if-gez v4, :cond_a

    :cond_9
    move v2, v11

    move v3, v2

    goto :goto_8

    :cond_a
    move v2, v3

    move v3, v4

    :goto_8
    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    move-object v1, v5

    move v4, v10

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/geckoview/GeckoEditable;->icSendComposition(Landroid/text/Spanned;IIII)V

    if-eqz v8, :cond_b

    iget-object v0, v6, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    invoke-interface {v0, v10, v11, v9}, Lorg/mozilla/gecko/IGeckoEditableChild;->onImeUpdateComposition(III)V

    :cond_b
    return v7

    :cond_c
    move v4, v3

    move v3, v2

    :cond_d
    if-eqz v8, :cond_f

    iget-object v0, v6, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->getCurrentText()Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    if-ne v1, v3, :cond_e

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    if-eq v0, v4, :cond_f

    :cond_e
    iget-object v0, v6, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    invoke-interface {v0, v3, v4, v9}, Lorg/mozilla/gecko/IGeckoEditableChild;->onImeUpdateComposition(III)V

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private icOfferAction(Lorg/mozilla/geckoview/GeckoEditable$Action;)V
    .locals 5

    iget v0, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mType:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action not processed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->getShadowText()Landroid/text/Spanned;

    move-result-object v0

    iget-object v1, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSpanObject:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    iput v0, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSpanFlags:I

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    iget-object v1, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSpanObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->shadowRemoveSpan(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    iget-object v1, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSpanObject:Ljava/lang/Object;

    iget v2, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mStart:I

    iget v3, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mEnd:I

    iget v4, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSpanFlags:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->shadowSetSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    iget v1, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mStart:I

    iget v2, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mEnd:I

    iget-object v3, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSequence:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->shadowReplace(IILjava/lang/CharSequence;)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mListener:Lorg/mozilla/geckoview/SessionTextInput$EditableListener;

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mActions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    :try_start_0
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoEditable;->icPerformAction(Lorg/mozilla/geckoview/GeckoEditable$Action;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mActions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    return-void
.end method

.method private icPerformAction(Lorg/mozilla/geckoview/GeckoEditable$Action;)V
    .locals 5

    iget v0, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mType:I

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action not processed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget p1, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSpanFlags:I

    and-int/lit16 v0, p1, 0x200

    if-nez v0, :cond_2

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    iget-boolean p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mNeedUpdateComposition:Z

    or-int/2addr p1, v1

    iput-boolean p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mNeedUpdateComposition:Z

    if-eqz v1, :cond_9

    :goto_1
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->getShadowText()Landroid/text/Spanned;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lorg/mozilla/geckoview/GeckoEditable;->icMaybeSendComposition(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_3

    :cond_3
    iget v0, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSpanFlags:I

    and-int/lit16 v2, v0, 0x200

    if-nez v2, :cond_4

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_5

    iget-object v0, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSpanObject:Ljava/lang/Object;

    sget-object v2, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-eq v0, v2, :cond_5

    sget-object v2, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne v0, v2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v4

    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->getShadowText()Landroid/text/Spanned;

    move-result-object v0

    iget v2, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mStart:I

    iget v4, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mEnd:I

    invoke-static {v0, v2, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSequence:Ljava/lang/CharSequence;

    iget-boolean p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mNeedUpdateComposition:Z

    or-int/2addr p1, v1

    iput-boolean p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mNeedUpdateComposition:Z

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_6
    iput-boolean v1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mNeedSync:Z

    iget-object v0, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSequence:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lorg/mozilla/geckoview/GeckoEditable;->icMaybeSendComposition(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    iget v1, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mStart:I

    iget v2, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mEnd:I

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSequence:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lorg/mozilla/gecko/IGeckoEditableChild;->onImeReplaceText(IILjava/lang/String;)V

    goto :goto_4

    :cond_7
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoEditable;->sendCharKeyEvents(Lorg/mozilla/geckoview/GeckoEditable$Action;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->getShadowText()Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {v1}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->getShadowText()Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    iget v2, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mStart:I

    iget v3, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mEnd:I

    if-ne v2, v3, :cond_8

    if-ne v0, v1, :cond_8

    iget-object v1, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSequence:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    if-ne v2, v1, :cond_8

    const/4 v2, -0x1

    move v3, v2

    :cond_8
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSequence:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, v3, p1}, Lorg/mozilla/gecko/IGeckoEditableChild;->onImeReplaceText(IILjava/lang/String;)V

    goto :goto_4

    :cond_9
    :goto_3
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    invoke-interface {p1}, Lorg/mozilla/gecko/IGeckoEditableChild;->onImeSynchronize()V

    :goto_4
    return-void
.end method

.method private icRestartInput(IZ)V
    .locals 1

    new-instance v0, Lorg/mozilla/geckoview/GeckoEditable$6;

    invoke-direct {v0, p0, p1, p2}, Lorg/mozilla/geckoview/GeckoEditable$6;-><init>(Lorg/mozilla/geckoview/GeckoEditable;IZ)V

    invoke-static {v0}, Lorg/mozilla/gecko/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private icSendComposition(Landroid/text/Spanned;IIII)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    if-lt v3, v4, :cond_0

    if-gt v3, v5, :cond_0

    iget-object v6, v0, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    sub-int v8, v3, v4

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move v7, v8

    invoke-interface/range {v6 .. v15}, Lorg/mozilla/gecko/IGeckoEditableChild;->onImeAddCompositionRange(IIIIIZIII)V

    :cond_0
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6}, Landroid/text/TextPaint;-><init>()V

    new-instance v7, Landroid/text/TextPaint;

    invoke-direct {v7}, Landroid/text/TextPaint;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    move v9, v4

    :goto_0
    const-class v10, Ljava/lang/Object;

    invoke-interface {v1, v9, v5, v10}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v10

    if-le v2, v9, :cond_1

    if-ge v2, v10, :cond_1

    move v10, v2

    goto :goto_1

    :cond_1
    if-le v3, v9, :cond_2

    if-ge v3, v10, :cond_2

    move v10, v3

    :cond_2
    :goto_1
    const-class v11, Landroid/text/style/CharacterStyle;

    invoke-interface {v1, v9, v10, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/CharacterStyle;

    array-length v12, v11

    if-nez v12, :cond_4

    if-ne v2, v9, :cond_3

    if-ne v3, v10, :cond_3

    const/4 v13, 0x3

    goto :goto_2

    :cond_3
    const/4 v13, 0x2

    :goto_2
    move/from16 v22, v8

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 v27, v26

    move/from16 v21, v13

    goto/16 :goto_8

    :cond_4
    if-ne v2, v9, :cond_5

    if-ne v3, v10, :cond_5

    const/4 v12, 0x5

    goto :goto_3

    :cond_5
    const/4 v12, 0x4

    :goto_3
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    array-length v14, v11

    move v15, v8

    :goto_4
    if-ge v15, v14, :cond_6

    aget-object v13, v11, v15

    invoke-virtual {v13, v6}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_6
    const-string v11, "underlineColor"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v0, v6, v11, v13}, Lorg/mozilla/geckoview/GeckoEditable;->getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const-string v14, "underlineThickness"

    invoke-direct {v0, v6, v14, v13}, Lorg/mozilla/geckoview/GeckoEditable;->getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const/4 v14, 0x1

    if-eqz v11, :cond_9

    const/high16 v15, 0x3f000000    # 0.5f

    cmpg-float v15, v13, v15

    const/16 v17, 0x9

    if-gtz v15, :cond_7

    move v15, v8

    move/from16 v14, v17

    const/4 v13, 0x2

    goto :goto_6

    :cond_7
    const/high16 v15, 0x40000000    # 2.0f

    cmpl-float v13, v13, v15

    if-ltz v13, :cond_8

    move v13, v14

    move v15, v13

    goto :goto_5

    :cond_8
    move v15, v8

    move v13, v14

    :goto_5
    move/from16 v14, v17

    goto :goto_6

    :cond_9
    invoke-virtual {v6}, Landroid/graphics/Paint;->isUnderlineText()Z

    move-result v11

    if-eqz v11, :cond_a

    move v11, v8

    move v15, v11

    move v13, v14

    goto :goto_6

    :cond_a
    move v11, v8

    move v13, v11

    move v14, v13

    move v15, v14

    :goto_6
    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v16

    if-eqz v16, :cond_b

    or-int/lit8 v14, v14, 0x2

    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v16

    goto :goto_7

    :cond_b
    move/from16 v16, v8

    :goto_7
    iget v8, v6, Landroid/text/TextPaint;->bgColor:I

    if-eqz v8, :cond_c

    or-int/lit8 v14, v14, 0x4

    move/from16 v26, v8

    move/from16 v27, v11

    move/from16 v21, v12

    move/from16 v23, v13

    move/from16 v22, v14

    move/from16 v24, v15

    move/from16 v25, v16

    goto :goto_8

    :cond_c
    move/from16 v27, v11

    move/from16 v21, v12

    move/from16 v23, v13

    move/from16 v22, v14

    move/from16 v24, v15

    move/from16 v25, v16

    const/16 v26, 0x0

    :goto_8
    iget-object v8, v0, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    sub-int v19, v9, v4

    sub-int v20, v10, v4

    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v27}, Lorg/mozilla/gecko/IGeckoEditableChild;->onImeAddCompositionRange(IIIIIZIII)V

    if-lt v10, v5, :cond_d

    return-void

    :cond_d
    move v9, v10

    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private static isComposing(Landroid/text/Spanned;)Z
    .locals 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private onIcThread()Z
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIcRunHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onKeyEvent(Lorg/mozilla/gecko/IGeckoEditableChild;Landroid/view/KeyEvent;IIZ)V
    .locals 13

    move-object v12, p2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    or-int v0, v0, p4

    const v1, -0x77033

    and-int/2addr v1, v0

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v2

    invoke-virtual {p2, v1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v3

    const/16 v4, 0x20

    if-lt v2, v4, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    if-eq v1, v0, :cond_1

    move v8, v3

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    move v8, v5

    :goto_0
    if-lt v2, v4, :cond_2

    if-eq v2, v3, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    if-eqz p5, :cond_3

    or-int v0, v1, p4

    :cond_3
    move v4, v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v10

    move-object v0, p1

    move/from16 v1, p3

    move/from16 v11, p5

    move-object v12, p2

    invoke-interface/range {v0 .. v12}, Lorg/mozilla/gecko/IGeckoEditableChild;->onKeyEvent(IIIIIJIIIZLandroid/view/KeyEvent;)V

    return-void
.end method

.method private processKey(Landroid/view/View;IILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v0

    if-gt p3, v0, :cond_1

    invoke-static {p3, p4}, Lorg/mozilla/geckoview/GeckoEditable;->shouldProcessKey(ILandroid/view/KeyEvent;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Lorg/mozilla/geckoview/GeckoEditable$12;

    invoke-direct {p3, p0, p1, p2, p4}, Lorg/mozilla/geckoview/GeckoEditable$12;-><init>(Lorg/mozilla/geckoview/GeckoEditable;Landroid/view/View;ILandroid/view/KeyEvent;)V

    invoke-virtual {p0, p3}, Lorg/mozilla/geckoview/GeckoEditable;->postToInputConnection(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private sendCharKeyEvents(Lorg/mozilla/geckoview/GeckoEditable$Action;)V
    .locals 9

    iget-object v0, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSequence:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSequence:Ljava/lang/CharSequence;

    instance-of v2, v0, Landroid/text/Spannable;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/text/Spannable;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const v4, 0x7fffffff

    invoke-interface {v0, v2, v4, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    if-ge v0, v4, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSequence:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoEditable;->synthesizeKeyEvents(Ljava/lang/CharSequence;)[Landroid/view/KeyEvent;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v5, p1, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_3

    iget-boolean v3, p0, Lorg/mozilla/geckoview/GeckoEditable;->mSuppressKeyUp:Z

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/mozilla/geckoview/GeckoEditable;->onKeyEvent(Lorg/mozilla/gecko/IGeckoEditableChild;Landroid/view/KeyEvent;IIZ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private sendKeyEvent(Landroid/view/KeyEvent;II)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    if-nez v0, :cond_1

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoEditable;->mDefaultChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/geckoview/GeckoEditable;->onKeyEvent(Lorg/mozilla/gecko/IGeckoEditableChild;Landroid/view/KeyEvent;IIZ)V

    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {v3}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->getShadowText()Landroid/text/Spanned;

    move-result-object v3

    invoke-static {v3}, Lorg/mozilla/geckoview/GeckoEditable;->isComposing(Landroid/text/Spanned;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez p2, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {v3}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->getShadowText()Landroid/text/Spanned;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    iget-object v4, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {v4}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->getShadowText()Landroid/text/Spanned;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    if-ne v3, v4, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x15

    if-eq v5, v6, :cond_5

    const/16 v6, 0x16

    if-eq v5, v6, :cond_3

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {v5}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->getShadowText()Landroid/text/Spanned;

    move-result-object v5

    invoke-static {v5}, Lorg/mozilla/geckoview/GeckoEditable;->getComposingEnd(Landroid/text/Spanned;)I

    move-result v5

    if-le v5, v4, :cond_4

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoEditable;->getEditable()Landroid/text/Editable;

    move-result-object v2

    add-int/2addr v3, v0

    invoke-static {v2, v3, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :goto_1
    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mNeedUpdateComposition:Z

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->getShadowText()Landroid/text/Spanned;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v4, v0, :cond_7

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {v4}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->getShadowText()Landroid/text/Spanned;

    move-result-object v4

    invoke-static {v4}, Lorg/mozilla/geckoview/GeckoEditable;->getComposingStart(Landroid/text/Spanned;)I

    move-result v4

    if-ge v4, v3, :cond_6

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoEditable;->getEditable()Landroid/text/Editable;

    move-result-object v2

    sub-int/2addr v3, v0

    invoke-static {v2, v3, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1

    :cond_6
    if-nez v3, :cond_7

    :goto_2
    move v2, v1

    :cond_7
    :goto_3
    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mNeedUpdateComposition:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->getShadowText()Landroid/text/Spanned;

    move-result-object v0

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Lorg/mozilla/geckoview/GeckoEditable;->icMaybeSendComposition(Ljava/lang/CharSequence;I)Z

    :cond_8
    if-eqz v2, :cond_9

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    invoke-interface {v0}, Lorg/mozilla/gecko/IGeckoEditableChild;->onImeRequestCommit()V

    :cond_9
    iget-object v3, p0, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/mozilla/geckoview/GeckoEditable;->onKeyEvent(Lorg/mozilla/gecko/IGeckoEditableChild;Landroid/view/KeyEvent;IIZ)V

    new-instance p1, Lorg/mozilla/geckoview/GeckoEditable$Action;

    invoke-direct {p1, v1}, Lorg/mozilla/geckoview/GeckoEditable$Action;-><init>(I)V

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoEditable;->icOfferAction(Lorg/mozilla/geckoview/GeckoEditable$Action;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private setSuppressKeyUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mSuppressKeyUp:Z

    return-void
.end method

.method private static shouldProcessKey(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/16 p1, 0x4f

    if-eq p0, p1, :cond_0

    const/16 p1, 0x52

    if-eq p0, p1, :cond_0

    const/16 p1, 0x54

    if-eq p0, p1, :cond_0

    const/16 p1, 0x18

    if-eq p0, p1, :cond_0

    const/16 p1, 0x19

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private shouldSkipKeyListener(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget p2, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIMEState:I

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x42

    if-eq p1, p2, :cond_3

    const/16 p2, 0x3d

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/16 p2, 0x43

    if-eq p1, p2, :cond_3

    const/16 p2, 0x70

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private synthesizeKeyEvents(Ljava/lang/CharSequence;)[Landroid/view/KeyEvent;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mKeyMap:Landroid/view/KeyCharacterMap;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mKeyMap:Landroid/view/KeyCharacterMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mKeyMap:Landroid/view/KeyCharacterMap;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method private translateKey(ILandroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 1

    invoke-static {p2}, Lorg/mozilla/gecko/util/GamepadUtils;->isSonyXperiaGamepadKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lorg/mozilla/gecko/util/GamepadUtils;->translateSonyXperiaGamepadKeys(ILandroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method


# virtual methods
.method public append(C)Landroid/text/Editable;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mProxy:Landroid/text/Editable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mProxy:Landroid/text/Editable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/geckoview/GeckoEditable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 7

    .line 2
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mProxy:Landroid/text/Editable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mProxy:Landroid/text/Editable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/geckoview/GeckoEditable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 7

    .line 3
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mProxy:Landroid/text/Editable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mProxy:Landroid/text/Editable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/geckoview/GeckoEditable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoEditable;->append(C)Landroid/text/Editable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoEditable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/geckoview/GeckoEditable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    move-result-object p1

    return-object p1
.end method

.method public charAt(I)C
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "method must be called through mProxy"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mProxy:Landroid/text/Editable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/geckoview/GeckoEditable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    return-void
.end method

.method public clearSpans()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/mozilla/geckoview/GeckoEditable$Action;->newRemoveSpan(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoEditable$Action;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoEditable;->icOfferAction(Lorg/mozilla/geckoview/GeckoEditable$Action;)V

    return-void
.end method

.method public delete(II)Landroid/text/Editable;
    .locals 6

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/geckoview/GeckoEditable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    move-result-object p1

    return-object p1
.end method

.method public getChars(II[CI)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "method must be called through mProxy"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoEditable;->onIcThread()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mListener:Lorg/mozilla/geckoview/SessionTextInput$EditableListener;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mProxy:Landroid/text/Editable;

    return-object v0
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "method must be called through mProxy"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "method must be called through mProxy"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "method must be called through mProxy"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "method must be called through mProxy"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public icNotifyIME(Lorg/mozilla/gecko/IGeckoEditableChild;I)V
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p2, v0, :cond_1

    .line 3
    .line 4
    iget-boolean p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mNeedSync:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoEditable;->icSyncShadowText()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void

    .line 12
    :cond_1
    const/4 v1, -0x2

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eq p2, v1, :cond_a

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eq p2, v1, :cond_8

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eq p2, v2, :cond_3

    .line 24
    .line 25
    if-ne p2, v3, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    .line 28
    .line 29
    if-eqz p1, :cond_6

    .line 30
    .line 31
    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    .line 32
    .line 33
    invoke-direct {p0, v2, v2}, Lorg/mozilla/geckoview/GeckoEditable;->icRestartInput(IZ)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    const-string v0, "Invalid notifyIME type: "

    .line 40
    .line 41
    invoke-static {v0, p2}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_3
    iget-object v3, p0, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    .line 50
    .line 51
    if-eqz v3, :cond_4

    .line 52
    .line 53
    invoke-direct {p0, v2, v4}, Lorg/mozilla/geckoview/GeckoEditable;->icRestartInput(IZ)V

    .line 54
    .line 55
    .line 56
    :cond_4
    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    .line 57
    .line 58
    iput-boolean v4, p0, Lorg/mozilla/geckoview/GeckoEditable;->mNeedSync:Z

    .line 59
    .line 60
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->syncShadowText(Lorg/mozilla/geckoview/SessionTextInput$EditableListener;)V

    .line 63
    .line 64
    .line 65
    iget p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIMEState:I

    .line 66
    .line 67
    if-nez p1, :cond_5

    .line 68
    .line 69
    iput v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIMEState:I

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_5
    invoke-direct {p0, v4, v2}, Lorg/mozilla/geckoview/GeckoEditable;->icRestartInput(IZ)V

    .line 73
    .line 74
    .line 75
    :cond_6
    :goto_0
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mListener:Lorg/mozilla/geckoview/SessionTextInput$EditableListener;

    .line 76
    .line 77
    if-eqz p1, :cond_7

    .line 78
    .line 79
    invoke-interface {p1, p2}, Lorg/mozilla/geckoview/SessionTextInput$EditableListener;->notifyIME(I)V

    .line 80
    .line 81
    .line 82
    :cond_7
    return-void

    .line 83
    :cond_8
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    .line 84
    .line 85
    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->getShadowText()Landroid/text/Spanned;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoEditable;->isComposing(Landroid/text/Spanned;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_9

    .line 94
    .line 95
    return-void

    .line 96
    :cond_9
    invoke-direct {p0, v3, v4}, Lorg/mozilla/geckoview/GeckoEditable;->icRestartInput(IZ)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_a
    iget p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIMEState:I

    .line 101
    .line 102
    invoke-virtual {p0, v2, p1}, Lorg/mozilla/geckoview/GeckoEditable;->toggleSoftInput(ZI)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public icNotifyIMEContext(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "date"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "time"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "month"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "week"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "datetime-local"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    const-string v1, "none"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move p1, v0

    :cond_2
    iget v1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIMEState:I

    iput p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIMEState:I

    const-string v2, ""

    if-nez p2, :cond_3

    move-object v3, v2

    goto :goto_0

    :cond_3
    move-object v3, p2

    :goto_0
    iput-object v3, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIMETypeHint:Ljava/lang/String;

    if-nez p3, :cond_4

    move-object v3, v2

    goto :goto_1

    :cond_4
    move-object v3, p3

    :goto_1
    iput-object v3, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIMEModeHint:Ljava/lang/String;

    if-nez p4, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, p4

    :goto_2
    iput-object v2, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIMEActionHint:Ljava/lang/String;

    iput p5, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIMEFlags:I

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoEditable;->mListener:Lorg/mozilla/geckoview/SessionTextInput$EditableListener;

    if-eqz v2, :cond_6

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lorg/mozilla/geckoview/SessionTextInput$EditableListener;->notifyIMEContext(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_6
    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 p1, -0x1

    if-ne v1, p1, :cond_8

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lorg/mozilla/geckoview/GeckoEditable;->icRestartInput(IZ)V

    goto :goto_3

    :cond_8
    if-eqz v1, :cond_9

    const/4 p1, 0x2

    invoke-direct {p0, p1, v0}, Lorg/mozilla/geckoview/GeckoEditable;->icRestartInput(IZ)V

    :cond_9
    :goto_3
    return-void
.end method

.method public icSyncShadowText()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mListener:Lorg/mozilla/geckoview/SessionTextInput$EditableListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mInBatchMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mActions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mNeedSync:Z

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mListener:Lorg/mozilla/geckoview/SessionTextInput$EditableListener;

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->syncShadowText(Lorg/mozilla/geckoview/SessionTextInput$EditableListener;)V

    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mNeedSync:Z

    return-void
.end method

.method public insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 6

    .line 1
    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/geckoview/GeckoEditable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    move-result-object p1

    return-object p1
.end method

.method public insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 6

    .line 2
    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/geckoview/GeckoEditable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Landroid/text/Editable;

    if-eq p1, v0, :cond_1

    const-class v0, Ljava/lang/Appendable;

    if-eq p1, v0, :cond_1

    const-class v0, Landroid/text/Spannable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->getShadowText()Landroid/text/Spanned;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, p0

    :goto_1
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public length()I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method must be called through mProxy"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "method must be called through mProxy"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifyIME(Lorg/mozilla/gecko/IGeckoEditableChild;I)V
    .locals 4

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, -0x3

    if-ne p2, v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedToken:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    invoke-interface {p1}, Landroid/os/IBinder;->pingBinder()Z

    move-result p1

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedToken:Landroid/os/IBinder;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 v1, -0x2

    const/4 v2, 0x0

    if-ne p2, v1, :cond_2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnGeckoThread()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v2}, Lorg/mozilla/geckoview/GeckoEditable;->binderCheckToken(Landroid/os/IBinder;Z)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    :goto_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    monitor-enter p0

    :try_start_1
    const-string v1, ""

    const v3, 0x7fffffff

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/mozilla/geckoview/GeckoEditable;->onTextChange(Landroid/os/IBinder;Ljava/lang/CharSequence;II)V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mActions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedToken:Landroid/os/IBinder;

    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_4
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mActions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoEditable$Action;

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoEditable;->geckoActionReply(Lorg/mozilla/geckoview/GeckoEditable$Action;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mActions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIcPostHandler:Landroid/os/Handler;

    new-instance v1, Lorg/mozilla/geckoview/GeckoEditable$4;

    invoke-direct {v1, p0, p1, p2}, Lorg/mozilla/geckoview/GeckoEditable$4;-><init>(Lorg/mozilla/geckoview/GeckoEditable;Lorg/mozilla/gecko/IGeckoEditableChild;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyIMEContext(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mDefaultChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/geckoview/GeckoEditable;->binderCheckToken(Landroid/os/IBinder;Z)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIcPostHandler:Landroid/os/Handler;

    new-instance v7, Lorg/mozilla/geckoview/GeckoEditable$5;

    move-object v0, v7

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/geckoview/GeckoEditable$5;-><init>(Lorg/mozilla/geckoview/GeckoEditable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)V
    .locals 14

    iget v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIMEState:I

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIMETypeHint:Ljava/lang/String;

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIMEModeHint:Ljava/lang/String;

    iget-object v3, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIMEActionHint:Ljava/lang/String;

    iget v4, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIMEFlags:I

    const/4 v5, 0x1

    iput v5, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/4 v6, 0x0

    iput-object v6, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    const-string v6, "none"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    iput v7, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {p0, v5, v7}, Lorg/mozilla/geckoview/GeckoEditable;->toggleSoftInput(ZI)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    iput v7, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {p0, v7, v0}, Lorg/mozilla/geckoview/GeckoEditable;->toggleSoftInput(ZI)V

    return-void

    :cond_1
    iput v5, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v6, 0x3

    const/4 v8, 0x2

    if-eq v0, v8, :cond_e

    const-string v9, "password"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string v9, "url"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    const/16 v11, 0x10

    if-nez v10, :cond_d

    const-string v10, "mozAwesomebar"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto/16 :goto_3

    :cond_3
    const-string v10, "email"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    :goto_0
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit8 v2, v2, 0x20

    goto/16 :goto_5

    :cond_4
    const-string v12, "tel"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    :goto_1
    iput v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_6

    :cond_5
    const-string v13, "number"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_c

    const-string v13, "range"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    iput v11, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_6

    :cond_8
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_0

    :cond_9
    const-string v9, "numeric"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_2

    :cond_a
    const-string v9, "decimal"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0x2002

    goto :goto_5

    :cond_b
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v9, 0x48000

    or-int/2addr v2, v9

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v2, v2, 0x4000

    goto :goto_5

    :cond_c
    :goto_2
    iput v8, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_6

    :cond_d
    :goto_3
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/2addr v2, v11

    goto :goto_5

    :cond_e
    :goto_4
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v2, v2, 0x80

    :goto_5
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :cond_f
    :goto_6
    const-string v2, "enter"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iput v5, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_a

    :cond_10
    const-string v2, "go"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iput v8, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_a

    :cond_11
    const-string v2, "done"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v1, 0x6

    :goto_7
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_a

    :cond_12
    const-string v2, "next"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "maybenext"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_9

    :cond_13
    const-string v2, "previous"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v1, 0x7

    goto :goto_7

    :cond_14
    const-string v2, "search"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_8

    :cond_15
    const-string v1, "send"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x4

    goto :goto_7

    :cond_16
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_19

    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    goto :goto_a

    :cond_17
    :goto_8
    iput v6, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_a

    :cond_18
    :goto_9
    const/4 v1, 0x5

    goto :goto_7

    :cond_19
    :goto_a
    and-int/lit8 v1, v4, 0x1

    if-eqz v1, :cond_1a

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_1a
    invoke-virtual {p0, v7, v0}, Lorg/mozilla/geckoview/GeckoEditable;->toggleSoftInput(ZI)V

    return-void
.end method

.method public onDefaultKeyEvent(Landroid/os/IBinder;Landroid/view/KeyEvent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/mozilla/geckoview/GeckoEditable;->binderCheckToken(Landroid/os/IBinder;Z)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIcPostHandler:Landroid/os/Handler;

    new-instance v0, Lorg/mozilla/geckoview/GeckoEditable$9;

    invoke-direct {v0, p0, p2}, Lorg/mozilla/geckoview/GeckoEditable$9;-><init>(Lorg/mozilla/geckoview/GeckoEditable;Landroid/view/KeyEvent;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onKeyDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/mozilla/geckoview/GeckoEditable;->processKey(Landroid/view/View;IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyLongPress(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyMultiple(Landroid/view/View;IILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_3

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object p2

    move p3, v1

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-ge p3, p4, :cond_2

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result p4

    invoke-static {p4}, Lorg/mozilla/geckoview/GeckoEditable;->getCharKeyEvent(C)Landroid/view/KeyEvent;

    move-result-object p4

    invoke-direct {p0, p1, v1, v1, p4}, Lorg/mozilla/geckoview/GeckoEditable;->processKey(Landroid/view/View;IILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, v0, v1, p4}, Lorg/mozilla/geckoview/GeckoEditable;->processKey(Landroid/view/View;IILandroid/view/KeyEvent;)Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    return v0

    :cond_3
    move v2, v1

    :goto_2
    if-ge v2, p3, :cond_6

    invoke-direct {p0, p1, v1, p2, p4}, Lorg/mozilla/geckoview/GeckoEditable;->processKey(Landroid/view/View;IILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, p1, v0, p2, p4}, Lorg/mozilla/geckoview/GeckoEditable;->processKey(Landroid/view/View;IILandroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return v1

    :cond_6
    return v0
.end method

.method public onKeyPreIme(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/mozilla/geckoview/GeckoEditable;->processKey(Landroid/view/View;IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onSelectionChange(Landroid/os/IBinder;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/geckoview/GeckoEditable;->binderCheckToken(Landroid/os/IBinder;Z)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIgnoreSelectionChange:Z

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIgnoreSelectionChange:Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {p1, p2, p3}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->currentSetSelection(II)V

    :goto_0
    const p1, 0x7fffffff

    iput p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeStart:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeOldEnd:I

    iput p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeNewEnd:I

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeReplacedSelection:Z

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIcPostHandler:Landroid/os/Handler;

    new-instance p2, Lorg/mozilla/geckoview/GeckoEditable$8;

    invoke-direct {p2, p0}, Lorg/mozilla/geckoview/GeckoEditable$8;-><init>(Lorg/mozilla/geckoview/GeckoEditable;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTextChange(Landroid/os/IBinder;Ljava/lang/CharSequence;II)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/geckoview/GeckoEditable;->binderCheckToken(Landroid/os/IBinder;Z)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->getCurrentText()Landroid/text/Spanned;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-le p4, p1, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    move v1, p4

    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, p3

    const-string v3, ""

    if-nez p3, :cond_2

    if-le p4, p1, :cond_2

    iget-object p3, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {p3, v0, p1, v3}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->currentReplace(IILjava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {p1, v0, v0, p2}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->currentReplace(IILjava/lang/CharSequence;)V

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIgnoreSelectionChange:Z

    const p1, 0x7fffffff

    iput p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeStart:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeOldEnd:I

    iput p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeNewEnd:I

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeReplacedSelection:Z

    goto :goto_2

    :cond_2
    invoke-direct {p0, p3, v1, p2}, Lorg/mozilla/geckoview/GeckoEditable;->geckoIsSameText(IILjava/lang/CharSequence;)Z

    move-result p1

    const/4 p4, 0x1

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->getCurrentText()Landroid/text/Spanned;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p1

    iget-boolean v5, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeReplacedSelection:Z

    if-lt v4, p3, :cond_3

    if-le v4, v1, :cond_4

    :cond_3
    if-lt p1, p3, :cond_5

    if-gt p1, v1, :cond_5

    :cond_4
    move v0, p4

    :cond_5
    or-int p1, v5, v0

    iput-boolean p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeReplacedSelection:Z

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {p1, p3, v1, v3}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->currentReplace(IILjava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mText:Lorg/mozilla/geckoview/GeckoEditable$AsyncText;

    invoke-virtual {p1, p3, p3, p2}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->currentReplace(IILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mActions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/geckoview/GeckoEditable$Action;

    iget-boolean p2, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIgnoreSelectionChange:Z

    if-nez p2, :cond_7

    if-eqz p1, :cond_8

    iget p1, p1, Lorg/mozilla/geckoview/GeckoEditable$Action;->mType:I

    if-eq p1, p4, :cond_7

    const/4 p2, 0x2

    if-eq p1, p2, :cond_7

    const/4 p2, 0x3

    if-ne p1, p2, :cond_8

    :cond_7
    move v0, p4

    :cond_8
    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIgnoreSelectionChange:Z

    :goto_1
    iget p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeStart:I

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeStart:I

    iget p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeOldEnd:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeOldEnd:I

    iget p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeNewEnd:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mLastTextChangeNewEnd:I

    :goto_2
    return-void
.end method

.method public postToInputConnection(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIcPostHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    :cond_1
    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoEditable$Action;->newRemoveSpan(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoEditable$Action;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoEditable;->icOfferAction(Lorg/mozilla/geckoview/GeckoEditable$Action;)V

    return-void
.end method

.method public replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 6

    .line 1
    const/4 v4, 0x0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/geckoview/GeckoEditable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    move-result-object p1

    return-object p1
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 7

    .line 2
    if-ltz p4, :cond_5

    if-gt p4, p5, :cond_5

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p5, v0, :cond_5

    if-nez p4, :cond_1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq p5, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p4, p3

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p3, p4, p5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p4

    :goto_1
    iget-object p5, p0, Lorg/mozilla/geckoview/GeckoEditable;->mFilters:[Landroid/text/InputFilter;

    if-eqz p5, :cond_3

    const/4 p5, 0x0

    :goto_2
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mFilters:[Landroid/text/InputFilter;

    array-length v1, v0

    if-ge p5, v1, :cond_3

    aget-object v0, v0, p5

    const/4 v2, 0x0

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v4, p0, Lorg/mozilla/geckoview/GeckoEditable;->mProxy:Landroid/text/Editable;

    move-object v1, p4

    move v5, p1

    move v6, p2

    invoke-interface/range {v0 .. v6}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object p4, v0

    :cond_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_3
    if-ne p4, p3, :cond_4

    new-instance p4, Landroid/text/SpannableString;

    invoke-direct {p4, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p4, p3, p1}, Lorg/mozilla/geckoview/GeckoEditable$Action;->newReplaceText(Ljava/lang/CharSequence;II)Lorg/mozilla/geckoview/GeckoEditable$Action;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoEditable;->icOfferAction(Lorg/mozilla/geckoview/GeckoEditable$Action;)V

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mProxy:Landroid/text/Editable;

    return-object p1

    :cond_5
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid replace offsets"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestCursorUpdates(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/mozilla/gecko/IGeckoEditableChild;->onImeRequestCursorUpdates(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public sendKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mProxy:Landroid/text/Editable;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-direct {p0, v2, p3}, Lorg/mozilla/geckoview/GeckoEditable;->translateKey(ILandroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p3

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->isOnUiThread()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-direct {p0, v2, p3}, Lorg/mozilla/geckoview/GeckoEditable;->shouldSkipKeyListener(ILandroid/view/KeyEvent;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    if-nez p2, :cond_2

    invoke-direct {p0, v3}, Lorg/mozilla/geckoview/GeckoEditable;->setSuppressKeyUp(Z)V

    invoke-interface {v1, p1, v0, v2, p3}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_1

    :cond_2
    if-ne p2, v3, :cond_3

    invoke-interface {v1, p1, v0, v2, p3}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_1

    :cond_3
    invoke-interface {v1, p1, v0, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result p1

    :goto_1
    if-nez p1, :cond_4

    invoke-static {v0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-direct {p0, p3, p2, v1}, Lorg/mozilla/geckoview/GeckoEditable;->sendKeyEvent(Landroid/view/KeyEvent;II)V

    :cond_4
    if-nez p2, :cond_6

    if-nez p1, :cond_5

    invoke-static {v0}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    :cond_5
    invoke-direct {p0, v4}, Lorg/mozilla/geckoview/GeckoEditable;->setSuppressKeyUp(Z)V

    :cond_6
    return-void
.end method

.method public setBatchMode(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoEditable;->onIcThread()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mInBatchMode:Z

    if-nez p1, :cond_1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoEditable;->getEditable()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/mozilla/geckoview/GeckoEditable;->isComposing(Landroid/text/Spanned;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mFocusedChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    invoke-interface {v0}, Lorg/mozilla/gecko/IGeckoEditableChild;->onImeRequestCommit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    if-nez p1, :cond_2

    iget-boolean p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mNeedSync:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoEditable;->icSyncShadowText()V

    :cond_2
    return-void
.end method

.method public setDefaultChild(Lorg/mozilla/gecko/IGeckoEditableChild;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mDefaultChild:Lorg/mozilla/gecko/IGeckoEditableChild;

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mFilters:[Landroid/text/InputFilter;

    return-void
.end method

.method public setInputConnectionHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIcRunHandler:Landroid/os/Handler;

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/mozilla/geckoview/GeckoEditable$2;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/geckoview/GeckoEditable$2;-><init>(Lorg/mozilla/geckoview/GeckoEditable;Landroid/os/Handler;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoEditable$Action;->newSetHandler(Landroid/os/Handler;)Lorg/mozilla/geckoview/GeckoEditable$Action;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoEditable;->icOfferAction(Lorg/mozilla/geckoview/GeckoEditable$Action;)V

    return-object p1
.end method

.method public setListener(Lorg/mozilla/geckoview/SessionTextInput$EditableListener;)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIcPostHandler:Landroid/os/Handler;

    new-instance v1, Lorg/mozilla/geckoview/GeckoEditable$1;

    invoke-direct {v1, p0, p1}, Lorg/mozilla/geckoview/GeckoEditable$1;-><init>(Lorg/mozilla/geckoview/GeckoEditable;Lorg/mozilla/geckoview/SessionTextInput$EditableListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lorg/mozilla/geckoview/GeckoEditable$Action;->newSetSpan(Ljava/lang/Object;III)Lorg/mozilla/geckoview/GeckoEditable$Action;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoEditable;->icOfferAction(Lorg/mozilla/geckoview/GeckoEditable$Action;)V

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "method must be called through mProxy"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method must be called through mProxy"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toggleSoftInput(ZI)V
    .locals 2

    iget v0, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIMEFlags:I

    new-instance v1, Lorg/mozilla/geckoview/GeckoEditable$7;

    invoke-direct {v1, p0, v0, p1, p2}, Lorg/mozilla/geckoview/GeckoEditable$7;-><init>(Lorg/mozilla/geckoview/GeckoEditable;IZI)V

    invoke-static {v1}, Lorg/mozilla/gecko/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateCompositionRects(Landroid/os/IBinder;[Landroid/graphics/RectF;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/geckoview/GeckoEditable;->binderCheckToken(Landroid/os/IBinder;Z)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable;->mIcPostHandler:Landroid/os/Handler;

    new-instance v0, Lorg/mozilla/geckoview/GeckoEditable$10;

    invoke-direct {v0, p0, p2}, Lorg/mozilla/geckoview/GeckoEditable$10;-><init>(Lorg/mozilla/geckoview/GeckoEditable;[Landroid/graphics/RectF;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
