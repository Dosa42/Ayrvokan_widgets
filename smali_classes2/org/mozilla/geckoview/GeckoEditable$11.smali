.class final Lorg/mozilla/geckoview/GeckoEditable$11;
.super Landroid/view/KeyEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/GeckoEditable;->getCharKeyEvent(C)Landroid/view/KeyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$c:C


# direct methods
.method public constructor <init>(JJIIIC)V
    .locals 0

    iput-char p8, p0, Lorg/mozilla/geckoview/GeckoEditable$11;->val$c:C

    invoke-direct/range {p0 .. p7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    return-void
.end method


# virtual methods
.method public getUnicodeChar()I
    .locals 1

    .line 1
    iget-char v0, p0, Lorg/mozilla/geckoview/GeckoEditable$11;->val$c:C

    return v0
.end method

.method public getUnicodeChar(I)I
    .locals 0

    .line 2
    iget-char p1, p0, Lorg/mozilla/geckoview/GeckoEditable$11;->val$c:C

    return p1
.end method
