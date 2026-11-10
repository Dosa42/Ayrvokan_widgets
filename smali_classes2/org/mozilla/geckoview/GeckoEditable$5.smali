.class Lorg/mozilla/geckoview/GeckoEditable$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/GeckoEditable;->notifyIMEContext(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoEditable;

.field final synthetic val$actionHint:Ljava/lang/String;

.field final synthetic val$flags:I

.field final synthetic val$modeHint:Ljava/lang/String;

.field final synthetic val$state:I

.field final synthetic val$typeHint:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoEditable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable$5;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    iput p2, p0, Lorg/mozilla/geckoview/GeckoEditable$5;->val$state:I

    iput-object p3, p0, Lorg/mozilla/geckoview/GeckoEditable$5;->val$typeHint:Ljava/lang/String;

    iput-object p4, p0, Lorg/mozilla/geckoview/GeckoEditable$5;->val$modeHint:Ljava/lang/String;

    iput-object p5, p0, Lorg/mozilla/geckoview/GeckoEditable$5;->val$actionHint:Ljava/lang/String;

    iput p6, p0, Lorg/mozilla/geckoview/GeckoEditable$5;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$5;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    iget v1, p0, Lorg/mozilla/geckoview/GeckoEditable$5;->val$state:I

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoEditable$5;->val$typeHint:Ljava/lang/String;

    iget-object v3, p0, Lorg/mozilla/geckoview/GeckoEditable$5;->val$modeHint:Ljava/lang/String;

    iget-object v4, p0, Lorg/mozilla/geckoview/GeckoEditable$5;->val$actionHint:Ljava/lang/String;

    iget v5, p0, Lorg/mozilla/geckoview/GeckoEditable$5;->val$flags:I

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/geckoview/GeckoEditable;->icNotifyIMEContext(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
