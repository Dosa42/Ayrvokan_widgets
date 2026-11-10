.class public final Lz2/h;
.super Lz2/s;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Z

.field public l:I

.field public m:I

.field public n:Z

.field public o:Z

.field public final p:Landroid/util/SparseArray;

.field public final q:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lz2/s;-><init>()V

    invoke-virtual {p0}, Lz2/h;->b()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lz2/h;->p:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lz2/h;->q:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 2
    invoke-direct {p0}, Lz2/s;-><init>()V

    invoke-virtual {p0, p1}, Lz2/h;->c(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Lz2/h;->b()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lz2/h;->p:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lz2/h;->q:Landroid/util/SparseBooleanArray;

    .line 4
    sget v0, Lb3/n;->a:I

    const-string v0, "window"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 6
    sget v1, Lb3/n;->a:I

    const/16 v2, 0x1d

    const/4 v3, 0x1

    if-gt v1, v2, :cond_3

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "uimode"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_3

    const-string v2, "Sony"

    .line 8
    sget-object v5, Lb3/n;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lb3/n;->d:Ljava/lang/String;

    const-string v5, "BRAVIA"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v2, "com.sony.dtv.hardware.panel.qfhd"

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/graphics/Point;

    const/16 v0, 0xf00

    const/16 v1, 0x870

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    goto/16 :goto_3

    :cond_1
    const/16 p1, 0x1c

    if-ge v1, p1, :cond_2

    const-string p1, "sys.display-size"

    goto :goto_1

    :cond_2
    const-string p1, "vendor.display-size"

    :goto_1
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    .line 9
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v5, "get"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/i0;->B(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 10
    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v2, "x"

    const/4 v5, -0x1

    .line 11
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 12
    array-length v2, p1

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    aget-object v2, p1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez v2, :cond_3

    if-lez p1, :cond_3

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v2, p1}, Landroid/graphics/Point;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v4

    goto :goto_3

    :catch_1
    :cond_3
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4

    .line 13
    invoke-virtual {v0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    goto :goto_3

    :cond_4
    const/16 v2, 0x11

    if-lt v1, v2, :cond_5

    .line 14
    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_3

    .line 15
    :cond_5
    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 16
    :goto_3
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 17
    iput v0, p0, Lz2/h;->i:I

    iput p1, p0, Lz2/h;->j:I

    iput-boolean v3, p0, Lz2/h;->k:Z

    return-void
.end method


# virtual methods
.method public final a()Lz2/g;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    new-instance v19, Lz2/g;

    move-object/from16 v1, v19

    iget v2, v0, Lz2/h;->c:I

    iget v3, v0, Lz2/h;->d:I

    iget v4, v0, Lz2/h;->e:I

    iget v5, v0, Lz2/h;->f:I

    iget-boolean v6, v0, Lz2/h;->g:Z

    iget-boolean v7, v0, Lz2/h;->h:Z

    iget v8, v0, Lz2/h;->i:I

    iget v9, v0, Lz2/h;->j:I

    iget-boolean v10, v0, Lz2/h;->k:Z

    iget v11, v0, Lz2/h;->l:I

    iget v12, v0, Lz2/h;->m:I

    iget-boolean v13, v0, Lz2/h;->n:Z

    iget-object v14, v0, Lz2/s;->a:Ljava/lang/String;

    iget v15, v0, Lz2/s;->b:I

    move-object/from16 v20, v1

    iget-boolean v1, v0, Lz2/h;->o:Z

    move/from16 v16, v1

    iget-object v1, v0, Lz2/h;->p:Landroid/util/SparseArray;

    move-object/from16 v17, v1

    iget-object v1, v0, Lz2/h;->q:Landroid/util/SparseBooleanArray;

    move-object/from16 v18, v1

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lz2/g;-><init>(IIIIZZIIZIIZLjava/lang/String;IZLandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    return-object v19
.end method

.method public final b()V
    .locals 2

    .line 1
    const v0, 0x7fffffff

    iput v0, p0, Lz2/h;->c:I

    iput v0, p0, Lz2/h;->d:I

    iput v0, p0, Lz2/h;->e:I

    iput v0, p0, Lz2/h;->f:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lz2/h;->g:Z

    iput-boolean v1, p0, Lz2/h;->h:Z

    iput v0, p0, Lz2/h;->i:I

    iput v0, p0, Lz2/h;->j:I

    iput-boolean v1, p0, Lz2/h;->k:Z

    iput v0, p0, Lz2/h;->l:I

    iput v0, p0, Lz2/h;->m:I

    iput-boolean v1, p0, Lz2/h;->n:Z

    iput-boolean v1, p0, Lz2/h;->o:Z

    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Lb3/n;->a:I

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    if-lt v0, v1, :cond_3

    .line 6
    .line 7
    const/16 v1, 0x17

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const-string v1, "captioning"

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/16 v1, 0x440

    .line 36
    .line 37
    iput v1, p0, Lz2/s;->b:I

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    const/16 v1, 0x15

    .line 46
    .line 47
    if-lt v0, v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :goto_0
    iput-object p1, p0, Lz2/s;->a:Ljava/lang/String;

    .line 59
    .line 60
    :cond_3
    :goto_1
    return-void
.end method
