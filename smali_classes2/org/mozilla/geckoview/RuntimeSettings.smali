.class public abstract Lorg/mozilla/geckoview/RuntimeSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/RuntimeSettings$Pref;,
        Lorg/mozilla/geckoview/RuntimeSettings$Builder;
    }
.end annotation


# instance fields
.field private final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mozilla/geckoview/RuntimeSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Lorg/mozilla/geckoview/RuntimeSettings;

.field private final mPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/RuntimeSettings;-><init>(Lorg/mozilla/geckoview/RuntimeSettings;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/geckoview/RuntimeSettings;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/RuntimeSettings;->mPrefs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/RuntimeSettings;->mChildren:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/RuntimeSettings;->setParent(Lorg/mozilla/geckoview/RuntimeSettings;)V

    return-void
.end method

.method private addChild(Lorg/mozilla/geckoview/RuntimeSettings;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/RuntimeSettings;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setParent(Lorg/mozilla/geckoview/RuntimeSettings;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/RuntimeSettings;->mParent:Lorg/mozilla/geckoview/RuntimeSettings;

    if-eqz p1, :cond_0

    invoke-direct {p1, p0}, Lorg/mozilla/geckoview/RuntimeSettings;->addChild(Lorg/mozilla/geckoview/RuntimeSettings;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addPref(Lorg/mozilla/geckoview/RuntimeSettings$Pref;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/RuntimeSettings$Pref<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/RuntimeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public commitResetPrefs()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/mozilla/geckoview/RuntimeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    iget-object v2, v2, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/mozilla/geckoview/RuntimeSettings;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/geckoview/RuntimeSettings;

    iget-object v2, v2, Lorg/mozilla/geckoview/RuntimeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    iget-object v3, v3, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v2, "names"

    invoke-virtual {v1, v2, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->putStringArray(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v0

    const-string v2, "GeckoView:ResetUserPrefs"

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPrefsMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lf/b;

    invoke-direct {v0}, Lf/b;-><init>()V

    iget-object v1, p0, Lorg/mozilla/geckoview/RuntimeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    iget-object v3, v2, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->name:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/mozilla/geckoview/RuntimeSettings;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/geckoview/RuntimeSettings;

    invoke-virtual {v2}, Lorg/mozilla/geckoview/RuntimeSettings;->getPrefsMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lf/b;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRuntime()Lorg/mozilla/geckoview/GeckoRuntime;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/RuntimeSettings;->mParent:Lorg/mozilla/geckoview/RuntimeSettings;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/RuntimeSettings;->getRuntime()Lorg/mozilla/geckoview/GeckoRuntime;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/geckoview/RuntimeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updatePrefs(Lorg/mozilla/geckoview/RuntimeSettings;)V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/geckoview/RuntimeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p1, Lorg/mozilla/geckoview/RuntimeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "Settings must be compatible"

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mozilla/geckoview/RuntimeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/geckoview/RuntimeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    iget-object v1, v1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/mozilla/geckoview/RuntimeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    iget-object v3, v3, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lorg/mozilla/geckoview/RuntimeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->isSet()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/mozilla/geckoview/RuntimeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    iget-object v3, p1, Lorg/mozilla/geckoview/RuntimeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v3}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lorg/mozilla/geckoview/RuntimeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/RuntimeSettings$Pref;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
