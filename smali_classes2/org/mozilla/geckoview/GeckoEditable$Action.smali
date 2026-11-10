.class final Lorg/mozilla/geckoview/GeckoEditable$Action;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoEditable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Action"
.end annotation


# static fields
.field static final TYPE_EVENT:I = 0x0

.field static final TYPE_REMOVE_SPAN:I = 0x3

.field static final TYPE_REPLACE_TEXT:I = 0x1

.field static final TYPE_SET_HANDLER:I = 0x4

.field static final TYPE_SET_SPAN:I = 0x2


# instance fields
.field mEnd:I

.field mHandler:Landroid/os/Handler;

.field mSequence:Ljava/lang/CharSequence;

.field mSpanFlags:I

.field mSpanObject:Ljava/lang/Object;

.field mStart:I

.field final mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mozilla/geckoview/GeckoEditable$Action;->mType:I

    return-void
.end method

.method public static newRemoveSpan(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoEditable$Action;
    .locals 2

    new-instance v0, Lorg/mozilla/geckoview/GeckoEditable$Action;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/mozilla/geckoview/GeckoEditable$Action;-><init>(I)V

    iput-object p0, v0, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSpanObject:Ljava/lang/Object;

    return-object v0
.end method

.method public static newReplaceText(Ljava/lang/CharSequence;II)Lorg/mozilla/geckoview/GeckoEditable$Action;
    .locals 2

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    new-instance v0, Lorg/mozilla/geckoview/GeckoEditable$Action;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/mozilla/geckoview/GeckoEditable$Action;-><init>(I)V

    iput-object p0, v0, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSequence:Ljava/lang/CharSequence;

    iput p1, v0, Lorg/mozilla/geckoview/GeckoEditable$Action;->mStart:I

    iput p2, v0, Lorg/mozilla/geckoview/GeckoEditable$Action;->mEnd:I

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid replace text offsets"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newSetHandler(Landroid/os/Handler;)Lorg/mozilla/geckoview/GeckoEditable$Action;
    .locals 2

    new-instance v0, Lorg/mozilla/geckoview/GeckoEditable$Action;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/mozilla/geckoview/GeckoEditable$Action;-><init>(I)V

    iput-object p0, v0, Lorg/mozilla/geckoview/GeckoEditable$Action;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static newSetSpan(Ljava/lang/Object;III)Lorg/mozilla/geckoview/GeckoEditable$Action;
    .locals 2

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    new-instance v0, Lorg/mozilla/geckoview/GeckoEditable$Action;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/mozilla/geckoview/GeckoEditable$Action;-><init>(I)V

    iput-object p0, v0, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSpanObject:Ljava/lang/Object;

    iput p1, v0, Lorg/mozilla/geckoview/GeckoEditable$Action;->mStart:I

    iput p2, v0, Lorg/mozilla/geckoview/GeckoEditable$Action;->mEnd:I

    iput p3, v0, Lorg/mozilla/geckoview/GeckoEditable$Action;->mSpanFlags:I

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid span offsets"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
