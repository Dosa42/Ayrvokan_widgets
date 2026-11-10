.class public interface abstract Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SelectionActionDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;
    }
.end annotation


# static fields
.field public static final ACTION_COLLAPSE_TO_END:Ljava/lang/String; = "org.mozilla.geckoview.COLLAPSE_TO_END"

.field public static final ACTION_COLLAPSE_TO_START:Ljava/lang/String; = "org.mozilla.geckoview.COLLAPSE_TO_START"

.field public static final ACTION_COPY:Ljava/lang/String; = "org.mozilla.geckoview.COPY"

.field public static final ACTION_CUT:Ljava/lang/String; = "org.mozilla.geckoview.CUT"

.field public static final ACTION_DELETE:Ljava/lang/String; = "org.mozilla.geckoview.DELETE"

.field public static final ACTION_HIDE:Ljava/lang/String; = "org.mozilla.geckoview.HIDE"

.field public static final ACTION_PASTE:Ljava/lang/String; = "org.mozilla.geckoview.PASTE"

.field public static final ACTION_SELECT_ALL:Ljava/lang/String; = "org.mozilla.geckoview.SELECT_ALL"

.field public static final ACTION_UNSELECT:Ljava/lang/String; = "org.mozilla.geckoview.UNSELECT"

.field public static final FLAG_IS_COLLAPSED:I = 0x1

.field public static final FLAG_IS_EDITABLE:I = 0x2

.field public static final FLAG_IS_PASSWORD:I = 0x4

.field public static final HIDE_REASON_ACTIVE_SCROLL:I = 0x3

.field public static final HIDE_REASON_ACTIVE_SELECTION:I = 0x2

.field public static final HIDE_REASON_INVISIBLE_SELECTION:I = 0x1

.field public static final HIDE_REASON_NO_SELECTION:I


# virtual methods
.method public onHideAction(Lorg/mozilla/geckoview/GeckoSession;I)V
    .locals 0

    return-void
.end method

.method public onShowActionRequest(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;)V
    .locals 0

    return-void
.end method
