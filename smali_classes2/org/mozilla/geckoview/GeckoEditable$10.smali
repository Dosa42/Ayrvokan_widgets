.class Lorg/mozilla/geckoview/GeckoEditable$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/GeckoEditable;->updateCompositionRects(Landroid/os/IBinder;[Landroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoEditable;

.field final synthetic val$rects:[Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoEditable;[Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable$10;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoEditable$10;->val$rects:[Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$10;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoEditable;->mListener:Lorg/mozilla/geckoview/SessionTextInput$EditableListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable$10;->val$rects:[Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lorg/mozilla/geckoview/SessionTextInput$EditableListener;->updateCompositionRects([Landroid/graphics/RectF;)V

    return-void
.end method
