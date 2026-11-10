.class final Lorg/mozilla/gecko/CrashHandler$1;
.super Lorg/mozilla/gecko/CrashHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/gecko/CrashHandler;->createDefaultCrashHandler(Landroid/content/Context;)Lorg/mozilla/gecko/CrashHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/mozilla/gecko/CrashHandler;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getCrashExtras(Ljava/lang/Thread;Ljava/lang/Throwable;)Landroid/os/Bundle;
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/mozilla/gecko/CrashHandler;->getCrashExtras(Ljava/lang/Thread;Ljava/lang/Throwable;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "ProductName"

    const-string v0, "Fennec"

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ProductID"

    const-string v0, "{aa3c5121-dab2-40e2-81ca-7ea25febc110}"

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Version"

    const-string v0, "79.0.1"

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "BuildID"

    const-string v0, "20200813192915"

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Vendor"

    const-string v0, "Mozilla"

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ReleaseChannel"

    const-string v0, "release"

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public reportException(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/mozilla/gecko/CrashHandler;->reportException(Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
