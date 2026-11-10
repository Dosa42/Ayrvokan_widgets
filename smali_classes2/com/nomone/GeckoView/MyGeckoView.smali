.class public Lcom/nomone/GeckoView/MyGeckoView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static n:Lorg/mozilla/geckoview/GeckoRuntime;

.field public static o:F

.field public static p:Lcom/nomone/GeckoView/MyGeckoView;

.field public static q:Landroid/text/Editable;

.field public static r:I

.field public static s:I

.field public static t:I


# instance fields
.field public final a:Ln1/l;

.field public b:Lorg/mozilla/geckoview/GeckoSession;

.field public c:Ln1/o;

.field public d:Z

.field public e:Z

.field public f:Lorg/mozilla/geckoview/BasicSelectionActionDelegate;

.field public g:Ln1/k;

.field public h:Ljava/lang/reflect/Method;

.field public i:F

.field public final j:Ljava/util/ArrayList;

.field public k:Lorg/mozilla/geckoview/WebExtension$Port;

.field public final l:Ljava/lang/String;

.field public final m:Lu1/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Ln1/l;

    invoke-direct {p1, p0}, Ln1/l;-><init>(Lcom/nomone/GeckoView/MyGeckoView;)V

    iput-object p1, p0, Lcom/nomone/GeckoView/MyGeckoView;->a:Ln1/l;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nomone/GeckoView/MyGeckoView;->e:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->i:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->j:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GeckoView "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/nomone/GeckoView/MyGeckoView;->t:I

    add-int/2addr v1, p1

    sput v1, Lcom/nomone/GeckoView/MyGeckoView;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nomone/GeckoView/MyGeckoView;->l:Ljava/lang/String;

    new-instance p1, Lu1/w;

    new-instance v0, Lz1/a;

    invoke-direct {v0}, Lz1/a;-><init>()V

    invoke-direct {p1, v0}, Lu1/w;-><init>(Lz1/b;)V

    iput-object p1, p0, Lcom/nomone/GeckoView/MyGeckoView;->m:Lu1/w;

    invoke-virtual {p0}, Lcom/nomone/GeckoView/MyGeckoView;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ln1/l;

    invoke-direct {p1, p0}, Ln1/l;-><init>(Lcom/nomone/GeckoView/MyGeckoView;)V

    iput-object p1, p0, Lcom/nomone/GeckoView/MyGeckoView;->a:Ln1/l;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nomone/GeckoView/MyGeckoView;->e:Z

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/nomone/GeckoView/MyGeckoView;->i:F

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/nomone/GeckoView/MyGeckoView;->j:Ljava/util/ArrayList;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "GeckoView "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/nomone/GeckoView/MyGeckoView;->t:I

    add-int/2addr v0, p1

    sput v0, Lcom/nomone/GeckoView/MyGeckoView;->t:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nomone/GeckoView/MyGeckoView;->l:Ljava/lang/String;

    new-instance p1, Lu1/w;

    new-instance p2, Lz1/a;

    invoke-direct {p2}, Lz1/a;-><init>()V

    invoke-direct {p1, p2}, Lu1/w;-><init>(Lz1/b;)V

    iput-object p1, p0, Lcom/nomone/GeckoView/MyGeckoView;->m:Lu1/w;

    invoke-virtual {p0}, Lcom/nomone/GeckoView/MyGeckoView;->d()V

    return-void
.end method

