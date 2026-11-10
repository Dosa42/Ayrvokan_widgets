.class Lorg/mozilla/geckoview/GeckoInputConnection$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/GeckoInputConnection;->updateCompositionRects([Landroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoInputConnection;

.field final synthetic val$composition:Ljava/lang/CharSequence;

.field final synthetic val$rects:[Landroid/graphics/RectF;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoInputConnection;Landroid/view/View;[Landroid/graphics/RectF;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoInputConnection$6;->this$0:Lorg/mozilla/geckoview/GeckoInputConnection;

    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoInputConnection$6;->val$view:Landroid/view/View;

    iput-object p3, p0, Lorg/mozilla/geckoview/GeckoInputConnection$6;->val$rects:[Landroid/graphics/RectF;

    iput-object p4, p0, Lorg/mozilla/geckoview/GeckoInputConnection$6;->val$composition:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoInputConnection$6;->this$0:Lorg/mozilla/geckoview/GeckoInputConnection;

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoInputConnection$6;->val$view:Landroid/view/View;

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoInputConnection$6;->val$rects:[Landroid/graphics/RectF;

    iget-object v3, p0, Lorg/mozilla/geckoview/GeckoInputConnection$6;->val$composition:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/geckoview/GeckoInputConnection;->updateCompositionRectsOnUi(Landroid/view/View;[Landroid/graphics/RectF;Ljava/lang/CharSequence;)V

    return-void
.end method
