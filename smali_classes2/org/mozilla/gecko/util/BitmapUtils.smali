.class public final Lorg/mozilla/gecko/util/BitmapUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "GeckoBitmapUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeByteArray([B)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/mozilla/gecko/util/BitmapUtils;->decodeByteArray([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/mozilla/gecko/util/BitmapUtils;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 3
    array-length v0, p0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    return-object v0

    :catch_0
    invoke-static {p3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "bytes.length "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " must be a positive number"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static decodeByteArray([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    .line 4
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lorg/mozilla/gecko/util/BitmapUtils;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/mozilla/gecko/util/BitmapUtils;->decodeResource(Landroid/content/Context;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeResource(Landroid/content/Context;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 0

    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static decodeUrl(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/gecko/util/BitmapUtils;->decodeUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 2
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Lorg/mozilla/gecko/util/BitmapUtils;->decodeUrl(Ljava/net/URL;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static decodeUrl(Ljava/net/URL;)Landroid/graphics/Bitmap;
    .locals 2

    .line 3
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {v1}, Lorg/mozilla/gecko/util/BitmapUtils;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :goto_0
    return-object v0

    :catch_1
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-object v0
.end method

.method public static getBitmapFromDataURI(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/mozilla/gecko/util/BitmapUtils;->getBytesFromDataURI(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v1, p0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lorg/mozilla/gecko/util/BitmapUtils;->decodeByteArray([B)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v2, :cond_2

    move v1, v2

    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static getBytesFromBase64(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBytesFromDataURI(Ljava/lang/String;)[B
    .locals 1

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/gecko/util/BitmapUtils;->getBytesFromBase64(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getDominantColor(Landroid/graphics/Bitmap;I)I
    .locals 2

    .line 1
    invoke-static {}, Lorg/mozilla/gecko/util/HardwareUtils;->isX86System()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-static {p0, v0, p1}, Lorg/mozilla/gecko/util/BitmapUtils;->getDominantColorCustomImplementation(Landroid/graphics/Bitmap;ZI)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_0
    :try_start_0
    new-instance v0, Lz/d;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lz/d;-><init>(Landroid/graphics/Bitmap;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lz/d;->a()Lz/f;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object v0, Lz/g;->e:Lz/g;

    .line 23
    .line 24
    iget-object p0, p0, Lz/f;->c:Lf/b;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0, v0, v1}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lz/e;

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    iget p1, p0, Lz/e;->d:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    :catch_0
    :cond_1
    return p1
.end method

.method public static getDominantColorCustomImplementation(Landroid/graphics/Bitmap;)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/mozilla/gecko/util/BitmapUtils;->getDominantColorCustomImplementation(Landroid/graphics/Bitmap;ZI)I

    move-result p0

    return p0
.end method

.method public static getDominantColorCustomImplementation(Landroid/graphics/Bitmap;ZI)I
    .locals 17

    .line 2
    if-nez p0, :cond_0

    return p2

    :cond_0
    const/16 v0, 0x24

    new-array v8, v0, [I

    new-array v9, v0, [F

    new-array v10, v0, [F

    new-array v11, v0, [F

    const/4 v0, 0x3

    new-array v12, v0, [F

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    mul-int v0, v14, v13

    new-array v15, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move v3, v14

    move v6, v14

    move v7, v13

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v2, v13, :cond_6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v14, :cond_5

    mul-int v6, v2, v14

    add-int/2addr v6, v5

    aget v6, v15, v6

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    const/16 v0, 0x80

    if-ge v7, v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v6, v12}, Landroid/graphics/Color;->colorToHSV(I[F)V

    if-eqz p1, :cond_2

    aget v0, v12, v4

    const v6, 0x3eb33333    # 0.35f

    cmpg-float v0, v0, v6

    if-lez v0, :cond_4

    aget v0, v12, v3

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    aget v6, v12, v0

    const/high16 v7, 0x41200000    # 10.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    aget v7, v9, v6

    aget v16, v12, v0

    add-float v7, v7, v16

    aput v7, v9, v6

    aget v0, v10, v6

    aget v7, v12, v4

    add-float/2addr v0, v7

    aput v0, v10, v6

    aget v0, v11, v6

    aget v7, v12, v3

    add-float/2addr v0, v7

    aput v0, v11, v6

    aget v0, v8, v6

    add-int/2addr v0, v4

    aput v0, v8, v6

    if-ltz v1, :cond_3

    aget v7, v8, v1

    if-le v0, v7, :cond_4

    :cond_3
    move v1, v6

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-gez v1, :cond_7

    return p2

    :cond_7
    aget v0, v9, v1

    aget v2, v8, v1

    int-to-float v5, v2

    div-float/2addr v0, v5

    const/4 v5, 0x0

    aput v0, v12, v5

    aget v0, v10, v1

    int-to-float v5, v2

    div-float/2addr v0, v5

    aput v0, v12, v4

    aget v0, v11, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    aput v0, v12, v3

    invoke-static {v12}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method public static getResource(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 3

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v2, 0x1080093

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_2

    return p0

    :cond_2
    const-string p0, "android"

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_3

    return p0

    :cond_3
    return v2
.end method
