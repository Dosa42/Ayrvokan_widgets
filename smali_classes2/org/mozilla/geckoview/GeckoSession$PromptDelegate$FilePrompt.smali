.class public Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$FilePrompt;
.super Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilePrompt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$FilePrompt$Capture;,
        Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$FilePrompt$Type;
    }
.end annotation


# instance fields
.field public final capture:I

.field public final mimeTypes:[Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;-><init>(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession$1;)V

    iput p2, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$FilePrompt;->type:I

    iput p3, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$FilePrompt;->capture:I

    iput-object p4, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$FilePrompt;->mimeTypes:[Ljava/lang/String;

    return-void
.end method

.method private static getFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "_data"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    :try_start_0
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    :catch_0
    :cond_4
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_5
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0
.end method


# virtual methods
.method public confirm(Landroid/content/Context;Landroid/net/Uri;)Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;
    .locals 2

    .line 1
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$FilePrompt;->confirm(Landroid/content/Context;[Landroid/net/Uri;)Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;

    move-result-object p1

    return-object p1
.end method

.method public confirm(Landroid/content/Context;[Landroid/net/Uri;)Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;
    .locals 4

    .line 2
    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$FilePrompt;->type:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    array-length v1, p2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    new-array v2, v1, [Ljava/lang/String;

    :goto_2
    if-ge v0, v1, :cond_4

    aget-object v3, p2, v0

    invoke-static {p1, v3}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$FilePrompt;->getFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    if-nez v3, :cond_3

    aget-object v3, p2, v0

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->ensureResult()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    const-string p2, "files"

    invoke-virtual {p1, p2, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-super {p0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->confirm()Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;

    move-result-object p1

    return-object p1
.end method
