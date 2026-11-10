.class Lorg/mozilla/geckoview/RuntimeSettings$Pref;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/RuntimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Pref"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mIsSet:Z

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field final synthetic this$0:Lorg/mozilla/geckoview/RuntimeSettings;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/RuntimeSettings;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->this$0:Lorg/mozilla/geckoview/RuntimeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->defaultValue:Ljava/lang/Object;

    iput-object p3, p0, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lorg/mozilla/geckoview/RuntimeSettings;->addPref(Lorg/mozilla/geckoview/RuntimeSettings$Pref;)V

    return-void
.end method

.method private addToBundle(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 2

    iget-boolean v0, p0, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->mIsSet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->mValue:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->defaultValue:Ljava/lang/Object;

    :goto_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->name:Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->name:Ljava/lang/String;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->name:Ljava/lang/String;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled pref type for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public commit()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->this$0:Lorg/mozilla/geckoview/RuntimeSettings;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/RuntimeSettings;->getRuntime()Lorg/mozilla/geckoview/GeckoRuntime;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    invoke-direct {p0, v1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->addToBundle(Lorg/mozilla/gecko/util/GeckoBundle;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoRuntime;->setDefaultPrefs(Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public commit(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->commit()V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public isSet()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->mIsSet:Z

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->defaultValue:Ljava/lang/Object;

    iput-object v0, p0, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->mValue:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->mIsSet:Z

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->mValue:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mozilla/geckoview/RuntimeSettings$Pref;->mIsSet:Z

    return-void
.end method
