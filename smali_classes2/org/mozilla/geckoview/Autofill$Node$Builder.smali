.class Lorg/mozilla/geckoview/Autofill$Node$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/Autofill$Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mNode:Lorg/mozilla/geckoview/Autofill$Node;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/Autofill$Session;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/geckoview/Autofill$Node;

    invoke-direct {v0, p1}, Lorg/mozilla/geckoview/Autofill$Node;-><init>(Lorg/mozilla/geckoview/Autofill$Session;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/geckoview/Autofill$Session;Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 10

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/Autofill$Node$Builder;-><init>(Lorg/mozilla/geckoview/Autofill$Session;)V

    const-string v0, "bounds"

    invoke-virtual {p2, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {v1, p1}, Lorg/mozilla/geckoview/Autofill$Node;->setAutofillSession(Lorg/mozilla/geckoview/Autofill$Session;)Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p2, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/mozilla/geckoview/Autofill$Node;->setId(I)Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object v1

    const-string v2, "parent"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/mozilla/geckoview/Autofill$Node;->setParentId(I)Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object v1

    const-string v2, "root"

    invoke-virtual {p2, v2, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/mozilla/geckoview/Autofill$Node;->setRootId(I)Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object v1

    const-string v2, "origin"

    invoke-virtual {p2, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mozilla/geckoview/Autofill$Node;->setDomain(Ljava/lang/String;)Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {p2, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mozilla/geckoview/Autofill$Node;->setValue(Ljava/lang/String;)Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    const-string v4, "left"

    invoke-virtual {v0, v4}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "top"

    invoke-virtual {v0, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "right"

    invoke-virtual {v0, v6}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "bottom"

    invoke-virtual {v0, v7}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v2, v4, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lorg/mozilla/geckoview/Autofill$Node;->setDimensions(Landroid/graphics/Rect;)Lorg/mozilla/geckoview/Autofill$Node;

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/Autofill$Node;->getDimensions()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {p1}, Lorg/mozilla/geckoview/Autofill$Session;->getDefaultDimensions()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/Autofill$Node;->setDimensions(Landroid/graphics/Rect;)Lorg/mozilla/geckoview/Autofill$Node;

    :cond_0
    const-string v0, "children"

    invoke-virtual {p2, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundleArray(Ljava/lang/String;)[Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    new-instance v6, Lorg/mozilla/geckoview/Autofill$Node$Builder;

    invoke-direct {v6, p1, v5}, Lorg/mozilla/geckoview/Autofill$Node$Builder;-><init>(Lorg/mozilla/geckoview/Autofill$Session;Lorg/mozilla/gecko/util/GeckoBundle;)V

    invoke-virtual {v6}, Lorg/mozilla/geckoview/Autofill$Node$Builder;->build()Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object v5

    iget-object v6, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {v6, v5}, Lorg/mozilla/geckoview/Autofill$Node;->addChild(Lorg/mozilla/geckoview/Autofill$Node;)Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {p1, v5}, Lorg/mozilla/geckoview/Autofill$Session;->addNode(Lorg/mozilla/geckoview/Autofill$Node;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "tag"

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {v2, p1}, Lorg/mozilla/geckoview/Autofill$Node;->setTag(Ljava/lang/String;)Lorg/mozilla/geckoview/Autofill$Node;

    const-string v2, "attributes"

    invoke-virtual {p2, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/gecko/util/GeckoBundle;->keys()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    iget-object v8, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {v2, v7}, Lorg/mozilla/gecko/util/GeckoBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lorg/mozilla/geckoview/Autofill$Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/geckoview/Autofill$Node;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "input"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "editable"

    invoke-virtual {p2, v4, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    move-object p1, v0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "textarea"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "disabled"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v2, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v4}, Lorg/mozilla/geckoview/Autofill$Node;->setEnabled(Z)Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object v2

    xor-int/2addr p1, v5

    invoke-virtual {v2, p1}, Lorg/mozilla/geckoview/Autofill$Node;->setFocusable(Z)Lorg/mozilla/geckoview/Autofill$Node;

    :goto_2
    const-string p1, "type"

    const-string v2, "text"

    invoke-virtual {p2, p1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v6, 0x3

    const/4 v7, 0x2

    sparse-switch v4, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v2, "password"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x5

    goto :goto_3

    :sswitch_1
    const-string v2, "email"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v3, 0x4

    goto :goto_3

    :sswitch_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    move v3, v6

    goto :goto_3

    :sswitch_3
    const-string v2, "url"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    move v3, v7

    goto :goto_3

    :sswitch_4
    const-string v2, "tel"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    move v3, v5

    goto :goto_3

    :sswitch_5
    const-string v2, "number"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_3

    :cond_a
    move v3, v1

    :goto_3
    packed-switch v3, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    iget-object p1, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {p1, v5}, Lorg/mozilla/geckoview/Autofill$Node;->setHint(I)Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object p1

    goto :goto_4

    :pswitch_1
    iget-object p1, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {p1, v1}, Lorg/mozilla/geckoview/Autofill$Node;->setHint(I)Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object p1

    :goto_4
    invoke-virtual {p1, v1}, Lorg/mozilla/geckoview/Autofill$Node;->setInputType(I)Lorg/mozilla/geckoview/Autofill$Node;

    goto :goto_5

    :pswitch_2
    const-string p1, "autofillhint"

    invoke-virtual {p2, p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "username"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {p1, v6}, Lorg/mozilla/geckoview/Autofill$Node;->setHint(I)Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object p1

    goto :goto_4

    :pswitch_3
    iget-object p1, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {p1, v7}, Lorg/mozilla/geckoview/Autofill$Node;->setHint(I)Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object p1

    goto :goto_4

    :pswitch_4
    iget-object p1, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {p1, v7}, Lorg/mozilla/geckoview/Autofill$Node;->setInputType(I)Lorg/mozilla/geckoview/Autofill$Node;

    goto :goto_5

    :pswitch_5
    iget-object p1, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {p1, v5}, Lorg/mozilla/geckoview/Autofill$Node;->setInputType(I)Lorg/mozilla/geckoview/Autofill$Node;

    :cond_b
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_5
        0x1c01b -> :sswitch_4
        0x1c56f -> :sswitch_3
        0x36452d -> :sswitch_2
        0x5c24b9c -> :sswitch_1
        0x4889ba9b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/geckoview/Autofill$Node$Builder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/geckoview/Autofill$Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/geckoview/Autofill$Node;

    return-object p0
.end method

.method public build()Lorg/mozilla/geckoview/Autofill$Node;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    return-object v0
.end method

.method public child(Lorg/mozilla/geckoview/Autofill$Node;)Lorg/mozilla/geckoview/Autofill$Node$Builder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/Autofill$Node;->addChild(Lorg/mozilla/geckoview/Autofill$Node;)Lorg/mozilla/geckoview/Autofill$Node;

    return-object p0
.end method

.method public dimensions(Landroid/graphics/Rect;)Lorg/mozilla/geckoview/Autofill$Node$Builder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/Autofill$Node;->setDimensions(Landroid/graphics/Rect;)Lorg/mozilla/geckoview/Autofill$Node;

    return-object p0
.end method

.method public domain(Ljava/lang/String;)Lorg/mozilla/geckoview/Autofill$Node$Builder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/Autofill$Node;->setDomain(Ljava/lang/String;)Lorg/mozilla/geckoview/Autofill$Node;

    return-object p0
.end method

.method public enabled(Z)Lorg/mozilla/geckoview/Autofill$Node$Builder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/Autofill$Node;->setEnabled(Z)Lorg/mozilla/geckoview/Autofill$Node;

    return-object p0
.end method

.method public focusable(Z)Lorg/mozilla/geckoview/Autofill$Node$Builder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/Autofill$Node;->setFocusable(Z)Lorg/mozilla/geckoview/Autofill$Node;

    return-object p0
.end method

.method public hint(I)Lorg/mozilla/geckoview/Autofill$Node$Builder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/Autofill$Node;->setHint(I)Lorg/mozilla/geckoview/Autofill$Node;

    return-object p0
.end method

.method public id(I)Lorg/mozilla/geckoview/Autofill$Node$Builder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/Autofill$Node;->setId(I)Lorg/mozilla/geckoview/Autofill$Node;

    return-object p0
.end method

.method public inputType(I)Lorg/mozilla/geckoview/Autofill$Node$Builder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/Autofill$Node;->setInputType(I)Lorg/mozilla/geckoview/Autofill$Node;

    return-object p0
.end method

.method public tag(Ljava/lang/String;)Lorg/mozilla/geckoview/Autofill$Node$Builder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/Autofill$Node;->setTag(Ljava/lang/String;)Lorg/mozilla/geckoview/Autofill$Node;

    return-object p0
.end method

.method public value(Ljava/lang/String;)Lorg/mozilla/geckoview/Autofill$Node$Builder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node$Builder;->mNode:Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/Autofill$Node;->setValue(Ljava/lang/String;)Lorg/mozilla/geckoview/Autofill$Node;

    return-object p0
.end method
