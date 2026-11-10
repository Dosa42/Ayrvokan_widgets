.class public final Lr1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/m;


# instance fields
.field public final synthetic a:Lq1/f;

.field public final synthetic b:Lcom/nomone/GeckoView/MyGeckoView;


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/Applications/LauncherApplication;Lq1/f;Lcom/nomone/GeckoView/MyGeckoView;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lr1/v;->a:Lq1/f;

    iput-object p3, p0, Lr1/v;->b:Lcom/nomone/GeckoView/MyGeckoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, "Launcher initialized"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    iget-object p1, p0, Lr1/v;->a:Lq1/f;

    .line 12
    .line 13
    iget-object p1, p1, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->i(Lcom/nomone/vr_desktop/LaunchActivity;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const-string p1, "ubuntu"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const-string p1, "debian"

    .line 25
    .line 26
    :goto_0
    const-string v0, "addLauncherAction(           \'Linux\',   \'../linux/"

    .line 27
    .line 28
    const-string v1, ".png\', \'Launch:com.nomone.vr_desktop.Applications.Linux.LinuxApplication\')"

    .line 29
    .line 30
    invoke-static {v0, p1, v1}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v0, p0, Lr1/v;->b:Lcom/nomone/GeckoView/MyGeckoView;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p1, "addLauncherAction(     \'File Viewer\',       \'../fileManager/icon.png\', \'Launch:com.nomone.vr_desktop.Applications.FileManagerApplication\')"

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string p1, "addLauncherAction(        \'Settings\',          \'../settings/icon.png\', \'Launch:com.nomone.vr_desktop.Applications.SettingsApplication,alwaysOnTop\')"

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string p1, "addLauncherAction(         \'Browser\', \'../browser/startPage/icon.png\', \'Launch:com.nomone.vr_desktop.Applications.BrowserApplication\')"

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string p1, "addLauncherAction(          \'White!\',             \'../white/icon.png\', \'Launch:apps/white/index.html,fromAssets,mouseInput,fixedFrame,dimensions:400x640,scaleDimensions\')"

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 60
    .line 61
    const/16 v1, 0x1f

    .line 62
    .line 63
    if-lt p1, v1, :cond_2

    .line 64
    .line 65
    const-string p1, "addLauncherAction(\'Phantom Process Killing\', \'../ppkt/icon.png\', \'PhantomProcessKillingTutorial\')"

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    const-string p1, "addLauncherAction(\'Storage Permission\', \'../storagePermission/icon.png\', \'RequestStoragePermission\')"

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string p1, "addLauncherAction(            \'Exit\',              \'../exit/icon.png\', \'Launch:com.nomone.vr_desktop.Applications.ExitApplication\')"

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sget-object p1, Lcom/nomone/vr_desktop/Applications/LauncherApplication;->h:Ljava/lang/String;

    .line 81
    .line 82
    iget-object p1, v0, Lcom/nomone/GeckoView/MyGeckoView;->j:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    const/4 p1, 0x1

    .line 88
    return p1
.end method
