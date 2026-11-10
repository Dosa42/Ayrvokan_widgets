.class public final Landroidx/fragment/app/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp/f;
.implements Lf0/s;
.implements Ll0/b;
.implements Li1/a;
.implements Lr1/w;
.implements Lr1/p;


# instance fields
.field public final synthetic f:I

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Landroidx/fragment/app/h;->f:I

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 4
    iput p1, p0, Landroidx/fragment/app/h;->f:I

    iput-object p3, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(La1/b;)V
    .locals 1

    .line 5
    sget-object p1, Lv0/d;->c:Lv0/d;

    const/16 v0, 0xf

    .line 6
    iput v0, p0, Landroidx/fragment/app/h;->f:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/y2;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/fragment/app/h;->f:I

    .line 8
    new-instance v0, Ls1/k;

    invoke-direct {v0, p1}, Ls1/k;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec$CryptoInfo;)V
    .locals 1

    const/16 v0, 0x1d

    iput v0, p0, Landroidx/fragment/app/h;->f:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    new-instance p1, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    iput-object p1, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/MediaCodec$CryptoInfo;I)V
    .locals 0

    const/16 p2, 0x1d

    iput p2, p0, Landroidx/fragment/app/h;->f:I

    .line 10
    invoke-direct {p0, p1}, Landroidx/fragment/app/h;-><init>(Landroid/media/MediaCodec$CryptoInfo;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/g;)V
    .locals 1

    const/16 p1, 0x11

    iput p1, p0, Landroidx/fragment/app/h;->f:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 12
    check-cast p1, [F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/fragment/app/h;->f:I

    .line 13
    iput-object p1, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;)V
    .locals 1

    const/16 v0, 0x14

    iput v0, p0, Landroidx/fragment/app/h;->f:I

    .line 14
    iput-object p1, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf0/m;Landroid/app/AlertDialog;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Landroidx/fragment/app/h;->f:I

    .line 15
    iput-object p1, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lh/a;)V
    .locals 3

    const/16 v0, 0x16

    iput v0, p0, Landroidx/fragment/app/h;->f:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo1/e;

    new-instance v1, Lh0/b;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lh0/b;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Lo1/e;-><init>(Lo1/c;)V

    iput-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    iput-object p0, p1, Lh/a;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Landroidx/fragment/app/h;->f:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/i0;->l(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 19
    iput p2, p0, Landroidx/fragment/app/h;->f:I

    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 20
    iput p2, p0, Landroidx/fragment/app/h;->f:I

    iput-object p1, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 21
    iput p3, p0, Landroidx/fragment/app/h;->f:I

    iput-object p1, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lq1/r;)V
    .locals 1

    const/16 v0, 0x1a

    iput v0, p0, Landroidx/fragment/app/h;->f:I

    .line 22
    iput-object p1, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 23
    iput-object p1, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lu1/x;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lr1/y;

    iget-object v1, v1, Lr1/y;->p:Lr1/x;

    if-eqz v1, :cond_0

    check-cast v0, Lr1/y;

    iget-object v0, v0, Lr1/y;->p:Lr1/x;

    iget-object v1, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    check-cast v1, Lcom/nomone/vr_desktop/Applications/PromptApplication;

    invoke-interface {v0, v1, p1}, Lr1/x;->o(Lcom/nomone/vr_desktop/Applications/PromptApplication;Lu1/x;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    check-cast v0, Lr1/y;

    iget-object v0, v0, Lr1/y;->p:Lr1/x;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    check-cast v1, Lcom/nomone/vr_desktop/Applications/PromptApplication;

    invoke-interface {v0, v1}, Lr1/x;->v(Lcom/nomone/vr_desktop/Applications/PromptApplication;)V

    :cond_0
    return-void
.end method

.method public final e(Li1/f;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lx0/i;

    .line 4
    .line 5
    iget-object p1, p1, Lx0/i;->b:Ljava/util/Map;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Li1/b;

    .line 10
    .line 11
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    check-cast v0, Lr1/y;

    iget-object v0, v0, Lr1/y;->o:Lr1/w;

    if-eqz v0, :cond_0

    const-string v1, "Cancel"

    invoke-interface {v0, v1}, Lr1/w;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "gotoWebsite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://desktop.nomone.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final h(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    check-cast v0, Lo1/e;

    invoke-virtual {v0}, Lo1/e;->b()Lo1/d;

    move-result-object v0

    iget-object v0, v0, Lo1/d;->a:Ljava/lang/Object;

    check-cast v0, Lq1/g;

    iput-object p1, v0, Lq1/g;->a:Landroid/graphics/Rect;

    :cond_1
    :goto_0
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final k()Lj1/c;
    .locals 4

    .line 1
    new-instance v0, Lj1/c;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/util/Map;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    .line 19
    .line 20
    iget-object v3, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v3, Ljava/util/Map;

    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :goto_0
    invoke-direct {v0, v1, v2}, Lj1/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public final l(Ljava/lang/String;)Lcom/google/android/datatransport/cct/CctBackendFactory;
    .locals 13

    .line 1
    const-string v0, "Could not instantiate %s"

    .line 2
    .line 3
    const-string v1, "Could not instantiate %s."

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/util/Map;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    if-nez v2, :cond_6

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Landroid/content/Context;

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    if-nez v5, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v6, Landroid/content/ComponentName;

    .line 25
    .line 26
    const-class v7, Lcom/google/android/datatransport/runtime/backends/TransportBackendDiscovery;

    .line 27
    .line 28
    invoke-direct {v6, v2, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .line 30
    .line 31
    const/16 v2, 0x80

    .line 32
    .line 33
    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catch_0
    :goto_0
    move-object v2, v4

    .line 44
    :goto_1
    if-nez v2, :cond_2

    .line 45
    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    goto :goto_4

    .line 51
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_5

    .line 69
    .line 70
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    check-cast v7, Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    instance-of v9, v8, Ljava/lang/String;

    .line 81
    .line 82
    if-eqz v9, :cond_3

    .line 83
    .line 84
    const-string v9, "backend:"

    .line 85
    .line 86
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-eqz v9, :cond_3

    .line 91
    .line 92
    check-cast v8, Ljava/lang/String;

    .line 93
    .line 94
    const-string v9, ","

    .line 95
    .line 96
    const/4 v10, -0x1

    .line 97
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    array-length v9, v8

    .line 102
    move v10, v3

    .line 103
    :goto_2
    if-ge v10, v9, :cond_3

    .line 104
    .line 105
    aget-object v11, v8, v10

    .line 106
    .line 107
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    if-eqz v12, :cond_4

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_4
    const/16 v12, 0x8

    .line 119
    .line 120
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_5
    move-object v2, v5

    .line 131
    :goto_4
    iput-object v2, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 132
    .line 133
    :cond_6
    iget-object v2, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v2, Ljava/util/Map;

    .line 136
    .line 137
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Ljava/lang/String;

    .line 142
    .line 143
    if-nez p1, :cond_7

    .line 144
    .line 145
    return-object v4

    .line 146
    :cond_7
    :try_start_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    const-class v5, Lcom/google/android/datatransport/cct/CctBackendFactory;

    .line 151
    .line 152
    invoke-virtual {v2, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    new-array v5, v3, [Ljava/lang/Class;

    .line 157
    .line 158
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    new-array v3, v3, [Ljava/lang/Object;

    .line 163
    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Lcom/google/android/datatransport/cct/CctBackendFactory;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    .line 170
    return-object v2

    .line 171
    :catch_1
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    goto :goto_5

    .line 179
    :catch_2
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    goto :goto_5

    .line 187
    :catch_3
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    goto :goto_5

    .line 195
    :catch_4
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :catch_5
    const-string v0, "Class %s is not found."

    .line 204
    .line 205
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    :goto_5
    return-object v4
.end method

.method public final m()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld2/a;

    .line 4
    .line 5
    invoke-interface {v0}, Ld2/a;->m()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/content/Context;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Ld2/a;

    .line 14
    .line 15
    invoke-interface {v1}, Ld2/a;->m()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lk0/g;

    .line 20
    .line 21
    check-cast v1, Lk0/e;

    .line 22
    .line 23
    invoke-direct {v2, v0, v1}, Lk0/g;-><init>(Landroid/content/Context;Lk0/e;)V

    .line 24
    .line 25
    .line 26
    return-object v2
.end method

.method public final n(Landroid/graphics/Rect;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo1/e;

    .line 4
    .line 5
    iget v0, v0, Lo1/e;->a:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Lo1/e;

    .line 14
    .line 15
    invoke-virtual {v3}, Lo1/e;->c()Lo1/d;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v3, v3, Lo1/d;->a:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Lq1/g;

    .line 22
    .line 23
    iget-object v3, v3, Lq1/g;->a:Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-static {p1, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return v1
.end method

.method public final o(Landroidx/fragment/app/h;Landroidx/fragment/app/h;)V
    .locals 7

    .line 1
    if-eq p0, p2, :cond_1

    .line 2
    .line 3
    if-ne p1, p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p2, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v0, p2

    .line 9
    check-cast v0, [F

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iget-object p2, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v2, p2

    .line 15
    check-cast v2, [F

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    iget-object p1, p1, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v4, p1

    .line 21
    check-cast v4, [F

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Landroidx/fragment/app/h;

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    new-instance v0, Landroidx/fragment/app/h;

    .line 35
    .line 36
    const/16 v1, 0x11

    .line 37
    .line 38
    invoke-direct {v0, v1}, Landroidx/fragment/app/h;-><init>(I)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Landroidx/fragment/app/h;

    .line 46
    .line 47
    iget-object v0, v0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 48
    .line 49
    move-object v1, v0

    .line 50
    check-cast v1, [F

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 54
    .line 55
    move-object v3, v0

    .line 56
    check-cast v3, [F

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    iget-object p1, p1, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 60
    .line 61
    move-object v5, p1

    .line 62
    check-cast v5, [F

    .line 63
    .line 64
    const/4 v6, 0x0

    .line 65
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p1, Landroidx/fragment/app/h;

    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    iget-object p1, p1, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p1, [F

    .line 78
    .line 79
    iget-object p2, p2, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p2, [F

    .line 82
    .line 83
    const/16 v0, 0x10

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    .line 88
    .line 89
    :goto_1
    return-void
.end method

.method public final p(FF)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    sub-float/2addr p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v2, v1, p1

    const/high16 v3, -0x3d380000    # -100.0f

    add-float v4, v3, p2

    sub-float/2addr v4, v0

    sub-float/2addr v3, p2

    mul-float/2addr v3, p1

    div-float/2addr v4, v3

    sub-float v3, v0, p2

    mul-float/2addr p2, v4

    mul-float/2addr p2, p1

    sub-float/2addr v3, p2

    mul-float/2addr v3, v2

    iget-object p1, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    check-cast p1, [F

    const/4 p2, 0x0

    aput v1, p1, p2

    const/4 p2, 0x1

    aput v0, p1, p2

    const/4 p2, 0x2

    aput v0, p1, p2

    const/4 p2, 0x3

    aput v0, p1, p2

    const/4 p2, 0x4

    aput v0, p1, p2

    const/4 p2, 0x5

    aput v1, p1, p2

    const/4 p2, 0x6

    aput v0, p1, p2

    const/4 p2, 0x7

    aput v0, p1, p2

    const/16 p2, 0x8

    aput v0, p1, p2

    const/16 p2, 0x9

    aput v0, p1, p2

    const/16 p2, 0xa

    aput v4, p1, p2

    const/16 p2, 0xb

    aput v2, p1, p2

    const/16 p2, 0xc

    aput v0, p1, p2

    const/16 p2, 0xd

    aput v0, p1, p2

    const/16 p2, 0xe

    aput v3, p1, p2

    const/high16 p2, -0x80000000

    mul-float/2addr p2, v2

    const/16 v0, 0xf

    aput p2, p1, v0

    return-void
.end method

.method public final q(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo1/e;

    .line 4
    .line 5
    iget v0, v0, Lo1/e;->a:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Lo1/e;

    .line 13
    .line 14
    invoke-virtual {v2}, Lo1/e;->c()Lo1/d;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v3, v2, Lo1/d;->a:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v3, Lq1/g;

    .line 21
    .line 22
    iget-object v3, v3, Lq1/g;->a:Landroid/graphics/Rect;

    .line 23
    .line 24
    if-ne p1, v3, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, v2, Lo1/d;->b:Z

    .line 28
    .line 29
    iget-object v0, v2, Lo1/d;->c:Lo1/e;

    .line 30
    .line 31
    iget v1, v0, Lo1/e;->a:I

    .line 32
    .line 33
    sub-int/2addr v1, p1

    .line 34
    iput v1, v0, Lo1/e;->a:I

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method public final r(FF)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    check-cast v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public final s(Lm1/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-class v1, Lm1/e;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final t()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf0/m;

    .line 4
    .line 5
    iget-object v0, v0, Lf0/m;->h:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lx0/j;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/h;->f:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sparse-switch v0, :sswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :sswitch_0
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const-string v0, ""

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-ge v1, v2, :cond_1

    .line 50
    .line 51
    const-string v2, " "

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v2, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    :goto_1
    return-object v0

    .line 77
    :sswitch_1
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, [F

    .line 80
    .line 81
    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0

    .line 86
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const/16 v2, 0x64

    .line 89
    .line 90
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const/16 v2, 0x7b

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v2, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v2, Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    :goto_2
    if-ge v1, v2, :cond_3

    .line 120
    .line 121
    iget-object v3, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v3, Ljava/util/List;

    .line 124
    .line 125
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    check-cast v3, Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    add-int/lit8 v3, v2, -0x1

    .line 135
    .line 136
    if-ge v1, v3, :cond_2

    .line 137
    .line 138
    const-string v3, ", "

    .line 139
    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_3
    const/16 v1, 0x7d

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    return-object v0

    .line 156
    nop

    .line 157
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_2
        0x11 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public final u(Landroid/content/Context;Ly0/f;)I
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/i0;->l(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/i0;->l(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p2}, Lw0/b;->h()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroid/util/SparseIntArray;

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    move v2, v0

    .line 25
    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v3, Landroid/util/SparseIntArray;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-ge v2, v3, :cond_2

    .line 34
    .line 35
    iget-object v3, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v3, Landroid/util/SparseIntArray;

    .line 38
    .line 39
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-le v3, p2, :cond_1

    .line 44
    .line 45
    iget-object v4, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v4, Landroid/util/SparseIntArray;

    .line 48
    .line 49
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move v0, v1

    .line 60
    :goto_1
    if-ne v0, v1, :cond_3

    .line 61
    .line 62
    iget-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Lv0/e;

    .line 65
    .line 66
    invoke-virtual {v0, p1, p2}, Lv0/e;->b(Landroid/content/Context;I)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    move v0, p1

    .line 71
    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Landroid/util/SparseIntArray;

    .line 74
    .line 75
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    .line 77
    .line 78
    :goto_2
    return v0
.end method

.method public final v(Lcom/google/android/gms/internal/play_billing/j2;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/d3;->r()Lcom/google/android/gms/internal/play_billing/c3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/google/android/gms/internal/play_billing/y2;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/k0;->c()V

    .line 13
    .line 14
    .line 15
    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    .line 16
    .line 17
    check-cast v2, Lcom/google/android/gms/internal/play_billing/d3;

    .line 18
    .line 19
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/d3;->o(Lcom/google/android/gms/internal/play_billing/d3;Lcom/google/android/gms/internal/play_billing/y2;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/k0;->c()V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    .line 26
    .line 27
    check-cast v1, Lcom/google/android/gms/internal/play_billing/d3;

    .line 28
    .line 29
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/d3;->p(Lcom/google/android/gms/internal/play_billing/d3;Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Ls1/k;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/k0;->a()Lcom/google/android/gms/internal/play_billing/l0;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/google/android/gms/internal/play_billing/d3;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ls1/k;->b(Lcom/google/android/gms/internal/play_billing/d3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    sget p1, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 47
    .line 48
    return-void
.end method

.method public final w(Landroid/view/View;Lp/l;)Lp/l;
    .locals 5

    .line 1
    sget-object v0, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    iget-object p2, p2, Lp/l;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p2, Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance p2, Landroid/view/WindowInsets;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    new-instance p1, Lp/l;

    .line 23
    .line 24
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p2}, Lp/l;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/view/WindowInsets;->isConsumed()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Landroid/graphics/Rect;

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 46
    .line 47
    invoke-virtual {p1}, Lp/l;->a()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 64
    .line 65
    iget-object p2, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    const/4 v1, 0x0

    .line 74
    :goto_0
    iget-object v2, p1, Lp/l;->a:Ljava/lang/Object;

    .line 75
    .line 76
    if-ge v1, p2, :cond_3

    .line 77
    .line 78
    iget-object v3, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v3, Landroidx/viewpager/widget/ViewPager;

    .line 81
    .line 82
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v2, Landroid/view/WindowInsets;

    .line 87
    .line 88
    invoke-virtual {v3, v2}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v3, v2}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-nez v4, :cond_2

    .line 97
    .line 98
    new-instance v2, Landroid/view/WindowInsets;

    .line 99
    .line 100
    invoke-direct {v2, v3}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 111
    .line 112
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 117
    .line 118
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 123
    .line 124
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 129
    .line 130
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 135
    .line 136
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 141
    .line 142
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 147
    .line 148
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 153
    .line 154
    add-int/lit8 v1, v1, 0x1

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_3
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 158
    .line 159
    iget p2, v0, Landroid/graphics/Rect;->top:I

    .line 160
    .line 161
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 162
    .line 163
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 164
    .line 165
    new-instance v3, Lp/l;

    .line 166
    .line 167
    check-cast v2, Landroid/view/WindowInsets;

    .line 168
    .line 169
    invoke-virtual {v2, p1, p2, v1, v0}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-direct {v3, p1}, Lp/l;-><init>(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    return-object v3
.end method

.method public final x(Lcom/google/android/gms/internal/play_billing/m2;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/d3;->r()Lcom/google/android/gms/internal/play_billing/c3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/google/android/gms/internal/play_billing/y2;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/k0;->c()V

    .line 13
    .line 14
    .line 15
    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    .line 16
    .line 17
    check-cast v2, Lcom/google/android/gms/internal/play_billing/d3;

    .line 18
    .line 19
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/d3;->o(Lcom/google/android/gms/internal/play_billing/d3;Lcom/google/android/gms/internal/play_billing/y2;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/k0;->c()V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    .line 26
    .line 27
    check-cast v1, Lcom/google/android/gms/internal/play_billing/d3;

    .line 28
    .line 29
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/d3;->q(Lcom/google/android/gms/internal/play_billing/d3;Lcom/google/android/gms/internal/play_billing/m2;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Ls1/k;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/k0;->a()Lcom/google/android/gms/internal/play_billing/l0;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/google/android/gms/internal/play_billing/d3;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ls1/k;->b(Lcom/google/android/gms/internal/play_billing/d3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    sget p1, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 47
    .line 48
    return-void
.end method
