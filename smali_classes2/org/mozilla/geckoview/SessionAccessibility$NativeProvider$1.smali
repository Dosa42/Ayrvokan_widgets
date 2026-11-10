.class Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->sendEventNative(IIILorg/mozilla/gecko/util/GeckoBundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

.field final synthetic val$className:I

.field final synthetic val$eventData:Lorg/mozilla/gecko/util/GeckoBundle;

.field final synthetic val$eventType:I

.field final synthetic val$sourceId:I


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;IIILorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider$1;->this$1:Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

    iput p2, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider$1;->val$eventType:I

    iput p3, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider$1;->val$sourceId:I

    iput p4, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider$1;->val$className:I

    iput-object p5, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider$1;->val$eventData:Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider$1;->this$1:Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

    iget-object v0, v0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;->this$0:Lorg/mozilla/geckoview/SessionAccessibility;

    iget v1, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider$1;->val$eventType:I

    iget v2, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider$1;->val$sourceId:I

    iget v3, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider$1;->val$className:I

    iget-object v4, p0, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider$1;->val$eventData:Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/geckoview/SessionAccessibility;->sendEvent(IIILorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method
