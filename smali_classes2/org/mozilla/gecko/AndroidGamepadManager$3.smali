.class final Lorg/mozilla/gecko/AndroidGamepadManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/gecko/AndroidGamepadManager;->onGamepadAdded(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$deviceId:I

.field final synthetic val$serviceId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    iput p1, p0, Lorg/mozilla/gecko/AndroidGamepadManager$3;->val$deviceId:I

    iput p2, p0, Lorg/mozilla/gecko/AndroidGamepadManager$3;->val$serviceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lorg/mozilla/gecko/AndroidGamepadManager$3;->val$deviceId:I

    iget v1, p0, Lorg/mozilla/gecko/AndroidGamepadManager$3;->val$serviceId:I

    invoke-static {v0, v1}, Lorg/mozilla/gecko/AndroidGamepadManager;->handleGamepadAdded(II)V

    return-void
.end method
