.class Lorg/mozilla/geckoview/GeckoEditable$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/GeckoEditable;->notifyIME(Lorg/mozilla/gecko/IGeckoEditableChild;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoEditable;

.field final synthetic val$child:Lorg/mozilla/gecko/IGeckoEditableChild;

.field final synthetic val$type:I


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoEditable;Lorg/mozilla/gecko/IGeckoEditableChild;I)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable$4;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoEditable$4;->val$child:Lorg/mozilla/gecko/IGeckoEditableChild;

    iput p3, p0, Lorg/mozilla/geckoview/GeckoEditable$4;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$4;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable$4;->val$child:Lorg/mozilla/gecko/IGeckoEditableChild;

    iget v2, p0, Lorg/mozilla/geckoview/GeckoEditable$4;->val$type:I

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/geckoview/GeckoEditable;->icNotifyIME(Lorg/mozilla/gecko/IGeckoEditableChild;I)V

    return-void
.end method
