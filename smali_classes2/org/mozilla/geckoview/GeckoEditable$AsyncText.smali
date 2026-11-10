.class final Lorg/mozilla/geckoview/GeckoEditable$AsyncText;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoEditable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AsyncText"
.end annotation


# instance fields
.field private mCurrentNewEnd:I

.field private mCurrentOldEnd:I

.field private mCurrentSelectionChanged:Z

.field private mCurrentStart:I

.field private final mCurrentText:Landroid/text/SpannableStringBuilder;

.field private mShadowNewEnd:I

.field private mShadowOldEnd:I

.field private mShadowStart:I

.field private final mShadowText:Landroid/text/SpannableStringBuilder;

.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoEditable;


# direct methods
.method private constructor <init>(Lorg/mozilla/geckoview/GeckoEditable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentText:Landroid/text/SpannableStringBuilder;

    const p1, 0x7fffffff

    iput p1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentStart:I

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowText:Landroid/text/SpannableStringBuilder;

    iput p1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowStart:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/geckoview/GeckoEditable;Lorg/mozilla/geckoview/GeckoEditable$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;-><init>(Lorg/mozilla/geckoview/GeckoEditable;)V

    return-void
.end method

.method private addCurrentChangeLocked(III)V
    .locals 2

    iget v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentStart:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentStart:I

    iget p1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentOldEnd:I

    iget v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentNewEnd:I

    sub-int v0, p2, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentOldEnd:I

    iget p1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentNewEnd:I

    sub-int/2addr p1, p2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, p3

    iput p1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentNewEnd:I

    return-void
.end method

.method private addShadowChange(III)V
    .locals 2

    iget v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowStart:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowStart:I

    iget p1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowOldEnd:I

    iget v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowNewEnd:I

    sub-int v0, p2, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowOldEnd:I

    iget p1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowNewEnd:I

    sub-int/2addr p1, p2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, p3

    iput p1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowNewEnd:I

    return-void
.end method

.method private isDiscardingComposition()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowText:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lorg/mozilla/geckoview/GeckoEditable;->access$000(Landroid/text/Spanned;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentText:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lorg/mozilla/geckoview/GeckoEditable;->access$000(Landroid/text/Spanned;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized currentRemoveSpan(Ljava/lang/Object;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->addCurrentChangeLocked(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-ltz v0, :cond_2

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1, v1}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->addCurrentChangeLocked(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized currentReplace(IILjava/lang/CharSequence;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    add-int/2addr p3, p1

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->addCurrentChangeLocked(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized currentSetSelection(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentText:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentSelectionChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized currentSetSpan(Ljava/lang/Object;III)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-direct {p0, p2, p3, p3}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->addCurrentChangeLocked(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCurrentText()Landroid/text/Spanned;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentText:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public getShadowText()Landroid/text/Spanned;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowText:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public shadowRemoveSpan(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->addShadowChange(III)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-ltz v0, :cond_2

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1, v1}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->addShadowChange(III)V

    :cond_2
    :goto_0
    return-void
.end method

.method public shadowReplace(IILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    add-int/2addr p3, p1

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->addShadowChange(III)V

    return-void
.end method

.method public shadowSetSpan(Ljava/lang/Object;III)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-direct {p0, p2, p3, p3}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->addShadowChange(III)V

    return-void
.end method

.method public declared-synchronized syncShadowText(Lorg/mozilla/geckoview/SessionTextInput$EditableListener;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentStart:I

    iget v1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentOldEnd:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_2

    iget v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowStart:I

    iget v1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowOldEnd:I

    if-le v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentSelectionChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentText:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentText:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    iget-object v3, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowText:Landroid/text/SpannableStringBuilder;

    invoke-static {v3, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iput-boolean v2, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentSelectionChanged:Z

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/mozilla/geckoview/SessionTextInput$EditableListener;->onSelectionChange()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->isDiscardingComposition()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/mozilla/geckoview/SessionTextInput$EditableListener;->onDiscardComposition()V

    :cond_3
    iget v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowStart:I

    iget v1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentStart:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowNewEnd:I

    iget v3, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentOldEnd:I

    iget v4, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowOldEnd:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int v5, v1, v3

    iget v1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentNewEnd:I

    iget v3, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowOldEnd:I

    iget v4, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentOldEnd:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowText:Landroid/text/SpannableStringBuilder;

    const-class v4, Ljava/lang/Object;

    invoke-virtual {v3, v0, v5, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    move v6, v2

    :goto_0
    if-ge v6, v4, :cond_4

    aget-object v7, v3, v6

    iget-object v8, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8, v7}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowText:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentText:Landroid/text/SpannableStringBuilder;

    move v4, v0

    move v7, v0

    move v8, v1

    invoke-virtual/range {v3 .. v8}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentText:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    const-class v4, Ljava/lang/Object;

    invoke-virtual {v3, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_7

    aget-object v4, v0, v3

    sget-object v5, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-eq v4, v5, :cond_6

    sget-object v5, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne v4, v5, :cond_5

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowText:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8, v4}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentText:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentText:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    iget-object v3, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowText:Landroid/text/SpannableStringBuilder;

    invoke-static {v3, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lorg/mozilla/geckoview/SessionTextInput$EditableListener;->onTextChange()V

    iget-boolean v3, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentSelectionChanged:Z

    if-nez v3, :cond_8

    iget v3, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentOldEnd:I

    iget v4, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentNewEnd:I

    if-eq v3, v4, :cond_9

    iget v3, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentStart:I

    if-ge v0, v3, :cond_8

    if-lt v1, v3, :cond_9

    :cond_8
    invoke-interface {p1}, Lorg/mozilla/geckoview/SessionTextInput$EditableListener;->onSelectionChange()V

    :cond_9
    const p1, 0x7fffffff

    iput p1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowStart:I

    iput p1, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentStart:I

    iput v2, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowOldEnd:I

    iput v2, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentOldEnd:I

    iput v2, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mShadowNewEnd:I

    iput v2, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentNewEnd:I

    iput-boolean v2, p0, Lorg/mozilla/geckoview/GeckoEditable$AsyncText;->mCurrentSelectionChanged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
