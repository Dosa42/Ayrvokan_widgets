.class Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection;
.super Ljava/net/URLConnection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/GeckoAppShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapConnection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    iput-object p1, p0, Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static synthetic access$400(Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public connect()V
    .locals 0

    return-void
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "image/png"

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream;-><init>(Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection;Lorg/mozilla/gecko/GeckoAppShell$1;)V

    return-object v0
.end method
