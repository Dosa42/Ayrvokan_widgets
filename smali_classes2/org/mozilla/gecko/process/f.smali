.class public final synthetic Lorg/mozilla/gecko/process/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoResult$OnValueListener;


# instance fields
.field public final synthetic f:Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/process/f;->f:Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;

    return-void
.end method


# virtual methods
.method public final onValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/process/f;->f:Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;

    check-cast p1, Lorg/mozilla/gecko/process/IChildProcess;

    invoke-static {v0, p1}, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->a(Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;Lorg/mozilla/gecko/process/IChildProcess;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method
