.class Lorg/mozilla/geckoview/GeckoEditable$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/GeckoEditable;->onSelectionChange(Landroid/os/IBinder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoEditable;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoEditable;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable$8;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$8;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoEditable;->icSyncShadowText()V

    return-void
.end method
