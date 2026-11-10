.class final Lorg/mozilla/gecko/GeckoEditableChild$RemoteChild;
.super Lorg/mozilla/gecko/IGeckoEditableChild$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/GeckoEditableChild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RemoteChild"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/gecko/GeckoEditableChild;


# direct methods
.method private constructor <init>(Lorg/mozilla/gecko/GeckoEditableChild;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/gecko/GeckoEditableChild$RemoteChild;->this$0:Lorg/mozilla/gecko/GeckoEditableChild;

    invoke-direct {p0}, Lorg/mozilla/gecko/IGeckoEditableChild$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/gecko/GeckoEditableChild;Lorg/mozilla/gecko/GeckoEditableChild$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/GeckoEditableChild$RemoteChild;-><init>(Lorg/mozilla/gecko/GeckoEditableChild;)V

    return-void
.end method


# virtual methods
.method public onImeAddCompositionRange(IIIIIZIII)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lorg/mozilla/gecko/GeckoEditableChild$RemoteChild;->this$0:Lorg/mozilla/gecko/GeckoEditableChild;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lorg/mozilla/gecko/GeckoEditableChild;->onImeAddCompositionRange(IIIIIZIII)V

    return-void
.end method

.method public onImeReplaceText(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoEditableChild$RemoteChild;->this$0:Lorg/mozilla/gecko/GeckoEditableChild;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/gecko/GeckoEditableChild;->onImeReplaceText(IILjava/lang/String;)V

    return-void
.end method

.method public onImeRequestCommit()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoEditableChild$RemoteChild;->this$0:Lorg/mozilla/gecko/GeckoEditableChild;

    invoke-virtual {v0}, Lorg/mozilla/gecko/GeckoEditableChild;->onImeRequestCommit()V

    return-void
.end method

.method public onImeRequestCursorUpdates(I)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoEditableChild$RemoteChild;->this$0:Lorg/mozilla/gecko/GeckoEditableChild;

    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/GeckoEditableChild;->onImeRequestCursorUpdates(I)V

    return-void
.end method

.method public onImeSynchronize()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoEditableChild$RemoteChild;->this$0:Lorg/mozilla/gecko/GeckoEditableChild;

    invoke-virtual {v0}, Lorg/mozilla/gecko/GeckoEditableChild;->onImeSynchronize()V

    return-void
.end method

.method public onImeUpdateComposition(III)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoEditableChild$RemoteChild;->this$0:Lorg/mozilla/gecko/GeckoEditableChild;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/gecko/GeckoEditableChild;->onImeUpdateComposition(III)V

    return-void
.end method

.method public onKeyEvent(IIIIIJIIIZLandroid/view/KeyEvent;)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lorg/mozilla/gecko/GeckoEditableChild$RemoteChild;->this$0:Lorg/mozilla/gecko/GeckoEditableChild;

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v1 .. v13}, Lorg/mozilla/gecko/GeckoEditableChild;->onKeyEvent(IIIIIJIIIZLandroid/view/KeyEvent;)V

    return-void
.end method

.method public transferParent(Lorg/mozilla/gecko/IGeckoEditableParent;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoEditableChild$RemoteChild;->this$0:Lorg/mozilla/gecko/GeckoEditableChild;

    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/GeckoEditableChild;->transferParent(Lorg/mozilla/gecko/IGeckoEditableParent;)V

    return-void
.end method
