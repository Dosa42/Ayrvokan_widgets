.class public final Lv1/a;
.super Lv1/d;
.source "SourceFile"


# instance fields
.field public final f:Landroid/content/Context;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/LaunchActivity;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const-string v0, ".pkm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0, p3}, Lv1/d;-><init>(ZZ)V

    iput-object p1, p0, Lv1/a;->f:Landroid/content/Context;

    iput-object p2, p0, Lv1/a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final f()Ljava/io/InputStream;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lv1/a;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lv1/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t load texture from assets: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lv1/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdf"

    invoke-static {v1, v0}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
