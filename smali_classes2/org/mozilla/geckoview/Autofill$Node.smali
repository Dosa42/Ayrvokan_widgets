.class public final Lorg/mozilla/geckoview/Autofill$Node;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/Autofill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/Autofill$Node$Builder;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "AutofillNode"


# instance fields
.field private mAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutofillSession:Lorg/mozilla/geckoview/Autofill$Session;

.field private mCallback:Lorg/mozilla/gecko/util/EventCallback;

.field private mChildren:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/mozilla/geckoview/Autofill$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mDimens:Landroid/graphics/Rect;

.field private mDomain:Ljava/lang/String;

.field private mEnabled:Z

.field private mFocusable:Z

.field private mHint:I

.field private mId:I

.field private mInputType:I

.field private mParentId:I

.field private mRootId:I

.field private mTag:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/Autofill$Session;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mAutofillSession:Lorg/mozilla/geckoview/Autofill$Session;

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mId:I

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node;->mDimens:Landroid/graphics/Rect;

    new-instance v0, Lf/b;

    invoke-direct {v0}, Lf/b;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node;->mAttributes:Ljava/util/Map;

    iput-boolean v1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mEnabled:Z

    iput-boolean v1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mFocusable:Z

    iput p1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mHint:I

    iput p1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mInputType:I

    const-string p1, ""

    iput-object p1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mTag:Ljava/lang/String;

    iput-object p1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mDomain:Ljava/lang/String;

    iput-object p1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mValue:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mChildren:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public addChild(Lorg/mozilla/geckoview/Autofill$Node;)Lorg/mozilla/geckoview/Autofill$Node;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node;->mChildren:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public fillViewStructure(Landroid/view/View;Landroid/view/ViewStructure;I)V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lc1/a;->h(Landroid/view/View;)Landroid/view/autofill/AutofillId;

    move-result-object v2

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getId()I

    move-result v3

    invoke-static {p2, v2, v3}, Lorg/mozilla/geckoview/b;->i(Landroid/view/ViewStructure;Landroid/view/autofill/AutofillId;I)V

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lorg/mozilla/geckoview/b;->j(Landroid/view/ViewStructure;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc1/a;->j(Ljava/lang/String;)Landroid/view/autofill/AutofillValue;

    move-result-object v2

    invoke-static {p2, v2}, Lc1/a;->r(Landroid/view/ViewStructure;Landroid/view/autofill/AutofillValue;)V

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v3, v3}, Landroid/view/ViewStructure;->setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getDimensions()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getDimensions()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    move-object v4, p2

    invoke-virtual/range {v4 .. v10}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lc1/a;->f(Landroid/view/ViewStructure;Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/mozilla/geckoview/Autofill$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lc1/a;->o(Landroid/view/ViewStructure$HtmlInfo$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lc1/a;->g(Landroid/view/ViewStructure$HtmlInfo$Builder;)Landroid/view/ViewStructure$HtmlInfo;

    move-result-object v0

    invoke-static {p2, v0}, Lc1/a;->q(Landroid/view/ViewStructure;Landroid/view/ViewStructure$HtmlInfo;)V

    :cond_2
    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getChildren()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/ViewStructure;->setChildCount(I)V

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getChildren()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {p2, v3}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v5

    invoke-virtual {v4, p1, v5, p3}, Lorg/mozilla/geckoview/Autofill$Node;->fillViewStructure(Landroid/view/View;Landroid/view/ViewStructure;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "textarea"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "input"

    if-nez p3, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    if-lez v3, :cond_4

    const-string p1, "android.view.ViewGroup"

    goto :goto_2

    :cond_4
    const-string p1, "android.view.View"

    :goto_2
    invoke-virtual {p2, p1}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string p1, "android.widget.EditText"

    invoke-virtual {p2, p1}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getEnabled()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/ViewStructure;->setEnabled(Z)V

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getFocusable()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/ViewStructure;->setFocusable(Z)V

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getFocused()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/ViewStructure;->setFocused(Z)V

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getVisible()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x4

    :goto_3
    invoke-virtual {p2, v2}, Landroid/view/ViewStructure;->setVisibility(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_7

    invoke-static {p2}, Lc1/a;->p(Landroid/view/ViewStructure;)V

    :cond_7
    :goto_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_f

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getHint()I

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x2

    if-eqz p1, :cond_c

    if-eq p1, p3, :cond_b

    if-eq p1, v0, :cond_a

    const/4 v1, 0x3

    if-eq p1, v1, :cond_9

    goto :goto_5

    :cond_9
    const-string p1, "username"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lc1/a;->s(Landroid/view/ViewStructure;[Ljava/lang/String;)V

    invoke-static {p2}, Lorg/mozilla/geckoview/b;->q(Landroid/view/ViewStructure;)V

    goto :goto_5

    :cond_a
    invoke-static {p2}, Lorg/mozilla/geckoview/b;->p(Landroid/view/ViewStructure;)V

    goto :goto_5

    :cond_b
    const-string p1, "password"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lc1/a;->s(Landroid/view/ViewStructure;[Ljava/lang/String;)V

    invoke-static {p2}, Lorg/mozilla/geckoview/b;->h(Landroid/view/ViewStructure;)V

    goto :goto_5

    :cond_c
    const-string p1, "emailAddress"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lc1/a;->s(Landroid/view/ViewStructure;[Ljava/lang/String;)V

    invoke-static {p2}, Lc1/a;->B(Landroid/view/ViewStructure;)V

    :goto_5
    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getInputType()I

    move-result p1

    if-eq p1, p3, :cond_e

    if-eq p1, v0, :cond_d

    goto :goto_6

    :cond_d
    const-string p1, "phone"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lc1/a;->s(Landroid/view/ViewStructure;[Ljava/lang/String;)V

    invoke-static {p2}, Lorg/mozilla/geckoview/b;->s(Landroid/view/ViewStructure;)V

    goto :goto_6

    :cond_e
    invoke-static {p2}, Lorg/mozilla/geckoview/b;->r(Landroid/view/ViewStructure;)V

    :cond_f
    :goto_6
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node;->mAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node;->mAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node;->mAutofillSession:Lorg/mozilla/geckoview/Autofill$Session;

    return-object v0
.end method

.method public getCallback()Lorg/mozilla/gecko/util/EventCallback;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node;->mCallback:Lorg/mozilla/gecko/util/EventCallback;

    return-object v0
.end method

.method public getChildren()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/mozilla/geckoview/Autofill$Node;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node;->mChildren:Ljava/util/Collection;

    return-object v0
.end method

.method public getDimensions()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node;->mDimens:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/geckoview/Autofill$Node;->mEnabled:Z

    return v0
.end method

.method public getFocusable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/geckoview/Autofill$Node;->mFocusable:Z

    return v0
.end method

.method public getFocused()Z
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/Autofill$Session;->getFocusedId()I

    move-result v0

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHint()I
    .locals 1

    iget v0, p0, Lorg/mozilla/geckoview/Autofill$Node;->mHint:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lorg/mozilla/geckoview/Autofill$Node;->mId:I

    return v0
.end method

.method public getInputType()I
    .locals 1

    iget v0, p0, Lorg/mozilla/geckoview/Autofill$Node;->mInputType:I

    return v0
.end method

.method public getParent()Lorg/mozilla/geckoview/Autofill$Node;
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v0

    iget v1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mParentId:I

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/Autofill$Session;->getNode(I)Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object v0

    return-object v0
.end method

.method public getParentId()I
    .locals 1

    iget v0, p0, Lorg/mozilla/geckoview/Autofill$Node;->mParentId:I

    return v0
.end method

.method public getRoot()Lorg/mozilla/geckoview/Autofill$Node;
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v0

    iget v1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mRootId:I

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/Autofill$Session;->getNode(I)Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getVisible()Z
    .locals 5

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/Autofill$Session;->getFocusedId()I

    move-result v0

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/geckoview/Autofill$Session;->getFocusedRootId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/mozilla/geckoview/Autofill$Session;->getNode(I)Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/Autofill$Node;->getParentId()I

    move-result v0

    iget v4, p0, Lorg/mozilla/geckoview/Autofill$Node;->mId:I

    if-eq v4, v3, :cond_1

    iget v3, p0, Lorg/mozilla/geckoview/Autofill$Node;->mParentId:I

    if-eq v3, v0, :cond_1

    iget v0, p0, Lorg/mozilla/geckoview/Autofill$Node;->mRootId:I

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/geckoview/Autofill$Node;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Node;->mAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setAttributes(Ljava/util/Map;)Lorg/mozilla/geckoview/Autofill$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/mozilla/geckoview/Autofill$Node;"
        }
    .end annotation

    iput-object p1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mAttributes:Ljava/util/Map;

    return-object p0
.end method

.method public setAutofillSession(Lorg/mozilla/geckoview/Autofill$Session;)Lorg/mozilla/geckoview/Autofill$Node;
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mAutofillSession:Lorg/mozilla/geckoview/Autofill$Session;

    return-object p0
.end method

.method public setCallback(Lorg/mozilla/gecko/util/EventCallback;)Lorg/mozilla/geckoview/Autofill$Node;
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mCallback:Lorg/mozilla/gecko/util/EventCallback;

    return-object p0
.end method

.method public setDimensions(Landroid/graphics/Rect;)Lorg/mozilla/geckoview/Autofill$Node;
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mDimens:Landroid/graphics/Rect;

    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)Lorg/mozilla/geckoview/Autofill$Node;
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mDomain:Ljava/lang/String;

    return-object p0
.end method

.method public setEnabled(Z)Lorg/mozilla/geckoview/Autofill$Node;
    .locals 0

    iput-boolean p1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mEnabled:Z

    return-object p0
.end method

.method public setFocusable(Z)Lorg/mozilla/geckoview/Autofill$Node;
    .locals 0

    iput-boolean p1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mFocusable:Z

    return-object p0
.end method

.method public setHint(I)Lorg/mozilla/geckoview/Autofill$Node;
    .locals 0

    iput p1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mHint:I

    return-object p0
.end method

.method public setId(I)Lorg/mozilla/geckoview/Autofill$Node;
    .locals 0

    iput p1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mId:I

    return-object p0
.end method

.method public setInputType(I)Lorg/mozilla/geckoview/Autofill$Node;
    .locals 0

    iput p1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mInputType:I

    return-object p0
.end method

.method public setParentId(I)Lorg/mozilla/geckoview/Autofill$Node;
    .locals 0

    iput p1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mParentId:I

    return-object p0
.end method

.method public setRootId(I)Lorg/mozilla/geckoview/Autofill$Node;
    .locals 0

    iput p1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mRootId:I

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lorg/mozilla/geckoview/Autofill$Node;
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lorg/mozilla/geckoview/Autofill$Node;
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Node {id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mParentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", root="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mRootId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dims="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getDimensions()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", children=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mChildren:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {v2}, Lorg/mozilla/geckoview/Autofill$Node;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "], attrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mAttributes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", focusable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mFocusable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", focused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Node;->getVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mHint:I

    invoke-static {v1}, Lorg/mozilla/geckoview/Autofill$Hint;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mInputType:I

    invoke-static {v1}, Lorg/mozilla/geckoview/Autofill$InputType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/geckoview/Autofill$Node;->mCallback:Lorg/mozilla/gecko/util/EventCallback;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
