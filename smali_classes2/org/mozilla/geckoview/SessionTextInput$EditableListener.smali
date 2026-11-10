.class interface abstract Lorg/mozilla/geckoview/SessionTextInput$EditableListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/SessionTextInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EditableListener"
.end annotation


# static fields
.field public static final IME_FLAG_PRIVATE_BROWSING:I = 0x1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public static final IME_FLAG_USER_ACTION:I = 0x2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public static final IME_STATE_DISABLED:I = 0x0

.field public static final IME_STATE_ENABLED:I = 0x1

.field public static final IME_STATE_PASSWORD:I = 0x2

.field public static final IME_STATE_UNKNOWN:I = -0x1

.field public static final NOTIFY_IME_OF_BLUR:I = 0x2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public static final NOTIFY_IME_OF_FOCUS:I = 0x1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public static final NOTIFY_IME_OF_TOKEN:I = -0x3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public static final NOTIFY_IME_OPEN_VKB:I = -0x2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public static final NOTIFY_IME_REPLY_EVENT:I = -0x1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public static final NOTIFY_IME_TO_CANCEL_COMPOSITION:I = 0x9
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public static final NOTIFY_IME_TO_COMMIT_COMPOSITION:I = 0x8
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field


# virtual methods
.method public abstract notifyIME(I)V
.end method

.method public abstract notifyIMEContext(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onDefaultKeyEvent(Landroid/view/KeyEvent;)V
.end method

.method public abstract onDiscardComposition()V
.end method

.method public abstract onSelectionChange()V
.end method

.method public abstract onTextChange()V
.end method

.method public abstract updateCompositionRects([Landroid/graphics/RectF;)V
.end method
