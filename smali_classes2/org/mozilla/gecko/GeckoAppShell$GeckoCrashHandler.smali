.class Lorg/mozilla/gecko/GeckoAppShell$GeckoCrashHandler;
.super Lorg/mozilla/gecko/CrashHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/GeckoAppShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeckoCrashHandler"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/CrashHandler;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getAppContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/gecko/GeckoAppShell$GeckoCrashHandler;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "<unknown>"

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reportException(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .locals 3

    :try_start_0
    instance-of v0, p2, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoSharedPrefs;->forApp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OOMException"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-static {p2}, Lorg/mozilla/gecko/CrashHandler;->getExceptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/mozilla/gecko/GeckoAppShell;->reportJavaCrash(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/gecko/CrashHandler;->reportException(Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