.method public static b(Lq1/f;)Lcom/nomone/GeckoView/MyGeckoView;
    .locals 4

    .line 1
    new-instance v0, Lorg/mozilla/geckoview/GeckoSessionSettings;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/mozilla/geckoview/GeckoSessionSettings;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setUserAgentMode(I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setViewportMode(I)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-virtual {v0, v2}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setDisplayMode(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setSuspendMediaWhenInactive(Z)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Ln1/e;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Ln1/e;-><init>(Lorg/mozilla/geckoview/GeckoSessionSettings;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lorg/mozilla/geckoview/GeckoSession;->getCompositorController()Lorg/mozilla/geckoview/CompositorController;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const v2, 0x302a2e30

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lorg/mozilla/geckoview/CompositorController;->setClearColor(I)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/nomone/GeckoView/MyGeckoView;

    .line 37
    .line 38
    iget-object v2, p0, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 39
    .line 40
    invoke-direct {v0, v2}, Lcom/nomone/GeckoView/MyGeckoView;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 44
    .line 45
    const/4 v3, -0x1

    .line 46
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/nomone/GeckoView/MyGeckoView;->setSession(Lorg/mozilla/geckoview/GeckoSession;)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Ln1/g;

    .line 56
    .line 57
    invoke-direct {v2, v0}, Ln1/g;-><init>(Lcom/nomone/GeckoView/MyGeckoView;)V

    .line 58
    .line 59
    .line 60
    sget-object v3, Lq1/f;->L:Lo1/j0;

    .line 61
    .line 62
    invoke-static {v1, v2, v3}, Ln1/c;->a(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/WebExtension$PortDelegate;Lo1/j0;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0, p0}, Lcom/nomone/GeckoView/MyGeckoView;->setupSoftKeyboard(Lcom/nomone/GeckoView/MyGeckoView;Lq1/f;)V

    .line 66
    .line 67
    .line 68
    return-object v0
.end method

.method public static c(Lcom/nomone/vr_desktop/LaunchActivity;F)Lorg/mozilla/geckoview/GeckoRuntime;
    .locals 4

    .line 1
    sget-object v0, Lcom/nomone/GeckoView/MyGeckoView;->n:Lorg/mozilla/geckoview/GeckoRuntime;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "ui.android.mouse_as_touch"

    .line 12
    .line 13
    invoke-static {v2, v1, v0}, Lorg/mozilla/gecko/PrefsHelper;->setPref(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 14
    .line 15
    .line 16
    const-string v1, "browser.tabs.remote.force-enable"

    .line 17
    .line 18
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-static {v1, v2, v0}, Lorg/mozilla/gecko/PrefsHelper;->setPref(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 21
    .line 22
    .line 23
    const-string v1, "accessibility.force_disabled"

    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v1, v2, v0}, Lorg/mozilla/gecko/PrefsHelper;->setPref(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 30
    .line 31
    .line 32
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 33
    .line 34
    const-string v2, "network.prefetch-next"

    .line 35
    .line 36
    invoke-static {v2, v1, v0}, Lorg/mozilla/gecko/PrefsHelper;->setPref(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 37
    .line 38
    .line 39
    const-string v2, "browser.cache.offline.enable"

    .line 40
    .line 41
    invoke-static {v2, v1, v0}, Lorg/mozilla/gecko/PrefsHelper;->setPref(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 42
    .line 43
    .line 44
    const-string v2, "browser.cache.disk_cache_ssl"

    .line 45
    .line 46
    invoke-static {v2, v1, v0}, Lorg/mozilla/gecko/PrefsHelper;->setPref(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 47
    .line 48
    .line 49
    const-string v2, "browser.cache.disk.enable"

    .line 50
    .line 51
    invoke-static {v2, v1, v0}, Lorg/mozilla/gecko/PrefsHelper;->setPref(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 52
    .line 53
    .line 54
    const-string v2, "browser.cache.memory.enable"

    .line 55
    .line 56
    invoke-static {v2, v1, v0}, Lorg/mozilla/gecko/PrefsHelper;->setPref(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 57
    .line 58
    .line 59
    const/16 v2, 0x10

    .line 60
    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const-string v3, "dom.maxHardwareConcurrency"

    .line 66
    .line 67
    invoke-static {v3, v2, v0}, Lorg/mozilla/gecko/PrefsHelper;->setPref(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 68
    .line 69
    .line 70
    const-string v2, "dom.ipc.processCount"

    .line 71
    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v2, v3, v0}, Lorg/mozilla/gecko/PrefsHelper;->setPref(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 77
    .line 78
    .line 79
    const-string v2, "security.fileuri.strict_origin_policy"

    .line 80
    .line 81
    invoke-static {v2, v1, v0}, Lorg/mozilla/gecko/PrefsHelper;->setPref(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 82
    .line 83
    .line 84
    const-string v2, "privacy.file_unique_origin"

    .line 85
    .line 86
    invoke-static {v2, v1, v0}, Lorg/mozilla/gecko/PrefsHelper;->setPref(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Lcom/nomone/GeckoView/MyGeckoView;->setGlobalDisplayDensity(F)V

    .line 90
    .line 91
    .line 92
    new-instance p1, Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;

    .line 93
    .line 94
    invoke-direct {p1}, Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;-><init>()V

    .line 95
    .line 96
    .line 97
    sget v0, Lcom/nomone/GeckoView/MyGeckoView;->o:F

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;->displayDensityOverride(F)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;

    .line 100
    .line 101
    .line 102
    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;->consoleOutput(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;->debugLogging(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;->aboutConfigEnabled(Z)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;->glMsaaLevel(I)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;

    .line 113
    .line 114
    .line 115
    new-instance v1, Lorg/mozilla/geckoview/ContentBlocking$Settings$Builder;

    .line 116
    .line 117
    invoke-direct {v1}, Lorg/mozilla/geckoview/ContentBlocking$Settings$Builder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v0}, Lorg/mozilla/geckoview/ContentBlocking$Settings$Builder;->cookieLifetime(I)Lorg/mozilla/geckoview/ContentBlocking$Settings$Builder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->build()Lorg/mozilla/geckoview/RuntimeSettings;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Lorg/mozilla/geckoview/ContentBlocking$Settings;

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;->contentBlocking(Lorg/mozilla/geckoview/ContentBlocking$Settings;)Lorg/mozilla/geckoview/GeckoRuntimeSettings$Builder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->build()Lorg/mozilla/geckoview/RuntimeSettings;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    check-cast p1, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    .line 137
    .line 138
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/GeckoRuntime;->create(Landroid/content/Context;Lorg/mozilla/geckoview/GeckoRuntimeSettings;)Lorg/mozilla/geckoview/GeckoRuntime;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    sput-object p0, Lcom/nomone/GeckoView/MyGeckoView;->n:Lorg/mozilla/geckoview/GeckoRuntime;

    .line 143
    .line 144
    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoRuntime;->getWebExtensionController()Lorg/mozilla/geckoview/WebExtensionController;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lorg/mozilla/geckoview/WebExtensionController;->list()Lorg/mozilla/geckoview/GeckoResult;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    new-instance v0, Lh0/b;

    .line 153
    .line 154
    const/16 v1, 0x8

    .line 155
    .line 156
    invoke-direct {v0, p0, v1}, Lh0/b;-><init>(Ljava/lang/Object;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoResult;->then(Lorg/mozilla/geckoview/GeckoResult$OnValueListener;)Lorg/mozilla/geckoview/GeckoResult;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    new-instance p1, Lh0/c;

    .line 164
    .line 165
    const/16 v0, 0xb

    .line 166
    .line 167
    invoke-direct {p1, v0}, Lh0/c;-><init>(I)V

    .line 168
    .line 169
    .line 170
    new-instance v0, Lh0/c;

    .line 171
    .line 172
    const/16 v1, 0xc

    .line 173
    .line 174
    invoke-direct {v0, v1}, Lh0/c;-><init>(I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, p1, v0}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    .line 178
    .line 179
    .line 180
    sget-object p0, Lcom/nomone/GeckoView/MyGeckoView;->n:Lorg/mozilla/geckoview/GeckoRuntime;

    .line 181
    .line 182
    return-object p0
.end method

.method public static getGlobalDisplayDensity()F
    .locals 1

    sget v0, Lcom/nomone/GeckoView/MyGeckoView;->o:F

    return v0
.end method

.method private getSessionEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static setGlobalDisplayDensity(F)V
    .locals 2

    sput p0, Lcom/nomone/GeckoView/MyGeckoView;->o:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "layout.css.devPixelsPerPx"

    invoke-static {v1, p0, v0}, Lorg/mozilla/gecko/PrefsHelper;->setPref(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static setupSoftKeyboard(Lcom/nomone/GeckoView/MyGeckoView;Lq1/f;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/nomone/GeckoView/MyGeckoView;->getSession()Lorg/mozilla/geckoview/GeckoSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object v1

    new-instance v2, Ln1/h;

    invoke-direct {v2, v1, p0, p1}, Ln1/h;-><init>(Lorg/mozilla/geckoview/SessionTextInput;Lcom/nomone/GeckoView/MyGeckoView;Lq1/f;)V

    invoke-virtual {v1, v2}, Lorg/mozilla/geckoview/SessionTextInput;->setDelegate(Lorg/mozilla/geckoview/GeckoSession$TextInputDelegate;)V

    new-instance v1, Ln1/i;

    invoke-direct {v1, p0, p1}, Ln1/i;-><init>(Lcom/nomone/GeckoView/MyGeckoView;Lq1/f;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance p0, Ln1/j;

    invoke-direct {p0}, Ln1/j;-><init>()V

    invoke-virtual {v0, p0}, Lorg/mozilla/geckoview/GeckoSession;->setSelectionActionDelegate(Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;)V

    return-void
.end method


# virtual methods
.method public final a(Ln1/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final autofill(Landroid/util/SparseArray;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->autofill(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v2}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoSession;->autofill(Landroid/util/SparseArray;)V

    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 9
    .line 10
    .line 11
    const/high16 v0, 0x60000

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Ln1/o;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Ln1/o;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->c:Ln1/o;

    .line 30
    .line 31
    iget-object v0, v0, Ln1/o;->a:Landroid/view/TextureView;

    .line 32
    .line 33
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    const/4 v2, -0x1

    .line 36
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->c:Ln1/o;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/nomone/GeckoView/MyGeckoView;->a:Ln1/l;

    .line 45
    .line 46
    iput-object v1, v0, Ln1/o;->e:Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lorg/mozilla/gecko/util/ActivityUtils;->getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    new-instance v1, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;

    .line 59
    .line 60
    invoke-direct {v1, v0}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;-><init>(Landroid/app/Activity;)V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/nomone/GeckoView/MyGeckoView;->f:Lorg/mozilla/geckoview/BasicSelectionActionDelegate;

    .line 64
    .line 65
    :cond_0
    new-instance v0, Ln1/k;

    .line 66
    .line 67
    invoke-direct {v0, p0}, Ln1/k;-><init>(Lcom/nomone/GeckoView/MyGeckoView;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->g:Ln1/k;

    .line 71
    .line 72
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getOverscrollEdgeEffect()Lorg/mozilla/geckoview/OverscrollEdgeEffect;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->k:Lorg/mozilla/geckoview/WebExtension$Port;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/nomone/GeckoView/MyGeckoView;->k:Lorg/mozilla/geckoview/WebExtension$Port;

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/WebExtension$Port;->postMessage(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->k:Lorg/mozilla/geckoview/WebExtension$Port;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "pageCode"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/nomone/GeckoView/MyGeckoView;->k:Lorg/mozilla/geckoview/WebExtension$Port;

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/WebExtension$Port;->postMessage(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->k:Lorg/mozilla/geckoview/WebExtension$Port;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/nomone/GeckoView/MyGeckoView;->k:Lorg/mozilla/geckoview/WebExtension$Port;

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/WebExtension$Port;->postMessage(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 1

    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->c:Ln1/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->a:Ln1/l;

    invoke-virtual {v0}, Ln1/l;->b()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result p1

    return p1
.end method

.method public getAutofillEnabled()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    iget-boolean v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->e:Z

    return v0
.end method

.method public getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;
    .locals 1

    invoke-direct {p0}, Lcom/nomone/GeckoView/MyGeckoView;->getSessionEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    invoke-super {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getLastHoverEvent()Lu1/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->m:Lu1/w;

    return-object v0
.end method

.method public getPanZoomController()Lorg/mozilla/geckoview/PanZoomController;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getPanZoomController()Lorg/mozilla/geckoview/PanZoomController;

    move-result-object v0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->i:F

    return v0
.end method

.method public getSession()Lorg/mozilla/geckoview/GeckoSession;
    .locals 1

    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    return-object v0
.end method

.method public getSessionRuntime()Lorg/mozilla/geckoview/GeckoRuntime;
    .locals 4

    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->h:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Lorg/mozilla/geckoview/GeckoSession;

    const-string v2, "getRuntime"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->h:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->h:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoRuntime;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->c:Ln1/o;

    .line 2
    .line 3
    iget-object v0, v0, Ln1/o;->b:Landroid/view/Surface;

    .line 4
    .line 5
    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->c:Ln1/o;

    .line 2
    .line 3
    iget-object v0, v0, Ln1/o;->a:Landroid/view/TextureView;

    .line 4
    .line 5
    return-object v0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nomone/GeckoView/MyGeckoView;->getSessionRuntime()Lorg/mozilla/geckoview/GeckoRuntime;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoRuntime;->orientationChanged()V

    :cond_0
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nomone/GeckoView/MyGeckoView;->a:Ln1/l;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->acquireDisplay()Lorg/mozilla/geckoview/GeckoDisplay;

    move-result-object v0

    invoke-virtual {v1, v0}, Ln1/l;->a(Lorg/mozilla/geckoview/GeckoDisplay;)V

    :cond_1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nomone/GeckoView/MyGeckoView;->getSessionRuntime()Lorg/mozilla/geckoview/GeckoRuntime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoRuntime;->orientationChanged(I)V

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoRuntime;->configurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/SessionTextInput;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public final onDetachedFromWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/nomone/GeckoView/MyGeckoView;->a:Ln1/l;

    .line 10
    .line 11
    iget-boolean v2, v1, Ln1/l;->c:Z

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    iget-object v2, v1, Ln1/l;->b:Lorg/mozilla/geckoview/GeckoDisplay;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v2}, Lorg/mozilla/geckoview/GeckoDisplay;->surfaceDestroyed()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v2, v1, Ln1/l;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v2, v3}, Lcom/nomone/GeckoView/MyGeckoView;->setActive(Z)V

    .line 26
    .line 27
    .line 28
    :cond_2
    iget-object v2, v1, Ln1/l;->b:Lorg/mozilla/geckoview/GeckoDisplay;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    iput-object v3, v1, Ln1/l;->b:Lorg/mozilla/geckoview/GeckoDisplay;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lorg/mozilla/geckoview/GeckoSession;->releaseDisplay(Lorg/mozilla/geckoview/GeckoDisplay;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-boolean p2, p0, Lcom/nomone/GeckoView/MyGeckoView;->d:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lorg/mozilla/geckoview/GeckoSession;->setFocused(Z)V

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ln1/f;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Ln1/f;-><init>(Lcom/nomone/GeckoView/MyGeckoView;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/mozilla/gecko/AndroidGamepadManager;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getAccessibility()Lorg/mozilla/geckoview/SessionAccessibility;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/SessionAccessibility;->onMotionEvent(Landroid/view/MotionEvent;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getPanZoomController()Lorg/mozilla/geckoview/PanZoomController;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/PanZoomController;->onMotionEvent(Landroid/view/MotionEvent;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    const/4 p1, 0x1

    .line 34
    return p1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/geckoview/SessionTextInput;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/geckoview/SessionTextInput;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/geckoview/SessionTextInput;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/geckoview/SessionTextInput;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/geckoview/SessionTextInput;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/mozilla/geckoview/Autofill$Session;->fillViewStructure(Landroid/view/View;Landroid/view/ViewStructure;I)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ln1/n;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Ln1/n;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p1, Ln1/n;->a:Lorg/mozilla/geckoview/GeckoSession;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoSession;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0, p1}, Lcom/nomone/GeckoView/MyGeckoView;->setSession(Lorg/mozilla/geckoview/GeckoSession;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Ln1/n;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iget-object v2, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    invoke-direct {v0, v1, v2}, Ln1/n;-><init>(Landroid/os/Parcelable;Lorg/mozilla/geckoview/GeckoSession;)V

    return-object v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getPanZoomController()Lorg/mozilla/geckoview/PanZoomController;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/PanZoomController;->onMouseEvent(Landroid/view/MotionEvent;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoSession;->setFocused(Z)V

    :cond_0
    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoSession;->setFocused(Z)V

    :cond_0
    return-void
.end method

.method public setActive(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoSession;->setActive(Z)V

    :cond_0
    return-void
.end method

.method public setAutofillEnabled(Z)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    iput-boolean p1, p0, Lcom/nomone/GeckoView/MyGeckoView;->e:Z

    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getAutofillDelegate()Lorg/mozilla/geckoview/Autofill$Delegate;

    move-result-object v0

    iget-object v1, p0, Lcom/nomone/GeckoView/MyGeckoView;->g:Ln1/k;

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->g:Ln1/k;

    :goto_0
    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoSession;->setAutofillDelegate(Lorg/mozilla/geckoview/Autofill$Delegate;)V

    :cond_1
    return-void
.end method

.method public setDynamicToolbarMaxHeight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->a:Ln1/l;

    .line 2
    .line 3
    iput p1, v0, Ln1/l;->e:I

    .line 4
    .line 5
    iget-object v0, v0, Ln1/l;->b:Lorg/mozilla/geckoview/GeckoDisplay;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoDisplay;->setDynamicToolbarMaxHeight(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setLastHoverEvent(Lu1/w;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->m:Lu1/w;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lu1/w;->b(Lu1/w;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lu1/w;->b:Lz1/b;

    .line 7
    .line 8
    invoke-interface {p1}, Lz1/b;->a()Lz1/b;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, v0, Lu1/w;->b:Lz1/b;

    .line 13
    .line 14
    return-void
.end method

.method public setScale(F)V
    .locals 2

    iput p1, p0, Lcom/nomone/GeckoView/MyGeckoView;->i:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setViewport("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nomone/GeckoView/MyGeckoView;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setSession(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 5

    .line 1
    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->isOpen()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v0, "Current session is open"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :cond_1
    :goto_0
    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iget-object v2, p0, Lcom/nomone/GeckoView/MyGeckoView;->a:Ln1/l;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :cond_2
    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    .line 39
    .line 40
    iget-boolean v3, v2, Ln1/l;->c:Z

    .line 41
    .line 42
    if-eqz v3, :cond_4

    .line 43
    .line 44
    iget-object v3, v2, Ln1/l;->b:Lorg/mozilla/geckoview/GeckoDisplay;

    .line 45
    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    invoke-virtual {v3}, Lorg/mozilla/geckoview/GeckoDisplay;->surfaceDestroyed()V

    .line 49
    .line 50
    .line 51
    :cond_3
    iget-object v3, v2, Ln1/l;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 52
    .line 53
    invoke-virtual {v3, v1}, Lcom/nomone/GeckoView/MyGeckoView;->setActive(Z)V

    .line 54
    .line 55
    .line 56
    :cond_4
    iget-object v3, v2, Ln1/l;->b:Lorg/mozilla/geckoview/GeckoDisplay;

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    iput-object v4, v2, Ln1/l;->b:Lorg/mozilla/geckoview/GeckoDisplay;

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Lorg/mozilla/geckoview/GeckoSession;->releaseDisplay(Lorg/mozilla/geckoview/GeckoDisplay;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    .line 65
    .line 66
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getOverscrollEdgeEffect()Lorg/mozilla/geckoview/OverscrollEdgeEffect;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0, v4}, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->setInvalidationCallback(Ljava/lang/Runnable;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    .line 74
    .line 75
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getCompositorController()Lorg/mozilla/geckoview/CompositorController;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0, v4}, Lorg/mozilla/geckoview/CompositorController;->setFirstPaintCallback(Ljava/lang/Runnable;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    .line 83
    .line 84
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getAccessibility()Lorg/mozilla/geckoview/SessionAccessibility;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lorg/mozilla/geckoview/SessionAccessibility;->getView()Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-ne v0, p0, :cond_5

    .line 93
    .line 94
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    .line 95
    .line 96
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getAccessibility()Lorg/mozilla/geckoview/SessionAccessibility;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0, v4}, Lorg/mozilla/geckoview/SessionAccessibility;->setView(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    :cond_5
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    .line 104
    .line 105
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lorg/mozilla/geckoview/SessionTextInput;->getView()Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-ne v0, p0, :cond_6

    .line 114
    .line 115
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    .line 116
    .line 117
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0, v4}, Lorg/mozilla/geckoview/SessionTextInput;->setView(Landroid/view/View;)V

    .line 122
    .line 123
    .line 124
    :cond_6
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    .line 125
    .line 126
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getSelectionActionDelegate()Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-object v3, p0, Lcom/nomone/GeckoView/MyGeckoView;->f:Lorg/mozilla/geckoview/BasicSelectionActionDelegate;

    .line 131
    .line 132
    if-ne v0, v3, :cond_7

    .line 133
    .line 134
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    .line 135
    .line 136
    invoke-virtual {v0, v4}, Lorg/mozilla/geckoview/GeckoSession;->setSelectionActionDelegate(Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;)V

    .line 137
    .line 138
    .line 139
    :cond_7
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    .line 140
    .line 141
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getAutofillDelegate()Lorg/mozilla/geckoview/Autofill$Delegate;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iget-object v3, p0, Lcom/nomone/GeckoView/MyGeckoView;->g:Ln1/k;

    .line 146
    .line 147
    if-ne v0, v3, :cond_8

    .line 148
    .line 149
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    .line 150
    .line 151
    invoke-virtual {v0, v4}, Lorg/mozilla/geckoview/GeckoSession;->setAutofillDelegate(Lorg/mozilla/geckoview/Autofill$Delegate;)V

    .line 152
    .line 153
    .line 154
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_9

    .line 159
    .line 160
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoSession;->setFocused(Z)V

    .line 163
    .line 164
    .line 165
    :cond_9
    iput-object v4, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    .line 166
    .line 167
    :goto_1
    iput-object p1, p0, Lcom/nomone/GeckoView/MyGeckoView;->b:Lorg/mozilla/geckoview/GeckoSession;

    .line 168
    .line 169
    sget-object v0, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 170
    .line 171
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_a

    .line 176
    .line 177
    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->acquireDisplay()Lorg/mozilla/geckoview/GeckoDisplay;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v2, v0}, Ln1/l;->a(Lorg/mozilla/geckoview/GeckoDisplay;)V

    .line 182
    .line 183
    .line 184
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getOverscrollEdgeEffect()Lorg/mozilla/geckoview/OverscrollEdgeEffect;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v2, v0}, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->setTheme(Landroid/content/Context;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getOverscrollEdgeEffect()Lorg/mozilla/geckoview/OverscrollEdgeEffect;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    new-instance v3, Ln1/f;

    .line 200
    .line 201
    invoke-direct {v3, p0, v1}, Ln1/f;-><init>(Lcom/nomone/GeckoView/MyGeckoView;I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v3}, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->setInvalidationCallback(Ljava/lang/Runnable;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    new-instance v2, Landroid/util/TypedValue;

    .line 216
    .line 217
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    const v3, 0x101004d

    .line 225
    .line 226
    .line 227
    const/4 v4, 0x1

    .line 228
    invoke-virtual {v0, v3, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_b

    .line 233
    .line 234
    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getPanZoomController()Lorg/mozilla/geckoview/PanZoomController;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v2, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    goto :goto_2

    .line 243
    :cond_b
    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getPanZoomController()Lorg/mozilla/geckoview/PanZoomController;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 248
    .line 249
    int-to-float v1, v1

    .line 250
    const v2, 0x3d99999a    # 0.075f

    .line 251
    .line 252
    .line 253
    mul-float/2addr v1, v2

    .line 254
    :goto_2
    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/PanZoomController;->setScrollFactor(F)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getCompositorController()Lorg/mozilla/geckoview/CompositorController;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    new-instance v1, Ln1/f;

    .line 262
    .line 263
    invoke-direct {v1, p0, v4}, Ln1/f;-><init>(Lcom/nomone/GeckoView/MyGeckoView;I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/CompositorController;->setFirstPaintCallback(Ljava/lang/Runnable;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lorg/mozilla/geckoview/SessionTextInput;->getView()Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    if-nez v0, :cond_c

    .line 278
    .line 279
    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {v0, p0}, Lorg/mozilla/geckoview/SessionTextInput;->setView(Landroid/view/View;)V

    .line 284
    .line 285
    .line 286
    :cond_c
    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getSelectionActionDelegate()Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    if-nez v0, :cond_d

    .line 291
    .line 292
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->f:Lorg/mozilla/geckoview/BasicSelectionActionDelegate;

    .line 293
    .line 294
    if-eqz v0, :cond_d

    .line 295
    .line 296
    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoSession;->setSelectionActionDelegate(Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;)V

    .line 297
    .line 298
    .line 299
    :cond_d
    iget-boolean v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->e:Z

    .line 300
    .line 301
    if-eqz v0, :cond_e

    .line 302
    .line 303
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->g:Ln1/k;

    .line 304
    .line 305
    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoSession;->setAutofillDelegate(Lorg/mozilla/geckoview/Autofill$Delegate;)V

    .line 306
    .line 307
    .line 308
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-eqz v0, :cond_f

    .line 313
    .line 314
    invoke-virtual {p1, v4}, Lorg/mozilla/geckoview/GeckoSession;->setFocused(Z)V

    .line 315
    .line 316
    .line 317
    :cond_f
    return-void
.end method

.method public setVerticalClipping(I)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->a:Ln1/l;

    .line 5
    .line 6
    iput p1, v0, Ln1/l;->d:I

    .line 7
    .line 8
    iget-object v0, v0, Ln1/l;->b:Lorg/mozilla/geckoview/GeckoDisplay;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoDisplay;->setVerticalClipping(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setViewBackend(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nomone/GeckoView/MyGeckoView;->c:Ln1/o;

    .line 2
    .line 3
    iget-object v0, v0, Ln1/o;->a:Landroid/view/TextureView;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/nomone/GeckoView/MyGeckoView;->c:Ln1/o;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/nomone/GeckoView/MyGeckoView;->c:Ln1/o;

    .line 23
    .line 24
    iget-object p1, p1, Ln1/o;->a:Landroid/view/TextureView;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/nomone/GeckoView/MyGeckoView;->c:Ln1/o;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    new-instance p1, Ljava/lang/RuntimeException;

    .line 39
    .line 40
    const-string v0, "SurfaceView mode not supported"

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method
