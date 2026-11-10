.class Lorg/mozilla/geckoview/GeckoEditable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/GeckoEditable;->setListener(Lorg/mozilla/geckoview/SessionTextInput$EditableListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoEditable;

.field final synthetic val$newListener:Lorg/mozilla/geckoview/SessionTextInput$EditableListener;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoEditable;Lorg/mozilla/geckoview/SessionTextInput$EditableListener;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable$1;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoEditable$1;->val$newListener:Lorg/mozilla/geckoview/SessionTextInput$EditableListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$1;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable$1;->val$newListener:Lorg/mozilla/geckoview/SessionTextInput$EditableListener;

    iput-object v1, v0, Lorg/mozilla/geckoview/GeckoEditable;->mListener:Lorg/mozilla/geckoview/SessionTextInput$EditableListener;

    return-void
.end method
