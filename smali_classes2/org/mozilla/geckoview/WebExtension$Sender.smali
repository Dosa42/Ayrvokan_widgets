.class Lorg/mozilla/geckoview/WebExtension$Sender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sender"
.end annotation


# instance fields
.field public nativeApp:Ljava/lang/String;

.field public webExtensionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$Sender;->webExtensionId:Ljava/lang/String;

    iput-object p2, p0, Lorg/mozilla/geckoview/WebExtension$Sender;->nativeApp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/mozilla/geckoview/WebExtension$Sender;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/mozilla/geckoview/WebExtension$Sender;

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Sender;->webExtensionId:Ljava/lang/String;

    iget-object v2, p1, Lorg/mozilla/geckoview/WebExtension$Sender;->webExtensionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Sender;->nativeApp:Ljava/lang/String;

    iget-object p1, p1, Lorg/mozilla/geckoview/WebExtension$Sender;->nativeApp:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Sender;->webExtensionId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x20f

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Sender;->nativeApp:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    return v2
.end method
