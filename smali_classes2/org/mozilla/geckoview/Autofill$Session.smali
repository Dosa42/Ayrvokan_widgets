.class public final Lorg/mozilla/geckoview/Autofill$Session;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/Autofill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Session"
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "AutofillSession"


# instance fields
.field private mFocusedId:I

.field private mFocusedRootId:I

.field private final mGeckoSession:Lorg/mozilla/geckoview/GeckoSession;

.field private mId:I

.field private mNodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/mozilla/geckoview/Autofill$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mRoot:Lorg/mozilla/geckoview/Autofill$Node;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/geckoview/Autofill$Session;->mId:I

    iput v0, p0, Lorg/mozilla/geckoview/Autofill$Session;->mFocusedId:I

    iput v0, p0, Lorg/mozilla/geckoview/Autofill$Session;->mFocusedRootId:I

    iput-object p1, p0, Lorg/mozilla/geckoview/Autofill$Session;->mGeckoSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Session;->clear()V

    return-void
.end method


# virtual methods
.method public addNode(Lorg/mozilla/geckoview/Autofill$Node;)V
    .locals 2

    invoke-virtual {p1, p0}, Lorg/mozilla/geckoview/Autofill$Node;->setAutofillSession(Lorg/mozilla/geckoview/Autofill$Session;)Lorg/mozilla/geckoview/Autofill$Node;

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Session;->mNodes:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/mozilla/geckoview/Autofill$Node;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lorg/mozilla/geckoview/Autofill$Node;->getParentId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Session;->mRoot:Lorg/mozilla/geckoview/Autofill$Node;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/Autofill$Node;->addChild(Lorg/mozilla/geckoview/Autofill$Node;)Lorg/mozilla/geckoview/Autofill$Node;

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/geckoview/Autofill$Session;->mId:I

    iput v0, p0, Lorg/mozilla/geckoview/Autofill$Session;->mFocusedId:I

    iput v0, p0, Lorg/mozilla/geckoview/Autofill$Session;->mFocusedRootId:I

    new-instance v0, Lorg/mozilla/geckoview/Autofill$Node$Builder;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/Autofill$Node$Builder;-><init>(Lorg/mozilla/geckoview/Autofill$Session;)V

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Session;->getDefaultDimensions()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/Autofill$Node$Builder;->dimensions(Landroid/graphics/Rect;)Lorg/mozilla/geckoview/Autofill$Node$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/Autofill$Node$Builder;->build()Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/Autofill$Session;->mRoot:Lorg/mozilla/geckoview/Autofill$Node;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/Autofill$Session;->mNodes:Landroid/util/SparseArray;

    return-void
.end method

.method public fillViewStructure(Landroid/view/View;Landroid/view/ViewStructure;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Session;->getRoot()Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/geckoview/Autofill$Node;->fillViewStructure(Landroid/view/View;Landroid/view/ViewStructure;I)V

    return-void
.end method

.method public getDefaultDimensions()Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Session;->mGeckoSession:Lorg/mozilla/geckoview/GeckoSession;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/mozilla/geckoview/Autofill$Support;->getDummyAutofillRect(Lorg/mozilla/geckoview/GeckoSession;ZLandroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getFocusedId()I
    .locals 1

    iget v0, p0, Lorg/mozilla/geckoview/Autofill$Session;->mFocusedId:I

    return v0
.end method

.method public getFocusedRootId()I
    .locals 1

    iget v0, p0, Lorg/mozilla/geckoview/Autofill$Session;->mFocusedRootId:I

    return v0
.end method

.method public getNode(I)Lorg/mozilla/geckoview/Autofill$Node;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Session;->mNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/geckoview/Autofill$Node;

    return-object p1
.end method

.method public getRoot()Lorg/mozilla/geckoview/Autofill$Node;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Session;->mRoot:Lorg/mozilla/geckoview/Autofill$Node;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/Autofill$Session;->mNodes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFocus(II)V
    .locals 0

    iput p1, p0, Lorg/mozilla/geckoview/Autofill$Session;->mFocusedId:I

    iput p2, p0, Lorg/mozilla/geckoview/Autofill$Session;->mFocusedRootId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session {id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/mozilla/geckoview/Autofill$Session;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", focusedId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mozilla/geckoview/Autofill$Session;->mFocusedId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", focusedRootId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mozilla/geckoview/Autofill$Session;->mFocusedRootId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", root="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/geckoview/Autofill$Session;->getRoot()Lorg/mozilla/geckoview/Autofill$Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
