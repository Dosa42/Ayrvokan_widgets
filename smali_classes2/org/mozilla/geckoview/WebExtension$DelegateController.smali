.class interface abstract Lorg/mozilla/geckoview/WebExtension$DelegateController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DelegateController"
.end annotation


# virtual methods
.method public abstract getActionDelegate()Lorg/mozilla/geckoview/WebExtension$ActionDelegate;
.end method

.method public abstract getTabDelegate()Lorg/mozilla/geckoview/WebExtension$TabDelegate;
.end method

.method public abstract onActionDelegate(Lorg/mozilla/geckoview/WebExtension$ActionDelegate;)V
.end method

.method public abstract onMessageDelegate(Ljava/lang/String;Lorg/mozilla/geckoview/WebExtension$MessageDelegate;)V
.end method

.method public abstract onTabDelegate(Lorg/mozilla/geckoview/WebExtension$TabDelegate;)V
.end method
